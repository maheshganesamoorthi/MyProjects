

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


public class inference 
{
	static	HashMap<String, KnowledgeBase> myKB = new HashMap<String, KnowledgeBase>();

	public static void main (String[] args) throws Exception
	{		
				List<String> queries = new ArrayList<String>();		
				BufferedReader bufferedReader = null;
				File file = null;
				FileReader fileReader = null;
				try
				{
					file = new File(args[1]);
					fileReader = new FileReader(file);
					bufferedReader = new BufferedReader(fileReader);					
					int numberOfQueries = Integer.parseInt(bufferedReader.readLine());					
					for (int i = 0 ; i < numberOfQueries ; i++)
					{
						queries.add(bufferedReader.readLine());
					}
					
					int numberOfClauses = Integer.parseInt(bufferedReader.readLine());
					
					ArrayList<String> beforeKB = new ArrayList<String>();
					for(int j = 0; j < numberOfClauses; j++){
						String readLine = bufferedReader.readLine();						
						beforeKB.add(readLine);						
					}
					
					ArrayList<String> afterStandardize = standardize(beforeKB);
					for (int i = 0 ; i < afterStandardize.size() ; i++)
					{
						String line = afterStandardize.get(i);
						String[] clause = line.split("=>");
						String predicateName = null;
						boolean isFact = true;
						String predicateNameVariable = null;
						KnowledgeBase mykb_Objects = null;
						
						if (clause.length == 1)
						{
							predicateName = getPredicateName(line.trim());
						}
						else
						{
							isFact = false;
							predicateName = getPredicateName(clause[1].trim());
						}
						if (myKB.containsKey(predicateName))
							mykb_Objects = myKB.get(predicateName);
						else
							mykb_Objects = new KnowledgeBase();
						ArrayList<String> predicateNameVariableList = new ArrayList<String>();
						if (isFact)
							mykb_Objects.setFacts(line.trim());
						else{
							predicateNameVariable=clause[1].trim();
							predicateNameVariable = predicateNameVariable.substring(predicateNameVariable.indexOf("(")+1, predicateNameVariable.indexOf(")"));
							predicateNameVariableList = new ArrayList<String>(Arrays.asList(predicateNameVariable.split(",")));
						}
						if(!isFact){
							mykb_Objects.setClause(clause[0].trim(), predicateNameVariableList);
							mykb_Objects.setrhsPredicateName(clause[1].trim());
							mykb_Objects.setRHS(clause[1].trim());
						}	
						
						myKB.put(predicateName, mykb_Objects);							
					}					
					PrintWriter writer = new PrintWriter("output.txt", "UTF-8");
					for(int i = 0; i < queries.size(); i++){
						String query_new = getPredicateName(queries.get(i));
						KnowledgeBase kbobj = getClausesFactsList(query_new.trim());
						if(kbobj != null){
						List<String> knownFacts = new ArrayList<String>();
						knownFacts =  kbobj.getFacts();
						if(knownFacts.contains(queries.get(i)))
						{
							System.out.println("TRUE");
							writer.println("TRUE");
							continue;
						}
						}
						ArrayList<HashMap<String,String>> theta_BackWardOR = new ArrayList<HashMap<String,String>>();
						theta_BackWardOR = backwardChaining_OR(queries.get(i),new ArrayList<HashMap<String,String>>(), 1, new ArrayList<String>());
						if(theta_BackWardOR.size() >= 1){
							System.out.println("TRUE");	
							writer.println("TRUE");
							}
						else{
							System.out.println("FALSE");
							writer.println("FALSE");
							}
						}	
					writer.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();	
				}
				finally
				{
					if (bufferedReader != null)
						bufferedReader.close();
					if (fileReader != null)
						fileReader.close();
				}						
		
	}
	
	private static boolean isFact(String query) throws Exception {
		// TODO Auto-generated method stub
		boolean found = false;	
		String query_new = getPredicateName(query.trim());
		KnowledgeBase kbobj_temp = getClausesFactsList(query_new);
		if(kbobj_temp != null){
		List<String> knownFacts = new ArrayList<String>();
		knownFacts =  kbobj_temp.getFacts();
		if(knownFacts.contains(query.trim()))
		{
			found = true;
		}
		}		
		return found;
	}
	
	@SuppressWarnings("unchecked")
	private static ArrayList<HashMap<String,String>> backwardChaining_OR(String query,ArrayList<HashMap<String,String>> theta,int level, ArrayList<String> visited) throws Exception{
		ArrayList<HashMap<String,String>> theta_temp = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String,String>> theta_AND = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String,String>> theta_OR = new ArrayList<HashMap<String,String>>();
		List<String> toProveList_Clauses = new ArrayList<String>();
		List<String> toProveList_Facts = new ArrayList<String>();
		List<String> toProveAll = new ArrayList<String>();
		ArrayList<String> visitedList = new ArrayList<String>();
		visitedList.addAll(visited);
		theta_temp = (ArrayList<HashMap<String, String>>) theta.clone();
		String searchToProve = getPredicateName(query.trim());
		
		String query_new = getPredicateName(query.trim());
		KnowledgeBase kbobj_temp = getClausesFactsList(query_new);
		if(kbobj_temp != null){
		List<String> knownFacts = new ArrayList<String>();
		knownFacts =  kbobj_temp.getFacts();
		if(knownFacts.contains(query.trim()))
		{
			return theta;
		}
		}
		if(visitedList.contains(query))
			return theta_AND;
		visitedList.add(query);
		
		KnowledgeBase kbobj = getClausesFactsList(searchToProve);
		if(kbobj == null){
			return theta_AND;
		}
		
		toProveList_Clauses = kbobj.getClauses();
		toProveAll.addAll(toProveList_Clauses);
		toProveList_Facts = kbobj.getFacts();
		toProveAll.addAll(toProveList_Facts);

		
			for(int iter=0; iter < toProveAll.size();iter++ ){
				ArrayList<HashMap<String,String>> theta_OR_unify = new ArrayList<HashMap<String,String>>();
				if(iter<toProveList_Clauses.size()){
					HashMap<String,String> new_theta = new HashMap<String,String>();
					new_theta = unification_Clause(kbobj.getRHS(iter),query,theta);
					if(isFact(toProveAll.get(iter))&&(new_theta == null || new_theta.size() == 0)){
						new_theta.put("Temp", "Temp");
					}
					if(new_theta.size() > 0){
					theta_OR_unify.add(new_theta);
					theta_AND = backwardChaining_AND(toProveAll.get(iter),theta_OR_unify,level,visitedList);
					theta_AND = variableUnification(theta_OR_unify, theta_AND);
					
					if(level == 1 && theta_AND.size() >=1 ){
						return theta_AND;
					}
					}
					theta_OR.addAll(theta_AND);
					
				}
				else{
					HashMap<String,String> new_unified_theta = new HashMap<String,String>();
					new_unified_theta = unification_Clause(toProveAll.get(iter),query,theta);
					if(new_unified_theta != null && new_unified_theta.size() != 0){
						theta_OR_unify.add(new_unified_theta);
						theta_OR_unify = variableUnification(theta_temp, theta_OR_unify);
						theta_OR.addAll(theta_OR_unify);
					}
				}
			}						
			 return theta_OR; 
	}
	
	@SuppressWarnings("unchecked")
	private static ArrayList<HashMap<String, String>> backwardChaining_AND(String toProve, ArrayList<HashMap<String, String>> theta, int level, ArrayList<String> visitedList) throws Exception {
		ArrayList<HashMap<String,String>> new_theta_ToPass = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String,String>> theta_AND = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String,String>> theta_temp = new ArrayList<HashMap<String,String>>();
		ArrayList<HashMap<String,String>> theta_fromOR_1 = new ArrayList<HashMap<String,String>>();
		theta_temp = (ArrayList<HashMap<String, String>>) theta.clone();
		String first  = toProve;
		String rest = null;
		if(toProve.contains("^")){
		first =  toProve.substring(0, toProve.indexOf("^") - 1).trim();
		rest = toProve.substring(toProve.indexOf("^") + 1).trim();
		}
		else{
			first = toProve;
		}
		for(int i=0; i< theta_temp.size(); i++){
			String substitute = first;			
			ArrayList<String> goal = (ArrayList<String>) getClauseVariables(first);
			for(int k=0; k<goal.size();k++){
				if((!isLower(goal.get(k))) && (theta.get(i).get(goal.get(k)) != null) && (isLower(theta.get(i).get(goal.get(k))))){
					first = first.replaceAll(goal.get(k),theta.get(i).get(goal.get(k)));
				}
			}					
			ArrayList<HashMap<String, String>> theta_new = new ArrayList<HashMap<String,String>>();
			theta_new.add(theta.get(i));
			level= level +1;
			ArrayList<HashMap<String, String>> theta_fromOR = backwardChaining_OR(first, theta_new,level,visitedList);
			
			if( rest != null){
				theta_fromOR_1 = (ArrayList<HashMap<String, String>>) theta_fromOR.clone();
				for(int c=0; c < theta_fromOR_1.size();c++){
					for(int d=0;d<theta_temp.size();d++){
						theta_fromOR.get(c).putAll(theta_temp.get(d));	
					HashMap<String, String> hashMap = new HashMap<String, String>();
					HashMap<String, String> hashMap_new = new HashMap<String, String>();
					hashMap_new.putAll(theta_fromOR.get(c));
					HashMap<String, String> hashMap1 = (HashMap<String, String>) hashMap_new.clone();
					Set<String> keyset = hashMap_new.keySet();
					Iterator<String> keys = keyset.iterator();
					while(keys.hasNext()){
				    	String key = keys.next();
				    	if(!isLower(hashMap_new.get(key))){
				    		String Value = hashMap_new.get(key);
				    		if(hashMap_new.containsKey(Value)) {
				    			hashMap1.remove(key);
				    			hashMap1.put(key, hashMap_new.get(Value));
				    		}
				    	}
					}
					hashMap = hashMap1;					
					theta_fromOR.remove(c);
					theta_fromOR.add(c,hashMap);
					}
				}
			for(int j=0;j<theta_fromOR.size();j++){
				ArrayList<HashMap<String,String>> theta_rest = new ArrayList<HashMap<String,String>>();
				theta_rest.add(theta_fromOR.get(j));
				new_theta_ToPass = backwardChaining_AND(rest, theta_rest, level,visitedList);
				theta_AND.addAll(new_theta_ToPass);
			}
		}
			else{
			theta_AND.addAll(theta_fromOR);
			}
		}
		
		return theta_AND;
	}

	@SuppressWarnings("unchecked")
	private static ArrayList<HashMap<String, String>> variableUnification(ArrayList<HashMap<String, String>> theta, ArrayList<HashMap<String, String>> theta_AND){		
		ArrayList<String> variableSet = new ArrayList<String>();
		ArrayList<HashMap<String,String>> theta_AND_1 = new ArrayList<HashMap<String,String>>();
		theta_AND_1 = (ArrayList<HashMap<String, String>>) theta_AND.clone();
		HashMap<String, String> new_temp = new HashMap<String, String>();
		new_temp = theta.get(0);
		Set<String> set = new_temp.keySet();		
		Iterator<String> keys = set.iterator();
		while(keys.hasNext()){
			String t = keys.next();
			if(!isLower(new_temp.get(t))){
				variableSet.add(t);
			}				
		}
		for(int i=0;i<theta_AND.size();i++){
			for(int j=0;j<variableSet.size();j++){
				if(theta_AND.get(i).containsKey(variableSet.get(j))){
					String copyFromClone = theta_AND_1.get(i).get(variableSet.get(j));
					theta_AND_1.get(i).put(new_temp.get(variableSet.get(j)), copyFromClone);
				}
			}
		}
		return theta_AND_1;
	}
	
	private static HashMap<String,String> unification_Clause(String rhs, String query,ArrayList<HashMap<String, String>> theta) {
		List<String> toUnifyValue = new ArrayList<String>();
		ArrayList<String> temp = new ArrayList<String>();
		HashMap<String,String> unification = new HashMap<String,String>();
		toUnifyValue = getClauseVariables(rhs);
		List<String> queryValue = new ArrayList<String>();
		queryValue = getClauseVariables(query);
		boolean checkQuery = true;
		ArrayList<String> variables = (ArrayList<String>) getClauseVariables(query);
		Iterator i = variables.iterator();
		while(i.hasNext()){
			if(!isLower(i.next().toString())){
				 checkQuery = false;
				 break;
			}
		}
		
		boolean checkRhs = true;
		ArrayList<String> variables1 = (ArrayList<String>) getClauseVariables(rhs);
		Iterator it = variables1.iterator();
		while(it.hasNext()){
			if(!isLower(it.next().toString())){
				checkRhs = false;
				 break;
			}
		}
		
		if(query.equals(rhs) && (checkQuery == true) && (checkRhs == true))
		{
			unification.put("Temp", "Temp");
		}
		if(queryValue.size() == toUnifyValue.size()){
		for(int iter =0; iter < queryValue.size(); iter++){
			
			if(isLower(queryValue.get(iter))){
				if(temp.contains(toUnifyValue.get(iter))){
					unification.clear();
					break;
				}
			}
			else if(isLower(toUnifyValue.get(iter))){
				if(temp.contains(queryValue.get(iter))){
					unification.clear();
					break;
				}
			}
			else{
				if(temp.contains(queryValue.get(iter))){
					unification.clear();
					break;
				}
			}

			if(!isLower(toUnifyValue.get(iter)) && (!isLower(queryValue.get(iter)))){	
				unification.put(toUnifyValue.get(iter),queryValue.get(iter));
				temp.add(queryValue.get(iter));
			}
			
			if(!isLower(toUnifyValue.get(iter)) && (isLower(queryValue.get(iter)))){
				if(unification.containsKey(toUnifyValue.get(iter))  && (!unification.get(toUnifyValue.get(iter)).equals(queryValue.get(iter)))  ){
					unification.clear();
					break;
				}
				unification.put(toUnifyValue.get(iter),queryValue.get(iter));
				temp.add(toUnifyValue.get(iter));
			}
			
			if(isLower(toUnifyValue.get(iter)) && (!isLower(queryValue.get(iter)))){
				if(unification.containsKey(queryValue.get(iter))  && (!unification.get(queryValue.get(iter)).equals(toUnifyValue.get(iter)))    ){
					unification.clear();
					break;
				}				
					unification.put(queryValue.get(iter),toUnifyValue.get(iter));
					temp.add(queryValue.get(iter));
			}
			
			if(isLower(toUnifyValue.get(iter)) && (isLower(queryValue.get(iter)))){
				if(!toUnifyValue.get(iter).equals(queryValue.get(iter))){
					unification.clear();
					break;
				}
			}				
		}
		}
		return unification;
	}

	private static KnowledgeBase getClausesFactsList(String searchToProve){ 
		KnowledgeBase kbobject = myKB.get(searchToProve);
		return kbobject;
	}
	
	private static boolean isLower(String s){
		return Character.isUpperCase(s.charAt(0));
	}
	
	private static List<String> getClauseVariables (String query){
		List<String> list = new ArrayList<String>();
		String predicateNameVariable = query.substring(query.indexOf("(")+1, query.indexOf(")"));
		list = new ArrayList<String>(Arrays.asList(predicateNameVariable.split(",")));
		return list;
	}

	public static ArrayList<String> standardize(ArrayList<String> beforeKB) throws Exception
	{
		ArrayList<String> standardizedKB = new ArrayList<String>();
		int count = 1;
		
		for(String iter : beforeKB){
			StringBuffer stringBuffer = new StringBuffer();
			if(iter.contains("=>")){
				
				String[] splitClause = iter.split("=>");
				String rhs = splitClause[1].trim();
				String lhs = splitClause[0].trim();
				String[] splitLHS = lhs.split("\\^");
				HashMap<String,String> standard = new HashMap<String,String>();
				for(int i = 0; i < splitLHS.length; i++){
					String temp = splitLHS[i].trim();
					stringBuffer.append(getPredicateName(temp)).append("(");
					ArrayList<String> toCheckList = new ArrayList<String>();
					toCheckList = getStandardVariables(temp); 
					
					for(int j=0; j < toCheckList.size(); j++){						
						String var = toCheckList.get(j);
						if(!standard.containsKey(toCheckList.get(j)) && !isLower(toCheckList.get(j))){
							standard.put(toCheckList.get(j), "x" + count);
							count++;
						}	
						String new_Var = standard.get(var);
						 if(new_Var == null)
							 new_Var = var;
						
						 stringBuffer.append(new_Var);
						 if( (j+1) == toCheckList.size()){
							 stringBuffer.append(")");
						 }
						 else
							 stringBuffer.append(",");
							 
					}
					if ( (i+1) == splitLHS.length){
						 stringBuffer.append(" => ");
					}
					else
						 stringBuffer.append(" ^ ");
				}
				String tempRHS = rhs;
				stringBuffer.append(getPredicateName(tempRHS)).append("(");
				ArrayList<String> toCheckListRHS = new ArrayList<String>();
				toCheckListRHS = getStandardVariables(tempRHS); 
				
				for(int j=0; j < toCheckListRHS.size(); j++){						
					String var = toCheckListRHS.get(j);
					if(!standard.containsKey(toCheckListRHS.get(j)) && !isLower(toCheckListRHS.get(j))){
						standard.put(toCheckListRHS.get(j), "x" + count);
						count++;
					}	
					String new_Var = standard.get(var);
					 if(new_Var == null)
						 new_Var = var;
					
					 stringBuffer.append(new_Var);
					 if( (j+1) == toCheckListRHS.size()){
						 stringBuffer.append(")");
					 }
					 else
						 stringBuffer.append(",");
						 
				}
				
				standardizedKB.add(stringBuffer.toString());
			}
			
			else{
				standardizedKB.add(iter);
			}
		}
		
		return standardizedKB;
		

	}
	
	public static String getPredicateName(String predicate) throws Exception
	{
		return predicate.substring(0,predicate.indexOf("("));
	}

	public static String getPredicateNameVariables(String predicate) throws Exception
	{
		return predicate.substring(0,predicate.indexOf("("));
	}


	public static ArrayList<String> getStandardVariables(String value) throws Exception
	{
		ArrayList<String> variableList = new ArrayList<String>();
		String predicateNameVariable = value.trim();
		predicateNameVariable = predicateNameVariable.substring(predicateNameVariable.indexOf("(")+1, predicateNameVariable.indexOf(")"));
		variableList = new ArrayList<String>(Arrays.asList(predicateNameVariable.split(",")));
		return variableList;
		
	}
}

class KnowledgeBase
{
	private ArrayList<String> facts = new ArrayList<String>();
	private ArrayList<String> clauses = new ArrayList<String>();
	private List<String> clausesVariable = new ArrayList<String>();
	private ArrayList<String> RHS = new ArrayList<String>();
	
 	String rhsPredicateName;
	
	public String getrhsPredicateName() {
		return rhsPredicateName;
	}
	public void setrhsPredicateName(String rhsPredicateName) {
		this.rhsPredicateName = rhsPredicateName;
	}
	
	public void setFacts(String a_fact)
	{
		this.facts.add(a_fact);
	}
	
	public ArrayList<String> getFacts()
	{
		return this.facts;
	}
	
	public void setClause(String clause, List<String> variable)
	{
		this.clauses.add(clause);
		this.clausesVariable = variable;
	}
	
	public ArrayList<String> getClauses()
	{
		return this.clauses;
	}
	
	
	public List<String> getClauseVariables()
	{
		return this.clausesVariable;
	}
	public void setRHS(String rhs)
	{
		this.RHS.add(rhs);
	}
	
	public String getRHS(int iter)
	{
		return this.RHS.get(iter);
	}

}



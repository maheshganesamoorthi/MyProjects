

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Stack;
import static java.util.Arrays.fill;

public class waterFlow {
	static int numberOfTestCase;
	static List<Node> temp1;
	static List<Node> temp2;
	static String sourceNode;
    static List<String> destinations;
    static List<String> middleNodes;
    static int numberOfPipes;
    static int startTimeOfWaterFlow;
    static List<String> nodesList;
    static int numberOfNodes;
    static Map<String,List<Node>> graph = new HashMap<String, List<Node>>();
    static BufferedWriter bufferedWriter = null;
    static File outputfilename=null;
	public static void main(String[] args) throws IOException,NumberFormatException {
		try {
			
			File readFile = new File(args[1]);
			FileReader fileReader = new FileReader(readFile);
			BufferedReader bufferedReader = new BufferedReader(fileReader);	
			 outputfilename = new File("output.txt");
			 bufferedWriter = new BufferedWriter(new FileWriter(outputfilename));
			List<String> list = new ArrayList<String>();
			String line = null;
			while (true) {
			     line = bufferedReader.readLine();
			    if (line == null) {
				break;
			    }
			    list.add(line);
			}			
			fileReader.close();	
			String offset = list.get(0).trim();
			numberOfTestCase = Integer.parseInt(offset);
			int j=1;
			int k=1;
			int counter=1;
			int tempCount=0;
			for (int i=0; i<numberOfTestCase;){	
				tempCount=0;
			while(j < list.size()){
				tempCount+=1;
				if (!(list.get(j).isEmpty()) || tempCount <= 5)
				{					
					counter+=1;
					j++;
				}
				else {
					break;
				}
				}				
				String	algorithmMethod = list.get(k).trim();
				sourceNode = list.get(k+1).trim();
				destinations = new ArrayList<String>(Arrays.asList(list.get(k+2).split(" ")));
				middleNodes = new ArrayList<String>(Arrays.asList(list.get(k+3).split(" ")));
				nodesList = new ArrayList<String>();
				nodesList.add(sourceNode);
				nodesList.addAll(destinations);
				nodesList.addAll(middleNodes);               
                Collections.sort(nodesList);
                numberOfNodes = nodesList.size();
				numberOfPipes = Integer.parseInt(list.get(k+4).trim());
				Map<Integer, String> hashMap = new HashMap<Integer, String>();
				for (int pipeRoute=0; pipeRoute<numberOfPipes; )
				{
					hashMap.put(pipeRoute+1, list.get(k+5+pipeRoute));
					pipeRoute++;
				}
			    startTimeOfWaterFlow = Integer.parseInt(list.get(k+5+numberOfPipes).trim());			     
			     String temp[];
			        for (Map.Entry<Integer, String> entry : hashMap.entrySet()) {
			            String testCode1 =  entry.getValue();
			        	temp = testCode1.split(" ");	
			        	Node tempobj = new Node();
			            tempobj.setNodeName(temp[1]);
			            tempobj.setNodeDistance(Integer.parseInt(temp[2]));
			            for(int y=0;y<Integer.parseInt(temp[3]);y++) {
			                String t[] =temp[(y+1)+3].split("-");
			                for(int x=Integer.parseInt(t[0]);x<=Integer.parseInt(t[1]);x++){
			                    tempobj.timer[x%24]=true;
			                }
			            }
			                   
			            if(graph.containsKey(temp[0])) {
			                    List<Node> templist1 = graph.get(temp[0]);
			                    templist1.add(tempobj);
			            }
			            else {
			                List<Node> templist1 = new ArrayList<Node>();
			                templist1.add(tempobj);
			                graph.put(temp[0],templist1 );
			            }
			        }

			        for(Map.Entry<String,List<Node>> m:graph.entrySet()){
			            temp1 = (List<Node>) m.getValue();
			            Collections.sort(temp1, COMPARATOR_ASC);
			        }  
				
				if("BFS".equals(algorithmMethod))
				{
					bfs();
					destinations.clear();
					middleNodes.clear();
					nodesList.clear();
					temp1.clear();
					graph.clear();
				}
				else if ("DFS".equals(algorithmMethod)){
					dfs();
					destinations.clear();
					middleNodes.clear();					
					nodesList.clear();
					temp1.clear();
					temp2.clear();
					graph.clear();
				}
				else if ("UCS".equals(algorithmMethod)){
					ucs();
					destinations.clear();
					middleNodes.clear();					
					nodesList.clear();
					temp1.clear();
					graph.clear();
				}
				else 
					break;
				
				i++;
				k = counter+i;
				j=k;
				
			}
			bufferedReader.close();
			bufferedWriter.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
        finally  {
        	bufferedWriter.close();
        }
	}
	public static void bfs() throws IOException{
      boolean found = false;
      String elementFound="None";
      List<Node> frontier = new ArrayList<Node>();
      Node abc = new Node();
      abc.setNodeName(sourceNode);
      frontier.add(abc);
      List<String> exploredList = new ArrayList<String>();
      Map<String,Integer> backupbfs = new HashMap<String, Integer>();
      backupbfs.put(abc.getNodeName(),abc.getNodeDistance());
      while(!frontier.isEmpty() && !found) {    	     
    	List<Node> graphlist = graph.get(frontier.get(0).getNodeName()); 
      	if(graphlist != null){
      	for(Node i : graphlist){
      		if( (!exploredList.contains(i.getNodeName())) && (!backupbfs.containsKey(i.getNodeName()))){
      			 if(!destinations.contains(i.getNodeName())) {
      				 i.nodeLevel = frontier.get(0).getNodeLevel()+1;
      				 frontier.add(i);      				 
                   }
                   else {
                  	 elementFound = i.getNodeName();   
                  	 i.nodeLevel =frontier.get(0).getNodeLevel() + 1 + startTimeOfWaterFlow;
                       found = true;
                       int optimalBfsCost = i.nodeLevel;
                       if(optimalBfsCost > 23)
             			{
             				optimalBfsCost = optimalBfsCost % 24;
             			}
					   generateOutputFile(elementFound,optimalBfsCost);					
                       break;                         
                   }
      			
      		}
      		if(!exploredList.contains(i.getNodeName())){
      			backupbfs.put(i.getNodeName(),i.getNodeDistance());
	      	}
      	}
      	}
      	exploredList.add(frontier.get(0).getNodeName());
      	frontier.remove(0);      	
      }
      if(found == false){
		  generateOutputFile(elementFound,0);
	  }
		return ;		
	}

	public static void dfs() throws IOException{
        for(Map.Entry<String,List<Node>> m:graph.entrySet()){
	            temp2 = (List<Node>) m.getValue();
	            Collections.sort(temp2, COMPARATOR_DESC);
	        }
      Stack<Node> stack= new Stack<Node>();
      boolean found = false;
      String elementFound="None";
      Node abc = new Node();
      abc.setNodeName(sourceNode);
      stack.add(abc);
      Map<String,Integer> backUpStack = new HashMap<String, Integer>();
      backUpStack.put(abc.getNodeName(),abc.getNodeDistance());
      List<String> exploredList = new ArrayList<String>();
      while(!stack.isEmpty() && !found) {    	     
    	  List<Node> graphlist = graph.get(stack.peek().getNodeName());
    	  exploredList.add(stack.peek().getNodeName());
    	  int cost=stack.peek().getNodeLevel();
    	  String goalNode = stack.peek().getNodeName();
    	  stack.pop();
    	  if(destinations.contains(goalNode)){
    			elementFound=goalNode;
    			found = true;
    			int optimalDfsCost = cost + startTimeOfWaterFlow;
    			if(optimalDfsCost > 23)
    			{
    				optimalDfsCost = optimalDfsCost % 24;
    			}
    			generateOutputFile(elementFound,optimalDfsCost);
    			break;      			      			
    		}
      	if(graphlist != null){      	
      		for(Node i : graphlist){
      			Node node2 = new Node();
      			node2.setNodeName(i.getNodeName());
  				node2.setNodeDistance(i.getNodeDistance());
      			if((!exploredList.contains(i.getNodeName()))) 
      			stack.push(i);
      			i.nodeLevel = cost + 1;
      			if(!exploredList.contains(i.getNodeName())){
      				backUpStack.put(i.getNodeName(),i.getNodeDistance());
    	      	}
      		}
      		
      		
      	}      	      
      }
      if(found == false){
		  generateOutputFile(elementFound,0);
	  }
		return ;
	}

	public static void ucs() throws IOException{
	      boolean found = false;
	      boolean pipeDisregard = false;
	      String elementFound="None";
	      PriorityQueue<Node> frontier =  new PriorityQueue<Node>(1000,COMPARATOR_UCSCOST);
	      Node abc = new Node();
	      abc.setNodeName(sourceNode);
	      abc.setNodeDistance(startTimeOfWaterFlow);
	      List<String> exploredList = new ArrayList<String>();
          frontier.add(abc);	
	      Map<String,Integer> backup = new HashMap<String, Integer>();
	      backup.put(abc.getNodeName(),abc.getNodeDistance());
	      Map<Integer,Integer> timerList = new HashMap<Integer,Integer>();
	      while(!frontier.isEmpty() && !found) {	
	    	  timerList.clear();
	    	  List<Node> graphlist = graph.get(frontier.peek().getNodeName());	    	  
	    	  String toGoalTest = frontier.peek().getNodeName();
	    	  int lowestCostNode = frontier.peek().getNodeDistance() ;
	    	  Node node = new Node();	      	 	      	  
	    	  node = frontier.remove();
	    	  if (destinations.contains(toGoalTest)){
	    		  elementFound =  toGoalTest;
	    		  found = true;
	    		  int optimalUcsCost = lowestCostNode % 24;	    		    
	    		  generateOutputFile(elementFound,optimalUcsCost);
	    		  break;
	    	  }
	    	  exploredList.add(node.getNodeName());
	      	if(graphlist != null){	      	
	      	for(Node i : graphlist){	
	      		timerList.clear();
	      		for (int k=0; k<i.timer.length; k++){
	      			if (i.timer[k] == true)
	      			{
	      				timerList.put(k,k+1);
	      			}
	      		}
	      		for (Map.Entry<Integer, Integer>  key : timerList.entrySet()){
	      			if ((node.getNodeDistance() % 24) == key.getKey())
	      				pipeDisregard = true;
	      		}
	      		if( (!exploredList.contains(i.getNodeName())) && (!backup.containsKey(i.getNodeName()))
	      				&& (pipeDisregard == false)){
	      			i.nodeDistance = i.nodeDistance + node.getNodeDistance();
	      			frontier.add(i);	  
	      			backup.put(i.getNodeName(),i.getNodeDistance());
	      		}
	      		else{
	      			Node node1 = new Node();
	      			if(backup.containsKey(i.getNodeName()) && (backup.get(i.getNodeName()) > (i.getNodeDistance()+node.getNodeDistance())) && (pipeDisregard == false)){
	      				node1.setNodeName(i.getNodeName());
	      				node1.setNodeDistance(backup.get(i.getNodeName()));
	      				if(frontier.contains(node1)){
	      				frontier.remove(node1);
      					i.nodeDistance = i.nodeDistance + node.getNodeDistance();
	      				frontier.add(i);
	      				
	      				
	      				}
	      			}
	      		}
		    	  if(pipeDisregard ==  true){
		    		  pipeDisregard = false;
		    	  }	      		
	      	}
	    	}	         
	      }

	  if(found == false){
		  generateOutputFile(elementFound,0);
	  }
			return ;		
		}

	public static class Node{
		String nodeName;
		int nodeDistance;
		int nodeLevel;
		 boolean[] timer = new boolean[24];
		 public boolean equals(Object o){
			 Node temp = (Node)o;
			 return this.nodeName.equals(temp.nodeName) && this.nodeDistance==(temp.nodeDistance);
		 }
		 public Node() {
	            this.nodeName = null;
	            this.nodeDistance = 0;
	            this.nodeLevel=0;
	            fill(this.timer,false);
	        }
		public String getNodeName() {
			return nodeName;
		}
		public void setNodeName(String nodeName) {
			this.nodeName = nodeName;
		}
		public int getNodeDistance() {
			return nodeDistance;
		}
		public void setNodeDistance(int nodeDistance) {
			this.nodeDistance = nodeDistance;
		}
		public int getNodeLevel() {
			return nodeLevel;
		}
		public void setNodeLevel(int nodeLevel) {
			this.nodeLevel = nodeLevel;
		}
		
	};
	

    private static Comparator<Node> COMPARATOR_ASC = new Comparator<Node>()
    {
        public int compare(Node o1, Node o2)
        {
            return o1.getNodeName().compareToIgnoreCase(o2.getNodeName());
        }
    };
    
    private static Comparator<Node> COMPARATOR_DESC = new Comparator<Node>()
    {
        public int compare(Node o1, Node o2)
        {
            return o2.getNodeName().compareToIgnoreCase(o1.getNodeName());
        }
    };
    
    private static Comparator<Node> COMPARATOR_UCSCOST = new Comparator<Node>()
    {
        public int compare(Node o1, Node o2)
        {
         if( o1.getNodeDistance() == o2.getNodeDistance()){
        	 return o1.getNodeName().compareToIgnoreCase(o2.getNodeName());
         }
        	return Integer.compare(o1.getNodeDistance(), o2.getNodeDistance());
        }
    };
    public static void generateOutputFile(String destNode,int cost) throws IOException {
        if(destNode.equals("None")) {
        	bufferedWriter.append(destNode);
        	 bufferedWriter.newLine();
        }
        else
        {
        	bufferedWriter.append(destNode.toUpperCase()+" "+cost);
        	 bufferedWriter.newLine();
        }       
    }
    
}


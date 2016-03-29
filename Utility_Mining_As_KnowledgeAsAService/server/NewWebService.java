/*
 * NewWebService.java
 *
 * Created on January 19, 2012, 7:42 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package server;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;


import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import java.sql.*;
import java.io.*;
import java.math.BigInteger;
import java.util.*;
import java.util.Set;
import java.util.TreeSet;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/**
 *
 * @author KEERTHI
 */
@WebService()
public class NewWebService {
    public static int TC;
    static Statement stmt,stmt1;
static ResultSet rs,rs1,rs2,rs3,rs4,rs5;
static Connection con,con1,con2,con3,con4,con5;	
public static ArrayList<String> Cand_curr = new ArrayList<String>();
public static ArrayList<String> Cand_prev = new ArrayList<String>();
public static ArrayList<String> items = new ArrayList<String>();
public static ArrayList<String> singleitems = new ArrayList<String>();//itemset
public static ArrayList<Integer> siutility = new ArrayList<Integer>();
public static ArrayList<Integer> quantity = new ArrayList<Integer>();
public static ArrayList<String> comb = new ArrayList<String>();
public static ArrayList<Integer> item_quant = new ArrayList<Integer>();
public static ArrayList<String> trans_list = new ArrayList<String>();//item values
public static ArrayList<String> CR = new ArrayList<String>();
public static ArrayList<String> trans_list1 = new ArrayList<String>();
public static ArrayList<String> temp = new ArrayList<String>();
public static ArrayList<String> quantity_list = new ArrayList<String>();
public static ArrayList<Integer> transc = new ArrayList<Integer>();//item id
public static ArrayList<String> ufi = new ArrayList<String>();
public static ArrayList<String> iname = new ArrayList<String>();

    private int total_no_of_items;
    private int pro=0;
    private String result;

    private int total_no_of_trans;

    private int[] tid;
//private String [][] iname;
    private String[] itemsets;//holds itemvalue

    private String[] quantitysets;

  //  private int j;
public static ArrayList<Integer> uv = new ArrayList<Integer>();
    public static int mut=0,tu=0;
    /**
     * Web service operation
     */
    @WebMethod
    public String fum(@WebParam(name = "item") String item) {
   int huic=0;
        int cnt=0;	
        String xmlResultSet="<MinedSets>";
       //String xx="player";
        String a = "transactions.xml";
           String b = "profit.xml";
           float ialpha=22;
                       
		try
		{
                       String str;
                       System.out.println("hi");
			System.out.println(System.currentTimeMillis());
                        String iid[],profit[];
			
			//float ialpha=Float.parseFloat(salpha.toString());
       DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
       DocumentBuilder db = dbf.newDocumentBuilder();
       Document dom= db.parse(b);
       Element docEle = dom.getDocumentElement();
       NodeList nl = docEle.getElementsByTagName("item");
       total_no_of_items=nl.getLength();
       iid=new String[total_no_of_items];
       profit=new String[total_no_of_items];     
           
        int jjj=0,kk=-1;
       	for(int i = 0 ; i < nl.getLength();i++) {
            Element el = (Element)nl.item(i);
            //int id=Integer.parseInt(getTextValue(el,"id"));
            //String name = getTextValue(el,"name");
            System.out.println("element el"+ el);
           //  System.out.println("node n1"+ nl);
            double pprofit=Double.parseDouble(getTextValue(el,"profit"));     //
            iid[jjj]=getTextValue(el,"id");
          String name=getTextValue(el,"name");
          iname.add(name);
            profit[jjj]=getTextValue(el,"profit");
            System.out.println("id-"+iid[jjj]+ " "+"name  -"+iname+""+profit[jjj]);
            jjj++;
            
            }
      
                // Calculating Utility value for single items
                
                
		items.clear();
		quantity.clear();
		item_quant.clear();
                singleitems.clear();
		siutility.clear();
		      
                
       dom= db.parse(a);
       docEle = dom.getDocumentElement();
       nl = docEle.getElementsByTagName("transaction");
       total_no_of_trans=nl.getLength();         //item length
       tid=new int[total_no_of_trans];
       itemsets=new String[total_no_of_trans];
       quantitysets=new String[total_no_of_trans];
           int jj=0;     
        for(int i=0;i<total_no_of_trans;i++)
       {
           Element el = (Element)nl.item(i);
           int id=Integer.parseInt(getTextValue(el,"id"));
           String itemset=getTextValue(el,"items");
           String quantityset=getTextValue(el,"quantities");
           tid[jj]=id;
           itemsets[jj]=itemset;//holds itemvalue
           quantitysets[jj]=quantityset;
            System.out.println("items & quantitysets        "+itemset+ " "+quantitysets[jj]);
           jj++;
       }         
       
                            	
				
				String s1,s2,t1,t2;
	                       for(int ki=0;ki<total_no_of_trans;ki++)
				{
				//System.out.println("\n");	
	                        s1=itemsets[ki];
				s2=quantitysets[ki];
				StringTokenizer st1 = new StringTokenizer (s1);
				int ic=0;
				while (st1.hasMoreTokens ())
				{
				t1=st1.nextToken ();
				items.add(t1);
                                if(!singleitems.contains(t1))
                                {
                                        singleitems.add(t1);
                                        siutility.add(0);
                                         System.out.println(singleitems);
                                         System.out.println(siutility);  /*extracts all the items purchased from database-
                                                                                
                                                                                [webcam]
                                                                                [0]
                                                                                [webcam, player]
                                                                                [0, 0]
                                                                                [webcam, player, speaker]
                                                                                [0, 0, 0]
                                                                                [webcam, player, speaker, laptop]
                                                                                [0, 0, 0, 0]
                                                                                [webcam, player, speaker, laptop, printer]
                                                                                [0, 0, 0, 0, 0]*/

                                              
                              
                                }
                                
				ic++; //count of items in each transaction
                              }
				
                                
                               
                                trans_list.add(s1);
				quantity_list.add(s2);
				transc.add(ic);
				StringTokenizer st2 = new StringTokenizer (s2);
				while (st2.hasMoreTokens ())
				{
				t1=st2.nextToken ();
				quantity.add(Integer.parseInt(t1));
				}
				}
			System.out.println("extracted");
				System.out.println("\n item\n" +items);     // all items in the transaction -database
			System.out.println("\n quantity\n" +quantity);
                               System.out.println(" " + "\nno of items in transc\n" +transc);
                               System.out.println("transcation list \n" +trans_list);
                          System.out.println("Candidate 1 Itemset \n" +singleitems);
                                
                                
				int tprofit;   
// code to compute utility value                                
                                for(int i=0;i<singleitems.size();i++)
                                {
                                    tprofit=0;
                                 //   System.out.println("size"+items.size());
                                 for(int j=0;j<items.size();j++)
                                {// System.out.println("j &i----"+items.get(j) +""+ singleitems.get(i));
                                       
                                    if(items.get(j).equalsIgnoreCase(singleitems.get(i)))
                                    {
                                          
                                      //System.out.println("j &i----"+items.get(j) +""+ singleitems.get(i));
                                          
                                        for(int k=0;k<total_no_of_items;k++)
                                        {
                                          //  System.out.println("total no fo items" + total_no_of_items);
                                         //   System.out.println("k & i---"+iname.get(k) +""+ singleitems.get(i));
                                            //System.out.println(iname.get(k).equalsIgnoreCase( singleitems.get(i)));
                                                     
                                            
                                                 if((iname.get(k)).equalsIgnoreCase(singleitems.get(i)))  // compares iname(item name from profit table with candidate singlr items
                                                {
                                                        //System.out.println("quantity"+quantity.get(j));
                                                        tprofit=tprofit+Integer.parseInt(profit[k])*quantity.get(j);// quantity all values ah
                                                     //   System.out.println("tprofit"+tprofit);
                                                }
                                        } //end pf for loop
                                      
                                       
                                    }
                                    
                                }   
                               
                                    tu=tu+tprofit;
                                    siutility.set(i,tprofit);    
                                             //System.out.println("siutility for "+ i+ "is"+ siutility);
                                              
                                }
                                System.out.println(tu);
                                System.out.println("Candidate 1 Itemset \n" +singleitems);
                                System.out.println("Utility \n" +siutility);
                                
                                 mut=(int)Math.ceil((ialpha*tu)/100);
                                 System.out.println("mut" +mut);
                                // System.out.println(System.currentTimeMillis());                      
// finished single utility itemsets
                                 
                                 
                                 
                                 
PrintWriter pout=null;
 int cntt=0;
 int there=0;
 int cthere=0;
         
 for(int i=0;i<trans_list.size();i++)                        
 {
    
                           
   String tl[]=trans_list.get(i).toString().split(" ");
    there=0;
    //System.out.println("temp:"+trans_list1.size());
    Arrays.sort(tl);            //bult-in function ah
 
    for(int ii=0;ii<tl.length;ii++) 
    System.out.println("Trans_list "+ tl[ii]); 
        // System.out.println("Trans_list1 size "+trans_list1.size());                           
    
  // first time trans_list1 size =0
    for(int j=0;j<trans_list1.size();j++)
   {
       String tl1[]=trans_list1.get(j).toString().split(" ");
       // System.out.println("Trans_list1 "+trans_list);                           
  for(int iii=0;iii<tl1.length;iii++) 
    System.out.println("Trans_list1 "+ tl1[iii]); 
    
        
       // System.out.println("Transaction "+trans_list1.get(j).toString().split(" "));                           
        
 
       Arrays.sort(tl1);

       

 TreeSet<String> tr = new TreeSet<String>();
 TreeSet<String> ttr = new TreeSet<String>();

String str1=arrayToString(tl," ");//new transac
String str2=arrayToString(tl1," ");//previous trans

for (int si=0;si<tl.length;si++)
            tr.add(tl[si]);
for (int sj=0;sj<tl1.length;sj++)
            ttr.add(tl1[sj]);
    //System.out.println("ttr"+ ttr+"tr"+tr);
if((Arrays.equals(tl,tl1))||(isSubset(tr,ttr)))   //ttr contains all tr
{
    there=1;
}
}//end of 2-for

if(there==0)
{
    
      if(cthere==0)
      {
    trans_list1.add(trans_list.get(i));
    String ti[]=trans_list.get(i).toString().split(" ");   
    
   System.out.println("to be calculted"+trans_list.get(i));
 
    //Combination
   
           
    StringBuffer combination=new StringBuffer ();;		
     int ccounter[]=new int[10000]; 
     int ii=1;
     int[] indices;
     int totalCombination=0;
     temp.clear();
    while(ii<=ti.length)
     {
         System.out.println("ti.lenght"+ti.length);
    
                         CombinationGenerator x = new CombinationGenerator (ti.length, ii);
           while (x.hasMore()) 
           {
                         combination = new StringBuffer ();
                         indices = x.getNext ();
                         for(int k1=0;k1<indices.length;k1++)
                         System.out.println("indices"+indices[k1]);
                         for (int m = 0; m < indices.length; m++) 
                         {
                                combination.append (ti[indices[m]]);
                                System.out.println("combination"+combination);

                                 if(m!=(indices.length-1))
                                    {
                                     combination.append (" ");
                                     System.out.println("combination_append"+combination);
                                    }
                         }

                         int xcomc=0;
                         int tutility=0;
                         String xcomb[]=combination.toString().split(" ");
                         for(int g=0;g<xcomb.length;g++)
                         System.out.println("xcomd"+xcomb[g]);
                         int futility=0,fin=0;
                         for(int t=0;t<trans_list.size();t++) 
                         { //1
                              int icount=0;
                                  System.out.println("trans_list" +trans_list.get(t));

                              String xt[]=trans_list.get(t).toString().split(" ");
                              String qt[]=quantity_list.get(t).toString().split(" ");
                              xcomc=0;
                             for(int s=0;s<xcomb.length;s++) 
                             {//2
                                for(int xti=0;xti<xt.length;xti++) 
                                { //3
    System.out.println("\nxt[xti]:\t"+ xt[xti]+"\t xcomb"+xcomb[s]);

                                    if(xt[xti].equals(xcomb[s])) 
                                    { //4
                                               // System.out.println("\nxt[xti]:\t"+ xt[xti]+"\t xcomb"+xcomb[s]);

                                         for(int itemid=0;itemid<total_no_of_items;itemid++) 
                                         {//5
                                                  System.out.println(iname.get(itemid));

                                             if(iname.get(itemid).equals(xcomb[s]))  {   //6
                                                 tutility=tutility+(Integer.parseInt(qt[xti])*Integer.parseInt(profit[itemid]));
                                                xcomc++;  
                                                 System.out.println("tutility"+tutility +"xcomc"+xcomc);
                            
                                              } //6    
                                              } //5    
                                 } //4   
                             }//3
                              if(xcomc==xcomb.length)           
                              {
                                  futility=futility+tutility;

                                    System.out.println("futility"+futility);
                                  tutility=0;
                                  xcomc=0;
                              }
                            }//2
                                tutility=0;

                          // utility calculation finished
                    }//1  


                      // calculating low utility items
                       for(int t=0;t<xcomb.length;t++)
                        {
                                     System.out.println("\nelse part " );
                                     //System.out.print(""+"\t xcomb"+ xcomb[t]);
                                     String s= xcomb[t].toString();
                                        System.out.println("x\t"+item+" \t  xcomb[t]/ s \t"+s );

                                     if(item.equals(s))
                                     continue;

                                       for(int itemid=0;itemid<total_no_of_items;itemid++)
                                      {
                                          //System.out.println(iname.get(itemid));
                                         if(xcomb[t].equals(iname.get(itemid)))

                                           if( pro<(Integer.parseInt(profit[itemid])))
                                 {
                                 pro= Integer.parseInt(profit[itemid]);
                                 result=xcomb[t];
                                  }
                                 }

                                 }


                         System.out.println("combination"+combination);
                      System.out.println("\nprofit "+ pro+" "+ "\tresult:\t"+result);

                     if(futility>=mut)
                     {
                       System.out.println("HUI is-"+combination.toString()+":"+futility);
                               xmlResultSet=xmlResultSet+"<set><itemset>"+combination.toString()+"</itemset>"+"<U-Value>"+futility+"</U-Value></set>";
                                huic++;





                     }

  System.out.println("end of hasmore() block");
   }// end of hasmore()
     
  ii++;
  }//end of whille loop- ti.length
} 
     
}// end of 1st if
 }
  
System.out.println("Number of HUI is:"+huic);
 //System.out.println(System.currentTimeMillis());
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
         System.out.println("in webservise function"+xmlResultSet);
      
           // return xmlResultSet;
         return result;
    }//end of FUM
    
    
    
   public static String arrayToString(String[] a, String separator) {
    String result = "";
    if (a.length > 0) {
        result = a[0];    // start with the first element
        for (int i=1; i<a.length; i++) {
            result = result + separator + a[i];
        }
    }
    return result;
}
    public static <T> Set<T> union(Set<T> setA, Set<T> setB) {
    Set<T> tmp = new TreeSet<T>(setA);
    tmp.addAll(setB);
    return tmp;
  }

  public static <T> Set<T> intersection(Set<T> setA, Set<T> setB) {
    Set<T> tmp = new TreeSet<T>();
    for (T x : setA)
      if (setB.contains(x))
        tmp.add(x);
    return tmp;
  }

  public static <T> Set<T> difference(Set<T> setA, Set<T> setB) {
    Set<T> tmp = new TreeSet<T>(setA);
    tmp.removeAll(setB);
    return tmp;
  }

  public static <T> Set<T> symDifference(Set<T> setA, Set<T> setB) {
    Set<T> tmpA;
    Set<T> tmpB;

    tmpA = union(setA, setB);
    tmpB = intersection(setA, setB);
    return difference(tmpA, tmpB);
  }

  public static <T> boolean isSubset(Set<T> setA, Set<T> setB) {
    return setB.containsAll(setA);
  }

  public static <T> boolean isSuperset(Set<T> setA, Set<T> setB) {
    return setA.containsAll(setB);
  }
    private String getTextValue(Element ele, String tagName) {
		String textVal = null;
		NodeList nl = ele.getElementsByTagName(tagName);
		if(nl != null && nl.getLength() > 0) {
			Element el = (Element)nl.item(0);
			textVal = el.getFirstChild().getNodeValue();
		}

		return textVal;
	}
    
public class CombinationGenerator {

  private int[] a;
  private int n;
  private int r;
  private BigInteger numLeft;
  private BigInteger total;

  //------------
  // Constructor
  //------------

  public CombinationGenerator (int n, int r) {
    if (r > n) {
      throw new IllegalArgumentException ();
    }
    if (n < 1) {
      throw new IllegalArgumentException ();
    }
    this.n = n;
    this.r = r;
    a = new int[r];
    BigInteger nFact = getFactorial (n);
    BigInteger rFact = getFactorial (r);
    BigInteger nminusrFact = getFactorial (n - r);
    total = nFact.divide (rFact.multiply (nminusrFact));
   reset ();
       System.out.println("total"+ total);
 
  }

  //------
  // Reset
  //------

  public void reset () {
    for (int i = 0; i < a.length; i++) {
      a[i] = i;
      
      System.out.println("in Generarto");
      System.out.println("\n"+"a"+a[i]);
    }
    numLeft = new BigInteger (total.toString ());
        System.out.println("numleft"+ numLeft);
 
  }

  //------------------------------------------------
  // Return number of combinations not yet generated
  //------------------------------------------------

  public BigInteger getNumLeft () {
    return numLeft;
  }

  //-----------------------------
  // Are there more combinations?
  //-----------------------------

  public boolean hasMore () {
    return numLeft.compareTo (BigInteger.ZERO) == 1;// false , notequal =0  true,equal=1
  }

  //------------------------------------
  // Return total number of combinations
  //------------------------------------

  public BigInteger getTotal () {
    return total;
  }

  //------------------
  // Compute factorial
  //------------------

  private  BigInteger getFactorial (int n) {
    BigInteger fact = BigInteger.ONE;                               //
    for (int i = n; i > 1; i--) {
      fact = fact.multiply (new BigInteger (Integer.toString (i)));
    }
    return fact;
  }

  //--------------------------------------------------------
  // Generate next combination (algorithm from Rosen p. 286)
  //--------------------------------------------------------

  public int[] getNext () {

    if (numLeft.equals (total)) {
      numLeft = numLeft.subtract (BigInteger.ONE);
      System.out.println("getnext_ numleft"+numLeft);
      //System.out.println("getNext_a"+a);
      return a;
    }

    int i = r - 1;
    while (a[i] == n - r + i) {
      i--;
    }
    System.out.println("i"+i);
    a[i] = a[i] + 1;
    for (int j = i + 1; j < r; j++) 
    {
    	
      a[j] = a[i] + j - i;
    }

    numLeft = numLeft.subtract (BigInteger.ONE);
    
    return a;

  }
    }
    
}



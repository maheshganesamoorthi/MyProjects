/*
 * Main.java
 *
 * Created on September 25, 2011, 8:07 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package xmlretrival;

import java.io.IOException;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.util.Set;
import java.util.TreeSet;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 *
 * @author KEERTHI
 */
public class Main 
{
     private static  int total_no_of_items;
 private static int[] tid;
    private static int total_no_of_trans;
    
  private  static  String iid[],profit[];

    private static String[] itemsets;
public static ArrayList<String> iname = new ArrayList<String>();

    private static  String[] quantitysets;
      private static String name;
            private static double pprofit;
    
    /** Creates a new instance of Main */
    public Main() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws ClassNotFoundException,ParserConfigurationException, SAXException, IOException {
         int jjj=0;
        // TODO code application logic here
        try{
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
       DocumentBuilder db = dbf.newDocumentBuilder();
       Document dom= db.parse("profit.xml");
       
       Element docEle = dom.getDocumentElement();
       NodeList nl = docEle.getElementsByTagName("item");
       total_no_of_items=nl.getLength();
       iid=new String[total_no_of_items];
       profit=new String[total_no_of_items];    
       
       	for(int i = 0 ; i < nl.getLength();i++) 
      {     Element el = (Element)nl.item(i);
            name = getTextValue(el,"name");
            pprofit=Double.parseDouble(getTextValue(el,"profit"));
            iid[jjj]=getTextValue(el,"id");
            profit[jjj]=getTextValue(el,"profit");
          
            String name=getTextValue(el,"name");
          iname.add(name);
            System.out.println(iid[jjj]+ " "+"" +iname+""+profit[jjj]);
            jjj++;
      }}
        
catch(Exception e)    { e.printStackTrace();}}
   
 static String getTextValue(Element ele, String tagName) {
		String textVal = null;
		NodeList nl = ele.getElementsByTagName(tagName);
                if(nl != null && nl.getLength() > 0) {
			Element el = (Element)nl.item(0);
			textVal = el.getFirstChild().getNodeValue();
		}
		return textVal;
	   }
}


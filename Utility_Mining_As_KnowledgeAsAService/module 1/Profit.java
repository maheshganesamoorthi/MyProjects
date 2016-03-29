import javax.xml.transform.*;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import java.io.*;


class Profit

{
   static int count=0;
   static double a= 10.00;
   
public static void main(String args[])
  {
try
{
  FileInputStream fstream = new FileInputStream("large1.txt");
  DataInputStream in = new DataInputStream(fstream);
  BufferedReader br = new BufferedReader(new InputStreamReader(in));

 String strLine,quant=null;
DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
	  DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

	  //root elements
	  Document doc = docBuilder.newDocument();
	  Element rootElement = doc.createElement("Transcation");
	  doc.appendChild(rootElement);
  while((strLine = br.readLine())!=null)
  {
    
if(a==0)
a=10;
else    
a--;
count++;
  System.out.println(a);
 String ID= new Integer(count).toString();
 String value= new Double(a).toString();


	  Element item = doc.createElement("item");
	  rootElement.appendChild(item);

	/*  //set attribute to staff element
	  Attr itemid = doc.createAttribute("id");
	  itemid.setValue(s);
          transaction.setAttributeNode(itemid);

	  //shorten way
	  // transaction.setAttribute("id", "1");*/

          Element id = doc.createElement("id");
	  id.appendChild(doc.createTextNode(ID));
	  item.appendChild(id);


	  Element profit = doc.createElement("profit");
	 profit.appendChild(doc.createTextNode(value));
	  item.appendChild(profit);



        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();

        transformer.setOutputProperty(OutputKeys.INDENT, "yes");


        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        DOMSource source = new DOMSource(doc);
        transformer.transform(source, result);
        String xmlString = sw.toString();

        File file = new File("profit.xml");
BufferedWriter bw = new BufferedWriter(new FileWriter(file));

        bw.write(xmlString);
        bw.flush();
        bw.close();


  }


}
          catch(Exception e)
{
    e.printStackTrace();

}

}
}









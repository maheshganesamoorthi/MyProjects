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


class Quantity

{
   static int a=0;
   
public static void main(String args[])
  {
try
{
	 String strLine,quant=null;
  	FileInputStream fstream = new FileInputStream("large1.txt");
  	DataInputStream in = new DataInputStream(fstream);
  	BufferedReader br = new BufferedReader(new InputStreamReader(in));

 	
	DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
	  DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

	  //root elements
	  Document doc = docBuilder.newDocument();
	  Element rootElement = doc.createElement("transactions");
	  doc.appendChild(rootElement);
  while ((strLine = br.readLine()) != null)
  {
	a++;
	 System.out.println (strLine.trim());
	String str[]=(strLine.trim()).split(" ");
	System.out.println (str.length);

	for(int i=0;i<str.length;i++)
	{
	if(i==0)
	quant="1";
	else
	quant=quant+ " "+"1";
 	 }

	 String ID= new Integer(a).toString();  
	  Element transaction = doc.createElement("transaction");
	  rootElement.appendChild(transaction);

                    Element id = doc.createElement("id");
	  id.appendChild(doc.createTextNode(ID));
	  transaction.appendChild(id);

	
	 Element item = doc.createElement("item");
	 item.appendChild(doc.createTextNode(strLine));
	  transaction.appendChild(item);

 	  Element quantity = doc.createElement("quantity");
	 quantity.appendChild(doc.createTextNode(quant));
	  transaction.appendChild(quantity);


        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();

        transformer.setOutputProperty(OutputKeys.INDENT, "yes");


        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        DOMSource source = new DOMSource(doc);
        transformer.transform(source, result);
        String xmlString = sw.toString();

        File file = new File("quantity.xml");
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));

        bw.write(xmlString);
        bw.flush();
        bw.close();

}//whil ende
  
   
}//try end
catch(Exception e)
{
     e.printStackTrace();

}

}
}









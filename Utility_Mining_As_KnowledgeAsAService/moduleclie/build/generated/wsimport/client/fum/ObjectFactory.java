
package fum;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the fum package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Fum_QNAME = new QName("http://ifum/", "fum");
    private final static QName _FumResponse_QNAME = new QName("http://ifum/", "fumResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: fum
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Fum }
     * 
     */
    public Fum createFum() {
        return new Fum();
    }

    /**
     * Create an instance of {@link FumResponse }
     * 
     */
    public FumResponse createFumResponse() {
        return new FumResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Fum }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ifum/", name = "fum")
    public JAXBElement<Fum> createFum(Fum value) {
        return new JAXBElement<Fum>(_Fum_QNAME, Fum.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FumResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ifum/", name = "fumResponse")
    public JAXBElement<FumResponse> createFumResponse(FumResponse value) {
        return new JAXBElement<FumResponse>(_FumResponse_QNAME, FumResponse.class, null, value);
    }

}

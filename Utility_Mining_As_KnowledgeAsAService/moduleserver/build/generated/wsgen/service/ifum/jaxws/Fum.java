
package ifum.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "fum", namespace = "http://ifum/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "fum", namespace = "http://ifum/")
public class Fum {

    @XmlElement(name = "item", namespace = "")
    private String item;

    /**
     * 
     * @return
     *     returns String
     */
    public String getItem() {
        return this.item;
    }

    /**
     * 
     * @param item
     *     the value for the item property
     */
    public void setItem(String item) {
        this.item = item;
    }

}

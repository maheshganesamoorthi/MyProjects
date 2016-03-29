/*
 * NewWebService.java
 *
 * Created on December 20, 2011, 2:23 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package ifum;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 *
 * @author KEERTHI
 */
@WebService()
public class NewWebService {
    /**
     * Web service operation
     */
    @WebMethod
    public String fum(@WebParam(name = "item") String item) {
        // TODO implement operation 
        return "You have selected"+ item;
    }
    
}

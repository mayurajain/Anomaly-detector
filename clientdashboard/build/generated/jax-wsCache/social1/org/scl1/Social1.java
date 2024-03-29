
package org.scl1;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebService(name = "social1", targetNamespace = "http://sc1.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Social1 {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://sc1.org/", className = "org.scl1.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://sc1.org/", className = "org.scl1.HelloResponse")
    @Action(input = "http://sc1.org/social1/helloRequest", output = "http://sc1.org/social1/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}


package org.sc2;

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
@WebService(name = "social2", targetNamespace = "http://sc2.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Social2 {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://sc2.org/", className = "org.sc2.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://sc2.org/", className = "org.sc2.HelloResponse")
    @Action(input = "http://sc2.org/social2/helloRequest", output = "http://sc2.org/social2/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}

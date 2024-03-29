
package org.sc2;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "social1", targetNamespace = "http://sc2.org/", wsdlLocation = "http://localhost:8080/social2/social1?WSDL")
public class Social1
    extends Service
{

    private final static URL SOCIAL1_WSDL_LOCATION;
    private final static WebServiceException SOCIAL1_EXCEPTION;
    private final static QName SOCIAL1_QNAME = new QName("http://sc2.org/", "social1");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/social2/social1?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        SOCIAL1_WSDL_LOCATION = url;
        SOCIAL1_EXCEPTION = e;
    }

    public Social1() {
        super(__getWsdlLocation(), SOCIAL1_QNAME);
    }

    public Social1(WebServiceFeature... features) {
        super(__getWsdlLocation(), SOCIAL1_QNAME, features);
    }

    public Social1(URL wsdlLocation) {
        super(wsdlLocation, SOCIAL1_QNAME);
    }

    public Social1(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, SOCIAL1_QNAME, features);
    }

    public Social1(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public Social1(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Social2
     */
    @WebEndpoint(name = "social2Port")
    public Social2 getSocial2Port() {
        return super.getPort(new QName("http://sc2.org/", "social2Port"), Social2.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Social2
     */
    @WebEndpoint(name = "social2Port")
    public Social2 getSocial2Port(WebServiceFeature... features) {
        return super.getPort(new QName("http://sc2.org/", "social2Port"), Social2.class, features);
    }

    private static URL __getWsdlLocation() {
        if (SOCIAL1_EXCEPTION!= null) {
            throw SOCIAL1_EXCEPTION;
        }
        return SOCIAL1_WSDL_LOCATION;
    }

}

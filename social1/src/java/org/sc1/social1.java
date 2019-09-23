
package org.sc1;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import api.*;
import java.io.*;
import java.util.*;

@WebService(serviceName = "social1")
public class social1 {

    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        ArrayList<String> allSocial1tweets = new ArrayList<String>();
        try{
         allSocial1tweets.clear();
         GetData gd = new GetData();       
         allSocial1tweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
         String updatedTweetsText = new String();
         for(int i=0;i<allSocial1tweets.size();i++){
             updatedTweetsText += allSocial1tweets.get(i)+"\r\n" ;
         }
        updatedTweetsText +=txt;
        updatedTweetsText = updatedTweetsText.trim();
        FileOutputStream fos = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        fos.write(updatedTweetsText.getBytes());
        fos.close();
        }catch(Exception e ){
            System.out.println(e);
        }
        
        
        return "Hello your tweet updated  .....!";
    }
}

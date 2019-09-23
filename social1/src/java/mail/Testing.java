/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;
import java.io.*;
import java.util.*;

public class Testing {
    
    public static void main(String []args){
        try{
         ArrayList<String> al = new ArrayList<String>();
         RemoveUser ru = new RemoveUser();
         ru.removeUser("mayur");
        }catch(Exception e){
        
        System.out.println(e);
        }
    }
    
    
}


import mail.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mayur
 */
public class Testing {
 public static void main(String []args){
     try{
     new MailTest("dummy7638@gmail.com","This account is removed coz of 10 tweets violations","users status");
     }catch(Exception e){
         System.out.println(e);
     }
 }   
}

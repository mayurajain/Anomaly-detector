/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.String;
import java.util.*;
import java.io.*;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author mayur
 */
public class Testing {
 public static void main(String[] args){
     
//     GetAnomolyCounts gc = new GetAnomolyCounts();
//     gc.setAnomolyCount();;
//     GetAllUsers ga = new GetAllUsers();
//     System.out.println(ga.getAllUsers());
//     
//     GetAllUsers ga1 = new GetAllUsers();
//     System.out.println(ga1.getAnomolyCountPerUser("panya121"));
//     
//     ArrayList<String> al = new ArrayList<String>();
//     al.clear();
//     al.add("madhav:modi is bad");
//     //al.add("madhav:modi is good");
//     al.add("madhav:modi is bad");
//     al.add("madhav:iam good");
//     al.add("sasi:modi is good");
//     al.add("xyx:modi so good");
//     
//     
//     ArrayList<String> subStrings = new ArrayList<String>();
//     subStrings.clear();
//     System.out.println(al);
//     for(int i=0;i<al.size();i++){
//         if(al.get(i).contains("madhav")){
//            subStrings.add(al.get(i));
//         }
//     }
//     al.removeAll(subStrings);
//     //System.out.println(indexes);
//     
//     System.out.println(al);
//     



//String tweet="hello hi bye";
//
//ArrayList<String> keyWords=new ArrayList<String>();
//keyWords.add("bye");
//keyWords.add("hi");
//
//  boolean status = false;
//
//int count=0;
//      for(int i=0;i<keyWords.size();i++){
//          String key = keyWords.get(i);
//          if(tweet.contains(key)){
//              count++;
//          }
//          }
//      System.out.println(count);
//      
//      int a=0;  
//      
//            char ch[]= new char[tweet.length()];     
//            for(int j=0;j<tweet.length();j++)  
//            {  
//                ch[j]= tweet.charAt(j);  
//                if( ((j>0)&&(ch[j]!=' ')&&(ch[j-1]==' ')) || ((ch[0]!=' ')&&(j==0)) )  
//                    a++;  
//            }
//      if((a/2)<count){
//         status=true;
//      }
//      System.out.println(status);
//  
//}


 //public boolean getStatus4(String tweet,ArrayList<String> keyWords,ArrayList<String> keyWords2){
 
 String tweet= "accurate foolish faultless fool fool accurate";
ArrayList<String> keyWords=new ArrayList<String>();
keyWords.add("accurate");
keyWords.add("faultless");

ArrayList<String> keyWords2=new ArrayList<String>();
keyWords2.add("fool");
keyWords2.add("foolish");
keyWords2.add("fault");
       int pos=0;
       int neg=0;
   
String [] words = tweet.split(" ");

		for (String word : words){
                    //System.out.println(word);
                    if(keyWords.contains(word)){
              pos++;
                }}
			System.out.println(pos);
                        
                        for (String word : words){
                    //System.out.println(word);
                    if(keyWords2.contains(word)){
              neg++;
                }}
			System.out.println(neg);
       
                        if(pos>=neg){
                            System.out.println("pos");
                        }
                        else if(neg>pos){
                            System.out.println("neg");
                        }
                        
//      for(int i=0;i<keyWords.size();i++){
//          String key = keyWords.get(i);
//          if(tweet.contains(key)){
//              pos++;
//          }
//  }
//      for(int i=0;i<keyWords2.size();i++){
//          String key = keyWords2.get(i);
//          if(tweet.contains(key)){
//              neg++;
//              System.out.println(key);
//              
//          }
//  }
//      System.out.println(pos);
//      System.out.println(neg);
//      if(pos>=neg){
//          status=false;
//      }
//      else if(neg>pos){
//          status=true;
//      }
//      System.out.println(status);
//      return status;
  //}
 }
 }   
//}

package api;
import java.util.*;
import java.io.*;


public class GetStatusMixedTweet {
  boolean status = false;
  int count=0;

  public boolean getStatus2(String tweet,ArrayList<String> keyWords)  {
          int count=0;
      for(int i=0;i<keyWords.size();i++){
          String key = keyWords.get(i);
          if(tweet.contains(key)){
              count++;
          }
      }
       System.out.println(count);
      
      int a=0;  
      
            char ch[]= new char[tweet.length()];     
            for(int j=0;j<tweet.length();j++)  
            {  
                ch[j]= tweet.charAt(j);  
                if( ((j>0)&&(ch[j]!=' ')&&(ch[j-1]==' ')) || ((ch[0]!=' ')&&(j==0)) )  
                    a++;  
            }
      if((a/2)<count+1){
          return status=true;
      }
      System.out.println(status);
      return status;
       
      }
  
  public int getStatus3(String tweet,ArrayList<String> keyWords){
       
      for(int i=0;i<keyWords.size();i++){
          String key = keyWords.get(i);
          if(tweet.contains(key)){
              count++;
          }
  }
      return count;
  }
  
  
  public boolean getStatus4(String tweet,ArrayList<String> keyWords,ArrayList<String> keyWords2){
      int pos=0;
      int neg=0;
       String [] words = tweet.split(" ");

       for (String word : words)
                    System.out.println(word);
                    
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
          status=false;
      }
      else if(neg>pos){
          status=true;
      }
      System.out.println(status);
      return status;
  }

 }


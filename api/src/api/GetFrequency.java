
package api;
import java.io.*;
import java.util.*;
public class GetFrequency {
    int frequency = 0;
     int count = 0;
    public int getKeyWordFrequency(String mainString,String keyword){
        try{
       
       //String afterStopWords
       int lastIndex = 0;
      

      while(lastIndex != -1){
    lastIndex = mainString.indexOf(keyword,lastIndex);

    if(lastIndex != -1){
        count ++;
        lastIndex += keyword.length();
    }
   }
       System.out.println(count);
        }catch(Exception e){
            System.out.println(e);
        }       
        frequency = count;
        return frequency;
    }
    
}

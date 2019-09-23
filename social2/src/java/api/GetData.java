
package api;
import java.io.*;
import java.util.*;
public class GetData {
    ArrayList<String> anomolyKeywords = new ArrayList<String>();
    String wholeFileData = "";
    public ArrayList<String> getKeyWords(String filePath){
        anomolyKeywords.clear();
        try{
        FileInputStream fis = new FileInputStream(filePath);
        byte bb[] = new byte[fis.available()];
        fis.read(bb);
        fis.close();
        String fileData = new String(bb);
        fileData = fileData.trim();
        StringTokenizer st = new StringTokenizer(fileData,"\r\n");
        while(st.hasMoreTokens()){
          anomolyKeywords.add(st.nextToken());  
        }
        }catch(Exception e){
            System.out.println(e);
        }
        return anomolyKeywords;
    }
    
    public String getWholeFileData(String filePath){        
        try{
        FileInputStream fis = new FileInputStream(filePath);
        byte bb[] = new byte[fis.available()];
        fis.read(bb);
        fis.close();
        wholeFileData = new String(bb);
        }catch(Exception e){
          System.out.println(e) ; 
        }
        return wholeFileData;
    }
    
}

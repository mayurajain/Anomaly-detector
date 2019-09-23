package api;
import java.util.*;
import java.io.*;


public class GetStatus {
  boolean status = false;

  public boolean getStatus(String tweet,ArrayList<String> keyWords)  {
      for(int i=0;i<keyWords.size();i++){
          String key = keyWords.get(i);
          if(tweet.contains(key)){
              status = true;
          }
      }
      return status;
  }
}

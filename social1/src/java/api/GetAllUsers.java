
package api;

import java.io.*;
import java.util.*;
public class GetAllUsers {
    
    ArrayList<String> allUsers = new ArrayList<String>();
    ArrayList<String> allTempTweets = new ArrayList<String>();
    int anomolyCountPerUser = 0;
    public ArrayList<String> getAllUsers(){
        allUsers.clear();
        allTempTweets.clear();
        try{
        GetData gd = new GetData();
        allTempTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        for(int i=0;i<allTempTweets.size();i++){
            String tweet = allTempTweets.get(i);
            String userName = tweet.substring(0,tweet.indexOf(":"));
            allUsers.add(userName);
        }
        }catch(Exception e){
            System.out.println(e);
        }
        return allUsers;
    }
    
    public int getAnomolyCountPerUser(String username){
        try{
            anomolyCountPerUser = 0;
        allTempTweets.clear();
        ArrayList<String> anomolyWords = new ArrayList<String>();
        anomolyWords.clear();
        GetData gd = new GetData();
        allTempTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        
        GetData gd1 = new GetData();
        anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
        ArrayList<String> onlyUsersTweets = new ArrayList<String>();
        onlyUsersTweets.clear();
        for(int i=0;i<allTempTweets.size();i++){
            String tweet = allTempTweets.get(i);
            if(tweet.contains(username)){
               onlyUsersTweets.add(tweet); 
            }
        }
        for(int i=0;i<onlyUsersTweets.size();i++){
            String tweet = onlyUsersTweets.get(i);
            for(int j=0;j<anomolyWords.size();j++){
                String anWOrd = anomolyWords.get(j);
                if(tweet.contains(anWOrd)){
                    ++anomolyCountPerUser;
                }
            }
        }
        
        }catch(Exception e){
            System.out.println(e);
        }
        return anomolyCountPerUser;
    }
    
    public void removeTweets(String username){        
        try{
        
        allTempTweets.clear();
        ArrayList<String> anomolyWords = new ArrayList<String>();
        anomolyWords.clear();
        GetData gd = new GetData();
        allTempTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        
        ArrayList<String> subStrings = new ArrayList<String>();
        subStrings.clear();
        for(int i=0;i<allTempTweets.size();i++){
            String tweet = allTempTweets.get(i);
            if(tweet.contains(username)){
                subStrings.add(tweet);
            }
        }
        allTempTweets.removeAll(subStrings);
        String allTweetsUpdation = "";
        for(int i=0;i<allTempTweets.size();i++){
            allTweetsUpdation += allTempTweets.get(i)+"\r\n";
        }
        allTweetsUpdation = allTweetsUpdation.trim();
        FileOutputStream fos = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        fos.write(allTweetsUpdation.getBytes());
        fos.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
}

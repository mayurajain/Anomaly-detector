/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api;
import java.io.*;
import java.util.*;
public class GetAnomolyCounts {
    
    int anomolyCount = 0;
    int nonAnomolyCount = 0;
    ArrayList<String> allUsers = new ArrayList<String>();
    ArrayList<Integer> allPosCounts = new ArrayList<Integer>();
    ArrayList<Integer> allNegCounts = new ArrayList<Integer>();
    ArrayList<String> allTempTweets = new ArrayList<String>(); 
    ArrayList<String> anomolyWords = new ArrayList<String>(); 
    public void setAnomolyCount(){
        try{
        allUsers.clear();
        allPosCounts.clear();
        allNegCounts.clear();
        allTempTweets.clear();
        anomolyWords.clear();
        GetData gd = new GetData();
        allTempTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        for(int i=0;i<allTempTweets.size();i++){
            String tweet = allTempTweets.get(i);
            String userName = tweet.substring(0,tweet.indexOf(":"));
            allUsers.add(userName);
        }
        Set set = new HashSet(allUsers);
        allUsers.clear();
        allUsers.addAll(set);
        GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
        for(int i=0;i<allUsers.size();i++){
            anomolyCount = 0;
            nonAnomolyCount = 0;
            String curUser = allUsers.get(i);
            for(int j=0;j<allTempTweets.size();j++){
                String tweet = allTempTweets.get(j);
                if(tweet.contains(curUser)){
                    GetStatus  gs = new GetStatus();
                    boolean status = gs.getStatus(tweet,anomolyWords);
                    if(status==true){
                      ++anomolyCount;  
                    }
                    else if(status==false){
                       ++nonAnomolyCount ;
                    }
                }
            }
            allNegCounts.add(anomolyCount);
            allPosCounts.add(nonAnomolyCount);
            anomolyCount = 0;
            nonAnomolyCount = 0;
            
        }
        System.out.println(allUsers);
        System.out.println(allNegCounts);
        System.out.println(allPosCounts);
        
        
        //
        FileOutputStream fosU = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\uuu.ser");
        ObjectOutputStream osU = new ObjectOutputStream(fosU);
        osU.writeObject(allUsers);
        osU.close();
        fosU.close();
        
        FileOutputStream fosN = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\nnn.ser");
        ObjectOutputStream osN = new ObjectOutputStream(fosN);
        osN.writeObject(allNegCounts);
        osN.close();
        fosN.close();
        
        FileOutputStream fosP = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\ppp.ser");
        ObjectOutputStream osP = new ObjectOutputStream(fosP);
        osP.writeObject(allPosCounts);
        osP.close();
        fosP.close();
        System.out.println("serialized...!");
        //
        }catch(Exception e){
            System.out.println(e);
        }
        
    }
    
}

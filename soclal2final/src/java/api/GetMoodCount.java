/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api;
import java.io.*;
import java.util.*;
public class GetMoodCount {
    
    int anomolyCount = 0;
    int nonAnomolyCount = 0;
    int negTweetCount=0;
    int posTweetCount=0;
    int negTweetWordCount=0;
    int posTweetWordCount=0;
    int neuTweetCount=0;
    ArrayList<String> allUsers = new ArrayList<String>();
    ArrayList<Integer> allPosCounts = new ArrayList<Integer>();
    ArrayList<Integer> allNegCounts = new ArrayList<Integer>();
    ArrayList<String> allTempTweets = new ArrayList<String>(); 
    ArrayList<String> anomolyWords = new ArrayList<String>();
    ArrayList<String> postiveWords = new ArrayList<String>();
    ArrayList<String> negativeWords = new ArrayList<String>();
    public void setAnomolyCount(){
        try{
        allUsers.clear();
        allPosCounts.clear();
        allNegCounts.clear();
        allTempTweets.clear();
        anomolyWords.clear();
        postiveWords.clear();
        negativeWords.clear();
        
        GetData gd = new GetData();
        allTempTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
       GetData gd2 = new GetData();
       postiveWords = gd2.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\positive.txt");
       GetData gd3 = new GetData();
       negativeWords = gd3.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\negative.txt");

        
       
              for(int i=0;i<allTempTweets.size();i++){
           String tweet = allTempTweets.get(i);
           System.out.println(tweet);
            GetStatusMixedTweet gs5 = new GetStatusMixedTweet();
            int firstIndex = tweet.indexOf(':');
            int lastIndex=tweet.length();
            boolean status;
            if(tweet.endsWith(".")){
               status = gs5.getStatus4(tweet.substring(firstIndex+1,lastIndex-1), postiveWords,negativeWords);
            }
            else if(tweet.endsWith(",")){
                status = gs5.getStatus4(tweet.substring(firstIndex+1,lastIndex-1), postiveWords,negativeWords);
            }
            else{
         status = gs5.getStatus4(tweet.substring(firstIndex+1), postiveWords,negativeWords);
            }
            
             if(status==true){
                    System.out.println(status);
                    
                    negTweetCount++; 
                     
                     int firstIndex2 = tweet.indexOf(':');
                     String actualTweet=tweet.substring(firstIndex2+1);
                     String [] words = actualTweet.split(" ");
                     float tweetSize=0;
                     for (String word : words){
                         tweetSize++;
                     }
                     int negWords=gs5.getStatusNeg(tweet.substring(firstIndex2+1), negativeWords);
                     negTweetWordCount=negTweetWordCount+negWords;
                     System.out.println("tweet size "+tweetSize);
                     System.out.println("Page "+negWords);
                     float perc=(negWords/tweetSize)*100;
                     System.out.println("Percentage "+perc);
                       
           }
             else if(status==false){
                     System.out.println(status);
                     
                     int firstIndex1 = tweet.indexOf(':');
                     String actualTweet=tweet.substring(firstIndex1+1);
                     String [] words = actualTweet.split(" ");
                     float tweetSize=0;
                     for (String word : words){
                         tweetSize++;
                     }
                     int posWords=gs5.getStatusPos(tweet.substring(firstIndex1+1), postiveWords);
                     posTweetWordCount=posTweetWordCount+posWords;
                     System.out.println("tweet size "+tweetSize);
                     System.out.println("Page "+posWords);
                     float perc=(posWords/tweetSize)*100;
                     System.out.println("Percentage "+perc);
                     
                     String puser=tweet.substring(0,firstIndex1);
                     
                     if(perc==0.0){
                     neuTweetCount++;
                     }
                     else if(perc!=0.0){ 
                    posTweetCount++;
                     }
     
            }            
        }
             
        System.out.println(allUsers);
        System.out.println(allNegCounts);
        System.out.println(allPosCounts);
        
        String allNegativeCounts=negTweetCount+":"+negTweetWordCount;
        String allPositiveCounts=posTweetCount+":"+posTweetWordCount;
        //
        FileOutputStream fosU = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedNeutralCountAdmin.ser");
        ObjectOutputStream osU = new ObjectOutputStream(fosU);
        osU.writeObject(neuTweetCount);
        osU.close();
        fosU.close();
        
        FileOutputStream fosN = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedNegativeCountAdmin.ser");
        ObjectOutputStream osN = new ObjectOutputStream(fosN);
        osN.writeObject(allNegativeCounts);
        osN.close();
        fosN.close();
        
        FileOutputStream fosP = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedPositiveCountAdmin.ser");
        ObjectOutputStream osP = new ObjectOutputStream(fosP);
        osP.writeObject(allPositiveCounts);
        osP.close();
        fosP.close();
        System.out.println("serialized...!");
        //
        }catch(Exception e){
            System.out.println(e);
        }
        
    }
    
}

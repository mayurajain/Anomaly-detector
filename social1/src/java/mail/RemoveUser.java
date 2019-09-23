/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;

import java.io.*;
import java.util.*;
import api.*;
public class RemoveUser {
    ArrayList<String> allUsersRegList = new ArrayList<String>();
    ArrayList<String> allUsersList = new ArrayList<String>();
    public void removeUser(String userName){
        allUsersRegList.clear();
        allUsersList.clear();
        
        try{        
        GetData gd = new GetData();
        allUsersRegList = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
        GetData gd1 = new GetData();
        allUsersList = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
        int index = -1;
        for(int i=0;i<allUsersRegList.size();i++){
            String data =  allUsersRegList.get(i);
            if(data.startsWith(userName)){
                index = i;
            }
        }
        if(index > -1){
            allUsersRegList.remove(index);
            allUsersList.remove(index);
        }
        String actRegString = "";
        String actUString = "";
        for(int i=0;i<allUsersRegList.size();i++){
            actRegString += allUsersRegList.get(i)+"\r\n";
        }
        for(int i=0;i<allUsersList.size();i++){
            actUString += allUsersList.get(i)+"\r\n";
        }
        actRegString = actRegString.trim();
        actUString = actUString.trim();
        FileOutputStream fosR = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
        fosR.write(actRegString.getBytes());
        fosR.close();
        FileOutputStream fosU = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
        fosU.write(actUString.getBytes());
        fosU.close();
        
        }catch(Exception e){
            System.out.println(e);
        }
        
        
    }
    
}

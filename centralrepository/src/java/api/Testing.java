/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api;

import java.util.*;
public class Testing {
    public static void main(String []args){
        ArrayList<String> al = new ArrayList<String>();
        al.add("one");
        al.add("two");
        al.add("three");
        al.add("four");
        al.add("five");
        al.add("six");
        ArrayList<String> al1 = new ArrayList<String>();
        al1.add("one");
        al1.add("two");
        System.out.println(al);
        System.out.println(al1);
        
        al.removeAll(al1);
        System.out.println(al);
    }
    
}

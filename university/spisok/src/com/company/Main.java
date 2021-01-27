package com.company;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Main {
    static void stringParser(ArrayList<ArrayList<String>> everyDayNotification,
                             ArrayList<ArrayList<String>> weeklyNotification,
                             ArrayList<String> countdownTime, String s, int cod){
        if(cod==0){
            StringBuilder stringBuilder=new StringBuilder("");
            for(int i=0;i<s.length();i++){
                if(!(s.charAt(i)==' ')){
                    stringBuilder.append(s.charAt(i));
                    if(i==s.length()-1){
                        countdownTime.add(stringBuilder.toString());
                    }
                }else if(!stringBuilder.toString().equals("")&&s.charAt(i)==' '){
                    countdownTime.add(stringBuilder.toString());
                    stringBuilder=new StringBuilder("");
                }
            }
        }
        else if(cod==1){
            if(s.charAt(0)=='0'){
                StringBuilder stringBuilder=new StringBuilder("");
                everyDayNotification.add(new ArrayList<String>());
                for(int i=2;i<s.length();i++){
                    if(!(s.charAt(i)==' ')){
                        stringBuilder.append(s.charAt(i));
                        if(i==s.length()-1){
                            everyDayNotification.get(everyDayNotification.size()-1).add(stringBuilder.toString());
                        }
                    }else if(!stringBuilder.toString().equals("")&&s.charAt(i)==' '){
                        everyDayNotification.get(everyDayNotification.size()-1).add(stringBuilder.toString());
                        stringBuilder=new StringBuilder("");
                    }
                }
            }
            else{
                StringBuilder stringBuilder=new StringBuilder("");
                weeklyNotification.add(new ArrayList<String>());
                for(int i=0;i<s.length();i++){
                    if(!(s.charAt(i)==' ')){
                        stringBuilder.append(s.charAt(i));
                        if(i==s.length()-1){
                            weeklyNotification.get(weeklyNotification.size()-1).add(stringBuilder.toString());
                        }
                    }else if(!stringBuilder.toString().equals("")&&s.charAt(i)==' '){
                        weeklyNotification.get(weeklyNotification.size()-1).add(stringBuilder.toString());
                        stringBuilder=new StringBuilder("");
                    }
                }
            }
        }
    }
    public static void main(String[] args) {

        String s = null;
        ArrayList<ArrayList<String>> everyDayNotification=new ArrayList<>();
        ArrayList<ArrayList<String>> weeklyNotification=new ArrayList<>();
        ArrayList<String> countdownTime = new ArrayList<>();

        try {
            BufferedReader br =
                    new BufferedReader(new InputStreamReader(System.in));
            s = br.readLine();
            stringParser(everyDayNotification,weeklyNotification,countdownTime,s,0);
            s=br.readLine();
            int a=Integer.parseInt(s);
            for(int i=0;i<a;i++){
                s=br.readLine();
                stringParser(everyDayNotification,weeklyNotification,countdownTime,s,1);
            }
            br.close();
        } catch (Exception e) {
            System.err.println("Error:" + e.getMessage());
        }
        System.out.print("Countdown: ");
        for(int i=0;i<2;i++){
            System.out.print(countdownTime.get(i)+" ");
        }
        System.out.println();
        System.out.print("Everyday: ");
        for(int i=0;i<everyDayNotification.size();i++){
            for(int j=0;j<2;j++) {
                System.out.print(everyDayNotification.get(i).get(j)+" ");
            }
            System.out.println();
        }
        System.out.print("Weekly: ");
        for(int i=0;i<weeklyNotification.size();i++){
            for(int j=0;j<3;j++) {
                System.out.print(weeklyNotification.get(i).get(j)+" ");
            }
            System.out.println();
        }

    }

}

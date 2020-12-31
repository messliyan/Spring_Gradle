package com.example.springboot;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 * TODO
 *
 * @author lijiabin
 * @version 1.0
 * @date 2020/12/31 16:11
 */
public class testNum {

  public static void main(String[] args) {
    try {
      Scanner scan = new Scanner(new FileInputStream("D:\\a.txt"));
      BufferedWriter bs=new BufferedWriter(new FileWriter("D:\\b.txt"));

      Scanner scan2 = new Scanner(new FileInputStream("D:\\c.txt"));
      BufferedWriter bs2=new BufferedWriter(new FileWriter("D:\\d.txt"));

      double a=0;
      while(scan.hasNext()){
        String str= scan.next();
        //正则表达式判断是否是数字
        if(str.matches("\\d+")){
          System.out.println(str);
          a+=Integer.parseInt(str);
        }
        //正则表达式匹配小数
        if(str.matches("\\d+[.]\\d+")){
          System.out.println(str);
          a+=Double.parseDouble(str);
        }
      }
      bs.write(new String(a+" "));
      bs.close();
      System.out.println(a);

      System.out.println("-----------------------------");
      double b=0;
      while(scan2.hasNext()){
        String str= scan2.next();
        //正则表达式判断是否是数字
        if(str.matches("\\d+")){
          System.out.println(str);
          b+=Integer.parseInt(str);
        }
        //正则表达式匹配小数
        if(str.matches("\\d+[.]\\d+")){
          System.out.println(str);
          b=b+Double.parseDouble(str);
        }
      }
      bs2.write(new String(b+" "));
      bs2.close();
      System.out.println(b);
    } catch (Exception e) {
      e.printStackTrace();
    }


  }
}

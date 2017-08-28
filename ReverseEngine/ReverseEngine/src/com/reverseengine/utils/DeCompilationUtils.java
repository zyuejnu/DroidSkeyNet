package com.reverseengine.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class DeCompilationUtils {
	static Runtime ex=Runtime.getRuntime();

	public static String waitForExit(Process pro) throws IOException{
		  BufferedReader reader=new BufferedReader(new InputStreamReader(pro.getInputStream()));
          String contineflag=reader.readLine();
          return contineflag;

	}
	
	public static Process compilationAPK(){
		Process pro = null;
		try{	
			
			String cmdarray="cmd /c start C:\\ReverseEngine\\step1.bat";
			
			pro=ex.exec(cmdarray);
			
			
						
			System.out.println("wait.....");
			
			}catch(Exception e){
				System.out.println("÷¥––“Ï≥£÷’÷π£∫"+e.toString());
				}
		return pro;
	
	}
	

}

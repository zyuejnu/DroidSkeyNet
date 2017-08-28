package com.reverseengine.utils;

public class AnalysisResult
{

	private static String analysisres="结果报告:";
	static int i=0;
	public static void addAnalysisres(String res){
		i++;
		analysisres=analysisres+"\r\n"+i+"."+res+";";
		
	}
	public static String getAnalysisres(){
		return analysisres;
	}
	public static String clearData(){
		i=0;
		return analysisres="结果报告:";
	}
	
}

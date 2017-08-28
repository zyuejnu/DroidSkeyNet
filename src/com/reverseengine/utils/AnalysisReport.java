package com.reverseengine.utils;

import java.util.ArrayList;
import java.util.List;

import com.reverseengine.obj.APKInfo;
import common.Assert;

public class AnalysisReport

{
	
	
	public static void Analysis(List<APKInfo> res_infos,String reportname){
		
		AnalysisResult.clearData();
		
		//int apkcount=0;
		
		int protect2011=0;
		int protect2013=0;
		int protect2016=0;
		int obfused2011=0;
		int obfused2013=0;
		int obfused2016=0;
		int haveallpro2011=0;
		int haveallpro2013=0;
		int haveallpro2016=0;
		int havenopro2011=0;
		int havenopro2013=0;
		int havenopro2016=0;

		for(APKInfo info:res_infos){
			//apkcount++;
			if(Integer.parseInt(info.getYear())<2013){
				if((!info.isIsobfuscation())&&(!info.isIsprotected())){
					//没有保护
					//System.out.println(info.isIsobfuscation()+"|五保护|"+info.isIsprotected());
					havenopro2011++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//双重保护
						//System.out.println(info.isIsobfuscation()+"|双重保护|"+info.isIsprotected());
						haveallpro2011++;
						
					}else if(info.isIsobfuscation()){
						//只有混淆
						obfused2011++;
					}else{
						//只有JNI
						protect2011++;
					}
				}
			
				
				
			}else if(Integer.parseInt(info.getYear())==2013){
				if((!info.isIsobfuscation())&&(!info.isIsprotected())){
					//没有保护
					havenopro2013++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//双重保护
						haveallpro2013++;
						
					}else if(info.isIsobfuscation()){
						//只有混淆
						obfused2013++;
					}else{
						//只有JNI
						protect2013++;
					}
				}
			}else{
				if((!info.isIsobfuscation())&&(!info.isIsprotected())){
					//没有保护
					havenopro2016++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//双重保护
						haveallpro2016++;
						
					}else if(info.isIsobfuscation()){
						//只有混淆
						obfused2016++;
					}else{
						//只有JNI
						protect2016++;
					}
				}
			}
			
			//System.out.println();
			
						
			

			for(APKInfo in:res_infos){
				
				if(info.getApkName().equals(in.getApkName())&&!(info.getYear().equals(in.getYear()))){
					if(Integer.parseInt(info.getYear())>Integer.parseInt(in.getYear())){
						//info的年限比in的年限晚
						if(in.isIsobfuscation()){
					
							if(!info.isIsobfuscation()){
								//错误
								String apkname=info.getApkName();
						
								String res=apkname+"可能存在问题，具体表现在"+info.getYear()+"年应用程序没有混淆，而"+in.getYear()+"混淆了";
							
								AnalysisResult.addAnalysisres(res);
							}
						}
						if(in.isIsprotected()){
							
							if(!info.isIsprotected()){
								//错误
								String apkname=info.getApkName();
								
								String res=apkname+"可能存在问题，具体表现在"+info.getYear()+"年应用程序没有保护，而"+in.getYear()+"保护了";
							
								AnalysisResult.addAnalysisres(res);
							}
						}
					}
					
				}
			}
		}
		//return null;
		System.out.println(res_infos.size());
		//System.out.println(apkcount);
		AnalysisResult.addAnalysisres("在2011年中，该类型APK中没有任何保护的个数为"+havenopro2011+"，约占总数的"+
				(havenopro2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("在2011年中，该类型APK中有双重保护的个数为"+haveallpro2011+"，约占总数的"+
						(haveallpro2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("在2011年中，该类型APK中仅仅存在JNI或者加密的APK个数为"+protect2011+"，约占总数的"+
						(protect2011*100f/(20f))+"%，该类型APK中仅仅存在代码混淆的APK个数为"+obfused2011+"，约占总数的"+
						(obfused2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("在2013年中，该类型APK中没有任何保护的个数为"+havenopro2013+"，约占总数的"+
						(havenopro2013*100f/(20f))+"%");
						AnalysisResult.addAnalysisres("在2013年中，该类型APK中没有双重保护的个数为"+haveallpro2013+"，约占总数的"+
								(haveallpro2013*100f/(20f))+"%");
						AnalysisResult.addAnalysisres("在2013年中，该类型APK中仅仅存在JNI或者加密的APK个数为"+protect2013+"，约占总数的"+
								(protect2013*100f/(20f))+"%，该类型APK中仅仅存在代码混淆的APK个数为"+obfused2013+"，约占总数的"+
								(obfused2013*100f/(20f))+"%");		
				AnalysisResult.addAnalysisres("在2016年中，该类型APK中没有任何保护的个数为"+havenopro2016+"，约占总数的"+
								(havenopro2016*100f/(20f))+"%");
								AnalysisResult.addAnalysisres("在2016年中，该类型APK中没有双重保护的个数为"+haveallpro2016+"，约占总数的"+
										(haveallpro2016*100f/(20f))+"%");
								AnalysisResult.addAnalysisres("在2016年中，该类型APK中仅仅存在JNI或者加密的APK个数为"+protect2016+"，约占总数的"+
										(protect2016*100f/(20f))+"%，该类型APK中仅仅存在代码混淆的APK个数为"+obfused2016+"，约占总数的"+
										(obfused2016*100f/(20f))+"%");	
		System.out.println(AnalysisResult.getAnalysisres());
		
		ReportFileWriter.writeReport(reportname, AnalysisResult.getAnalysisres());
	}
	
	
	
	private static int i=0;
	private static List<String> report=new ArrayList<String>();
	public static void clearInfo(){
		i=0;
		report.clear();
	}

	public static void addInfo(String info){
		i++;
		report.add(i+"."+info);
	}
	public static String getInfo(){
		String res="";
		int confusedflag=0;
		if(report.size()==0){
			return "无备注";
		}else{
			for(String re:report){
				res=res+re+";\r\n";
				if(re.endsWith("没有解析出AndroidManifest.xml")){
					confusedflag++;
				}
				if(re.endsWith("获取包名失败，需要手工查看包名")){
					
					confusedflag++;
				}
				
			}
		
			if(confusedflag>1){
				res=res+"注意：该应用无法获取包名，无法得到配置文件，建议人工辨识该应用";
			}
			
			return res;
		}
		
		
		
		
	}
}

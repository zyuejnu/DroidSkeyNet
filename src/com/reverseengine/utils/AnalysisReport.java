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
					//û�б���
					//System.out.println(info.isIsobfuscation()+"|�屣��|"+info.isIsprotected());
					havenopro2011++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//˫�ر���
						//System.out.println(info.isIsobfuscation()+"|˫�ر���|"+info.isIsprotected());
						haveallpro2011++;
						
					}else if(info.isIsobfuscation()){
						//ֻ�л���
						obfused2011++;
					}else{
						//ֻ��JNI
						protect2011++;
					}
				}
			
				
				
			}else if(Integer.parseInt(info.getYear())==2013){
				if((!info.isIsobfuscation())&&(!info.isIsprotected())){
					//û�б���
					havenopro2013++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//˫�ر���
						haveallpro2013++;
						
					}else if(info.isIsobfuscation()){
						//ֻ�л���
						obfused2013++;
					}else{
						//ֻ��JNI
						protect2013++;
					}
				}
			}else{
				if((!info.isIsobfuscation())&&(!info.isIsprotected())){
					//û�б���
					havenopro2016++;
				}else{
					
					if(info.isIsobfuscation()&&info.isIsprotected()){
						//˫�ر���
						haveallpro2016++;
						
					}else if(info.isIsobfuscation()){
						//ֻ�л���
						obfused2016++;
					}else{
						//ֻ��JNI
						protect2016++;
					}
				}
			}
			
			//System.out.println();
			
						
			

			for(APKInfo in:res_infos){
				
				if(info.getApkName().equals(in.getApkName())&&!(info.getYear().equals(in.getYear()))){
					if(Integer.parseInt(info.getYear())>Integer.parseInt(in.getYear())){
						//info�����ޱ�in��������
						if(in.isIsobfuscation()){
					
							if(!info.isIsobfuscation()){
								//����
								String apkname=info.getApkName();
						
								String res=apkname+"���ܴ������⣬���������"+info.getYear()+"��Ӧ�ó���û�л�������"+in.getYear()+"������";
							
								AnalysisResult.addAnalysisres(res);
							}
						}
						if(in.isIsprotected()){
							
							if(!info.isIsprotected()){
								//����
								String apkname=info.getApkName();
								
								String res=apkname+"���ܴ������⣬���������"+info.getYear()+"��Ӧ�ó���û�б�������"+in.getYear()+"������";
							
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
		AnalysisResult.addAnalysisres("��2011���У�������APK��û���κα����ĸ���Ϊ"+havenopro2011+"��Լռ������"+
				(havenopro2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("��2011���У�������APK����˫�ر����ĸ���Ϊ"+haveallpro2011+"��Լռ������"+
						(haveallpro2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("��2011���У�������APK�н�������JNI���߼��ܵ�APK����Ϊ"+protect2011+"��Լռ������"+
						(protect2011*100f/(20f))+"%��������APK�н������ڴ��������APK����Ϊ"+obfused2011+"��Լռ������"+
						(obfused2011*100f/(20f))+"%");
				AnalysisResult.addAnalysisres("��2013���У�������APK��û���κα����ĸ���Ϊ"+havenopro2013+"��Լռ������"+
						(havenopro2013*100f/(20f))+"%");
						AnalysisResult.addAnalysisres("��2013���У�������APK��û��˫�ر����ĸ���Ϊ"+haveallpro2013+"��Լռ������"+
								(haveallpro2013*100f/(20f))+"%");
						AnalysisResult.addAnalysisres("��2013���У�������APK�н�������JNI���߼��ܵ�APK����Ϊ"+protect2013+"��Լռ������"+
								(protect2013*100f/(20f))+"%��������APK�н������ڴ��������APK����Ϊ"+obfused2013+"��Լռ������"+
								(obfused2013*100f/(20f))+"%");		
				AnalysisResult.addAnalysisres("��2016���У�������APK��û���κα����ĸ���Ϊ"+havenopro2016+"��Լռ������"+
								(havenopro2016*100f/(20f))+"%");
								AnalysisResult.addAnalysisres("��2016���У�������APK��û��˫�ر����ĸ���Ϊ"+haveallpro2016+"��Լռ������"+
										(haveallpro2016*100f/(20f))+"%");
								AnalysisResult.addAnalysisres("��2016���У�������APK�н�������JNI���߼��ܵ�APK����Ϊ"+protect2016+"��Լռ������"+
										(protect2016*100f/(20f))+"%��������APK�н������ڴ��������APK����Ϊ"+obfused2016+"��Լռ������"+
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
			return "�ޱ�ע";
		}else{
			for(String re:report){
				res=res+re+";\r\n";
				if(re.endsWith("û�н�����AndroidManifest.xml")){
					confusedflag++;
				}
				if(re.endsWith("��ȡ����ʧ�ܣ���Ҫ�ֹ��鿴����")){
					
					confusedflag++;
				}
				
			}
		
			if(confusedflag>1){
				res=res+"ע�⣺��Ӧ���޷���ȡ�������޷��õ������ļ��������˹���ʶ��Ӧ��";
			}
			
			return res;
		}
		
		
		
		
	}
}

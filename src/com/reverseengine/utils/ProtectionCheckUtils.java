package com.reverseengine.utils;

import java.io.File;

public class ProtectionCheckUtils
{
	public static boolean notHaveProtection(){
		String dstdir=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator;
		String mainfestpath=dstdir+"AndroidManifest.xml";
		File mainfest=new File(mainfestpath);
		
		if(mainfest.exists()){
			
		}else{
			AnalysisReport.addInfo("������ʧ�ܣ�����������û�н�����AndroidManifest.xml");
		};
		return mainfest.exists();
		
	}
	
	public static boolean hasJNI(File lib){
		
		boolean res=false;
		if(lib.exists()){
		
			for(File f:lib.listFiles()){
				
				if(f.isDirectory()){
					return hasJNI(f);
				}else{
				String name=f.getName();
				System.out.println("���ڼ��JNI�⣺"+f.getName());
				if(name.endsWith("so")){
					if(name.contains("sdk")||name.contains("SDK")){
						System.out.println("������so����"+f.getName());
					}else{
						AnalysisReport.addInfo("�Դ�so����"+f.getName());
						System.out.println("�Դ�so����"+f.getName());
						res=true;
					}
				}
			  }
			}
		}else{
			return false;
		}
		return res;
		
	}

}

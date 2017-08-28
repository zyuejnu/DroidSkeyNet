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
			AnalysisReport.addInfo("反编译失败，遇到保护，没有解析出AndroidManifest.xml");
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
				System.out.println("正在检测JNI库："+f.getName());
				if(name.endsWith("so")){
					if(name.contains("sdk")||name.contains("SDK")){
						System.out.println("第三方so包："+f.getName());
					}else{
						AnalysisReport.addInfo("自带so包："+f.getName());
						System.out.println("自带so包："+f.getName());
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

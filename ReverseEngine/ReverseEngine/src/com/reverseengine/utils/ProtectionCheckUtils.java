package com.reverseengine.utils;

import java.io.File;

public class ProtectionCheckUtils
{
	public static boolean notHaveProtection(){
		String dstdir=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator;
		String mainfestpath=dstdir+"AndroidManifest.xml";
		File mainfest=new File(mainfestpath);
		return mainfest.exists();
		
	}

}

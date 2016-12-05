package com.reverseengine.test;

import java.io.File;
import java.util.Set;

import brut.androlib.AndrolibException;
import brut.androlib.ApkDecoder;
import brut.androlib.res.data.ResPackage;

public class APKUtil {
	public static String getAPKPageName(String apkpath) {
		ApkDecoder d = new ApkDecoder();
		d.setApkFile(new File(apkpath));
		try {
			Set<ResPackage> p = d.getResTable().listMainPackages();
			for (ResPackage r : p) {// 这里set最大只会等于1
				
				return r.getName();
			}
		} catch (AndrolibException e) {
			e.printStackTrace();
		}
		return null;
	}
 
	public static void main(String[] args) {
		System.err.println("The APK  packname is : "+APKUtil.getAPKPageName("C:\\ReverseEngine\\temp\\target\\tx.apk"));
	}
}

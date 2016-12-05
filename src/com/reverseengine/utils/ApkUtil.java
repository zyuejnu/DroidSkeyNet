package com.reverseengine.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.input.SAXBuilder;

import brut.androlib.AndrolibException;
import brut.androlib.ApkDecoder;
import brut.androlib.res.data.ResPackage;



public class ApkUtil{
	private String apkpath;
	private String versionCode="UnKown";
	private String versionName="UnKown";
	private String userSdk="Unkown";
	private String pkgname="Unknow";
	public ApkUtil(String apkpath)
	{
		super();
		SAXBuilder builder = new SAXBuilder();
		Document document = null;
		try{
			document = builder.build(getXmlInputStream(apkpath));
			Element root = document.getRootElement();
			versionCode=root.getAttributeValue("versionCode",NS);
			versionName=root.getAttributeValue("versionName", NS);
			Element elemUseSdk = root.getChild("uses-sdk");
			userSdk=(elemUseSdk.getAttributeValue("minSdkVersion", NS));
			pkgname=root.getAttributeValue("package", NS);
			
			
		}catch (Exception e) {
			
		}

		// TODO Auto-generated constructor stub
	}

	public String getPkgname()
	{
		return pkgname;
	}
	public void setPkgname(String pkgname)
	{
		this.pkgname = pkgname;
	}

	private static final Namespace NS = Namespace.getNamespace("http://schemas.android.com/apk/res/android");
	
	
	public static String getAPKPageName(String apkpath) {
		ApkDecoder d = new ApkDecoder();
		d.setApkFile(new File(apkpath));
		try {
			Set<ResPackage> p = d.getResTable().listMainPackages();
			for (ResPackage r : p) {// 这里set最大只会等于1
				
				return r.getName();
			}
		} catch (AndrolibException e) {
		
			return null;
		}
		return null;
	}
	public String getVersionCode()
	{
		return versionCode;
	}



	public String getVersionName()
	{
		return versionName;
	}



	public String getUserSdk()
	{
		return userSdk;
	}



	private static InputStream getXmlInputStream(String apkPath) {
		InputStream inputStream = null;
		InputStream xmlInputStream = null;
		ZipFile zipFile = null;
		try {
			zipFile = new ZipFile(apkPath);
			ZipEntry zipEntry = new ZipEntry("AndroidManifest.xml");
			inputStream = zipFile.getInputStream(zipEntry);
			AXMLPrinter xmlPrinter = new AXMLPrinter();
			xmlPrinter.startPrinf(inputStream);
			xmlInputStream = new ByteArrayInputStream(xmlPrinter.getBuf().toString().getBytes("UTF-8"));
		} catch (IOException e) {
			//e.printStackTrace();
			try {
				inputStream.close();
				zipFile.close();
			} catch (IOException e1) {
				//e1.printStackTrace();
			}
		}finally{
			
		}
		return xmlInputStream;
	}

}

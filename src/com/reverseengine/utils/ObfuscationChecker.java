package com.reverseengine.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;



public class ObfuscationChecker {

	private static Element getNextElement(Element e,String what)
	{
		 for (Iterator iter = e.elementIterator(); iter.hasNext();)
	        {
	        	Element it = (Element) iter.next();
	            try {
					if(it.getName().equals(what))
					{
						//System.out.println(it.getName());
						return it;
					}
					
				} catch (Exception exception) {
					// TODO Auto-generated catch block
					System.out.print(what+"解析执行异常");
				
				}

	        }
		return null;
		
	}
	private static InputStream getDexInputStream(String apkPath) {
		
		InputStream dexInputStream = null;
		ZipFile zipFile = null;
		try {
			zipFile = new ZipFile(apkPath);
			ZipEntry zipEntry = new ZipEntry("classes.dex");
			dexInputStream = zipFile.getInputStream(zipEntry);
			
			
		} catch (IOException e) {
			//e.printStackTrace();
			try {
				dexInputStream.close();
				zipFile.close();
			} catch (IOException e1) {
				//e1.printStackTrace();
			}
		}finally{
			
		}
		return dexInputStream;
	}
	private static String findComponetsName(String name) throws DocumentException{
	
		
		String dstdir=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator;
		String mainfestpath=dstdir+"AndroidManifest.xml";
		XmlUtils xmlutils=new XmlUtils(mainfestpath);
		Document doc=xmlutils.getDocument();
        Element root = doc.getRootElement();
        Element app=getNextElement(root,"application");
        //Element activity=getNextElement(app,"activity");
 
        for (Iterator iter = app.elementIterator(); iter.hasNext();)
        {
        	Element it = (Element) iter.next();
         	if(it.getName().equals("activity"))
				{
					for (Iterator iter1 = it.elementIterator(); iter1.hasNext();)
			        {
						Element it1 = (Element) iter1.next();
			          	if(it1.getName().equals("intent-filter"))
							{
								 Element action=getNextElement(it1,"action");
							        Element category=getNextElement(it1,"category");
							   
							        if(action==null||category==null){
							        	continue;
							        }
							        if((action.attributeValue("name").equals("android.intent.action.MAIN"))||(category.attributeValue("name").equals("android.intent.category.LAUNCHER"))){
							        	String com=it.attributeValue("name");
									//	System.out.println(com);
										if(com.startsWith(".")){
										
											return dstdir+"smali"+File.separator+com2PathWithoutS(name)+com2Path(com);
										}else{
											return dstdir+"smali"+File.separator+com2Path(com);
										}
							        	
							        }
							}

			        }
				}
				
		
           

        }
		return null;
	
      
       
       
        
	}

	private static String com2PathWithoutS(String com) throws DocumentException
	{
		
		String finalenter=com.replace(".", "//");
		
		return finalenter;
	}
	private static String com2Path(String com) throws DocumentException
	{
		
		String finalenter=com.replace(".", "//");
		finalenter=finalenter+".smali";
		return finalenter;
	}
	public static boolean hasObfuscation(String name,boolean protect) throws DocumentException{
		
		
		String comname=findComponetsName(name);
		if(comname==null){
			return true;
		}else{
			System.out.println(comname);
			File f=new File(comname);
			//判断是否存在文件,如果存在，进行混淆检验1
				if(f.exists()){
					
					File parent=f.getParentFile();
					File[] files=parent.listFiles();
					if(files.length>1){
					for(File file:files){
						if(hasObfuscationAttr(file)){
							
							return true;
						}
					}
					}else{
						return false;
					}
					}else{
						//不存在，肯定经过混淆
						
					
						if(protect){
						
							
						
							return false;
						}else{
							
							AnalysisReport.addInfo("启动主类不存在，而且并未出现反编译识别，推断经过混淆");
							return true;
						}
					
						
					}
	
		
			}
		return false;
		
		
		//if(f.exists())
		
		//return (!f.exists());
	}

	private static boolean hasObfuscationAttr(File file)
	{
		// TODO Auto-generated method stub
		String check = "^[a-z]{1,2}\\.smali$";
		Pattern regex = Pattern.compile(check);
		Matcher matcher = regex.matcher(file.getName());
		//System.out.println(matcher.matches());
		if(matcher.matches())
		AnalysisReport.addInfo("发现代码混淆类:"+file.getAbsolutePath());
		return matcher.matches();
	}
	private static String rootpath=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator+"smali"+File.separator;
	public static boolean hasProtectObfuscation(String path)
	{		
		
		File root=new File(path);
		for(File f:root.listFiles()){
			if(f.isDirectory()){
				
				if(f.getName().equals("support")){
					continue;
				}
				if(!hasProtectObfuscation(f.getAbsolutePath())){
					continue;
				};
				System.out.println(f.getAbsolutePath());
				return hasProtectObfuscation(f.getAbsolutePath());
			}else{
				if(f.getParentFile().equals(new File(rootpath))){
					continue;
				}
					return hasObfuscationAttr(f);
				
			}
		}
		return false;
		
	
		
	}
	
	/*public  static void main(String[] arg0) throws DocumentException

	{
		String enter=findFinalEnter();
		System.out.print(enter);
	}*/
}

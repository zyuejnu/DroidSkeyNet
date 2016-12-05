package com.reverseengine.utils;

import java.io.File;
import java.util.Iterator;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;



public class FindCoreEnter {

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
	
	private static String findEnterString() throws DocumentException{
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
            try {
				if(it.getName().equals("activity"))
				{
					//System.out.println(it.getName());
					//Element flter=getNextElement(it,"intent-filter");
					for (Iterator iter1 = it.elementIterator(); iter1.hasNext();)
			        {
			        	Element it1 = (Element) iter1.next();
			            try {
							if(it1.getName().equals("intent-filter"))
							{
								//System.out.println(it1.getName());
								//Element flter=getNextElement(it,"intent-filter");
								 Element action=getNextElement(it1,"action");
							        Element category=getNextElement(it1,"category");
							        if((action.attributeValue("name").equals("android.intent.action.MAIN"))||(category.attributeValue("name").equals("android.intent.category.LAUNCHER"))){
							        	System.out.println(it.attributeValue("name"));
							        	return it.attributeValue("name");
							        }
							}
							
						} catch (Exception exception) {
							// TODO Auto-generated catch block
							System.out.print("app解析执行异常");
						
						}

			        }
				}
				
			} catch (Exception exception) {
				// TODO Auto-generated catch block
				System.out.print("app解析执行异常");
			
			}

        }
        String noenter="no enter";
		return noenter;
       
       
        
	}
	public static String findFinalEnter() throws DocumentException
	{
		String enter=findEnterString();
		String finalenter=enter.replace(".", "//");
		finalenter=finalenter+".smali";
		return finalenter;
	}
	public static boolean hasObfuscation() throws DocumentException{
		File f=new File(findFinalEnter());
		//if(f.exists())
		return (!f.exists());
	}
	/*public  static void main(String[] arg0) throws DocumentException

	{
		String enter=findFinalEnter();
		System.out.print(enter);
	}*/
}

package com.reverseengine.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.reverseengine.obj.SURL;

public class WeaknessDetectUtils
{

	private static String rootpath=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator+"smali"+File.separator;
	public static String detectWeakness(boolean isinternt,int year,boolean structp,boolean logicp){
		urlcount=0;
		getAurls().clear();
		String infos="";
		float mg=0;
		String mgurls="";
		String kyurls="";
		if(year>2015){
			return "版本过新，不能用于漏洞分析";
		}
		if(!((!structp)||(!logicp))){
			return "保护措施非常好，漏洞分析无效";
			
		}
	
		if(!isinternt){
			return "无网络链接，漏洞存在";
		}
		
		sakeAvailableURL(rootpath);
	
		for(SURL sul:getAurls()){
			if(sul.isSensitive()){
				mg++;
				mgurls=mgurls+sul.getUrl()+"\r\n";
			}
			kyurls=kyurls+sul.getUrl()+"\r\n";
		}
		System.err.println(getUrlcount());
		if(getUrlcount()==0){
			
			return "没有发现URL";
		}else{
			infos="共发现URL"+getUrlcount()+"条,其中"+getAurls().size()+"条可用,占"+(getAurls().size()*100/getUrlcount())+"%,\r\n"+"\r\n"
					+mg+"条敏感，占"+(mg*100/getUrlcount())+"%,\r\n" +
				"\r\n"+"可用url为："+kyurls
				+"\r\n"+"敏感url为："+mgurls;
		}
		
		return infos;
		
	}
	
	private static float urlcount=0;



	public static float getUrlcount()
	
	{
		//int temp=
		
		return urlcount;
	}




	public static List<SURL> getAurls()
	{
		return aurls;
	}

	private static List<SURL> aurls=new ArrayList<SURL>();
	private static boolean isURL(String urlString)
	{
		//Pattern p = Pattern.compile("^(http|www|ftp|)?(://)?(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*((:\\d+)?)(/(\\w+(-\\w+)*))*(\\.?(\\w)*)(\\?)?(((\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*(\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*)*(\\w*)*)$",Pattern.CASE_INSENSITIVE );
		 Pattern p = Pattern  
	                .compile("^\"([hH][tT]{2}[pP]://|[hH][tT]{2}[pP][sS]://)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\\/])+\"$");  
		Matcher m = p.matcher(urlString);
		return m.matches();
	
	
	}
	


	
	public static void sakeAvailableURL(String path) {

        File file = new File(path);
       
        if (file.exists()) {
            File[] files = file.listFiles();
            if (files.length == 0) {
               // System.out.println("Empty");
                return;
            } else {
                for (File file2 : files) {
                	 if(file2.getName().equals("support")){
             			continue;
             		}
                    if (file2.isDirectory()) {
                        sakeAvailableURL(file2.getAbsolutePath());
                    } else {
                    	try
						{
							sakeURLinFile( file2.getAbsolutePath());
							
						}
						catch (Exception e)
						{
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
                    }
                }
            }
        } else {
            System.out.println("文件不存在!");
        }
    }
	
	
	public static void sakeURLinFile(String filepath) throws Exception{
		
		System.out.println("开始扫描文件:"+filepath);
         
         FileReader reader = new FileReader(filepath);
         BufferedReader br = new BufferedReader(reader);
        
         String str = null;
        
         while((str = br.readLine()) != null) {    	 
        	
        	 //System.out.println(str);
        	 if(str.contains("http://")||str.contains("https://")){
        		 urlcount++;
        		// System.err.println("找到一条含有URL的字符串:"+str);
        		 String strs1[]=str.split(",");
        		 for(String s1:strs1){
        			//System.err.println("分割为:"+s1);
        			 if(isAvailableURL(s1))
        			 {
        				 System.err.println("找到一条可用URL:"+s1+",在 File"+filepath+"中");
        				 SURL su=new SURL(s1, SURL.IfSensentive(s1));
        				 aurls.add(su);
        			 
        			 }	
        		 }
        		 String strs2[]=str.split("=");
        		 for(String s2:strs2){
        			 	//System.out.print(s2);
        			// System.err.println("分割为:"+s2);
        			 if(isAvailableURL(s2)){
        				 System.err.println("找到一条可用URL:"+s2+",在 File"+filepath+"中");
        				 SURL su=new SURL(s2, SURL.IfSensentive(s2));
        				 aurls.add(su);
        			 }
        				
        		 }
        	 }
             
         }
        
         br.close();
         reader.close();
		
	}


public static void main(String args[]){
	System.out.println(isAvailableURL("\"http://api.wapa.taobao.com/rest/api2.do"));
	
}
	


	
	private static boolean isAvailableURL(String url){
	
			if(isAvaliable(url)){
				return true;
			}else{
				return false;
			}
			
		
	}
	
	
	
	
	private static boolean isAvaliable(String stringurl){
		stringurl=stringurl.replace("\"", "");
		stringurl=stringurl.trim();
		URL url;  
	    try {  
	         url = new URL(stringurl);  
	         InputStream in = url.openStream(); 
	        
	         return true;
	    } catch (Exception e1) {  
	        
	         
	         return false;
	        
	    }  
	}
	
}

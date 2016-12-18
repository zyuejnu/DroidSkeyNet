package com.reverseengine.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class getTimesOfApp
{
	public static void main(String args[]) throws IOException{
		getTimeofApp();
	}
	
	
	public static long getTimeofApp() throws IOException{
		
		unZipFiles("G:\\ʵ��\\ʵ������\\δ���\\����\\����\\3381.apk", "G:\\ʵ��\\ʵ������\\δ���\\����\\����\\");
		
		return 0;
		
	}
	/**
	 * ��ѹ��ָ��Ŀ¼
	 * @param zipPath
	 * @param descDir
	 * @author isea533
	 */
	private static void unZipFiles(String zipPath,String descDir)throws IOException{
		unZipFiles(new File(zipPath), descDir);
	}
	/**
	 * ��ѹ�ļ���ָ��Ŀ¼
	 * @param zipFile
	 * @param descDir
	 * @author isea533
	 */
	@SuppressWarnings("rawtypes")
	private static void unZipFiles(File zipFile,String descDir)throws IOException{
		File pathFile = new File(descDir);
		if(!pathFile.exists()){
			pathFile.mkdirs();
		}
		ZipFile zip = new ZipFile(zipFile);
		for(Enumeration entries = zip.entries();entries.hasMoreElements();){
			ZipEntry entry = (ZipEntry)entries.nextElement();
			String zipEntryName = entry.getName();
			InputStream in = zip.getInputStream(entry);
			String outPath = (descDir+zipEntryName).replaceAll("\\*", "/");;
			//�ж�·���Ƿ����,�������򴴽��ļ�·��
			File file = new File(descDir);
			if(!file.exists()){
				file.mkdirs();
			}
			//�ж��ļ�ȫ·���Ƿ�Ϊ�ļ���,����������Ѿ��ϴ�,����Ҫ��ѹ
			if(new File(outPath).isDirectory()){
				continue;
			}
			//����ļ�·����Ϣ
			System.out.println(outPath);
			
			OutputStream out = new FileOutputStream(outPath);
			byte[] buf1 = new byte[1024];
			int len;
			while((len=in.read(buf1))>0){
				out.write(buf1,0,len);
			}
			in.close();
			out.close();
			}
		System.out.println("******************��ѹ���********************");
	}



}

package com.reverseengine.utils;

import java.io.File;

public class RootDirHelper
{
	/*****
	 * ������������ȡ��Ŀ¼��
	 * 
	 * *
	 ****/

	private static File getFristDisk()
	{
		File[] files = File.listRoots();
		if (files.length > 0)
		{
			return files[0];
		}
		else
		{
			return null;
		}

	}

	/******
	 * 
	 * 
	 * ��ȡ����Ĭ�ϴ��Ŀ¼
	 * 
	 * @return String���͵�Ŀ¼·�� *
	 *****/
	public static String getContentRootDir()
	{

		String rootpath = getFristDisk().getAbsolutePath() + File.separator
				+ "ReverseEngine" + File.separator;
		File root = new File(rootpath);
		
		if (!root.exists())
		{
			root.mkdirs();
		}
		
		return rootpath;
	}

	public static String getTempDir()
	{
		// TODO Auto-generated method stub
		return getContentRootDir()+File.separator+"temp";
	}
	public static String getTarget()
	{
		// TODO Auto-generated method stub
		String tempfile=getContentRootDir()+File.separator+"temp"+File.separator+"target"+File.separator;
		File temp=new File(tempfile);
		if(!temp.exists())
		{
			temp.mkdirs();
		};
		return tempfile+"target.apk";
	}
}

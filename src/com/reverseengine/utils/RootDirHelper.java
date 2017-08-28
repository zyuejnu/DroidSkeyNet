package com.reverseengine.utils;

import java.io.File;

public class RootDirHelper
{
	/*****
	 * 该类是用来获取根目录的
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
	 * 获取程序默认存放目录
	 * 
	 * @return String类型的目录路径 *
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

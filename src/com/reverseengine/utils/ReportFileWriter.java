package com.reverseengine.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class ReportFileWriter {
	 
	
	public static void writeReport(String reportname,String content) {
		BufferedWriter fw = null;
		try {
			fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(reportname, true), "UTF-8")); // ָ�������ʽ�������ȡʱ�����ַ��쳣
			fw.newLine();
			fw.append(content);
			fw.flush(); // ȫ��д�뻺���е�����
			fw.newLine();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fw != null) {
				try {
					fw.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	}
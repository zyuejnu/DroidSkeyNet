package com.reverseengine.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class XmlUtils {
	Document doc;

	public XmlUtils(String path)
	{
		super();
		SAXReader reader=new SAXReader();
		try
		{
			doc=reader.read(new File(path));
		}
		catch (DocumentException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String path="";
	
	public Document getDocument() throws DocumentException{
		
		return doc;
	}
	public void writeXml(Document doc) throws IOException{
		OutputFormat oft=OutputFormat.createPrettyPrint();
		oft.setEncoding("UTF-8");
		XMLWriter writer=new XMLWriter(new FileOutputStream(path),oft);
		writer.write(doc);
		writer.close();
	}
	
}

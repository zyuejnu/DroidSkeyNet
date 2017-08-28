package com.reverseengine.utils;

import java.io.File;
import java.util.List;

import jxl.Workbook;
import jxl.format.Colour;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import com.reverseengine.obj.APKInfo;
import com.reverseengine.obj.EXPORT_FILE_TYPE;



public class ExportUtils
{
	
	private static WritableCellFormat getTitileCellStytle(Colour colour, int size)
	{
		WritableFont wf = new WritableFont(WritableFont.TIMES, size,
				WritableFont.BOLD, false);
		WritableCellFormat wcf = new WritableCellFormat(wf);
		try
		{
			wcf.setBorder(jxl.format.Border.ALL,
					jxl.format.BorderLineStyle.THIN);
			wcf.setBackground(colour);
			wcf.setAlignment(jxl.format.Alignment.CENTRE);
			wcf.setVerticalAlignment(jxl.format.VerticalAlignment.CENTRE);
		}
		catch (WriteException e)
		{
			e.printStackTrace();
		}

		return wcf;
	}

	
	private static void writeTitle(WritableSheet sheet)
			throws RowsExceededException, WriteException
	{
		// 设置列宽
		sheet.setColumnView(0, 6);
		sheet.setColumnView(1, 14);
		sheet.setColumnView(2, 10);
		sheet.setColumnView(3, 8);
		sheet.setColumnView(4, 10);
		sheet.setColumnView(5, 13);
		sheet.setColumnView(6, 12);
		sheet.setColumnView(7, 10);
		sheet.setColumnView(8, 8);
		sheet.setColumnView(9, 12);
		sheet.setColumnView(10, 12);

		WritableCellFormat wcf = getTitileCellStytle(Colour.BLUE2, 11);
		wcf.setWrap(true);
		wcf.setAlignment(jxl.format.Alignment.CENTRE);
		wcf.setVerticalAlignment(jxl.format.VerticalAlignment.CENTRE);

		jxl.write.Label addressLabel = new jxl.write.Label(0, 0, "序号", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(1, 0, "apk包名", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(2, 0, "apk版本号", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(3, 0, "apk版本名称", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(4, 0, "USER_SDK", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(5, 0, "是否采取JNI或者核心代码加密的方式阻止反编译(UI界面是否可读)", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(6, 0, "逻辑代码是否经过混淆", wcf);
		sheet.addCell(addressLabel);
		addressLabel = new jxl.write.Label(7, 0, "apk出现时间", wcf);
		sheet.addCell(addressLabel);
		addressLabel = new jxl.write.Label(8, 0, "结果更新时间", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(9, 0, "检测结果", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(10, 0, "其余描述信息", wcf);
		sheet.addCell(addressLabel);

		addressLabel = new jxl.write.Label(11, 0, "漏洞详细报告", wcf);
		sheet.addCell(addressLabel);
	
	}
	private static File exportResultXLSFile(String dir, String name, List<APKInfo> resultList)
			throws Exception
	{
		String newFile = dir + File.separator + name
				+ "_result.xls";
		
		File file = new File(newFile);
		WritableWorkbook book = Workbook.createWorkbook(file);
		// 生成名为“sheet1”的工作表，参数0表示这是第一页
		WritableSheet sheet = book.createSheet("sheet", 0);
		writeTitle(sheet);
		WritableCellFormat wcf = CommonTool.getCellStytle(Colour.WHITE, 11);
		int colum = 1;
		for (APKInfo result : resultList)
		{
			// 序号
			jxl.write.Label addressLabel = new jxl.write.Label(0, colum, String
					.valueOf(colum), wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(1, colum, result.getApkName(), wcf);
			sheet.addCell(addressLabel);
		
			addressLabel = new jxl.write.Label(2, colum, result.getVersionCode(), wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(3, colum, result.getVersionName(), wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(4, colum, result.getUserSDK(),
					wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(5, colum,
					result.isIsprotected()+"", wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(6, colum, result.isIsobfuscation()+"",
					wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(7, colum, result.getYear(), wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(8, colum, result.getChecktime(), wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(9, colum, result.getResult()
					, wcf);
			sheet.addCell(addressLabel);

			addressLabel = new jxl.write.Label(10, colum, result.getOtherinfo(), wcf);
			sheet.addCell(addressLabel);
			addressLabel = new jxl.write.Label(11, colum, result.getWeakness(), wcf);
			sheet.addCell(addressLabel);


			colum++;
		}

		book.write();
		book.close();

		return file;
	}

	public static boolean exportResultToFile(String dir,String name,List<APKInfo> resultList,
			EXPORT_FILE_TYPE fileType)
	{
		
		if (resultList == null || resultList.isEmpty() || fileType == null)
		{
			return false;
		}

		File file = null;
		try
		{
			switch (fileType)
			{
				case CSV:
					//file = exportResultCSVFile(dir, resultList);
				break;
				case XLS:
					file = exportResultXLSFile(dir, name,resultList);
				break;
				case TXT:
					//file = exportResultTXTFile(dir, resultList);
				break;
				default:
				break;
			}

			// TODO 加上路径生成最终文件
		}
		catch (Exception e)
		{
			return false;
		}

		return true;
	}
}

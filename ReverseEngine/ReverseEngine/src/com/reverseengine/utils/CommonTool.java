package com.reverseengine.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Colour;
import jxl.format.UnderlineStyle;
import jxl.read.biff.BiffException;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class CommonTool
{
	/**
	 * 汉字转UNICODE
	 * @param s
	 * @return
	 */
	public static String toUNICODE(String s)
	{
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < s.length(); i++)
		{
			if (s.charAt(i) <= 256)
			{
				sb.append("\\u00");
			}
			else
			{
				sb.append("\\u");
			}
			
			sb.append(Integer.toHexString(s.charAt(i)));
		}
		
		return sb.toString();
	}

	public static String integerToHex(int num)
	{
		String aa = "";
		try
		{
			aa = Integer.toHexString(num);
		}
		catch (Exception e)
		{
		}

		return aa;
	}

	public static String integerToHex(String bb)
	{
		int num = 0;
		String aa = "";
		try
		{
			num = Integer.valueOf(bb);
			aa = Integer.toHexString(num);
		}
		catch (Exception e)
		{
			return "";
		}

		return aa;
	}

	public static int hexToInteger(String str)
	{
		int aa = 0;
		try
		{
			aa = Integer.parseInt(str, 16);
		}
		catch (Exception e)
		{
		}

		return aa;
	}

	public static void sleep(long time)
	{
		try
		{
			Thread.sleep(time);
		}
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * 确认某地址是否属于IP
	 * 
	 * @param addr
	 * @return
	 */
	public static boolean isAddressIP(String addr)
	{
		if (addr.length() < 7 || addr.length() > 15 || "".equals(addr))
		{
			return false;
		}
		/**
		 * 判断IP格式和范围
		 */
		String rexp = "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}";

		Pattern pat = Pattern.compile(rexp);

		Matcher mat = pat.matcher(addr);

		boolean ipAddress = mat.find();

		return ipAddress;
	}

	/*	*//**
	 * 计算两个日期之间相差的天数
	 * 
	 * @param smdate
	 *            较小的时间
	 * @param bdate
	 *            较大的时间
	 * @return 相差天数
	 * @throws ParseException
	 */
	public static int getDaysBetween(Date smdate, Date bdate)
			throws ParseException
	{
		smdate = Resource.SDF_MONTH.parse(Resource.SDF_MONTH.format(smdate));
		bdate = Resource.SDF_MONTH.parse(Resource.SDF_MONTH.format(bdate));
		Calendar cal = Calendar.getInstance();
		cal.setTime(smdate);
		long time1 = cal.getTimeInMillis();
		cal.setTime(bdate);
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);

		return Integer.parseInt(String.valueOf(between_days));
	}

	

	/**
	 *字符串的日期格式的计算
	 */
	public static int getDaysBetween(String smdate, String bdate)
			throws ParseException
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(Resource.SDF_MONTH.parse(smdate));
		long time1 = cal.getTimeInMillis();
		cal.setTime(Resource.SDF_MONTH.parse(bdate));
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);

		return Integer.parseInt(String.valueOf(between_days));
	}

	/**
	 * 获取当前日期格式
	 * 
	 * @return
	 */
	public static String getCurrentDate()
	{
		return Resource.SDF_MONTH.format(new Date());
	}

	/**
	 * 获取当前详细格式
	 * 
	 * @return
	 */
	public static String getCurrentTime()
	{
		return Resource.SDF_TIME.format(new Date());
	}

	/**
	 * 获取当前日期格式
	 * 
	 * @return
	 */
	public static String getCurrentMonth()
	{
		SimpleDateFormat SDF = new SimpleDateFormat("yyyyMM");
		return SDF.format(new Date());
	}

	/**
	 * 获取当前前num的日期
	 * 
	 * @param num
	 * @return
	 */
	public static String getSpecialDate(int num)
	{
		Date as = new Date(new Date().getTime() - num * 24 * 60 * 60 * 1000);
		return Resource.SDF_MONTH.format(as);
	}

	public static String convertDoubleToPer(double result)
	{
		DecimalFormat df = new DecimalFormat("0.00%");
		String r = df.format(result);

		return r;
	}

	/**
	 * 获取当前路径下的所有文件
	 * 
	 * @param path
	 * @return
	 */
	public static List<String> getCurrentPatFile(String path)
	{
		File file = new File(path);
		String[] fileArray = null;
		if (file.isDirectory())
		{
			fileArray = file.list();
		}
		else
		{
			System.out.println("Current path is file.");
		}

		return Arrays.asList(fileArray);
	}

	/**
	 * 给单元格设置风格
	 * 
	 * @param colour
	 * @return
	 */
	public static WritableCellFormat getCellStytle(Colour colour, int size)
	{
		WritableFont wf = new WritableFont(WritableFont.ARIAL, size,
				WritableFont.NO_BOLD, false);
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

	/**
	 * 将百分比转换成double
	 * 
	 * @param str
	 * @return
	 */
	public static double convertPerToDoubel(String str)
	{
		String aa = str.replace("%", "");
		double bb = 0;
		try
		{
			bb = Double.valueOf(aa);
		}
		catch (Exception e)
		{
			return bb;
		}

		return bb;
	}

	/**
	 * 设置字体颜色
	 * 
	 * @param colour
	 * @return
	 */
	public static WritableCellFormat getNumStytle(Colour colour, int size)
	{
		WritableFont wf = new WritableFont(WritableFont.ARIAL, size,
				WritableFont.BOLD, false, UnderlineStyle.NO_UNDERLINE, colour);
		WritableCellFormat wcf = new WritableCellFormat(wf);
		try
		{
			wcf.setBorder(jxl.format.Border.ALL,
					jxl.format.BorderLineStyle.THIN);
			wcf.setBackground(Colour.WHITE);
			wcf.setAlignment(jxl.format.Alignment.CENTRE);
			wcf.setVerticalAlignment(jxl.format.VerticalAlignment.CENTRE);
		}
		catch (WriteException e)
		{
			e.printStackTrace();
		}

		return wcf;
	}

	/**
	 * 从excel中读取数据
	 * 
	 * @param excelFile
	 * @param sheetNum
	 * @return
	 * @throws BiffException
	 * @throws IOException
	 */
	public static List<String[]> readExcel(String excelFile, int sheetNum)
	{
		// 创建一个list 用来存储读取的内容
		List<String[]> list = new ArrayList<String[]>();
		Workbook rwb = null;
		Cell cell = null;

		File file = new File(excelFile);
		if (!file.exists())
		{
			System.out.println(file + " isn't exist.");
			return list;
		}

		// 创建输入流
		InputStream stream = null;

		try
		{
			stream = new FileInputStream(excelFile);

			// 获取Excel文件对象
			rwb = Workbook.getWorkbook(stream);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return list;
		}

		// 获取文件的指定工作表 默认的第一个
		Sheet sheet = rwb.getSheet(sheetNum);

		// 行数(表头的目录不需要，从1开始)
		for (int i = 0; i < sheet.getRows(); i++)
		{

			// 创建一个数组 用来存储每一列的值
			String[] str = new String[sheet.getColumns()];

			// 列数
			for (int j = 0; j < sheet.getColumns(); j++)
			{

				// 获取第i行，第j列的值
				cell = sheet.getCell(j, i);
				str[j] = cell.getContents();

			}
			// 把刚获取的列存入list
			list.add(str);
		}

		return list;
	}

	/**
	 * B方法追加文件：使用FileWriter
	 */
	public static void appendMethodB(String fileName, String content,
			boolean isAppend)
	{
		File file = new File(fileName);
		if (file.exists())
		{
			try
			{
				file.createNewFile();
			}
			catch (IOException e)
			{
				e.printStackTrace();
			}
		}

		try
		{
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
			FileWriter writer = new FileWriter(fileName, isAppend);
			writer.write(content + "\r\n");
			writer.close();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
	}

	public static String readTxtFileStr(String filePath)
	{
		StringBuilder sb = new StringBuilder();
		try
		{
			String encoding = "GBK";
			File file = new File(filePath);
			if (file.isFile() && file.exists())
			{ // 判断文件是否存在
				InputStreamReader read = new InputStreamReader(
						new FileInputStream(file), encoding);// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null)
				{
					if (lineTxt.trim().equals(""))
					{
						continue;
					}

					sb.append(lineTxt.trim() + "\r\n");
					// System.out.println(lineTxt);
				}

				read.close();
			}
			else
			{
				System.out.println("找不到指定的文件");
			}
		}
		catch (Exception e)
		{
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}

		return sb.toString();
	}

	public static List<String> readTxtFile(String filePath)
	{
		List<String> onuIPList = new ArrayList<String>();

		try
		{
			String encoding = "UTF-8";
			File file = new File(filePath);
			if (file.isFile() && file.exists())
			{
				// 判断文件是否存在
				InputStreamReader read = new InputStreamReader(
						new FileInputStream(file), encoding);// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null)
				{
					if (lineTxt.trim().equals(""))
					{
						continue;
					}

					onuIPList.add(lineTxt.trim());
					// System.out.println(lineTxt);
				}
				read.close();
			}
			else
			{
				System.out.println("找不到指定的文件");
			}
		}
		catch (Exception e)
		{
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}

		return onuIPList;
	}

	public static List<String> removeArrayEmptyStr(String[] original)
	{
		List<String> resultList = new ArrayList<String>();
		for (String str : original)
		{
			if (!"".equals(str))
			{
				resultList.add(str);
			}
		}

		return resultList;
	}

	/**
	 * 读取CSV文件
	 * 
	 * @param fileName
	 * @return
	 * @throws Exception
	 */
	public static List<String[]> readCsvFile(String fileName) throws Exception
	{
		BufferedReader br = new BufferedReader(new InputStreamReader(
				new FileInputStream(fileName)));

		List<String[]> list = new ArrayList<String[]>();
		String line;
		while ((line = br.readLine()) != null)
		{
			String[] info = line.split(",");
			list.add(info);
		}

		return list;
	}

	public static Workbook getExcelWorkbook(String filePath) throws IOException
	{
		Workbook book = null;
		File file = null;
		FileInputStream fis = null;

		try
		{
			file = new File(filePath);
			if (!file.exists())
			{
				throw new RuntimeException("文件不存在");
			}
			else
			{
				fis = new FileInputStream(file);
				// book = WorkbookFactory.create(fis);
			}
		}
		catch (Exception e)
		{
			throw new RuntimeException(e.getMessage());
		}
		finally
		{
			if (fis != null)
			{
				fis.close();
			}
		}
		return book;
	}

	public static void getExistUserList() throws Exception
	{
		String file = System.getProperty("user.dir") + "\\file\\mydata.csv";
		List<String[]> resultList = readCsvFile(file);
		Map<String, String[]> map = new HashMap<String, String[]>();
		for (String[] array : resultList)
		{
			if (array == null || array.length <= 1)
			{
				continue;
			}

			if (array[1].equals("13007300052"))
			{
				System.out.println("");
			}

			String a = "";
			String b = "";
			if (array.length == 3)
			{
				a = array[2];
			}
			else if (array.length == 4)
			{
				b = array[3];
			}

			String[] xx = new String[]
			{ array[1], a, b };
			map.put(array[0].trim(), xx);
		}

		file = System.getProperty("user.dir") + "\\file\\渠道综合查询 (1).xls";
		List<String[]> list3 = readExcel(file, 0);
		Map<String, String> areaMap = new HashMap<String, String>();
		for (String[] array : list3)
		{
			areaMap.put(array[1].trim(), array[4].trim());
		}

		file = System.getProperty("user.dir") + "\\file\\allInfo.csv";
		List<String[]> list2 = readCsvFile(file);

		// String logFile = System.getProperty("user.dir") +
		// "\\file\\mydata.csv";
		String log = System.getProperty("user.dir") + "\\file\\result.txt";
		// File newFile = new File(logFile);
		// FileOutputStream out = new FileOutputStream(newFile);
		// OutputStreamWriter osw = new OutputStreamWriter(out, "UTF8");
		// BufferedWriter bw = new BufferedWriter(osw);
		for (int i = 0; i < list2.size(); i++)
		{
			String[] array = list2.get(i);
			if (array == null || array.length == 0)
			{
				continue;
			}

			// 获取区县
			String area = "";
			String str = "";
			try
			{
				area = areaMap.get(array[3].trim());
				if (area == null)
				{
					area = array[3].trim();
				}

				// 获取偏好
				String[] love = map.get(array[0].trim());
				if (love == null)
				{
					if (array.length == 6)
					{
						str = area + "," + array[0] + "," + array[1] + ","
								+ array[2] + "," + array[3] + "," + array[4]
								+ "," + array[5];
					}
					else if (array.length == 7)
					{
						str = area + "," + array[0] + "," + array[1] + ","
								+ array[2] + "," + array[3] + "," + array[4]
								+ "," + array[5] + "," + array[6];
					}
					else
					{
						System.out.println("Error");
					}
				}
				else
				{
					if (array.length == 6)
					{
						str = area + "," + array[0] + "," + array[1] + ","
								+ array[2] + "," + array[3] + "," + array[4]
								+ "," + array[5] + "," + love[0] + ","
								+ love[1] + "," + love[2];
					}
					else if (array.length == 7)
					{
						str = area + "," + array[0] + "," + array[1] + ","
								+ array[2] + "," + array[3] + "," + array[4]
								+ "," + array[5] + "," + array[6] + ","
								+ love[0] + "," + love[1] + "," + love[2];
					}
					else
					{
						System.out.println("Error");
					}
				}
			}
			catch (Exception e)
			{
			}

			if ("".equals(str.trim()))
			{
				continue;
			}

			appendMethodB(log, str, true);
		}

		// bw.close();
		// osw.close();
		// out.close();
	}

	/**
	 * 读取渠道对应的区县
	 * 
	 * @throws Throwable
	 */
	public static void readQudaoArea() throws Throwable
	{
		String file = System.getProperty("user.dir") + "\\file\\渠道工号明细表.xls";
		String log = System.getProperty("user.dir") + "\\file\\201510.txt";
		List<String[]> list1 = readExcel(file, 0);
		Map<String, String> map = new HashMap<String, String>();
		for (String[] array : list1)
		{
			map.put(array[2].trim(), array[5].trim());
		}

		file = System.getProperty("user.dir") + "\\file\\20151209.csv";
		List<String[]> list2 = readCsvFile(file);
		for (String[] array : list2)
		{
			if (array.length < 8)
			{
				continue;
			}
			String aa = array[11].trim().replaceAll(" ", "");
			aa = array[11].replaceAll("\"", "");
			String area = map.get(aa);
			if (area != null)
			{
				appendMethodB(log, area, true);
			}
			else
			{
				appendMethodB(log, "", true);
			}
		}
	}

	/**
	 * 读取渠道对应的区县
	 * 
	 * @throws Throwable
	 */
	public static void readPerfectTel(String newFile) throws Throwable
	{
		String file = System.getProperty("user.dir")
				+ "\\file\\停机用户23G_7月31日前停机.xls";
		String log = System.getProperty("user.dir") + "\\file\\201510.txt";
		List<String[]> list1 = readExcel(file, 0);

		WritableWorkbook book = Workbook.createWorkbook(new File(newFile));

		// 生成名为“sheet1”的工作表，参数0表示这是第一页
		WritableSheet sheet = book.createSheet("sheet", 0);
		WritableCellFormat wcf = CommonTool.getCellStytle(Colour.WHITE, 10);
		int colum = 0;

		for (String[] array : list1)
		{
			String tel = array[0];
			int length = tel.length();
			String d = tel.substring(length - 4, length - 3);
			String c = tel.substring(length - 3, length - 2);
			String b = tel.substring(length - 2, length - 1);
			String a = tel.substring(length - 1, length);

			if ((a.equals(b) && b.equals(c) && c.equals(d))
					|| (a.equals(b) && b.equals(c)))
			{
				System.out.println(array[0]);
				jxl.write.Label addressLabel = new jxl.write.Label(0, colum,
						String.valueOf(colum), wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(1, colum, array[0], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(2, colum, array[1], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(3, colum, array[2], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(4, colum, array[3], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(5, colum, array[4], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(6, colum, array[5], wcf);
				sheet.addCell(addressLabel);

				addressLabel = new jxl.write.Label(7, colum, array[6], wcf);
				sheet.addCell(addressLabel);

				colum++;
			}
		}

		book.write();
		book.close();

	}

	public static void readUserArea() throws Exception
	{
		String file = System.getProperty("user.dir") + "\\file\\用户账号区县明细.csv";
		String log = System.getProperty("user.dir") + "\\file\\201510.txt";
		List<String[]> list1 = readCsvFile(file);
		Map<String, String> map = new HashMap<String, String>();
		for (String[] array : list1)
		{
			if (array.length == 2)
			{
				map.put(array[0].trim(), array[1].trim());
			}
		}

		file = System.getProperty("user.dir") + "\\file\\一证多户明细（10月29日）.xls";
		List<String[]> list2 = readExcel(file, 0);
		for (String[] array : list2)
		{
			String area = map.get(array[2].trim());
			if (area != null)
			{
				appendMethodB(log, area, true);
			}
			else
			{
				appendMethodB(log, "", true);
			}
		}
	}

	public static void splitShiMingUser(String fileName, String newFile)
	{
		List<String> list = readTxtFile(fileName);

		for (String str : list)
		{
			if ("".equals(str))
			{
				continue;
			}

			String[] array = str.split("||");
		}
	}

	/**
	 * 清空文本内容
	 * 
	 * @param filePath
	 * @return
	 */
	public static boolean clearFileContent(String filePath)
	{
		try
		{
			FileOutputStream out = new FileOutputStream(filePath, false);
			out.write(new String("").getBytes());
			out.close();
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
			return false;
		}

		return true;
	}

	public static void main(String[] args) throws Throwable
	{
		System.out.println(toUNICODE("周期扫描"));
	}
}

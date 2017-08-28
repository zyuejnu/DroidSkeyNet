package com.reverseengine.ui;

import java.awt.EventQueue;

import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;
import javax.swing.SwingWorker;
import javax.swing.UIManager;

import org.dom4j.DocumentException;


import com.reverseengine.obj.APKInfo;
import com.reverseengine.obj.EXPORT_FILE_TYPE;
import com.reverseengine.utils.AnalysisReport;
import com.reverseengine.utils.ApkUtil;
import com.reverseengine.utils.CommonTool;
import com.reverseengine.utils.CopyFileUtils;
import com.reverseengine.utils.DeCompilationUtils;
import com.reverseengine.utils.ExportUtils;
import com.reverseengine.utils.ObfuscationChecker;
import com.reverseengine.utils.ObfuscationChecker;
import com.reverseengine.utils.ProtectionCheckUtils;
import com.reverseengine.utils.Resource;
import com.reverseengine.utils.RootDirHelper;
import com.reverseengine.utils.WeaknessDetectUtils;



import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Vector;
import java.awt.Font;
import java.awt.Color;
import javax.swing.JComboBox;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumn;

public class MainEngUI
{

	
	
	private JFrame frame;
	//定义颜色
	Color fontcolor=new Color(165, 42, 42);//new Color(0,93,108);
			//new Color(165, 42, 42);
	Color infocolor=new Color(255, 255, 255);
	Color typecolor=new Color(128, 0, 0);
	private JTextField loadpre;
	JLabel lblTipsLogInformation ;
	JTable res_table;
	JComboBox yearcb;
	Vector res_cellData = new Vector();
	List<APKInfo> res_infos = new ArrayList<APKInfo>();
	private String RES_COL_NAMES[] =
		{ "apk包名", "apk版本号", "apk版本名称", "USER_SDK", "是否采取JNI或者核心代码加密的方式阻止反编译(UI界面是否可读)", "逻辑代码是否经过混淆", "APK出现年份","结果更新时间", "检测结果", 
				"其余描述信息","漏洞分析" };
	private JTextField tx_type;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args)
	{
		EventQueue.invokeLater(new Runnable()
		{
			public void run()
			{
				try
				{
					UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
					MainEngUI window = new MainEngUI();
					window.frame.setVisible(true);
				}
				catch (Exception e)
				{
					e.printStackTrace();
				}
			}
		});
	}
	// 自适应内容宽度
		public void fitTableColumns(JTable myTable)
		{
			JTableHeader header = myTable.getTableHeader();
			int rowCount = myTable.getRowCount();

			Enumeration columns = myTable.getColumnModel().getColumns();
			while (columns.hasMoreElements())
			{
				TableColumn column = (TableColumn) columns.nextElement();

				int col = header.getColumnModel().getColumnIndex(
						column.getIdentifier());

				int width = (int) myTable.getTableHeader().getDefaultRenderer()
						.getTableCellRendererComponent(myTable,
								column.getIdentifier(), false, false, -1, col)
						.getPreferredSize().getWidth();

				for (int row = 0; row < rowCount; row++)
				{
					int preferedWidth = (int) myTable.getCellRenderer(row, col)
							.getTableCellRendererComponent(myTable,
									myTable.getValueAt(row, col), false, false,
									row, col).getPreferredSize().getWidth();
					width = Math.max(width, preferedWidth);
				}

				header.setResizingColumn(column); // 此行很重要
				column.setWidth(width + myTable.getIntercellSpacing().width);
			}
		}

	private void refrashResult(){
			
			res_cellData.clear();
			
			if (res_infos == null || res_infos.size() == 0)
			{
				return;
			}
			for (APKInfo info : res_infos)
			{
			
				
				Vector<String> currow = new Vector<String>();
				
				currow.addElement(info.getApkName());
				currow.addElement(info.getVersionCode());
				currow.addElement(info.getVersionName());
				currow.addElement(info.getUserSDK());
		
				currow.addElement(info.isIsprotected()+"");
				currow.addElement(info.isIsobfuscation()+"");
				currow.addElement(info.getYear());
		
				currow.addElement(info.getChecktime());
				currow.addElement(info.getResult());
				currow.addElement(info.getOtherinfo());
				currow.addElement(info.getWeakness());
			// 填充结果
				res_cellData.addElement(currow);
			
			
			
			}
			fitTableColumns(res_table);
	
			res_table.updateUI();
		
		
		}

	/**
	 * Create the application.
	 */
	public MainEngUI()
	{
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize()
	{
		frame = new JFrame("ReverseEngine_V1.0.1_ alpha");
		frame.getContentPane().setBackground(fontcolor);
		frame.setBounds(100, 100, 450, 700);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JButton btnLoadDir = new JButton("LOAD DIR");
		btnLoadDir.setForeground(fontcolor);
		btnLoadDir.setFont(new Font("宋体", Font.BOLD, 12));
		btnLoadDir.setBackground(fontcolor);
		btnLoadDir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			
				JFileChooser jFileChooser = new JFileChooser("选择反编译文件保存的目录");
				jFileChooser
						.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
				jFileChooser.showSaveDialog(frame);

				File file = jFileChooser.getSelectedFile();
				String dir = "";
				if (file != null)
				{
					dir = file.getAbsolutePath();
					loadpre.setText(dir);
				}
				else
				{
					showConfirmDialog(frame, Resource.NOT_SELECTED_ERROR);
					return;
				}
			
			}

			
		});
		btnLoadDir.setBounds(333, 10, 91, 23);
		frame.getContentPane().add(btnLoadDir);
	
		List<String> res_colnames = new ArrayList<String>();
		Collections.addAll(res_colnames, RES_COL_NAMES);
		Vector rescolumnNames = new Vector(res_colnames);
		res_table = new JTable(res_cellData, rescolumnNames);
		res_table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
		res_table.setEnabled(false);
		JScrollPane jsp = new JScrollPane(res_table);
		
		jsp.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		jsp.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		jsp.setBounds(10, 318, 414, 300);
		frame.getContentPane().add(jsp);
		
		JButton startbtn = new JButton("START");
		startbtn.setFont(new Font("宋体", Font.BOLD, 12));
		startbtn.setForeground(fontcolor);
		startbtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				final String dirpath=loadpre.getText();
				if(dirpath==null||dirpath.equals("")){
					showConfirmDialog(frame, "您没有选择载入目录");
					return;
				}
		
				new Thread(new Runnable()
				{
					
					@Override
					public void run()
					{
						// TODO Auto-generated method stub
						File dir=new File(dirpath);
						File[] files=dir.listFiles();
					
						for(File file:files){
							if(!file.getName().endsWith("apk")){
								continue;
							}
							if(CopyFileUtils.copyFile(file, new File(RootDirHelper.getTarget()))){
								 try
								{	
									
									APKInfo apkinfo=new APKInfo();
									AnalysisReport.clearInfo();
									ApkUtil apkutil=new ApkUtil(RootDirHelper.getTarget());
									String name=null;
									try
									{
										name=apkutil.getAPKPageName(RootDirHelper.getTarget());
									}
									catch (Exception e)
									{
										// TODO Auto-generated catch block
										name=null;
									}
									if(name==null){
										name=apkutil.getPkgname();
									}
									if(name==null||name.equals("Unknow")){
										name=file.getName();
										if(apkinfo.getOtherinfo().equals("")){
											
											//apkinfo.setOtherinfo(apkinfo.getOtherinfo()+"获取包名失败，需要手工查看包名");
										}else{
											//apkinfo.setOtherinfo(apkinfo.getOtherinfo()+";获取包名失败，需要手工查看包名");
										}
										AnalysisReport.addInfo("获取包名失败，需要手工查看包名");
									}
									
									boolean isinternet=false;
									for(String p:apkutil.getPermissions()){
										if(p.contains("INTERNET")){
											isinternet=true;
											break;
										}else{
											
											continue;
										}
										
										
										
									};
									apkinfo.setApkName(name);
									apkinfo.setVersionCode(apkutil.getVersionCode());
									apkinfo.setVersionName(apkutil.getVersionName());
									
									
									apkinfo.setUserSDK(apkutil.getUserSdk());
									while(DeCompilationUtils.waitForExit(DeCompilationUtils.compilationAPK())!=null){
											
									}
									//label.setText("提示信息:正在测试"+file.getName());
									if(ProtectionCheckUtils.notHaveProtection()){
										//
										File lib=new File(RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator+"lib");
										if(ProtectionCheckUtils.hasJNI(lib)){
											apkinfo.setIsprotected(true);
										}else{
											apkinfo.setIsprotected(false);
											
										}
										try
										{
											if(ObfuscationChecker.hasObfuscation(name,apkinfo.isIsprotected())){
												apkinfo.setIsobfuscation(true);
											}else{
												apkinfo.setIsobfuscation(false);
											}
										}
										catch (DocumentException e1)
										{
											// TODO Auto-generated catch block
											e1.printStackTrace();
										};
									}else{
										apkinfo.setIsprotected(true);
										//代码混淆检测
										String path=RootDirHelper.getTempDir()+File.separator+"destnation"+File.separator+"smali"+File.separator;
										if(ObfuscationChecker.hasProtectObfuscation(path)){
											apkinfo.setIsobfuscation(true);
										}else{
											apkinfo.setIsobfuscation(false);
										};
										
										//WeaknessDetectUtils.detectWeakness(true);
										
										
										
									}
									String y=(String)yearcb.getSelectedItem();
									int iy=Integer.parseInt(y);
									apkinfo.setWeakness(WeaknessDetectUtils.detectWeakness(isinternet,iy,apkinfo.isIsprotected(),apkinfo.isIsprotected()));
									apkinfo.setChecktime(CommonTool.getCurrentTime());
									//if(apkinfo.getOtherinfo().equals("")){
										apkinfo.setOtherinfo(AnalysisReport.getInfo());
									//}
									apkinfo.setYear((String)yearcb.getSelectedItem());
									res_infos.add(apkinfo);
									
								
									new SwingWorker<List<APKInfo>, Void>()
									{
										@Override
										protected List<APKInfo> doInBackground()
												throws Exception
										{
											return res_infos;
											
										}

										@Override
										protected void done()
										{
											refrashResult();
											super.done();
										}
									}.execute();
									
									
									
								}
								catch (IOException e1)
								{
				
									e1.printStackTrace();
								}
							
								}
							
					

						

						}
						lblTipsLogInformation.setText("提示信息:全部检测完成。");
					}
				}).start();
				
				
			}
		});
		startbtn.setBounds(194, 628, 110, 23);
		frame.getContentPane().add(startbtn);
		
		JButton exportbtn = new JButton("EXPORT");
		exportbtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				JFileChooser jFileChooser = new JFileChooser("选择反编译文件保存的目录");
				jFileChooser
						.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
				jFileChooser.showSaveDialog(frame);

				File file = jFileChooser.getSelectedFile();
				String dir = "";
				if (file != null)
				{
					dir = file.getAbsolutePath();
					loadpre.setText(dir);
				}
				else
				{
					showConfirmDialog(frame, Resource.NOT_SELECTED_ERROR);
					return;
				}
				String name=tx_type.getText()+"_"+yearcb.getSelectedItem();
				if(ExportUtils.exportResultToFile(dir, name,res_infos, EXPORT_FILE_TYPE.XLS)){
					showConfirmDialog(frame, "导出成功");
				}else{
					showConfirmDialog(frame, "导出失败");
				};
		
				
			}
		});
		exportbtn.setForeground(fontcolor);
		exportbtn.setFont(new Font("宋体", Font.BOLD, 12));
		exportbtn.setBounds(314, 628, 110, 23);
		frame.getContentPane().add(exportbtn);
		
		lblTipsLogInformation = new JLabel("Tips: log information can been show here.");
		lblTipsLogInformation.setFont(new Font("宋体", Font.BOLD, 12));
		lblTipsLogInformation.setForeground(infocolor);
		lblTipsLogInformation.setBounds(20, 43, 414, 15);
		frame.getContentPane().add(lblTipsLogInformation);
		
		loadpre = new JTextField();
		loadpre.setForeground(typecolor);
		loadpre.setBounds(10, 11, 313, 21);
		loadpre.setEditable(false);
		frame.getContentPane().add(loadpre);
		loadpre.setColumns(10);
		
		JLabel lblNewLabel = new JLabel(new ImageIcon("res/bg1.png"));
		lblNewLabel.setBounds(10, 68, 414, 212);
		frame.getContentPane().add(lblNewLabel);
		
		JLabel lblapk = new JLabel("YEAR\uFF1A");
		lblapk.setFont(new Font("宋体", Font.BOLD, 12));
		lblapk.setForeground(Color.WHITE);
		lblapk.setBounds(301, 293, 48, 15);
		frame.getContentPane().add(lblapk);
		
		yearcb = new JComboBox(new String[]{"2009","2010","2011","2012","2013","2014","2015","2016"});
		yearcb.setFont(new Font("宋体", Font.BOLD, 12));
		yearcb.setForeground(fontcolor);
		yearcb.setBounds(347, 287, 77, 21);
		frame.getContentPane().add(yearcb);
		
		JComboBox comboBox_1 = new JComboBox(new String[]{"apktool1.5"});
		comboBox_1.setForeground(typecolor);
		comboBox_1.setBounds(10, 290, 91, 21);
		frame.getContentPane().add(comboBox_1);
		
		tx_type = new JTextField();
		tx_type.setForeground(typecolor);
		tx_type.setBackground(UIManager.getColor("Button.background"));
		tx_type.setBounds(10, 629, 65, 21);
		frame.getContentPane().add(tx_type);
		tx_type.setColumns(10);
		
		JButton btnClearDat = new JButton("CLEAR");
		btnClearDat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				res_infos.clear();
				refrashResult();
			}
		});
		btnClearDat.setFont(new Font("宋体", Font.BOLD, 12));
		btnClearDat.setForeground(fontcolor);
		btnClearDat.setBounds(91, 628, 93, 23);
		frame.getContentPane().add(btnClearDat);
		
		JButton btnNewButton = new JButton("OUTPUT");
		btnNewButton.setFont(new Font("宋体", Font.BOLD, 12));
		btnNewButton.setForeground(fontcolor);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String rptname=tx_type.getText();
				
				String path=RootDirHelper.getContentRootDir()+File.separator+"Analysisreport"+File.separator+rptname+".txt";
				File f=new File(path);
				if(!f.getParentFile().exists())
				f.getParentFile().mkdirs();
				//if()
				AnalysisReport.Analysis(res_infos,path);
			}
		});
		btnNewButton.setBounds(111, 289, 126, 19);
		frame.getContentPane().add(btnNewButton);
	}

	private void showConfirmDialog(JFrame com, String msg)
	{
		// TODO Auto-generated method stub
		JOptionPane.showConfirmDialog(com, msg,"确认窗口", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE);
		
	}
}

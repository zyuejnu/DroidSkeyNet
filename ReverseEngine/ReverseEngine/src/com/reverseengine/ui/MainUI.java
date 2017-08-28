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
import com.reverseengine.utils.ApkUtil;
import com.reverseengine.utils.CommonTool;
import com.reverseengine.utils.CopyFileUtils;
import com.reverseengine.utils.DeCompilationUtils;
import com.reverseengine.utils.FindCoreEnter;
import com.reverseengine.utils.ProtectionCheckUtils;
import com.reverseengine.utils.Resource;
import com.reverseengine.utils.RootDirHelper;



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



public class MainUI
{

	
	
	private JFrame frame;
	private JTextField loadpre;
	JLabel label ;
	JTable res_table;
	JComboBox yearcb;
	Vector res_cellData = new Vector();
	List<APKInfo> res_infos = new ArrayList<APKInfo>();
	private String RES_COL_NAMES[] =
		{ "apk包名", "apk版本号", "apk版本名称", "USER_SDK", "是否采取JNI或者核心代码加密的方式阻止反编译(UI界面是否可读)", "逻辑代码是否经过混淆", "APK出现年份","结果更新时间", "检测结果", 
				"其余描述信息" };
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
					MainUI window = new MainUI();
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
			// 填充结果
				res_cellData.addElement(currow);
			
			
			
			}
			fitTableColumns(res_table);
	
			res_table.updateUI();
		
		
		}

	/**
	 * Create the application.
	 */
	public MainUI()
	{
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize()
	{
		frame = new JFrame("ReverseEngine_V1.0.1_ alpha");
		frame.getContentPane().setBackground(new Color(165, 42, 42));
		frame.setBounds(100, 100, 450, 700);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JButton button = new JButton("\u8F7D\u5165\u76EE\u5F55");
		button.setForeground(new Color(165, 42, 42));
		button.setFont(new Font("宋体", Font.BOLD, 12));
		button.setBackground(new Color(178, 34, 34));
		button.addActionListener(new ActionListener() {
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
		button.setBounds(333, 10, 91, 23);
		frame.getContentPane().add(button);
	
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
		
		JButton startbtn = new JButton("\u5F00\u59CB\u68C0\u6D4B");
		startbtn.setFont(new Font("宋体", Font.BOLD, 12));
		startbtn.setForeground(new Color(220, 20, 60));
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
							
							if(CopyFileUtils.copyFile(file, new File(RootDirHelper.getTarget()))){
								 try
								{	
									
									APKInfo apkinfo=new APKInfo();
									
									ApkUtil apkutil=new ApkUtil(RootDirHelper.getTarget());
									String name=apkutil.getAPKPageName(RootDirHelper.getTarget());
									if(name==null){
										name=apkutil.getPkgname();
									}
									if(name==null||name.equals("Unknow")){
										name=URLDecoder.decode(file.getName(),"GBK");
									}
									apkinfo.setApkName(name);
									apkinfo.setVersionCode(apkutil.getVersionCode());
									apkinfo.setVersionName(apkutil.getVersionName());
									
									
									apkinfo.setUserSDK(apkutil.getUserSdk());
									//	apkinfo.setApkName(apkutil.getAPKPageName());
									//System.out.println(apkinfo.toString());
									while(DeCompilationUtils.waitForExit(DeCompilationUtils.compilationAPK())!=null){
											
									}
									label.setText("提示信息:"+file.getName()+"反编译完成，等待混淆检测");
									if(ProtectionCheckUtils.notHaveProtection()){
										//
										apkinfo.setIsprotected(false);
										try
										{
											if(FindCoreEnter.hasObfuscation()){
												apkinfo.setIsobfuscation(false);
											}else{
												apkinfo.setIsobfuscation(true);
											}
										}
										catch (DocumentException e1)
										{
											// TODO Auto-generated catch block
											e1.printStackTrace();
										};
									}else{
										apkinfo.setIsprotected(true);
									}
									label.setText("提示信息:"+file.getName()+"已经全部完成，等待写入报表！");
									apkinfo.setChecktime(CommonTool.getCurrentTime());
									apkinfo.setOtherinfo("无备注");
									apkinfo.setYear((String)yearcb.getSelectedItem());
									res_infos.add(apkinfo);
									
									System.out.println(res_infos.size());
									refrashResult();
									
									
								}
								catch (IOException e1)
								{
									// TODO Auto-generated catch block
									//label.setText("提示信息:"+file.getName()+"反编译失败，等待混淆检测");
									e1.printStackTrace();
								}
							
								}
							
					

						

						}
						
					}
				}).start();
				
				
			}
		});
		startbtn.setBounds(10, 628, 110, 23);
		frame.getContentPane().add(startbtn);
		
		JButton exportbtn = new JButton("\u5BFC\u51FA\u62A5\u8868");
		exportbtn.setForeground(new Color(165, 42, 42));
		exportbtn.setFont(new Font("宋体", Font.BOLD, 12));
		exportbtn.setBounds(314, 628, 110, 23);
		frame.getContentPane().add(exportbtn);
		
		label = new JLabel("提示信息:本软件专门为测试我的反编译工程批量测试而研制。");
		label.setFont(new Font("宋体", Font.BOLD, 12));
		label.setForeground(new Color(255, 255, 255));
		label.setBounds(20, 43, 414, 15);
		frame.getContentPane().add(label);
		
		loadpre = new JTextField();
		loadpre.setBounds(10, 11, 313, 21);
		loadpre.setEditable(false);
		frame.getContentPane().add(loadpre);
		loadpre.setColumns(10);
		
		JLabel lblNewLabel = new JLabel(new ImageIcon("res/bg1.png"));
		lblNewLabel.setBounds(10, 68, 414, 212);
		frame.getContentPane().add(lblNewLabel);
		
		JLabel lblapk = new JLabel("apk\u51FA\u73B0\u5E74\u4EFD\uFF1A");
		lblapk.setFont(new Font("宋体", Font.BOLD, 12));
		lblapk.setForeground(Color.WHITE);
		lblapk.setBounds(262, 290, 91, 15);
		frame.getContentPane().add(lblapk);
		
		yearcb = new JComboBox(new String[]{"2009","2010","2011","2012","2013","2014","2015","2016"});
		yearcb.setFont(new Font("宋体", Font.BOLD, 12));
		yearcb.setForeground(new Color(178, 34, 34));
		yearcb.setBounds(347, 287, 77, 21);
		frame.getContentPane().add(yearcb);
		
		JComboBox comboBox_1 = new JComboBox(new String[]{"apktool1.5"});
		comboBox_1.setBounds(99, 287, 91, 21);
		frame.getContentPane().add(comboBox_1);
		
		JLabel label_1 = new JLabel("\u52A0\u8F7D\u6838\u5FC3\u6A21\u5757:");
		label_1.setFont(new Font("宋体", Font.BOLD, 12));
		label_1.setForeground(new Color(255, 255, 255));
		label_1.setBounds(10, 287, 91, 15);
		frame.getContentPane().add(label_1);
	}

	private void showConfirmDialog(JFrame com, String msg)
	{
		// TODO Auto-generated method stub
		JOptionPane.showConfirmDialog(com, msg,"确认窗口", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE);
		
	}
}

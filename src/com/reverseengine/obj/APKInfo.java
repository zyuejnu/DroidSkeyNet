package com.reverseengine.obj;

public class APKInfo

{
	
	
	
	@Override
	public String toString()
	{
		return "APKInfo [versionCode=" + versionCode + ", versionName="
				+ versionName + ", userSDK=" + userSDK + ", apkName=" + apkName
				+ ", isprotected=" + isprotected + ", isobfuscation="
				+ isobfuscation + ", otherinfo=" + otherinfo + ", year=" + year
				+ ", result=" + getResult() + "]";
	}
	private String versionCode="UnKnow";
	private String versionName="UnKnow";
	private String userSDK="UnKnow";
	private String apkName="UnKnow";

	private String checktime="UnKonw";
	public String getChecktime()
	{
		return checktime;
	}
	public void setChecktime(String checktime)
	{
		this.checktime = checktime;
	}
	private boolean isprotected=true;
	private boolean isobfuscation=true;
	private String otherinfo="";
	private String year;
	private String result;
	public String getVersionCode()
	{
		return versionCode;
	}
	public void setVersionCode(String versionCode)
	{
		this.versionCode = versionCode;
	}
	public String getVersionName()
	{
		return versionName;
	}
	public void setVersionName(String versionName)
	{
		this.versionName = versionName;
	}

	public String getUserSDK()
	{
		return userSDK;
	}
	public void setUserSDK(String userSDK)
	{
		this.userSDK = userSDK;
	}
	public String getApkName()
	{
		return apkName;
	}
	public void setApkName(String apkName)
	{
		this.apkName = apkName;
	}

	public String getResult()
	{
		String result="����û���κα�����ʩ";
		if(isobfuscation)
			result="���뾭������,�޷��Ķ������Ǵ���û�в�ȡ���ܻ���JNI����";
		if(isprotected)
			result="�������JNI���߼��ܣ�����û�л��� ";
		if(isobfuscation&&isprotected)
			result="������ȫ�޷��Ķ��������б��������Ҽ��˻���";
		this.result=result;
		
		return this.result;
	}
	public void setResult(String result)
	{
		this.result = result;
	}

	public boolean isIsprotected()
	{
		return isprotected;
	}
	public void setIsprotected(boolean isprotected)
	{
		this.isprotected = isprotected;
	}
	public boolean isIsobfuscation()
	{
		return isobfuscation;
	}
	public void setIsobfuscation(boolean isobfuscation)
	{
		this.isobfuscation = isobfuscation;
	}
	public String getOtherinfo()
	{
		return otherinfo;
	}
	public void setOtherinfo(String otherinfo)
	{
		this.otherinfo = otherinfo;
	}
	public String getYear()
	{
		return year;
	}
	public void setYear(String year)
	{
		this.year = year;
	}
	
}

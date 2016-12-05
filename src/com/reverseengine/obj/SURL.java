package com.reverseengine.obj;

public class SURL
{
	private String url=null;
	private boolean isSensitive=false;
	public SURL(String url, boolean isSensitive)
	{
		super();
		this.url = url;
		this.isSensitive = isSensitive;
	}
	public String getUrl()
	{
		return url;
	}
	public void setUrl(String url)
	{
		this.url = url;
	}
	public boolean isSensitive()
	{
		return isSensitive;
	}
	public void setSensitive(boolean isSensitive)
	{
		this.isSensitive = isSensitive;
	}
	public static boolean IfSensentive(String s)
	{
		// TODO Auto-generated method stub
		s=s.toLowerCase();
		if(s.contains("login")){
			return true;
		}
		if(s.contains("api")){
			return true;
		}
		if(s.contains("op")){
			return true;
		}
		if(s.contains("register")){
			return true;
		}
		if(s.contains("new")){
			return true;
		}
		if(s.contains("secret")){
			return true;
		}
		if(s.contains("key")){
			return true;
		}
		if(s.contains("sdk")){
			return true;
		}
		if(s.contains("username")){
			return true;
		}
		if(s.contains("un")){
			return true;
		}
		if(s.contains("pass")){
			return true;
		}
		if(s.contains("pwd")){
			return true;
		}
		if(s.contains("email")){
			return true;
		}
		if(s.contains("account")){
			return true;
		}
		if(s.contains("delete")){
			return true;
		}
		if(s.contains("method")){
			return true;
		}
		if(s.contains("ath")){
			return true;
		}
		if(s.contains("init")){
			return true;
		}
		return false;
	}

}

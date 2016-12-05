package com.reverseengine.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test1
{

	public static void main(String args[]){
		String check = "^[a-z]{1,2}\\.smali$";
		Pattern regex = Pattern.compile(check);
		Matcher matcher = regex.matcher("ac.smali");
		System.out.println(matcher.matches());
	}
}

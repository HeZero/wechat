package com.hsp.core;

public class ApiError {

	public static final int INVALID_ACCESS=1; //token验证失败或失效
	public static final int NO_ERROR=0;			//正常执行,没有错误	
	public static final int INTERNAL_ERROR=2;	//服务器内部错误
	public static final int NO_RESULT=3;		//无法查询到数据
	//10~999 业务逻辑错误代码
	public static final int ALREADY_REGISTED=10;	//已经注册
	public static final int LOING_FAILED=11;
	
	
	public static final String MSG_INVALID_ACCESS="Invalid Access";
	public static final String MSG_NO_ERROR="";
	public static final String MSG_INTERNAL_ERROR="INTERNAL_ERROR";
	public static final String MSG_ALREADY_REGISTED="该手机号已经注册.";
	public static final String MSG_LOING_FAILED="手机号或密码错误";
	public static final String MSG_NO_RESULT="查询的数据无效";
}

package com.hsp.core;

public class ApiResult {

	private boolean success;
	private String message;
	private int code;
	
	public ApiResult(boolean success,String message,int code){
		this.success=success;
		this.message=message;
		this.code=code;
	}
	public ApiResult() {
		this.success=true;
		this.message=ApiError.MSG_NO_ERROR;
		this.code=ApiError.NO_ERROR;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
}

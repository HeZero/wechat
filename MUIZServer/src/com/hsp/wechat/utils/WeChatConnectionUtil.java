package com.hsp.wechat.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.hsp.core.utils.FastJsonUtils;
import com.hsp.wechat.constant.AccessConfig;
/**
 * httpclient工具类
 * @author hsp
 *
 */
public class WeChatConnectionUtil {

	private static CloseableHttpClient httpclient = HttpClients.createDefault();
	/**
	 * 获取token
	 * @return
	 * @throws IOException
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,String> getAccessToken() throws IOException{
		String url=AccessConfig.accessTokenUrl; 
        // 创建参数队列    
        List<NameValuePair> formparams = new ArrayList<NameValuePair>(); 
        formparams.add(new BasicNameValuePair("appid", AccessConfig.appId));  
        formparams.add(new BasicNameValuePair("secret",AccessConfig.appSecret));  
        formparams.add(new BasicNameValuePair("grant_type","client_credential"));  
        UrlEncodedFormEntity uefEntity;  
            try {
				uefEntity = new UrlEncodedFormEntity(formparams, "UTF-8");  
				String str = EntityUtils.toString(uefEntity);  
				 HttpGet httpGet = new HttpGet(url+"?"+str);  
				System.out.println("executing request " + httpGet.getURI());  
				CloseableHttpResponse response = httpclient.execute(httpGet);   
				    HttpEntity entity = response.getEntity();  
				    if (entity != null) {  
				    	String result=EntityUtils.toString(entity, "UTF-8");
				        System.out.println("--------------------------------------");  
				        System.out.println("Response content: " + result);  
				        System.out.println("--------------------------------------");  
				        return FastJsonUtils.stringToCollect(result);
				    }else{
				    	return null;
				    }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
       
	}
	/**
	 * get请求发送map参数
	 * @param url
	 * @param params
	 * @return
	 * @throws IOException
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,String> sendGetRequest(String url,Map<String,String> params) throws IOException{
        // 创建参数队列    
        List<NameValuePair> formparams = new ArrayList<NameValuePair>(); 
        for(Map.Entry<String, String> entry:params.entrySet()){
        	formparams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        }
        UrlEncodedFormEntity uefEntity;  
            try {
				uefEntity = new UrlEncodedFormEntity(formparams, "UTF-8");  
				String str = EntityUtils.toString(uefEntity);  
				 HttpGet httpGet = new HttpGet(url+"?"+str);  
				System.out.println("executing request " + httpGet.getURI());  
				CloseableHttpResponse response = httpclient.execute(httpGet);   
				    HttpEntity entity = response.getEntity();  
				    if (entity != null) {  
				    	String result=EntityUtils.toString(entity, "UTF-8");
				        System.out.println("--------------------------------------");  
				        System.out.println("Response content: " + result);  
				        System.out.println("--------------------------------------");  
				        return FastJsonUtils.stringToCollect(result);
				    }else{
				    	return null;
				    }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
       
	}
	/**
	 * 发送post请求
	 * @param url
	 * @param params
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,String> sendHttpRequest(String url,Map<String,String> params){
        // 创建httppost    
        HttpPost httppost = new HttpPost(url);  
        // 创建参数队列    
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        for(Map.Entry<String,String> entry:params.entrySet()){
        	formparams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));          	
        }
        UrlEncodedFormEntity uefEntity;  
            try {
				uefEntity = new UrlEncodedFormEntity(formparams, "UTF-8");  
				httppost.setEntity(uefEntity); 
				System.out.println("executing request " + httppost.getURI());  
				CloseableHttpResponse response = httpclient.execute(httppost);   
				    HttpEntity entity = response.getEntity();  
				    if (entity != null) {  
				    	String result=EntityUtils.toString(entity, "UTF-8");
				        System.out.println("--------------------------------------");  
				        System.out.println("Response content: " + result);  
				        System.out.println("--------------------------------------");  
				        return FastJsonUtils.stringToCollect(result);
				    }else{
				    	return null;
				    }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}  
	}
	/**
	 * post请求json数据
	 * @param url
	 * @param json
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,String> sendJson(String url,String json){
		// 创建httppost    
        HttpPost httppost = new HttpPost(url);  
        StringEntity strEntity;  
            try {
				strEntity = new StringEntity(json, "UTF-8");  
				httppost.setEntity(strEntity);  
				httppost.addHeader("Content-type","application/json; charset=utf-8");  
				httppost.setHeader("Accept", "application/json"); 
				System.out.println("executing request " + httppost.getURI());  
				CloseableHttpResponse response = httpclient.execute(httppost);   
				    HttpEntity entity = response.getEntity();  
				    if (entity != null) {  
				    	String result=EntityUtils.toString(entity, "UTF-8");
				        System.out.println("--------------------------------------");  
				        System.out.println("Response content: " + result);  
				        System.out.println("--------------------------------------");  
				        return FastJsonUtils.stringToCollect(result);
				    }else{
				    	return null;
				    }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}  
	}
}

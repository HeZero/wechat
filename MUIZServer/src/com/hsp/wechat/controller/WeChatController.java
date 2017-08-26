package com.hsp.wechat.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.PropertyException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hsp.core.utils.FastJsonUtils;
import com.hsp.core.utils.PropertiesReader;
import com.hsp.core.utils.SHA1Util;
import com.hsp.core.utils.Xml2JsonUtil;
import com.hsp.wechat.constant.AccessConfig;
import com.hsp.wechat.model.Message;
import com.hsp.wechat.utils.ITokenManager;
import com.hsp.wechat.utils.WeChatConnectionUtil;

@Controller
@RequestMapping(value="/wechat/")
public class WeChatController {

	private Logger log=Logger.getLogger(WeChatController.class);
	
	@Autowired
	ITokenManager tokenManager;
	/**
	 * 获取accesstoken
	 * @param request
	 * @param respone
	 */
	@RequestMapping(value="/menu/create",method=RequestMethod.GET)
	public void createMenu(HttpServletRequest request,HttpServletResponse respone){
		try {
			//String accessToken= WeChatConnectionUtil.getAccessToken().get("access_token");
			String accessToken=tokenManager.getAccessToken();
			log.info(">>>>>>"+accessToken+"<<<<<<<<<<");
			/*JsonArray json=new JsonArray();
			JsonObject button=new JsonObject();
			button.addProperty("name","一级菜单1");
			button.addProperty("type","click");
			button.addProperty("key","test_hsp");
			button.addProperty("url","www.baidu.com");
			
			JsonObject button2=new JsonObject();
			button2.addProperty("name","一级菜单2");
			button2.addProperty("type","click");
			button2.addProperty("key","test_hsp2");
			button2.addProperty("url","www.baidu.com");
			json.add(button);
			json.add(button2);
			JsonArray params=new JsonArray();
			JsonObject obj=new JsonObject();
			obj.add("button", json);
			params.add(obj);*/
			String json="{\"button\":["
	                + "{\"name\":\"商城\",\"sub_button\":["
	                + "{\"type\":\"view\",\"name\":\"千群百色\",\"url\":\"http://www.magic.ngrok.cc/shop/index\"}"
	                + "]},"
	                + "{\"name\":\"水果\",\"sub_button\":["
	                + "{\"type\":\"view\",\"name\":\"苹果\",\"url\":\"http://m.taaa.htm\"},"
	                + "{\"type\":\"view\",\"name\":\"西瓜\",\"url\":\"http://mp.weixin.qq.com/s?__bsdsdsdsyMA==&msdsd&idx=4&sn=72ac6818997a7e466bff75d03e6caf54#rd\"},"
	                + "{\"type\":\"click\",\"name\":\"水蜜桃\",\"key\":\"KD_WEIXIN_LUCKYNUMBER\"},"
	                + "{\"type\":\"view\",\"name\":\"香蕉\",\"url\":\"http://mp.weixin.qq.com/s?__biz=MjMsdsdMA==&mid=200025753&idx=1&sn=8esdsdsd8ba27fbf409dcea01269eb72#rd\"},"
	                + "{\"type\":\"click\",\"name\":\"榴莲\",\"key\":\"WEI_QUAN\"}"
	                + "]},"
	                + "{\"name\":\"名牌\",\"sub_button\":["
	                + "{\"type\":\"click\",\"name\":\"耐克\",\"key\":\"KD_WEIXIN_WULIU\"},"
	                + "{\"type\":\"click\",\"name\":\"阿迪达斯\",\"key\":\"WANT_TO_ORDER\"},"
	                + "{\"type\":\"view\",\"name\":\"安踏\",\"url\":\"http://mp.weixin.qq.com/s?__biz=MjasdasdyMA==&mid=200507454&idx=1&sn=9617dc5bab242b1000462a34417bd004#rd\"},"
	                + "{\"type\":\"click\",\"name\":\"锐步\",\"key\":\"KD_WEIXIN_PRIVATE\"},"
	                + "{\"type\":\"view\",\"name\":\"李宁\",\"url\":\"http://mp.weixin.qq.com/s?__biz=MjM5NasdasdA==&mid=200034205&idx=1&sn=9e663fe5613a36bab37d09d6a9384fd4#rd\"}"
	                + "]}" + "]}";
			WeChatConnectionUtil.sendJson("https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+accessToken, json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 接入
	 * @param request
	 * @param response
	 * @param signature
	 * @param timestamp
	 * @param nonce
	 * @param echostr
	 * @throws IOException 
	 */
	@RequestMapping(value="/access",method=RequestMethod.GET)
	public void access(HttpServletRequest request,HttpServletResponse response,
			@RequestParam("signature")String signature,
			@RequestParam("timestamp")String timestamp,
			@RequestParam("nonce")String nonce,
			@RequestParam("echostr")String echostr) throws IOException{
		log.info(">>>>>>>>>>>>>开始接入<<<<<<<<<<<<<<<");
		List<String> list=new ArrayList<String>();
		list.add(AccessConfig.token);
		list.add(timestamp);
		list.add(nonce);
		Collections.sort(list, new SpellComparator());
		String sortStr=list.get(0)+list.get(1)+list.get(2);
		if(SHA1Util.getSha1(sortStr).equals(signature.trim())){
			try {
				response.getWriter().write(echostr);
				log.info(">>>>>>>>>>>>>接入成功<<<<<<<<<<<<<<<");
			} catch (IOException e) {
				log.error(">>>>>>>>>>>>输出异常<<<<<<<<<<<<<<<",e);
				e.printStackTrace();
			}finally{
				String accessToken = WeChatConnectionUtil.getAccessToken().get("access_token");
				tokenManager.setToken(accessToken);
			}
		}else{
			log.info(">>>>>>>>>>>>接入失败<<<<<<<<<<<<<<<");
		}
		
	}
	
	/**
	 * 接收消息及获取用户信息
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="/access",method=RequestMethod.POST)
	public void getMsg(HttpServletRequest request,HttpServletResponse response){
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader((ServletInputStream)request.getInputStream()));
		      String line = null;
		      StringBuilder sb = new StringBuilder();
		      while((line = br.readLine())!=null){
		       sb.append(line);
		      }
			String xml=sb.toString();
			String json=Xml2JsonUtil.xml2json(xml);
			Map<String,Map<String,String>> post=FastJsonUtils.stringToCollect(json);
			Map<String,String> postMsg=post.get("xml");
			
			Map<String,String> map=new HashMap<String,String>();
			map.put("key", PropertiesReader.getProperties("AI.properties", "apiKey"));
			map.put("info", postMsg.get("Content")+"");
			map.put("user", postMsg.get("ToUserName")+"");
			Map<String,String> result=WeChatConnectionUtil.sendHttpRequest(PropertiesReader.getProperties("AI.properties", "url"), map);
			String reply= result.get("text");
			 StringBuffer str = new StringBuffer();  
	            str.append("<xml>");  
	            str.append("<ToUserName><![CDATA[" + postMsg.get("FromUserName") + "]]></ToUserName>");  
	            str.append("<FromUserName><![CDATA[" + postMsg.get("ToUserName") + "]]></FromUserName>");  
	            str.append("<CreateTime>" + new Date().toString() + "</CreateTime>");  
	            str.append("<MsgType><![CDATA[" + postMsg.get("MsgType") + "]]></MsgType>");  
	            str.append("<Content><![CDATA[" + reply + "]]></Content>");  
	            str.append("</xml>");
	            response.setHeader("Access-Control-Allow-Origin", "*");  //解决跨域问题
	    		response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(str.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void getOpenId() throws IOException, PropertyException{
		String accessToken=tokenManager.getAccessToken();
		String url=PropertiesReader.getProperties("wechat.properties", "url_getOpenId").concat("access_token=").concat(accessToken);
		WeChatConnectionUtil.sendGetRequest(url, null);
	}
	
	/**
	 * ajax输出json字符串方法
	 * @param response
	 * @param data
	 */
	protected void writeJsonData(HttpServletResponse response,Object data){
		response.setHeader("Access-Control-Allow-Origin", "*");  //解决跨域问题
		response.setContentType("text/html;charset=utf-8");
		try {
			response.getWriter().print(FastJsonUtils.toJSONString(data));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	class SpellComparator implements Comparator<Object>{
		public int compare(Object o1, Object o2) {
			try {
				String s1 = new String(o1.toString().getBytes("GB2312"),"ISO-8859-1");
				String s2 = new String(o2.toString().getBytes("GB2312"),"ISO-8859-1");
				return s1.compareTo(s2);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}	
	}
}

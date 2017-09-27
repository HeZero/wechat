package com.hsp.core.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 * xml读写工具类
 * @author hsp
 *
 */
public class XMLOperator {

	/**
	 * 读取xml文件
	 * @param url
	 * @return
	 * @throws DocumentException
	 */
	public static Document parse(String url) throws DocumentException{
		SAXReader reader=new SAXReader();
		Document document=reader.read(url);
		return document;
	}
	/**
	 * xml字符转文档对象
	 * @param content
	 * @return
	 * @throws DocumentException
	 */
	public static Document parseString(String content) throws DocumentException{
		Document document=null;
		if(null != content){
			document=DocumentHelper.parseText(content);
		}
		return document;
	}
	/**
	 * 无子节点文档对象转map
	 * @param document
	 * @return
	 */
	public static Map<String,String> xml2Map(Document document){
		Map<String,String> map=new HashMap<String,String>();
		Element root=document.getRootElement();
		for(Iterator<Element> it=root.elementIterator();it.hasNext();){
			Element element=it.next();
			map.put(element.getName(), element.getText());
		}
		return map;
	}
	/**
	 * 无子节点文档对象转map
	 * @param content
	 * @return
	 * @throws DocumentException
	 */
	public static Map<String,String> xml2Map(String content) throws DocumentException{
		return xml2Map(parseString(content));
	}
	/**
	 * map对象转xml字符
	 * @param map
	 * @return
	 */
	public static String map2XML(Map<String,String> map){
		Document document = DocumentHelper.createDocument();
        Element root = document.addElement("xml");
        for(Map.Entry<String, String> entry:map.entrySet()){
        	root.addElement(entry.getKey());
        	root.addText(entry.getValue()+"");
        }
        return root.asXML();
	}
	/**
	 * map转xml消息
	 * @param map
	 * @return
	 */
	public static synchronized String map2WeChatMsg(Map<String,String> map){
		if(null !=map){
			StringBuffer str=new StringBuffer();
			str.append("<xml>");
			for(Map.Entry<String, String> entry:map.entrySet()){
				str.append("<"+entry.getKey()+">"+"<![CDATA["+entry.getValue()+"]]>"+"</"+entry.getKey()+">");
			}
			str.append("</xml>");
			return str.toString().trim();
		}else{
			return "";
		}
	}
	public static void main(String[] args) {
		/*Document doc=parse(XMLOperator.class.getResource("/")+"test.xml");
		xml2Map(doc);*/
		Map<String,String> map=new HashMap<>();
		map.put("username", "小明");
		map.put("fire", "yes");
		System.out.println(map2XML(map));
	}
}

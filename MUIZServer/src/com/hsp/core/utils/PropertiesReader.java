package com.hsp.core.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

import javax.xml.bind.PropertyException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

/**
 * 配置文件读取类
 * @author hsp
 */
public class PropertiesReader {
	
	public static final String BASE_PATH="config/";
	
	public static final String FILE_SUFFIX=".properties";
	
	/**
	 * 读取配置文件
	 * @param path 文件路径
	 * @return
	 * @throws IOException
	 */
	public static Properties getProperties(String path) throws IOException{
		Properties prop=new Properties();
		File file=new File(path);
		if(!file.exists()){
			throw new FileNotFoundException();
		}
		BufferedReader in=new BufferedReader(new FileReader(file));
		String s=null;
		String[] temp=null;
		while((s=in.readLine())!=null){
			if(s.indexOf("=")==-1)
				continue;
			temp=s.split("=", 2);
			temp[0]=temp[0].trim();
			temp[1]=temp[1].trim();
			if(temp[0].startsWith("#")||temp[0].startsWith("//"))
				continue;
			if(temp[0].startsWith("<!--")&&temp[1].endsWith("-->"))
				continue;
			prop.put(temp[0], temp[1]);
		}
		in.close();
		s=null;
		//prop.putAll(prop);
		return prop;
	}
	/**
	 * 获取配置文件中的配置值方法,根据传入的配置文件名和key获取该值
	 * @param fileName 配置文件名,需要在classes根目录
	 * @param key	配置项名称
	 * @return	配置项的值
	 * @throws IOException	无法读取配置文件时
	 * @throws PropertyException	配置项对应的值为空时
	 */
	public static String getProperties(String fileName,String key) throws IOException, PropertyException{
		Resource resource = new ClassPathResource(fileName);
		Properties props = PropertiesLoaderUtils.loadProperties(resource);
		String value=props.getProperty(key);
		if(null==value){
			throw new PropertyException("尝试读取没有的配置项,配置文件:"+fileName+"中,无法找到配置项"+key);
		}
		
		return value; 
	}
	 /**
	  * 通过文件名和key读取配置文件值
	  * @param name 文件名
	  * @param key	关键字
	  * @return 对应属性值
	  * @throws IOException
	  */
	public static String getProperty(String name,String key) throws IOException{
		String path = BASE_PATH + name + FILE_SUFFIX;
		Properties prop = PropertiesReader.getProperties(path);
		return prop.getProperty(key);		
	}
	
	/**
	 * 读取文件 
	 * @param name 文件名
	 * @return 返回Properties对象
	 * @throws IOException
	 */
	public static Properties getProperty(String name) throws IOException{
		String path = BASE_PATH + name + FILE_SUFFIX;
		return PropertiesReader.getProperties(path);
	}
	
	/**
	 * 设置文件属性
	 * @param name 文件名
	 * @param key  属性名
	 * @throws Exception 
	 */
	public static void setProperty(String name,String key,String value) throws Exception{
		String path = BASE_PATH + name + FILE_SUFFIX;
		Properties prop = PropertiesReader.getProperty(name);
		prop.setProperty(key, value);
		OutputStream os=new FileOutputStream(new File(path));
		prop.store(os,"change "+key+ " to " +value);
		os.close();
	}
	/**
	 * 测试类
	 * @throws IOException 
	 */
	public static void main(String[] args){
		String value=null;
		try {
			value = PropertiesReader.getProperties("wechat.properties", "token");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(value);
	}
}

package cn.edu.cuit.aumalls.provider;

import java.io.IOException;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Provider {

	public static void main(String[] args) throws IOException {
		ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("applicationContextService.xml");
		ac.start();
		//Ҫ��
		System.out.println("服务器启动");
		System.out.println("123");
		System.in.read();//���򲻻���������
	    ac.close();

	}
}

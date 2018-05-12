package com.springbook.biz;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		//SamsungTV tv = new SamsungTV();
		//LgTV tv = new LgTV();
		//TV tv = new LgTV();
		
		//1.spring �����̳ʸ� �����Ѵ�
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
	
		//2.Spring �����̳ʷ� ���� �ʿ��� ��ü�� ��û(LookUp)�Ѵ�
		//BeanFactory factory = new BeanFactory();
		TV tv = (TV)factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		/*TV tv1 = (TV)factory.getBean("tv");
		TV tv2 = (TV)factory.getBean("tv");
		TV tv3 = (TV)factory.getBean("tv");*/
		
		// 3. spring �����̳ʸ� ����
		factory.close();
	}
}

package com.springbook.biz;

import org.springframework.stereotype.Component;


public class SonySpeaker implements Speaker {
	public SonySpeaker() {
		System.out.println("==> SonySpeaker ��ü ����");
	}
	public void volumeUp() {
		System.out.println("SonySpeaker--�Ҹ� �︰��");
	}
	public void volumeDown() {
		System.out.println("SonySpeaker--�Ҹ� ������");
	}
}

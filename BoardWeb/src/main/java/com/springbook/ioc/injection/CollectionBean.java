package com.springbook.ioc.injection;

import java.util.List;

public class CollectionBean {
	  private List<String> addressList;

	    public void setAddressList(List<String> addressList) {
	        this.addressList = addressList;
	        System.out.println("������ ����");
	    }
	    public List<String> getAddressList() {
	    	System.out.println("������ ��ȭ");
	        return addressList;
	    }
	}

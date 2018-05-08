<%@page import="java.security.MessageDigest"%>
<%@page import="oracle.jdbc.driver.Message"%>
<%@page import="shapass.SHA256"%>
<%@page import="shapass.SHA256"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="registerBean" class="ch08.register.RegisterBean">
     <jsp:setProperty name="registerBean" property="*"/>
</jsp:useBean>
 <jsp:useBean id="sha256" class="shapass.SHA256"></jsp:useBean> 
<% //현재 날짜와 시간을 가입일로 지정 
registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));

String password = registerBean.getPasswd();
String shapass = "";

try {
	MessageDigest digest = MessageDigest.getInstance("SHA-256");
	byte[] hash = digest.digest(password.getBytes("UTF-8"));
	StringBuffer hexString = new StringBuffer();
	for (int i = 0; i < hash.length; i++) {
		String hex = Integer.toHexString(0xff & hash[i]);
			if (hex.length() == 1)
					hexString.append('0');
			hexString.append(hex);
	}
	shapass = hexString.toString();
} catch (Exception ex) {
	throw new RuntimeException(ex);
}
%>

<table class="content">
  <tr>
    <td>아이디
    <td><jsp:getProperty name="registerBean" property="id"/>
  <tr>
    <td>비밀번호
    <td><jsp:getProperty name="registerBean" property="passwd"/>
  <tr>
    <td>이름
    <td><jsp:getProperty name="registerBean" property="name"/>
  <tr>
    <td>가입일
    <td><jsp:getProperty name="registerBean" property="reg_date"/>
     <tr>
    <td>SHA256변환 비밀번호
    <td><%=shapass %></td>
    </tr>
</table>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="vo" class="jstl.MemberVO" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Example</title>
</head>
<body>
<c:set target="${vo}" property="name" value="에이스" />
<c:set target="${vo}" property="email" >
whcjfgml123@naver.com
</c:set>
<c:set var="age" value="30" />
<c:set target="${vo}" property="age" value="${age }" />
<h3>회원정보</h3>
<ul>
	<li>이름: ${vo.name }</li>
	<li>메일: ${vo.email }</li>
	<li>나이: ${vo.age }</li>
</ul>
</body>
</html>
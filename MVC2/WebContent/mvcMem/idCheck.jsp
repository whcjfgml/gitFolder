<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID중복체크</title>
<script type="text/javascript" src="srcipt.js"></script>
</head>
<body>
<body bgcolor="#FFFFCC"><br>
	<center>
		<b>${id}</b>
		<c:if test="${check eq true}">
			는 이미 존재하는 ID입니다<br/></c:if>
		<c:if test="${ check ne true }">는 사용 가능합니다<br/></c:if>
		<a href="#" onClick="javascript:self.close()">닫기</a>
	</center>
</body>
</body>
</html>
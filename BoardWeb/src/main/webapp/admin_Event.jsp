<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자(이벤트등록)</title>
<link rel="stylesheet" type="text/css" href="css/admin_Style.css">
</head>
<body>
<div class="header">
	<h1>이벤트 등록</h1>
</div>

<div class="event_list">
	<form action="">
	<label>이벤트 제목</label>
	<input type="text" id="mName" name="mName"><br>
	
	<label>이벤트 시작일</label>
	<input type="text" id="mName" name="mName"><br>
	
	<label>이벤트 종료일</label>
	<input type="text" id="mName" name="mName"><br>
	
	<label>적립금</label>
	<input type="text" id="mName" name="mName"><br>
	
	<label>이벤트 사진</label>
	<input type="text" id="mName" name="mName"><br>
	
	<label>이벤트 내용</label><br>
	<textarea rows="4" cols="50"></textarea><br>
	
	<input type="submit" value="등록">
	</form>
</div>
</body>
</html>
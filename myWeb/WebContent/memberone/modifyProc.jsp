<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="memberone.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dao" class="memberone.StudentDAO" />
<jsp:useBean id="vo" class="memberone.StudentVO" />
<jsp:setProperty name="vo" property="*" />
<% 
	String loginID = (String)session.getAttribute("loginID");
	vo.setId(loginID);
	dao.updateMember(vo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Refresh" content="3;url=login.jsp">
<title>업데이트</title>
</head>
<body>
<center>
<font size="5" face="휴먼굴림체">
입력하신 내용대로 <b>회원 정보가 수정 되었습니다</b><br></br>
3초후 로그인 페이지로 이동
</font>
</center>
</body>
</html>
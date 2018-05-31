<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자(1:1문의)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
   <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admin_Main.jsp">CINEMA</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin_Main.jsp">Home</a></li>
      <li><a href="admin_MemberList.jsp">회원목록</a></li>
      <li><a href="admin_CustomerService.jsp">1:1문의</a></li>
      <li><a href="admin_MovieReg.jsp">영화등록</a></li>
      <li><a href="admin_Event.jsp">이벤트</a></li>
      <li><a href="#">공지사항</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  <h1>고객센터 문의내용</h1>
  
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>NO</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록일</th>
        <th>답변상태</th>
        <th>수정</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>배고파요</td>
        <td>김밥천국</td>
        <td>1990.08.15</td>
        <td>미답변</td>
        <td>수정(버튼)</td>
      </tr>
    </tbody>
  </table>
  </div>
</div>
</body>
</html>
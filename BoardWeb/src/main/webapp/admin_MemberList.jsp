<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>관리자(회원목록)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h1>회원목록</h1>
  
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>NO</th>
        <th>아이디</th>
        <th>이름</th>
        <th>이메일</th>
        <th>포인트</th>
        <th>수정</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>CINEMA</td>
        <td>NAME</td>
        <td>admin@naver.com</td>
        <td>1000</td>
        <td>수정(버튼)</td>
      </tr>
    </tbody>
  </table>
  </div>
</div>
</body>
</html>
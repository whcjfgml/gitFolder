<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="urf-8">
<head>
  <title>관리자(메인)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="bootstrap.css"> -->
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
 
	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active" href="#">
								<span data-feather="home"></span>영화관 선택<span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file"></span>날짜선택
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span>영화선택
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="users"></span>미등록
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="bar-chart-2"></span>미등록
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="layers"></span>미등록
						</a></li>
					</ul>
				</div>
			</nav>
			</div>
			</div>
</body>
</html>
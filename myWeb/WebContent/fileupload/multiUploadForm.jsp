<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="js/jquery-1.11.min.js"></script>
<script src="js/jquery.form.min.js"></script>
<script src="multiupload.js"></script>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form id="upForm1" action="mutiUploadPro.jsp" method="post" enctype="multipart.form-data">
		<div id="form">
			<ul>
				<li>
					<p class="cau">파일 선택기에서 ctrl, shift키를 눌러 파일을 다중선택 하십시오</p>
					<label for="file1">파일선택</label>
					<input type="file" id="file1" name="file1" multiple>
				<li>
					<input type="submit" id="upPro1" value="다중파일 업로드">
			</ul>
		</div>
	</form>
</body>
</html>
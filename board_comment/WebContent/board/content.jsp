<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/color.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Insert title here</title>
<link href="/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="comment/js/ajax.js"></script>
<script type="text/javascript" src="comment/js/comment.js"></script>
<script type="text/javascript">
	window.onload = function() {
		loadComment
		List(document.writeForm.num.value);
	};
	function makeCommentView(comment) {
		var comment
		Div = document.createElement('div');
		comment
		Div.setAttribute('id', 'c' + comment.id);
		var html = '<table width="700" height="50"><tr><td><strong>'
				+ comment.name + '</strong>&nbsp;&nbsp;&nbsp;'
				+ comment.content.replace(/n/g, '\n<br/>')
				+ '&nbsp;&nbsp;&nbsp;' + '<FONT color="#FF0000">'
				+ comment.regdate + '</FONT>' + '&nbsp;&nbsp;&nbsp;'
				+ '<input type="button" value="47" onclick="view Update Form ('
				+ comment.id + ')"/>' + '&nbsp;&nbsp;'
				+ '<input type="button" value="삭제" onclick="confirmDelection('
				+ comment.id + ')"/></td></tr></table>';
		comment
		Div.innerHTML = html;
		comment
		Div.comment = comment;
		comment
		Div.className = "comment";
		return commentDiv;
	}
</script>
</head>
<body bgcolor="${bodyback_c }">
	<div align="center" class="body">
		<form method="post" name="writeForm">
			<input type="hidden" name="num" value="${vo.num }" /> །
			<center>
				<h3>글보기</h3>
				<table width="600" border="1">
					<tr>
						<td align="center" width="100" bgcolor="${value_c }">번호</td>
						<td align="left" width="200">${vo.num }</td>
						<td align="center" width="100" bgcolor="${value_c }">작성일</td>
						<td align="left" width="200">${vo.regdate }</td>
					</tr>
					<tr>
						<td align="center" bgcolor="${value_c }">작성자</td>
						<td align="left">${vo.writer }</td>
						<td align="center" bgcolor="${value_c }">조회수</td>
						<td align="left">${vo.readcount }</td>
					</tr>
					<tr>
						<td align="center" bgcolor="${value_c }">이메일</td>
						<td colspan="7" align="left">${vo.email }</td>
					</tr>
					<tr>
						<td align="center" bgcolor="${value_c }">제목</td>
						<td colspan="7" align="left">${vo.subject }</td>
					</tr>
					<tr>
							<td align="center" bgcolor="${ value_e }">내용</td>
							<td colspan="7" align="left" height="100"><pre>${vo.content }</pre></td>
					</tr>
				</table>
				<br /> <input type="button" value=""
					onclick="window.location='updateForm.do?num=${vo.num }'" /> | <input
					type="button" value="34|"
					onclick="window.location='deleteForm.do?num=${vo.num }'" /> <input
					type="button" value="7557" onclick="window.location='list.do'" />
			</center>
		</form>
	</div>
	<div id="commentList" align="center" class="body"></div>
	<div id="commentAdd" align="center">
	
	<!-- 댓글 입력 폼 -->
		<form action="" name="addForm" method="post">
			<input type="hidden" name="num" value="${vo.num }" /> 
			이름 : <input type="text" name="name" size="10"></input> 
			내용 : <textarea name="content" cols="20" rows="2"></textarea>
			<input type="button" value="등록" onclick="addComment()" />
		</form>
	</div>
	<div id="commentUpdate" style="display: none">
		<form action="" name="updateForm">
			<input type="hidden" name="id" value="" /> 
			<input type="hidden" name="regdate" value="" /> 
			이름 : <input type="text" name="name"	size="10"></input><br /> 
			내용 : <textarea name="content" cols="20" rows="2"></textarea>
			<br /> 
			<input type="button" value="등록" onclick="updateComment()" />
			<input type="button" value="취소" onclick="cancleUpdate()" />
		</form>
	</div>
</body>
</html>

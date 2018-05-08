<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="view/color.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
<script type="text/javascript">
	function search() {
		var form = document.listForm;
		if (form.search_text.value == null || form.search_text.value == "") {
			alert("�˻�� �Է��� �ּ���");
			return;
		}
		var url = 'list.do?pageNum=1&search_type=' + form.search_type.value
				+ '&search_text=' + encodeURI(form.search_text.value);
		window.location = url;
	}
	function passCheck(value) {
		if (value == "successDelete" || value.equals("successDelete")) {
			alert("�����Ǿ����ϴ�.");
		}
	}
	window.onload = passCheck("${value }");
</script>
</head>
<body bgcolor="${boayback_c }">
	<center>
		<h3>�Խ����̴�</h3>
		<table width="700">
			<tr>
				<td align="right" colspan="5">
				<input type="button" value="��ü���" onclick="window.location='list.do'" /> 
				<input type="button" value="�۾���" onclick="window.location='writeForm.do'" />
				</td>
			</tr>
			<tr bgcolor="${value_c }">
				<td align="center" width="60">��ȣ</td>
				<td align="center" width="380">����</td>
				<td align="center" width="100">�ۼ���</td>
				<td align="center" width="100">�ۼ���</td>
				<td align="center" width="60">��ȸ��</td>
			</tr>
		<!-- ���� ���� ���-->
			<c:if test="${count == 0) }">
				<tr>
					<td colspan="6" align="center">�Խ��ǿ� ����� ���� ����</td>
				</tr>
			</c:if>
			<c:if test="${count != 0 }">
				<c:forEach var="vo" items="${boardList }">
					<tr>
						<td align="center">${number}<c:set var="number" value="${number -1 }" scope="page" /></td>
						<td align="left">
						<a href="content.do?num=${vo.num}&pageNum=${bp.cur_Page}">
								&nbsp;${vo.subject}</a> 
							<c:if test="${vo.readcount > 10 }">
								<img src="images/hot.gif" border="0" height="16"></img>
							</c:if></td>
						<td align="center">
							<a href="mailto:${vo.email }">${vo.writer}</a></td>
						<td align="center">${vo.regdate }</td>
						<td align="center">${vo.readcount }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<br />
		<c:if test="${ bp.isPre()}">
			<a href="list.do?pageNum=${bp.getPage_Start()-bp.p_size }">[����]</a>	
		</c:if>
		<c:forEach var="counter" begin="${bp.getPage_Start() }"end="${bp.getPage_End() }">
			<c:if test="${search_text ne''}">
				<a href="javascript:window.location='list.do?pageNum=${counter }&search_type=${search_type}&search_text=${search_text }'">
					[${counter}]</a>
			</c:if>
			<c:if test="${search_text eq ''}">
				<a href="javascript:window.location='list.do?pageNum=${counter }'">
					[${counter}]</a>
		</c:if>
		</c:forEach>
		<c:if test="${bp.isNext() }">
			<a href="list.do?pageNum=${bp.getPage_Start()+bp.p_size }">[����]</a>
		</c:if>
		<p></p>
		<form method="get" name="listForm" action="list.do">
			<input type="hidden" name="pageNum" value="${pageNum}" />
			<select	name="search_type">
				<option value="all" ${search_type == "all" ? "selected" : ""}>��ü</option>
				<option value="subject" ${search_type == "subject" ? "selected" : ""}>����</option>
				<option value="writer" ${search_type == "writer" ? "selected" : ""}>�ۼ���</option>
				<option value="content"	${search_type == "content" ? "selected" : "" }>����</option>
			</select> 
			<input type="text" name="search_text" value="${search_text }" /> 
			<input type="button" value="�˻�" onclick="search()" />
		</form>
	</center>

</body>
</html>
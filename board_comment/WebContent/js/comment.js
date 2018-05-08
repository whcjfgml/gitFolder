function loadCommentList(num) {
var params = "num=" + encodeURIComponent (num); 
new ajax.xhr.Request("/board_comment/comment/list.do", params, loadCommentResult, 'GET');
}
function loadCommentResult(req) {
	if (req.readyState == 4) { 
	if (req.status == 200) {
		var xmlDoc = req.responseXML;
		var code = xmlDoc.getElementsByTagName('code').item(0).firstChild.nodeValue; 
		if (code == 'success') {
			var commentList = eval("("+xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue+")"); 
		var listDiv = document.getElementById('commentList'); 
		for ( var i = 0; i < commentList.length; i++) {
			var commentDiv = makeCommentView (commentList[i]);
			listDiv.appendChild(commentDiv);
		}
		} else if (code == 'error') {
			var message = xmlDoc.getElementsByTagName('message')
			.item(0).firstChild.nodeValue; 
			alert("에러발생 :" + message);
		} else {
			alert("댓글 목록 로딩 실패 :" + req.status);
		}
	}
}
function addComment() {
	var num = document.addForm.num.value; 
	var name = document.addForm.name.value; 
	var content = document.addForm.content.value; 
	if(!name) {
	alert("이름을 입력해라"); 
	document.addForm.name.focus(); 
	return;
	}
	if(!content) {
		alert("내용을 입력해주세요");
		document.addForm.content.focus(); 
		return;
	}
	var params = "num=" + encodeURIComponent(num) + "&" + "name=" + encodeURIComponent(name) + "&" + "content=" + encodeURIComponent (content); 
	new ajax.xhr.Request('/board_comment/comment/write.do', params, addResult, 'POST');
}
function addResult(req) {
	if (req.readyState == 4) { 
	if (req.status == 200) {
		var xmlDoc = req.responseXML; 
		var code = xmlDoc.getElementsByTagName('code')
		.item(0).firstChild.nodeValue; 
		if (code == 'success') {
			var comment = eval("(" + xmlDoc.getElementsByTagName('data').item(0).firstChild.nodeValue + ")");
			var listDiv = document.getElementById('commentList'); 
			var commentDiv = makeCommentView(comment);
			listDiv.appendChild(commentDiv); 
			document.addForm.name.value = '';
			document.addForm.content.value = '';
				alert("등록했다" + comment.id + "]"); 
			} else if (code == 'error') {
				var message = 
					xmlDoc.getElementsByTagName('message') .item(0).firstChild.nodeValue;
				alert("에러지롱~ :" + message);
			}
	} else {
		alert("서버 에러 발생 " + req.status);
		}
	}
}
function updateComment() {
	var id = document.updateForm.id.value; 
	var name = document.updateForm.name.value; 
	var content = document.updateForm.content.value; 
	var regdate = document.updateForm.regdate.value; 
	var params = "id=" + encodeURIComponent(id) + "&" + 
	"name=" + encodeURIComponent (name) + "&" + 
	"content=" + encodeURIComponent(content) + "&" + 
	"regdate=" + encodeURIComponent(regdate); 
	new ajax.xhr.Request('/board_comment/comment/update.do',
			params, updateResult, 'POST');
}
function updateResult(req) {
if (req.readyState == 4) { 
	if (req.status == 200) {
		var xmlDoc = req.responseXML; 
		var code = xmlDoc.getElementsByTagName('code').item(0).firstChild.nodeValue; 
		if (code == 'success') {
			hideUpdateForm(); 
			var comment = eval("(" + xmlDoc.getElementsByTagName('data')
					.item(0).firstChild.nodeValue + ")"); 
			var listDiv = document.getElementById('comment List'); 
			var newCommentDiv = makeCommentView(comment); 
			var oldCommentDiv = document.getElementById('c' +
					comment.id); 
			listDiv.replaceChild(newCommentDiv, oldCommentDiv);
					alert("수정성공.."); 
			} else if (code == 'error') {
				var message = xmlDoc.getElementsByTagName('message')
				.item(0).firstChild.nodeValue; 
				alert("에러발생: " + message);
			}
			} else {
				alert("서버 에러 발생 : " + req.status);
			}
 	}
}
function viewUpdateForm(commentId) {
	var commentDiv = document.getElementById('c' + commentId); 
	var updateFormDiv = document.getElementById('comment Update'); 
	if (updateFormDiv.parentNode != commentDiv) { 
		updateFormDiv.parentNode.removeChild(updateFormDiv);
		commentDiv.appendChild(updateFormDiv);
	}
	var comment = commentDiv.comment;
	document.updateForm.id.value = comment.id;
	document.updateForm.name.value = comment.name;
	document.updateForm.content.value = comment.content;
	document.updateForm.regdate.value = comment.regdate;
	alert(document.updateForm.regdate.value);
	updateFormDiv.style.display = ''; 
}
function cancleUpdate() {
		hideUpdateForm();
}  
function hideUpdateForm() {
	var updateFormDiv = document.getElementById('comment Update');
	updateFormDiv.style.display = 'none';
	updateFormDiv.parentNode.removeChild(updateFormDiv);
	document.documentElement.appendChild(updateFormDiv); 
}
function confirmDelection(commentId) { 
if (confirm("삭제할꺼야?")) { 
	var params = "id=" + commentid;
	new ajax.xhr.Request('/board_comment/comment/delete.do', params, removeResult, 'POST'); 
	}
}
function removeResult(req) { 
	if (req.readyState == 4) { 
	if (req.status == 200) { 
		var xmlDoc = req.responseXML; 
		var code = xmlDoc.getElementsByTagName('code').item(0).firstChild.nodeValue;
		if (code == 'success') {
			var deleteId = xmlDoc.getElementsByTagName('id').item(0).firstChild.nodeValue;
		var commentDiv = document.getElementById("c" + deleteId);
			commentDiv.parentNode.removeChild(commentDiv);
			alert("삭제했습니다"); 
		} else if (code == 'error') { 
			var message = xmlDoc.getElementsByTagName('message').item(0).firstChild.nodeValue;
			alert("에러 발생 : " + message);
		} else { 
			alert("서버 에러 발생 : " + req.status);
		}
	}
}
}
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% String user_name = (String)session.getAttribute("name"); 
   String user_id = (String)session.getAttribute("id"); 	
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	<link rel="stylesheet" href="/resource/css/style.css">
<title>board</title>
<script>
	$(document).on('click', '#btnSave', function(e) {
		e.preventDefault();
		$("#form").submit();
	});
	$(document).on('click', '#btnList', function(e) {
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}community/boardlist.do";
	});
</script>

<style>
body {
	padding-top: 70px;
	padding-bottom: 30px;
}
</style>

</head>
<body>
	<img src="/resource/img/logo.png" class="img_size"
		alt="올포유 로고" />
	<br>
	<br>

	<article>

		<div class="container" role="main">

			<h2 align="center">게시글 작성</h2>

			<form name="form" id="form" role="form" method="post"
				action="${pageContext.request.contextPath}/community/boardwrite/logic.do">

				<div class="mb-3">

					<label for="title">제목</label> <input type="text"
						class="form-control" name="BOARD_TITLE" id="title"
						placeholder="제목을 입력해 주세요">

				</div>



				<div class="mb-3">

					<label for="reg_id">작성자</label> <input type="text"
						class="form-control" name="BOARD_WRITER" id="reg_id"
						value=<%=user_name%> readonly>
						
						<input type ="hidden" value=<%=user_id%> name="id">

				</div>



				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="BOARD_CONTENTS" id="content"
						placeholder="내용을 입력해 주세요"></textarea>

				</div>


			</form>

			<div>

				<button type="button" href="../boardlist.do" class="btn btn-sm btn-primary button_color" id="btnSave">등록하기</button>
				<button type="button" class="btn btn-sm btn-primary button_color" id="btnList">취소</button>

			</div>

		</div>

	</article>
</body>
</html>
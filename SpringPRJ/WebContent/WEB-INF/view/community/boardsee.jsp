<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>부트스트랩 테이블</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resource/css/style.css">
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<div class="container">
		<h2><img src="/resource/img/logo.png" class="img_size2"
		alt="올포유 로고"></h2>
		<h2 class="h2_seat">
			<code class="h2_seat_color">커뮤니티 게시판</code>
		</h2>
		<table class="table table-striped table_reading">
			<thead class="thead_color ">
				<tr>
					<th class="thead_th">제목</th>
					<th class="thead_th">작성자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2">내용이 들어가는 자리</td>
				</tr>
			</tbody>
		</table>
		<div class="div_button">
		<button type="button" class="btn button_FA6862 button_FA6862_seat">수정</button>
		</div>
</body>
</html>


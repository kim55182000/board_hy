<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판_지원자 김현이</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/board.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<h2 class="boardTitle">글 작성</h2>
		<form action="boardWrite.do" method="post">
			<table class="boardTable">
				<tr>
					<td>글제목</td>
					<td><input type="text" class="form-control" name="title"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" class="form-control" name="writer"></td>
				</tr>
				<tr>
					<td>글내용</td>
					<td><textarea class="form-control" name="content"></textarea></td>
				</tr>
			</table>
			<div class="btnDiv">
				<button type="button" class="btn btn-default" id="boardListBtn">목록 보기</button>
				<button type="submit" class="btn btn-default" id="boardWriteSubmitBtn">글 작성</button>
			</div>
		</form>
	</div>
	<script>
		$('#boardListBtn').click(function(){
			location.href = "index.do";
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h2 class="boardTitle">게시판</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${boardList}">
					<tr>	
						<td>${dto.seq}</td>
						<td><a href="boardView.do?seq=${dto.seq}">${dto.title}</a></td>
						<td>${dto.writer}</td>
						<td>${dto.regdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btnDiv">
			<button type="button" class="btn btn-default" id="boardWriteBtn">새글 작성</button>
		</div>
	</div>
	<script>
		$('#boardWriteBtn').click(function(){
			location.href = "boardWrite.do";
		});
	</script>
</body>
</html>
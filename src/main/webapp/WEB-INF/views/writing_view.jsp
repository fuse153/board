<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 글보기</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.10/semantic.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.10/semantic.min.js"></script>

		<style>
		* {
			margin: 0px;
		}
		
		body {
			margin: 100px;
			background-color: beige;
		}게시판 글수정
		
		col1 {
			float: left;
		}
		</style>
</head>
<body>
	<div class="ui container">

		<!-- form start -->
		<form action="write_modify" method="post">
			<h1>게시판 글보기</h1>
			<br> <br>
			<div style="text-align: center"></div>
			<div class="ui form">
			<c:forEach items="${view}" var="view" >
				<div class="field">
					<a class="ui big green label">title</a> <br> <br> 
			
					<input type="text" name="subject" value="${view.getSubject()}" />

				</div>
				<div class="field">
					<a class="ui big green label">Content</a> <br> <br>
					<input type="text" name="content" value="${view.getContent()}" />
					
				</div>
				
					<input type="hidden" name="num" value="${view.getNum()}" />
				<br> <br>
			</c:forEach>
			</div>
			<div style="text-align: right">
				<input type="submit" class='ui inverted blue button' value="글수정" />
			</div>
		</form>
			<div style="text-align: right">
				<a href="list"><button class='ui inverted blue button'>목록</button></a>
				<!--<input type="submit" class='ui inverted blue button' value="글 수정" />-->
			</div>
		<!-- form end -->

	</div>


</body>
</html>
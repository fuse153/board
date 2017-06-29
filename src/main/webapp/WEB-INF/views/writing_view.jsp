<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 글쓰기</title>

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
}

col1 {
	float: left;
}
</style>
</head>
<body>
	<div class="ui container">

		<!-- form start -->
		<form action="write_form" method="post">
			<h1 color="white">게시판 글보기</h1>
			<br> <br>
			<div style="text-align: center"></div>

			<div class="ui form">
				<div class="field">
					<a class="ui big green label">title</a> <br> <br> <input
						type="text" name="subject" />
				</div>
				<div class="field">
					<a class="ui big green label">Content</a> <br> <br>
					<textarea rows="7" name="content"></textarea>
				</div>
				<br> <br>
			</div>


			<div style="text-align: right">
				<input type="submit" class='ui inverted blue button' value="글 수정" />
				<a href="list"><button class='ui inverted blue button'>목록</button></a>
			</div>
		</form>
		<!-- form end -->

	</div>


</body>
</html>
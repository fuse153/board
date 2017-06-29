<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ����Ʈ</title>

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
</style>
</head>
<body>
	<div class="ui container">
		<h1>�Խ��� ����Ʈ</h1>
		<br> # �� ���� �Խù��� �ֽ��ϴ�.
		<div style="text-align: right">
		
		<!-- select box start -->
			<div class="ui compact selection dropdown">
			  <i class="dropdown icon"></i>
			  <div class="text">�˻�</div>
			  <div class="menu">
			    <div class="item">����</div>
			    <div class="item">�۾���</div>
			  </div>
			</div>
		<!-- select box end -->
		
		<!-- �˻�â start -->
			<div class="ui  icon input">
				<input type="text" placeholder="����"> 
				<i class="search icon"></i>
			</div>
		<!-- �˻�â end -->
		</div>
		
		<!-- table start -->
		<table class="ui selectable yellow table">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>����</th>
					<th>�۾���</th>
					<th>�����</th>
					<th>��ȸ</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="lists" >
				<tr>
					<td>${lists.getNum()}</td>
					<td><a href="writing_view">${lists.getSubject()}</a></td>
					<td>�ƹ���</td>
					<td>${lists.getRegist_day()}</td>
					<td>${lists.getHit() }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- table end -->
		
		<br>
		<br>
		<div style="text-align: right">
			<a href="list"><button class='ui inverted blue button'>���</button></a> 
			<a href="write_form"><button class='ui inverted blue button'>�۾���</button></a>
		</div>
	</div>
	
	<script type="text/javascript">
		$('.ui.dropdown').dropdown();
	</script>
</body>
</html>
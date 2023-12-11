<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dm.common.*" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	
</style>
</head>
<body>
<a href="<%=request.getContextPath() %>/main">메인 페이지로 가기</a>
<h1> 회원 목록 </h1>
<h2>리스트 생성 여부 : ${vlist} </h2>
<%
	ArrayList<String> mList_ID = (ArrayList<String>)session.getAttribute("idList");
	ArrayList<String> mList_PW = (ArrayList<String>)session.getAttribute("pwList");
	ArrayList<String> mList_MN = (ArrayList<String>)session.getAttribute("permissionList");
%>
<form>
		<table class="table">
		<thead>
			<tr>
				<th scope="col">
					no.
				</th>
				<th scope="col">
					ID
				</th>
				<th scope="col">
					PW
				</th>
				<th scope="col">
					Permission
				</th>
				<th scope="col">
					Ban Button
				</th>
			</tr>
		</thead>
		<tbody>
		<%for(int i = 0; i < mList_ID.size(); i++){ %>
			<form>
				<tr>
					<td scope="row">
						<%=i + 1 %>
					</td>
					<td name="ID">
						<%=mList_ID.get(i) %>
					</td>
					<td>
						<%=mList_PW.get(i) %>
					</td>
					<td>
						<%=mList_MN.get(i) %>
					</td>
					<td>
						<button type="submit" class="btn btn-danger" action=<%request.getContextPath(); %>"/deleteMember">삭제하기</button>
					</td>
				</tr>
			</form>
			<%} %>
			</tbody>
		</table>
</form>
</body>
</html>
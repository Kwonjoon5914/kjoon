<%@ import="java.io.*" contentType="text/html; charset=UTF-8" %>
<%
	String pageNum = request.getParameter("pageNum");

	if (pageNum == null ) {
		pageNum = "1";
	}
%>
<html>
	<head>
	<title>Menu</title>
	<meta charset="UTF-8">
	</head>
	<body>
		<ul>
			<li>
				<a href="./createDB.jsp" target="main">TBL 생성</a><br>
			</li>
			<li>
				<a href="./dropDB.jsp" target="main">TBL 삭제</a><br>
			</li>
			<li>
				<a href="./AllsetDB.jsp" target="main">TBL 값넣기</a><br>
			</li>
			<li>
				<a href="./AllviewDB1.jsp?pageNum=<%=pageNum%>" target="main">TBL 전체조회</a><br>
			</li>
			<p>
			<li>
				<a href="./inputForm1.html" target="main">추가</a><br>
			</li>
			<li>
				<a href="./inputForm2.html" target="main">정정/삭제</a><br>
			</li>
		</ul>
	</body>
</html>
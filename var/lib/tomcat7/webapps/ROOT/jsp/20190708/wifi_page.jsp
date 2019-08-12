<%@ page errorPage="error.jsp" import="java.io.*" contentType="text/html; charset=UTF-8" %>
<%
	String pageNum = request.getParameter("pageNum");

	if (pageNum == null ) {
		pageNum = "1";
	}
	
	String from = request.getParameter("from");

	if (from == null ) {
		from = "1";
	}
	
	String cnt = request.getParameter("cnt");

	if (cnt == null ) {
		cnt = "9";
	}
%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

<html>
	<head>
		<title>전국 무료 와이파이</title>
		<style>
			#main {
				height: 500px;
				width: 100%;
			}
			iframe {
				border: 0;
			}
		</style>

	</head>
	<body>

		<div>
			<iframe src="wifi2.jsp?from=<%=from%>&cnt=<%=cnt%>" name="main" id="main"> </iframe>
			<iframe src="wifi4.jsp?pageNum=<%=pageNum%>" style="width: 100%; height: 300px"> </iframe>
		</div>
	</body>
</html>

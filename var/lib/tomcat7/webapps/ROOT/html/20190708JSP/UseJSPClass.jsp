<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%!
private class AA{
	private int Sum(int i, int j){
		return i+j;
	}
}
AA aa = new AA();
%>
<title>Use JSP Class</title>
</head>
<body>
<% out.println("2+3="+aa.Sum(2,3));%><br>
<%--위에다 JSP코드를 쓰고 아래다 JSP코드를 써도 하나의 jsp파일 내에서는 공유처리된다--%>
Good...
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>JSP Text Function2</title>
</head>
<body>
<%!
String arr[]=new String[]{"111","222","333"};
String str="abc,efg,hij";
String str_arr[] = str.split(",");
%>
arr[0]:<%=arr[0]%><br><%--배열에서 첫번째 값 출력--%>
arr[1]:<%=arr[1]%><br><%--배열에서 두번째 값 출력--%>
arr[2]:<%=arr[2]%><br><%--배열에서 세번째 값 출력--%>
str_arr[0]:<%=str_arr[0]%><br><%--배열에서 첫번째 값 출력--%>
str_arr[1]:<%=str_arr[1]%><br><%--배열에서 두번째 값 출력--%>
str_arr[2]:<%=str_arr[2]%><br><%--배열에서 세번째 값 출력--%>
<%----%>
Good...
</body>
</html>
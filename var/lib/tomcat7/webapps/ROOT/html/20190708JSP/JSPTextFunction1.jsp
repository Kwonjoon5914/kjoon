<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%!
String str="abcdfeffasdsd";//글자 수
int str_len = str.length();
String str_sub = str.substring(5);//5번째부터 출력(0번째부터 시작)
int str_loc = str.indexOf("cd");//"cd"가 위치한 번째 수(0번째부터 시작)
String strL = str.toLowerCase();//소문자로 출력
String strU = str.toUpperCase();//대문자로 출력
%>
<title>JSP Text Function1</title>
</head>
<body>
Str:<%=str%><br>
str_len:<%=str_len%><br>
str_sub:<%=str_sub%><br>
str_loc:<%=str_loc%><br>
strL:<%=strL%><br>
strU:<%=strU%><br>
<%----%>
Good...
</body>
</html>
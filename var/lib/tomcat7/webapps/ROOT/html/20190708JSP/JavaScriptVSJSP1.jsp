<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaScriptvsJSP</title>
</head>
<SCRIPT>
function call1(){
	var a = "abc";
	var b = "efg";
	document.write("String연산 : "+(a+b)+"<P>");
}
function call2(){
	var a = 1;
	var b = 2;
	document.write("Integer연산 : "+(a+b)+"<P>");
}
</SCRIPT>
<body>
<SCRIPT>call1();</SCRIPT>
<SCRIPT>call2();</SCRIPT>
Good...
</body>
</html>
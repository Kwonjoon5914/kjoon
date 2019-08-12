<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<h1>파일업로드폼</h1>
<form action="uploadPro.jsp" method="post" enctype="multipart/form-data">
올린사람: <input type="text" name="name"><br>
제목: <input type="text" name="subject"><br>
파일명: <input type="file" name="file"><br>
<input type="submit" value="전송">
</form>

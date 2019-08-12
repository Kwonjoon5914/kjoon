<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<%@ page import="java.util.*, java.text.*"  %>
<%
String uploadPath = request.getRealPath("upload");
int maxSize = 5*1024*1024;
MultipartRequest multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
%>
올린사람: <%=multi.getParameter("name") %><br>
제목: <%=multi.getParameter("subject") %><br>
파일경로: <%=uploadPath %><br>
원파일이름: <%=multi.getOriginalFileName("file") %><br>
시스템에 올린 파일이름: <%=multi.getFilesystemName("file") %><br>
파일타입: <%=multi.getContentType("file") %><br>
<a href="../upload/<%=multi.getFilesystemName("file") %>">올린파일하이퍼링크</a>
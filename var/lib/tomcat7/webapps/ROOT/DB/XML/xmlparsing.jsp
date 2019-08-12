<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,javax.sql.*,java.io.*, java.net.*" %>
<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<html>
<head>
</head>
<body>
<h1>성적 조회</h1>
<%
	//파싱을 위한 준비과정
	DocumentBuilder docBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	
	//당연히 파일을 읽을때 서버내부 local path(전체경로)로 지정,이 문장이 xml파싱을한다,위에 임포트 주의
	Document doc = docBuilder.parse(new File("/var/lib/tomcat7/webapps/ROOT/DB/XML/testdata.xml"));
	
	Element root = doc.getDocumentElement();	//root태그를 가져오기도 하지만 이 소스에서는 쓰이는 곳이 없다
	NodeList tag_name = doc.getElementsByTagName("name");	//xml name tag
	NodeList tag_studentid = doc.getElementsByTagName("studentid");	//xml studentid tag
	NodeList tag_kor = doc.getElementsByTagName("kor");	//xml kor tag
	NodeList tag_eng = doc.getElementsByTagName("eng");	//xml eng tag
	NodeList tag_mat = doc.getElementsByTagName("mat");	//xml mat tag(태그를 생성하고 아래에서 가져다 써서 출력)

	out.println("<table cellspacing=1 width=500 border=1>");
	out.println("<tr>");
	out.println("<td width=100>이름</td>");
	out.println("<td width=100>학번</td>");
	out.println("<td width=100>국어</td>");
	out.println("<td width=100>영어</td>");
	out.println("<td width=100>수학</td>");
	out.println("</tr>");
	
	for(int i=0; i<tag_name.getLength(); i++){
		out.println("<tr>");
		//아래와 같은 형식으로 불러온다.
		out.println("<td width=100>"+tag_name.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_studentid.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_kor.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_eng.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_mat.item(i).getFirstChild().getNodeValue()+"</td>");
	}
%>
</body>
</html>
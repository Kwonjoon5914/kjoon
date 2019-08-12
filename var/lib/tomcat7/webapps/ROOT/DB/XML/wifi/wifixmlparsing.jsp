<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,javax.sql.*,java.io.*, java.net.*" %>
<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<html>
<head>
</head>
<body>
<h1>와이파이 조회</h1>
<%
	//파싱을 위한 준비과정
	DocumentBuilder docBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	
	//당연히 파일을 읽을때 서버내부 local path(전체경로)로 지정,이 문장이 xml파싱을한다,위에 임포트 주의
	Document doc = docBuilder.parse(new File("/var/lib/tomcat7/webapps/ROOT/DB/XML/wifi/wifi2.xml"));
	
	Element root = doc.getDocumentElement();
	NodeList tag_name = doc.getElementsByTagName("설치장소명");
	NodeList tag_addr = doc.getElementsByTagName("소재지지번주소");
	NodeList tag_lat = doc.getElementsByTagName("위도");
	NodeList tag_lon = doc.getElementsByTagName("경도");

	out.println("<table cellspacing=1 width=500 border=1>");
	out.println("<tr>");
	out.println("<td width=100>설치장소명</td>");
	out.println("<td width=100>소재지지번주소</td>");
	out.println("<td width=100>위도</td>");
	out.println("<td width=100>경도</td>");
	out.println("</tr>");
	
	for(int i=0; i<tag_name.getLength(); i++){
		out.println("<tr>");
		//아래와 같은 형식으로 불러온다.
		out.println("<td width=100>"+tag_addr.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_name.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_lat.item(i).getFirstChild().getNodeValue()+"</td>");
		out.println("<td width=100>"+tag_lon.item(i).getFirstChild().getNodeValue()+"</td>");
	}
%>
</body>
</html>
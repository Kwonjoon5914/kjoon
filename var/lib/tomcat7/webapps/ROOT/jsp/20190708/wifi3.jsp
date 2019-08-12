<%@ page import="java.io.*" contentType="text/html; charset=UTF-8" %>
<%
	String startNum = request.getParameter("pageNum");
%>
<HTML>
<HEAD>
	<%
	File f= new File("/var/lib/tomcat7/webapps/ROOT/jsp/20190708/Freewifidata.txt");
	BufferedReader br = new BufferedReader(new FileReader(f));
	int cnt = 0;
	while(br.readLine() != null) {
		cnt++;
	}
	int pageNumber = 1;
	if (startNum != null) pageNumber = Integer.parseInt(startNum);
	br.close();
		out.println("<a href=wifi2.jsp?from=1"+"&cnt=9 target=main>");
	%> 
</HEAD>
<BODY>
	<%
	out.println("<a href=wifi2.jsp?from=1"+"&cnt=9 target=main>");
	if (pageNumber != 1) {
		out.println("<a href=wifi3.jsp?pageNum="+(pageNumber-10)+">&lt;</font></a>");
	} 
	for(int i=0; i<10; i++){
		if((10*pageNumber-9)+(i*10) > cnt) break;
		out.println("<a href=wifi2.jsp?from="+((10*pageNumber-9)+(i*10))+"&cnt=9 target=main>"
		+(pageNumber+i)+"</font></a>");
	}
	if (10*pageNumber < cnt-10) {
		out.println("<a href=wifi3.jsp?pageNum="+(pageNumber+10)+">&gt;</font></a>");
	}
	%>
	
</BODY>
</HTML>
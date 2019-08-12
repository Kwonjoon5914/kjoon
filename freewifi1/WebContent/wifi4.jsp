<%@ page errorPage="error.jsp" import="java.io.*"
 contentType="text/html; charset=UTF-8" %>
<%
	
	String pageNum = request.getParameter("pageNum");
	
%>
<HTML>
<HEAD>
<%
	File f= new File("/var/lib/tomcat7/webapps/ROOT/jsp/20190708/Freewifidata.txt");
BufferedReader br = new BufferedReader(new FileReader(f));
int cnt = 0;
br.readLine();
while(br.readLine() != null) {
	cnt++;								//데이터 총량을 알아야 페이지수 결정이 가능하므로..
}
int startpoint = 1;						//시작점은 하나로 잡았다
if (pageNum != null) startpoint = Integer.parseInt(pageNum);
//뭔가 get되면 시작점변경

%>

</HEAD>
<BODY>
<body bgcolor = "#e6e6e6" text="#000000" link="#000000" vlink="#000000" alink="#ff0000"><!--링크 색깔 변한거 티안나게-->
<!--메인 페이지로 들어가는 HOME 링크-->
<!--<a href="wifi2.jsp?from=1&cnt=9" target="main">HOME</font></a><br>-->

<center>
<%
if (startpoint != 1) {			//1페이지가 포함되었을땐 <<, <가 나타나지 않는다
	out.println("<a href=wifi4.jsp?pageNum="+1+">&lt;&lt;</font></a>");	//맨 앞으로
	out.println("<a href=wifi4.jsp?pageNum="+(startpoint-10)+">&lt;</font></a>");		//10페이지 앞으로
}
for(int i=0; i<10; i++){		//10개 페이지 링크 출력, 페이지번호와 시작 번호를 매칭...수열
	if((10*startpoint-9)+(i*10) > cnt) break;		//총량을 벗어날 경우 페이지 링크를 더 표시하지 않는다
	out.println("<a href='wifi_page.jsp?pageNum="+startpoint+"&from="+((10*startpoint-9)+(i*10))+"&cnt=9' target='main'>"+(startpoint+i)+"</a>");
}
if (10*startpoint < cnt-100) {		//마지막 페이지에서는 >, >>가 안나타나도록
	out.println("<a href=wifi4.jsp?pageNum="+(startpoint+10)+">&gt;</font></a>");		//10페이지 뒤로
	out.println("<a href=wifi4.jsp?pageNum="+(cnt/100*10)+">&gt;&gt;</font></a></center><br>");	//마지막 페이지로
}
%>

</BODY>
</HTML>
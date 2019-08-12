<meta http-equiv="Content-Type" content="text/8html; charset=utf-8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*,javax.sql.*,java.io.*,java.text.SimpleDateFormat,java.util.*;" %>
<html>
<head>
<title>예약리스트</title>
<%
Calendar cal; 
cal = Calendar.getInstance();
SimpleDateFormat sdt= new SimpleDateFormat("yyyy-MM-dd"); 

for (int i=0; i <30; i++){
      out.println(" date: " + sdt.format(cal.getTime()) );
      cal.add(cal.DATE,+1);   
   }


%>
</head>
<body>


</body>
</html>
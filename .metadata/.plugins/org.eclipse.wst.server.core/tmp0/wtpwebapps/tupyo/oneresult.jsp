<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
%>
<html>
<head>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	ResultSet rset = stmt.executeQuery("select id, age, count(age) from Tupyo_table where id = "+id+" group by age;");
%>

    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
	
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', '후보번호,후보명');
        data.addColumn('number', '득표수');
		
		data.addRows([

<%
	while (rset.next()){
%>
		['<%=rset.getInt(2)+"대"%>',<%=rset.getInt(3)%>]
<%
		if(rset.isLast())break;
            out.print(",");};
%>
        ]);

        // Set chart options
        var options = {'title':'<%=name%>후보 득표성향 분석',
                       'width':600,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);

      }

    </script>
</head>
<body>
    <!--Div that will hold the pie chart-->
	<div id="chart_div"></div>
</body>
</html>
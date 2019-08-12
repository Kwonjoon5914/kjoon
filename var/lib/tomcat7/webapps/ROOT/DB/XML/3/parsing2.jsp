<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@ page import="java.net.*, java.sql.*, javax.sql.*, javax.servlet.*, javax.naming.*, java.io.*, java.util.*, java.text.*, java.util.Date, java.util.regex.*" %>
    <%@ page import="javax.xml.parsers.*, org.w3c.dom.*" %>
    <%@ page import= "org.apache.http.HttpEntity" %>
    <%@ page import= "org.apache.http.HttpResponse" %>
    <%@ page import= "org.apache.http.NameValuePair" %>
    <%@ page import= "org.apache.http.ParseException" %>
    <%@ page import= "org.apache.http.client.HttpClient" %>
    <%@ page import= "org.apache.http.client.entity.UrlEncodedFormEntity" %>
    <%@ page import= "org.apache.http.client.methods.HttpGet" %>
    <%@ page import= "org.apache.http.client.methods.HttpPost" %>
    <%@ page import= "org.apache.http.impl.client.DefaultHttpClient" %>
    <%@ page import= "org.apache.http.message.BasicNameValuePair" %>
    <%@ page import= "org.apache.http.params.HttpConnectionParams" %>
    <%@ page import= "org.apache.http.util.EntityUtils" %>
    <%@ page import= "org.apache.http.conn.ClientConnectionManager" %>
    <%@ page import= "org.apache.http.params.HttpParams" %>
    <%@ page import= "org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager" %>

    <%!
        DefaultHttpClient client;

        public DefaultHttpClient getThreadSafeClient(){
            if(client != null) return client;
            client = new DefaultHttpClient();
            ClientConnectionManager manager = client.getConnectionManager();
            HttpParams params = client. getParams();
            client = new DefaultHttpClient(new ThreadSafeClientConnManager(params, manager.getSchemeRegistry()), params);
            return client;
        }

        public String goXML(String url){
            String result = null;

            HttpClient client = getThreadSafeClient();
            HttpConnectionParams.setConnectionTimeout(client.getParams(), 100000);
            HttpConnectionParams.setSoTimeout(client.getParams(), 100000);
            HttpPost post = new HttpPost(url);

            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>();
            if(false){
                nameValuePairs.add(new BasicNameValuePair("id", "pw"));
            }

            try{
                post.setEntity(new UrlEncodedFormEntity(nameValuePairs));
                HttpResponse responsePost = null;

                responsePost = client.execute(post);
                HttpEntity resEntity = responsePost.getEntity();
				
                if(resEntity != null) 
					result = EntityUtils.toString(resEntity).trim();
            }catch(Exception e){
                e.printStackTrace();
            }finally{

            }
            return result;
        }
    %>  

    <title>Document</title>

    <style>
        html, body{
            width: 100%;
            height: 100%;
        }
        table, td{
            text-align: center;
            border: 1px solid #000;
            border-collapse: collapse;
        }
        tr.head > td{
            background-color: antiquewhite;
            width: 12%;
        }
    </style>
</head>
<body>
    <h1>성적표</h1>
    <%
        String ret = goXML("http://192.168.23.107:8080/DB/XML/xmlmake.jsp");

        try{
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();

            ByteArrayInputStream is = new ByteArrayInputStream(ret.getBytes("utf-8"));
            Document doc = builder.parse(is);

            Element root = doc.getDocumentElement();
            NodeList tag_name = doc.getElementsByTagName("name");
            NodeList tag_studentid = doc.getElementsByTagName("studentid");
            NodeList tag_kor = doc.getElementsByTagName("kor");
            NodeList tag_eng = doc.getElementsByTagName("eng");
            NodeList tag_mat = doc.getElementsByTagName("mat");
    %>

    <table>
        <tr class="head">
            <td>name</td>
            <td>studentid</td>
            <td>kor</td>
            <td>eng</td>
            <td>mat</td>
        </tr>

    <%
        for(int i=0; i<tag_name.getLength(); i++){
    %>

        <tr>
            <td><%=tag_name.item(i).getFirstChild().getNodeValue()%></td>
            <td><%=tag_studentid.item(i).getFirstChild().getNodeValue()%></td>
            <td><%=tag_kor.item(i).getFirstChild().getNodeValue()%></td>
            <td><%=tag_eng.item(i).getFirstChild().getNodeValue()%></td>
            <td><%=tag_mat.item(i).getFirstChild().getNodeValue()%></td>
        </tr>

    <%
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    %>
    </table>
</body>
</html>
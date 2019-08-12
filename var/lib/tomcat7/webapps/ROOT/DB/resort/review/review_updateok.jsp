<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8"/>
<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, java.util.*" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
    // 실제로 서버에 저장되는 path
    String path = application.getRealPath("DB/resort/file");
    
    int size = 1024 * 1024 * 10; // 파일 사이즈 설정 : 10M
    String fileName = "";    // 업로드한 파일 이름
    String originalFileName = "";    //  서버에 중복된 파일 이름이 존재할 경우 처리하기 위해
    MultipartRequest multi = null;
    // cos.jar라이브러리 클래스를 가지고 실제 파일을 업로드하는 과정
    //try{
        // DefaultFileRenamePolicy 처리는 중복된 이름이 존재할 경우 처리할 때
        // request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 정책
        multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
        
        // 전송한 전체 파일이름들을 가져온다.
        Enumeration files = multi.getFileNames();
        String str = (String)files.nextElement();
        
        //파일명 중복이 발생했을 때 정책에 의해 뒤에 1,2,3 처럼 숫자가 붙어 고유 파일명을 생성한다.
        // 이때 생성된 이름을 FilesystemName이라고 하여 그 이름 정보를 가져온다. (중복 처리)
        fileName = multi.getFilesystemName(str);
        //실제 파일 이름을 가져온다.
        originalFileName = multi.getOriginalFileName(str);

    //}catch(Exception e){
    //}
%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
	Statement stmt = conn.createStatement();
	
	String count = multi.getParameter( "count" );
	String title = multi.getParameter( "title" );
	String content = multi.getParameter( "content" );
	String file2 = path + "/" + originalFileName;
	
	stmt.execute("update review set title='"+ title + "', content='"+ content + "', file='" + file2 + "' where id="+ count + ";");
	
	stmt.close();
	conn.close();
%>
<html>
<head>
<script>
function add(){
	alert("수정되었습니다!");
	location.href = "review_list.jsp"
}
</script>
</head>
<body onload="add()">

</body>
</html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*, java.net.* "%>
<%@ page pageEncoding="utf-8"%>
<%
	String studentid = request.getParameter("searchid");
%>
<html>
<head>
	<script type="text/javascript">
	function change(value){
		var fname = document.getElementById("test_name").value;
		var fid = document.getElementById("test_id").value;
		var fkor = document.getElementById("test_kor").value;
		var feng = document.getElementById("test_eng").value;
		var fmat = document.getElementById("test_mat").value;

		if(value == "0") // HOME 버튼
		{
		location.href="showREC.jsp";
		}
		else if(value == "1") // 로그인 화면 이동
		{
		location.href="updateDB.jsp?name="+fname+"&studentid="+fid+"&kor="+fkor+"&eng="+feng+"&mat="+fmat;
		}
		else if(value == "2") //회원가입 화면 이동
		{
		location.href="deleteDB.jsp?studentid="+fid;
		}
	}
function validate(){
      var re_name =  /^[0-9]*$/; //이름 한글,숫자인지 검사할 규칙
      var searchid = document.getElementById("searchid");      

if(insert.test_kor.value == ""){ //국어 비어있을 때
         alert("Kor을 입력해 주세요.")
         insert.test_kor.focus();
         return false;
      }

if(insert.test_eng.value == ""){ //영어 비어있을 때
         alert("Eng 입력해 주세요.")
         insert.test_eng.focus();
         return false;
      }

if(insert.test_mat.value == ""){ //수학 비어있을 때
         alert("Mat 입력해 주세요.")
         insert.test_mat.focus();
         return false;
      }

      if(!check(re_name, searchid, "학번은 숫자만 허용합니다.")){
         return false;
      }
   }
   function check(re, what, message) {
          if(re.test(what.value)) {
              return true;
          }
          alert(message);
          what.value = "";
          what.focus();
          //return false;
      }
function numcheck1(){
	if(document.getElementById("test_kor").value>100||document.getElementById("test_kor").value<0){
		document.getElementById("test_kor").value="";
		alert("0~100점만!");
}
}

function numcheck2(){
	if(document.getElementById("test_eng").value>100||document.getElementById("test_kor").value<0){
		document.getElementById("test_eng").value="";
		alert("0~100점만!");
}
}
function numcheck3(){
	if(document.getElementById("test_mat").value>100||document.getElementById("test_kor").value<0){
		document.getElementById("test_mat").value="";
		alert("0~100점만!");
}
}
	</script>
</head>
	<body>
		<h1><B>성적 조회후 정정 / 삭제<B></h1>

		<%	
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/testdb?serverTimezone=UTC","kjoon","dcsw01");
		Statement stmt = conn.createStatement();

		ResultSet rset = stmt.executeQuery("select * from examtable where studentid = " + studentid + ";");
		%>

		<form method="post" name="insert" onsubmit="return validate();">
			<tr width=600 align=center> 
				<td>조회할 학번</td>
				<td width=350><input type="number" placeholder="숫자를 입력하세요(6자리)" name="searchid"/></td>
				<input type="submit" value="조회">
			</tr>

<table cellspacing=1 width=450 border=1>
	<%
		String name = " ";
		int kor_score = 0;
		int eng_score = 0;
		int mat_score = 0;
		if(!rset.next()){
			
		}else{
			name=rset.getString(1);
			kor_score=rset.getInt(3);
			eng_score=rset.getInt(4);
			mat_score=rset.getInt(5);
		}
		if(name.equals(" ")){
			%>
		<tr>
			<td width=100><p align=center>이름</p></td>
			<td width=350><p align=center><input type="text" name="username" value="해당학번없음"></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>학번</p></td>
			<td width=350><p align=center><input type="text" name="studentid" readonly="readonly"></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>국어</p></td>
			<td width=350><p align=center><input type="number" name="korscore" readonly="readonly" ></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>영어</p></td>
			<td width=350><p align=center><input type="number" name="engscore" readonly="readonly" ></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>수학</p></td>
			<td width=350><p align=center><input type="number" name="matscore" readonly="readonly" ></p></td>
		</tr>
	<%
		}
		else{
			%>
		<tr>
			<td width=100><p align=center>이름</p></td>
			<td width=350><p align=center><input type="text" maxlength="6" id="test_name" name="username" value="<%=name%>"></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>학번</p></td>
			<td width=350><p align=center><input type="text" id="test_id" name="studentid" readonly="readonly" value="<%=studentid%>"></p></td>
		</tr>
		<tr>
<label>
			<td width=100><p align=center>국어</p></td>
			<td width=350><p align=center><input type="number" id="test_kor" name="korscore" value="<%=kor_score%>" min="0" max="100" onkeyup="numcheck1()"></p></td>
</label>
		</tr>
		<tr>
			<td width=100><p align=center>영어</p></td>
			<td width=350><p align=center><input type="number" id="test_eng" name="engscore" value="<%=eng_score%>" min="0" max="100" onkeyup="numcheck2()"></p></td>
		</tr>
		<tr>
			<td width=100><p align=center>수학</p></td>
			<td width=350><p align=center><input type="number" id="test_mat" name="matscore" value="<%=mat_score%>" min="0" max="100" onkeyup="numcheck3()"></p></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="수정" name="insert" formaction="updateDB.jsp"></td>
			<td><input type="button" value="삭제" onclick="change(2)"></td>
		</tr>
	<%
		}
		rset.close();
		stmt.close();
		conn.close();
}catch (Exception e){
	out.println("값을입력해줘요");
}
	%>
	</table>
	</form>

</body>

</html>
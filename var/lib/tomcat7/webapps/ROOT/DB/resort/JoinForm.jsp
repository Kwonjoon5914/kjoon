<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="utf8" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*" %>
<html>
<head>
    <title>회원가입 화면</title>
    
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<script src="//code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
 
    <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }

            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호 확인 부분에 비밀번호를 동일하게 입력하세요.");
                return false;
            }

            if(!document.userInfo.name.value){
                alert("이름을 입력하세요.");
                return false;
            }

            if(!document.userInfo.gender.value){
                alert("성별을 입력하세요.");
                return false;
            }

            if(!document.userInfo.borndate.value){
                alert("날짜를 입력하세요.");
                return false;
            }

            if(!document.userInfo.mail1.value){
                alert("이메일 앞부분을 입력하세요.");
                return false;
            }
			
            if(!document.userInfo.mail2.value){
                alert("이메일 뒷부분을 입력하세요.");
                return false;
            }
			
			if(!document.userInfo.phone.value){
                alert("전화번호를 입력하세요.");
                return false;
            }
			
			if(!document.userInfo.address.value){
                alert("주소를 입력하세요.");
                return false;
            }
            
        }
    </script>
    
</head>
<body BACKGROUND="image/background.jpg">
<center>
    <!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        <form method="post" action="JoinWrite.jsp" name="userInfo" onsubmit="return checkValue()">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="50">
                        <input type="button" value="중복확인" >    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="50">
                    </td>
                </tr>
				<br>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="passwordcheck" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">생년월일</td>
                    <td>
						<input type="date" class="form-control" name="borndate" data-rule-required="true" placeholder="생년월일">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="mail1" maxlength="50">&nbsp;@
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">전화번호</td>
                    <td>
                        <input type="tel" name="phone" maxlength="11" />
                    </td>
                </tr>
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="가입"/>  <input type="button" value="취소">
        </form>
    </div>
</center>
</body>
</html>
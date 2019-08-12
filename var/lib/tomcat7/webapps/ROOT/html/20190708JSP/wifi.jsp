<%@ page import="java.io.*" contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD>
	<%
	public static void main(String[] args) throws IOException{
		File f= new File("C:\\Users\\NoName\\Desktop\\교안\\BIZ프로그래밍기초\\실습데이터\\전국무료와이파이표준데이터.txt");
		BufferedReader br= new BufferedReader(new FileReader(f));
		
		String readtxt;
		
		// 빈 파일일 경우
		if((readtxt=br.readLine())==null) {
			System.out.printf("빈 파일입니다\n");
			return;
		}
		// 첫줄은 필드명이기 때문에 따로 읽는다.
		// 탭을 기준으로 필드를 나눈다.
		String[] field_name= readtxt.split("\t");
		
		// 융합기술 위도경도
		// 위도 :37.3856012
		// 경도 :127.1203785
		// 우리집 위도경도
		// 위도 :37.2785691
		// 경도 :127.1109105
		
		double lat=37.3856012;
		double lng=127.1203785;
		
		int LineCnt=0;
		while((readtxt= br.readLine())!=null) {
			String[] field = readtxt.split("\t");
			System.out.printf("**[%d번째 항목]**************\n", LineCnt);
			// 9번 : 지번주소
			System.out.printf(" %s : %s\n", field_name[9], field[9]);
			// 12번 : 위도주소
			System.out.printf(" %s : %s\n", field_name[12], field[12]);
			// 13번 : 경도주소
			System.out.printf(" %s : %s\n", field_name[13], field[13]);
			// 거리 계산
			double dist=Math.sqrt(Math.pow(Double.parseDouble(field[12])-lat, 2) + 
								 Math.pow(Double.parseDouble(field[13])-lng, 2));
			System.out.printf(" 현재지전과 거리 : %f\n", dist);
			System.out.printf("****************************\n");
			LineCnt++;
		}
		br.close();
		%>
</HEAD>
<BODY>
</BODY>
</HTML>

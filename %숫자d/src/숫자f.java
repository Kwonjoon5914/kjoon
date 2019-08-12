/**
 * 영수증 출력 프로그램
 * 서식을 활용해 영수증 모양을 똑같이 만들어보는 프로그램
 * @author NoName
 *
 */
public class 숫자f {

	public static void main(String[] args) {
		int mach;
		int distance;
		mach = 340;
		distance = mach * 60 * 60;
		System.out.println("소리가 1시간 동안 가는 거리 :" + distance + "m");
		System.out.printf("소리가 1시간 동안 가는 거리 :" + distance + "m\n");
		
		double radius;
		double area;
		radius = 10.0;
		area = radius * radius * 3.14;
		System.out.println("반지름이 " + radius + "인 원의 넓이 : " + area);
		System.out.printf("반지름이 " + radius + "인 원의 넓이 : " + area + "\n\n");
		
		int currentBalance;
		final int CURRENT_PRICE = 1250;
		currentBalance = 30000;
		System.out.println("현재 카드 잔액은 " + currentBalance + "원 입니다.");
		//카드를 찍었음
		currentBalance = currentBalance - CURRENT_PRICE;
		System.out.println("현재 카드 잔액은 " + currentBalance + "원 입니다.");		
		//카드를 찍었음
		currentBalance = currentBalance - CURRENT_PRICE;
		System.out.println("현재 카드 잔액은 " + currentBalance + "원 입니다.");		
		//충전
		currentBalance = currentBalance + 10000;
		System.out.println("현재 카드 잔액은 " + currentBalance + "원 입니다.\n");		
		
		char ga1 = '가';
		char ga2 = '\uac00';
		boolean cham = true;
		boolean geojit = false;
		
		System.out.println(ga1);
		System.out.println(ga2);
		System.out.println(cham + "가 아니면" + geojit + "입니다.\n");
		// 상단의 타이틀 부분 출력
		System.out.printf("AA%5.2fBBB\n", 10.125);
		// 물품 리스트 출력
		System.out.printf("AA%-5dBBB\n",5);
		
		int data;
		float floatData;
		floatData = (float)122.5;
		data = (int)floatData;
		System.out.println(data);
		/**
		 * 이름 : 홍길동
		 * 나이 : 30
		 * 생일 : 11월 13일
		 * 인사말 : 안녕하세요. 반갑습니다. 폴리텍대학 융합기술교육원에 오신걸 환영합니다.
		 */
		System.out.println("안녕 하이");
		System.out.println("안녕 " + "하이");
		System.out.println("이름 : 홍길동\n" + 
				"나이 : 30\n" + 
				"생일 : 11월 13일\n" + 
				"인사말 : 안녕하세요. 반갑습니다." + 
				"한국 폴리텍대학 융합기술교육원에 오신걸" + 
				"환영합니다.");
	}
}

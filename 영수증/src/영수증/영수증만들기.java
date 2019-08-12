package 영수증;

public class 영수증만들기 {
	  static public void main( String args[] ) {
		  /**
		   * 영수증 출력 프로그램
		   * 서식을 활용해 영수증 모양을 똑같이 만들어보는 프로그램
		   */
		  //상단의 타이틀 부분 출력
		    System.out.println("IC신용승인                    (   고     객     용  )");
		    System.out.println("단말기 : 1A79798148     전표번호 :  020298" );
		    System.out.println("가맹점 : 김태준의 탕탕집" );
		    System.out.println("주 소 : 서울 강남구 학동로4길 12. 1. 2층(논현동)");
		    System.out.println("대표자 : 김태준");
		    System.out.println("사업자 : 536-37-00183     TEL : 02-511-3235");
		    System.out.println("-----------------------------------------");
		    //금액 부분 출력
		    System.out.printf("금  액 :                          %d. %d%d%d 원  \n", 6, 8, 1, 8);
		    System.out.printf("금  액 :                             %d%d%d 원  \n", 6, 8, 2);
		    System.out.printf("금  액 :                          %d. %d%d%d 원  \n", 7, 5, 0, 0);
		    System.out.println("-----------------------------------------");
		    //은행 관련 내용 출력
		    System.out.println("IBK비씨카드\n");
		    System.out.println("카드번호 : 6250-03**-****-4903(C)     일시불");
		    System.out.println("거래일시 : 2018/01/30 12:46:24");
		    System.out.println("승인번호 : 72110079");
		    System.out.println("매입 : 비씨카드사       가맹 : 798606607");
		    System.out.println("알림 : EDC매출표");
		    System.out.println("문의 : TEL)1544-4700");
		    System.out.println("-----------------------------------------");
		    System.out.println("             *  감사합니다  *");
		    System.out.println("    N617021027/2. 05/20170215/0510");
		    } 
}
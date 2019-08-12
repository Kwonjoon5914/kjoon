package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍9 {
	/*
	 * 대학을 졸업하려면 최소 140학점 이수, 전공 70학점 이상, 교양 일반은 각각 30학점 이상이거나 총점이 80학점 이상이어야 한다.
	 * 이수한 학점을 각각 키보드로 입력받아 졸업 여부를 출력하는 프로그램을 작성하시오.
	 */
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
	      int a, b, c;
	      String yon;
	      System.out.print("전공 이수 학점: ");
	      a = in.nextInt();
	      System.out.print("교양 이수 학점: ");
	      b = in.nextInt();
	      System.out.print("일반 이수 학점: ");
	      c = in.nextInt();
	      yon = (a + b + c >= 140 && a >= 70 &&
	           ((b >= 30 && c >= 30) || (b + c >= 80))) 
	           ? "졸업 가능" : "졸업 불가능";
	      System.out.println(yon);
	      in.close();
	   }
	}

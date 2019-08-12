package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍8 {
	public static void main(String[] args) {
	//키보드로 0부터 999 사이의 정수를 입력 받아 각 자릿수를 더 한 결과를 출려하는 프로그램을 작성하시오.
	Scanner in = new Scanner(System.in);
    int num;
    System.out.print("0~999 사이의 숫자를 입력하세요 : ");
    num = in.nextInt();
    int first, second, third, total;
    first = num / 100;
    num = num - first * 100;
    second = num / 10;
    third = num - second * 10;
    total = first + second + third;
    System.out.printf("각 자리수의 합 = %d", total);
    in.close();
  }
}
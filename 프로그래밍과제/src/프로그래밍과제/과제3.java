package 프로그래밍과제;

import java.util.Scanner;

public class 과제3 {
//5개의 숫자를 입력 받아 최저 값을 출력하는 프로그램 작성
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int a, b, c, d, e;
		int max, min;
		System.out.printf("숫자 A 입력 : ");
		a = in.nextInt();
		System.out.printf("숫자 B 입력 : ");
		b = in.nextInt();
		System.out.printf("숫자 C 입력 : ");
		c = in.nextInt();
		System.out.printf("숫자 D 입력 : ");
		d = in.nextInt();
		System.out.printf("숫자 E 입력 : ");
		e = in.nextInt();
		max = a;
		if(max <= b) {
			max = b;
		}
		if(max <= c) {
			max = c;
		}
		if(max <= d) {
			max = d;
		}
		if(max <= e) {
			max = e;
		}
		min = a;
		if(min >= b) {
			min = b;
		}
		if(min >= c) {
			min = c;
		}
		if(min >= d) {
			min = d;
		}
		if(min >= e) {
			min = e;
			System.out.printf("최대값은 %d 입니다.\n", max);
			System.out.printf("최소값은 %d 입니다.", min);
			in.close();		
		}
	}
}
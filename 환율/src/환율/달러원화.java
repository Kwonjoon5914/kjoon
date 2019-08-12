/*
 * 환율계산프로그램
 * author : 
 */

package 환율;

import java.util.Scanner;

public class 달러원화 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int won=0;
		double dollar=0;
		double exchangeRate=0;
		int change, left;
		System.out.print("환전하실 원화를 입력하세요\n");
		won = in.nextInt();
		System.out.print("환율을 입력하세요");
		exchangeRate = in.nextDouble();
		dollar = (double)won / exchangeRate;
		change = (int)dollar;
		System.out.printf("환전된 달러는 %d 달러입니다. \n", change);
		won = won - (int)((double)change * exchangeRate);
		left = won % 10;
		System.out.printf("거스름돈은 %d 원입니다. \n", won-left);
		
		int hundred, fifty, twenty, ten, five, one;
		hundred = (int)dollar / 100;
		dollar = dollar - (hundred * 100);
		fifty = (int)dollar / 50;
		dollar = dollar - (fifty * 50);
		twenty = (int)dollar / 20;
		dollar = dollar - (twenty * 20);
		ten = (int)dollar / 10;
		dollar = dollar - (ten * 10);
		five = (int)dollar / 5;
		one = (int)dollar - (five * 5);
		System.out.printf("달러단위 개수\n"
                + "---------------\n"
                + "100달러 : %d 장\n"
                + "50달러   : %d 장\n"
                + "20달러   : %d 장\n"
                + "10달러   : %d 장\n"
                + "5달러     : %d 장\n"
                + "1달러     : %d 장", 
                hundred, fifty, twenty, ten, five, one);
		in.close();
	}
}

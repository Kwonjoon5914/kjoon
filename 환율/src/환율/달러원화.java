/*
 * ȯ��������α׷�
 * author : 
 */

package ȯ��;

import java.util.Scanner;

public class �޷���ȭ {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int won=0;
		double dollar=0;
		double exchangeRate=0;
		int change, left;
		System.out.print("ȯ���Ͻ� ��ȭ�� �Է��ϼ���\n");
		won = in.nextInt();
		System.out.print("ȯ���� �Է��ϼ���");
		exchangeRate = in.nextDouble();
		dollar = (double)won / exchangeRate;
		change = (int)dollar;
		System.out.printf("ȯ���� �޷��� %d �޷��Դϴ�. \n", change);
		won = won - (int)((double)change * exchangeRate);
		left = won % 10;
		System.out.printf("�Ž������� %d ���Դϴ�. \n", won-left);
		
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
		System.out.printf("�޷����� ����\n"
                + "---------------\n"
                + "100�޷� : %d ��\n"
                + "50�޷�   : %d ��\n"
                + "20�޷�   : %d ��\n"
                + "10�޷�   : %d ��\n"
                + "5�޷�     : %d ��\n"
                + "1�޷�     : %d ��", 
                hundred, fifty, twenty, ten, five, one);
		in.close();
	}
}

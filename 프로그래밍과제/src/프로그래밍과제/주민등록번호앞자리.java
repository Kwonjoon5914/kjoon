package ���α׷��ְ���;

import java.util.Scanner;

public class �ֹε�Ϲ�ȣ���ڸ� {
//00~19 �� 2000~2019�� ������, 20~99 �� 1920 ~ 1999�� ������ �Ǵ�
	//���̸� �� ���̷� ���, 3�� 7���� �������� 2019 - ����
	//3�� 7���� ������ �ʾ����� 2019 - ���� - 1
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int inputData, age, month, day;
		System.out.println("�ֹε�Ϲ�ȣ ���ڸ��� �Է��ϼ��� :");
		inputData = in.nextInt();
		inputData = inputData / 10000;
		age = 2019 - (inputData + 1900) + 1;
		day = inputData%100;
		month = (inputData % 10000 - day) / 100;
		if(inputData <= 19) {
			age = 2019 - (inputData + 2000) + 1; //2000 ���
		} else {
			age = 2019 - (inputData + 1900) + 1; //1900 ���
		}
		if( month > 3 || (month == 3 && day >= 7 )) {
			age--;
		}
		System.out.println(age);
		if(inputData >= 19) {
			System.out.println("����");
		} else {
			System.out.println("�̼���");
		}
		if(inputData >= age) {
			System.out.println("����");
		} else {
			System.out.println("�̼���");
		in.close();
		}
	}
}
package ���α׷��ְ���;

import java.util.Scanner;

public class ���α׷���9 {
	/*
	 * ������ �����Ϸ��� �ּ� 140���� �̼�, ���� 70���� �̻�, ���� �Ϲ��� ���� 30���� �̻��̰ų� ������ 80���� �̻��̾�� �Ѵ�.
	 * �̼��� ������ ���� Ű����� �Է¹޾� ���� ���θ� ����ϴ� ���α׷��� �ۼ��Ͻÿ�.
	 */
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
	      int a, b, c;
	      String yon;
	      System.out.print("���� �̼� ����: ");
	      a = in.nextInt();
	      System.out.print("���� �̼� ����: ");
	      b = in.nextInt();
	      System.out.print("�Ϲ� �̼� ����: ");
	      c = in.nextInt();
	      yon = (a + b + c >= 140 && a >= 70 &&
	           ((b >= 30 && c >= 30) || (b + c >= 80))) 
	           ? "���� ����" : "���� �Ұ���";
	      System.out.println(yon);
	      in.close();
	   }
	}

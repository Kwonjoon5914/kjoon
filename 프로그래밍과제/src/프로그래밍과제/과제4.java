package ���α׷��ְ���;

import java.util.Scanner;

public class ����4 {
//���� ���� �� ������ �����ϴ� ���α׷��� �ۼ��ϼ���.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int playerA, playerB;
		System.out.print("Player A �Է� (����:0, ����:1, ��:2) => \n");
		playerA = in.nextInt();
		System.out.print("Player B �Է� (����:0, ����:1, ��:2) => \n");
		playerB = in.nextInt();
		
		if(playerA <= 2 && playerB <=2) {
			if( playerA >= playerB)	{
				if(playerA - playerB == 2) {
					System.out.println("PlayerB�� �̰���ϴ�.");
				} else if(playerA - playerB == 1){
					System.out.println("PlayerA�� �̰���ϴ�.");
				} else if(playerA - playerB == 0){
					System.out.println("�����ϴ�.");
				}
			} else {
				if(playerB - playerA == 2) {
					System.out.println("PlayerA�� �̰���ϴ�.");
				} else if(playerB - playerA == 1){
					System.out.println("PlayerB�� �̰���ϴ�.");
				}
			}
		} else {
			System.out.println("3�̻��� ���ڴ� ����Ͻ� �� �����ϴ�.");
		}
		in.close();
	}
}
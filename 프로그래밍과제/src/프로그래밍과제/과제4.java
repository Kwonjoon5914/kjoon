package 프로그래밍과제;

import java.util.Scanner;

public class 과제4 {
//가위 바위 보 게임을 수행하는 프로그램을 작성하세요.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		int playerA, playerB;
		System.out.print("Player A 입력 (가위:0, 바위:1, 보:2) => \n");
		playerA = in.nextInt();
		System.out.print("Player B 입력 (가위:0, 바위:1, 보:2) => \n");
		playerB = in.nextInt();
		
		if(playerA <= 2 && playerB <=2) {
			if( playerA >= playerB)	{
				if(playerA - playerB == 2) {
					System.out.println("PlayerB가 이겼습니다.");
				} else if(playerA - playerB == 1){
					System.out.println("PlayerA가 이겼습니다.");
				} else if(playerA - playerB == 0){
					System.out.println("비겼습니다.");
				}
			} else {
				if(playerB - playerA == 2) {
					System.out.println("PlayerA가 이겼습니다.");
				} else if(playerB - playerA == 1){
					System.out.println("PlayerB가 이겻습니다.");
				}
			}
		} else {
			System.out.println("3이상의 숫자는 사용하실 수 없습니다.");
		}
		in.close();
	}
}
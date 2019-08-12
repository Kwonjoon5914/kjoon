package 프로그래밍과제;

import java.util.Scanner;

public class 프로그래밍7 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
        int w;
		int x;
		int y;
		int z;
        System.out.print("정수를 입력하세요. :");
		w = in.nextInt();
		x = w%20;
		y = w%4;
		z = w%5;
		System.out.print("입력한 정수는 4와 5로 동시에 나누어");
		System.out.printf("%s", (x==0) ? "집니다." :"지지 않습니다.\n");
		System.out.print("입력한 정수는 4 또는 5로 나누어");
		if(y==0||z==0)
		{System.out.println("집니다.");}
		else
		{System.out.println("지지 않습니다.");}
		if(y==0&&z!=0)
		{System.out.println("입력한 정수는 4나 5 중 하나로 나누어지지만 두 수 모두로는 나누어지지 않습니다.");}
		if(y!=0&&z==0)
		{System.out.println("입력한 정수는 4나 5 중 하나로 나누어지지만 두 수 모두로는 나누어지지 않습니다.");}
		in.close();
	}
}
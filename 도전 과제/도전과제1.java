import java.util.Scanner;

public class 도전과제1 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int x;
		int y;
		int total;
		System.out.print("가로를 입력하세요 : ");
		x = in.nextInt();
		System.out.print("세로를 입력하세요 : ");
		y = in.nextInt();
		total = x * y;
		System.out.printf("넓이는 %d 입니다. \n", total);
		in.close();
	}
}

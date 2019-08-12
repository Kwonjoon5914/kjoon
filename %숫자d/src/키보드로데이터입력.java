import java.util.Scanner;

public class 키보드로데이터입력 {
		//계산기
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int x;
		int y;
		int total;
		int mul;
		int minus;
		float div;
		int mod;
		x = in.nextInt();
		y = in.nextInt();
		total = x + y;
		mul = x * y;
		minus = x - y;
		div = (float)x / (float)y;
		mod = x % y;
		System.out.printf("%d와 %d의 합은 %d입니다. \n", x, y, total);
		System.out.printf("%d와 %d의 곱은 %d입니다. \n", x, y, mul);
		System.out.printf("%d와 %d의 차는 %d입니다. \n", x, y, minus);
		System.out.printf("%d와 %d의 나누기는 %.2f입니다. \n", x, y, div);
		System.out.printf("%d와 %d의 나머지는 %d입니다. \n", x, y, mod);
		in.close();
	}
}

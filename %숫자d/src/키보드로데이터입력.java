import java.util.Scanner;

public class Ű����ε������Է� {
		//����
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
		System.out.printf("%d�� %d�� ���� %d�Դϴ�. \n", x, y, total);
		System.out.printf("%d�� %d�� ���� %d�Դϴ�. \n", x, y, mul);
		System.out.printf("%d�� %d�� ���� %d�Դϴ�. \n", x, y, minus);
		System.out.printf("%d�� %d�� ������� %.2f�Դϴ�. \n", x, y, div);
		System.out.printf("%d�� %d�� �������� %d�Դϴ�. \n", x, y, mod);
		in.close();
	}
}

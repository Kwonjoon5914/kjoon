import java.util.Scanner;

public class ��������1 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int x;
		int y;
		int total;
		System.out.print("���θ� �Է��ϼ��� : ");
		x = in.nextInt();
		System.out.print("���θ� �Է��ϼ��� : ");
		y = in.nextInt();
		total = x * y;
		System.out.printf("���̴� %d �Դϴ�. \n", total);
		in.close();
	}
}

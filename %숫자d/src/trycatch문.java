import java.util.Scanner;

public class trycatch�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner in;
		in = new Scanner(System.in);
		int number1, number2, div;
			System.out.println("���� �Է��ϼ���");
			number1 = in.nextInt();
			System.out.println("�и� �Է��ϼ���");
			number2 = in.nextInt();
		try {
			div = number1 / number2;
			System.out.printf("%d / %d = %d", number1, number2, div);
		} catch(Exception e) {
			System.out.print("0���� ������ �� �����ϴ�. ");
			in.close();
		}
	}

}
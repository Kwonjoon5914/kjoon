import java.util.Scanner;

public class trycatch문 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner in;
		in = new Scanner(System.in);
		int number1, number2, div;
			System.out.println("분자 입력하세요");
			number1 = in.nextInt();
			System.out.println("분모 입력하세요");
			number2 = in.nextInt();
		try {
			div = number1 / number2;
			System.out.printf("%d / %d = %d", number1, number2, div);
		} catch(Exception e) {
			System.out.print("0으로 나누실 수 없습니다. ");
			in.close();
		}
	}

}
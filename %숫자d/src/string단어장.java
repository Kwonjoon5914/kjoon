import java.util.Scanner;

public class string�ܾ��� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		String inputData;
		System.out.println("�ܾ �Է��ϼ��� : ");
		inputData = in.next();
		switch(inputData) {
		case "apple" :
			System.out.println("���");
			break;
		case "���" :
			System.out.println("apple");
			break;
		case "banana" :
			System.out.println("�ٳ���");
		case "�ٳ���" :
			System.out.println("banana");
		default:
			System.out.println("�𸥴�");
		}
		in.close();
	}

}

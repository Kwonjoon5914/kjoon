import java.util.Scanner;

public class string단어장 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		String inputData;
		System.out.println("단어를 입력하세요 : ");
		inputData = in.next();
		switch(inputData) {
		case "apple" :
			System.out.println("사과");
			break;
		case "사과" :
			System.out.println("apple");
			break;
		case "banana" :
			System.out.println("바나나");
		case "바나나" :
			System.out.println("banana");
		default:
			System.out.println("모른다");
		}
		in.close();
	}

}

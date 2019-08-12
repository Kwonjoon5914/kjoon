package ¹Ýº¹¹®;

public class dowhile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i = 1;
		do {
			System.out.print(i);
			i++;
		} while (i<5);
		
		int row = 2;
		do {
			int column = 1;
			do {
				System.out.printf("%4d", row * column);
				column++;
			} while (column < 10);
			System.out.println();
			row++;
		} while (row < 10);
	} 
}

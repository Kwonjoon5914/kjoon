package 반복문;

public class 별찍기 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int i=0;i<5;i++) {
			for(int k=3;k>=i;k--) {
				System.out.print(" ");
			}
			for(int j=0;j<=(i*2);j++) {
				System.out.print("*");
				}
			System.out.println();
		}
		for(int i=0;i<5;i++) {
			for(int k=0;k<=i;k++) {
				System.out.print(" ");
				}
			for(int j=6;j>=(i*2);j--) {
				System.out.print("*");
					}
			System.out.println();
			
		}
//		System.out.println('A');
//		System.out.println('\u0041');
//		System.out.println('B');
//		System.out.println('\u0042');
//		System.out.println('a');
//		System.out.println('\u0061');
//		System.out.println('b');
//		System.out.println('\u0062');
	}
}

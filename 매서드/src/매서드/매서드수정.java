package 매서드;

public class 매서드수정 {

		public static String leader() {
			return "왜?";
		}
		public static int calcPow(int pow1, int pow2) {
			int result = 1;
			for(int i=0; i<pow2; i++) {
				result = result * pow1;
			}
			return result;
		}
		public static void main(String[] args) {
			// TODO Auto-generated method stub
			int pow = 0;
			pow = calcPow(10, 3);
			System.out.println(pow);
		}
	}

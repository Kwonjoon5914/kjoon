package 매서드;

public class 매서드3 {

		// TODO Auto-generated method stub
		public static int calculator(int a, int b, String oper) {
			int result = 0; //문자열은 switch case 사용 x
			if(oper.equals("덧셈") || oper.equals("+")) {
				result = a + b;
			}	else if(oper.equals("-")) {
				result = a - b;
			}	else if(oper.equals("*")) {
				result = a * b;
			}	else if(oper.equals("/")) {
				result = a / b;
			}
			return result;
		}
		public static void main(String[] args) {
			// TODO Auto-generated method stub
			System.out.println(calculator(20, 10, "+"));
			System.out.println(calculator(20, 10, "-"));
			System.out.println(calculator(20, 10, "*"));
			System.out.println(calculator(20, 10, "/"));
		}
		}

package �ż���;

public class �ż���3 {

		// TODO Auto-generated method stub
		public static int calculator(int a, int b, String oper) {
			int result = 0; //���ڿ��� switch case ��� x
			if(oper.equals("����") || oper.equals("+")) {
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

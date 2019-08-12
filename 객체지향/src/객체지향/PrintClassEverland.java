package ��ü����;

import java.util.Scanner;

public class PrintClassEverland {

	public Scanner in = null;
	public String[] stack = new String[20];
	int count, ticket_price, total_price;
	String again = "";

	public PrintClassEverland() {
		in = new Scanner(System.in);
		count = 0;
		ticket_price = 0;
		total_price = 0;
	}

	public void printTicket(int tic_price, int tic_num, String tic_name, String ageName, String tre_name) {
		ticket_price = tic_price * tic_num;
		total_price = total_price + ticket_price;
		do {
			System.out.print("ǥ�� �߰��� �����Ͻðڽ��ϱ�? ( Y / N ) : ");
			again = in.next();
		} while (!(again.equals("Y") || again.equals("N")));
		stack[count] = String.format("%5s %6s  X %2d  %6d��  * %7s", tic_name, ageName, tic_num, ticket_price, tre_name);
		if (again.equals("Y")) {
			count++;
		} else {
			// System.out.printf("\n������ %d�� �Դϴ�.\n�����մϴ�.", total_price);
			System.out.println("\n\n\n=================== �������� ===================");
			for (int i = 0; i <= count; i++) {
				System.out.println(stack[i]);
			}
			System.out.printf("\t��ü  ���� : %d��", total_price);
			System.out.println("\n=============================================");
			System.exit(0);
		}
	}

	@Override
	protected void finalize() throws Throwable {
		in.close();
	}
}
package ��������2;

import java.util.List;
import java.util.Scanner;

public class ���class {

	public Scanner in = null;

	int count, ticket_price, total_price;
	String re = "";

	public ���class() {
		in = new Scanner(System.in);
		count = 0;
		ticket_price = 0;
		total_price = 0;
	}

	public void printTicket(List<EverlandOrderList> data, int tic_price, int tic_num, String tic_name, String ageName,
			String tre_name) {
		ticket_price = tic_price * tic_num;
		total_price = total_price + ticket_price;

		do {
			System.out.print("ǥ�� �߰��� �����Ͻðڽ��ϱ�? ( Y / N ) : ");
			re = in.next();
		} while (!(re.equals("Y") || re.equals("N")));
//			stack[count] = String.format("%5s %6s  X %2d  %6d��  * %7s", tic_name, ageName, tic_num, ticket_price, tre_name);
		if (re.equals("Y")) {
			count++;

		} else {

			System.out.println("\n\n\n=================== �������� ===================");
			for (int i = 0; i <= count; i++) {
				System.out.printf("%5s %6s  X %2d  %6d��  * %7s", tic_name, ageName, tic_num, ticket_price, tre_name);
				System.out.println();
			}
			System.out.printf("\t��ü  ���� : %d��", total_price);
			System.out.println("\n=============================================");

		}
	}

	@Override
	protected void finalize() throws Throwable {
		in.close();
	}
}
package kr.ac.kopo.ctc.kopo01.ui;

import static org.junit.Assert.assertEquals;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import kr.ac.kopo.ctc.kopo01.dao.AccountDao;
import kr.ac.kopo.ctc.kopo01.dao.AccountDaoImpl;
import kr.ac.kopo.ctc.kopo01.dao.AccountitemDaoImpl;
import kr.ac.kopo.ctc.kopo01.domain.Account;
import kr.ac.kopo.ctc.kopo01.domain.Accountitem;

public class AccountMain {

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);

		int inputType = 0, inputType1 = 0, inputType2 = 0;

		Connection conn;

		try {
			conn = DriverManager.getConnection("jdbc:mysql://192.168.56.103:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String created = transFormat.format(new Date());

			int account_id = 0;

			System.out.print("����ȭ��\n1. ����� �ۼ�\n2. ����� ��ȸ\n3. ����� ����\n4. ��� �ڷ�\n5. �׸� �ۼ�");
			System.out.println();
			inputType = in.nextInt();
			in.nextLine();
			if (inputType == 5) {

				AccountDao dao = new AccountDaoImpl();
				Account account = new Account();
				System.out.println("�׸� ��Ī�� �Է��ϼ���");
				String title = in.nextLine();

				account.setTitle(title);
				dao.create(account);
				System.out.println("�׸� ���� �Ϸ�");

			}

			if (inputType == 1) {
				AccountitemDaoImpl dao = new AccountitemDaoImpl();
				Account account = new Account();
				Accountitem accountitem = new Accountitem();

				System.out.print("��� �Է��Ͻðڽ��ϱ�?");
				account_id = in.nextInt();

				account.setId(account_id);
				in.nextLine();

				System.out.println("������ �Է��ϼ���");

				String title = in.nextLine();
				accountitem.setTitle(title);

				System.out.println("������ �Է��ϼ���");
				int income = in.nextInt();

				accountitem.setIncome(income);

				System.out.print("������ �Է��ϼ���");
				int outcome = in.nextInt();

				in.nextLine();

				accountitem.setOutcome(outcome);
				accountitem.setAccount(account);
				dao.create(accountitem);

			}

		} catch (SQLException e) {
			System.out.println(e);
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			if (inputType == 2) {
				System.out.println("����� ��ȸ\n1. ������ȸ\n2. ������ȸ\n3. ��ü��ȸ");
				inputType1 = in.nextInt();
				if (inputType1 == 1) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					System.out.println("ã�� ���̵� �Է��ϼ���");
					inputType = in.nextInt();
					Accountitem accountitem = dao.select(inputType);
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%7s%10s\n", "���� ����", "���̵�", "Ÿ��Ʋ", "���� �ݾ�");
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%10.5s%7s�� ", accountitem.getCreated(), accountitem.getId(),
							accountitem.getTitle(), accountitem.getIncome());
					assertEquals(accountitem.getId(), inputType);
				}
				if (inputType1 == 2) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					System.out.println("ã�� ���̵� �Է��ϼ���");
					inputType = in.nextInt();
					Accountitem accountitem = dao.select(inputType);
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%10s%15s%10s\n", "���� ����", "���̵�", "Ÿ��Ʋ", "���� �ݾ�");
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%10s%10s�� ", accountitem.getCreated(), accountitem.getId(),
							accountitem.getTitle(), accountitem.getOutcome());
					assertEquals(accountitem.getId(), inputType);
				}
				if (inputType1 == 3) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					List<Accountitem> aiList = dao.selectAll();
					System.out.println("-----------------------------------------------------");
					System.out.printf("%5s%5s%7s%7s%10s\n", "��¥", "���̵�", "Ÿ��Ʋ", "���� �ݾ�", "���� �ݾ�");
					System.out.println("-----------------------------------------------------");

					for (int i = 0; i < aiList.size(); i++) {
						System.out.printf("%5s%5s%10s%10d��%10d��\n", aiList.get(i).getCreated(), aiList.get(i).getId(),
								aiList.get(i).getTitle(), aiList.get(i).getIncome(), aiList.get(i).getOutcome());
					}

				}
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			if (inputType == 3) {
				System.out.println("����� ����\n1. ���� ����\n2. ���� ����\n3. ������ ����");
				inputType1 = in.nextInt();
				AccountitemDaoImpl dao = new AccountitemDaoImpl();
				Accountitem accountitem = new Accountitem();

				if (inputType1 == 1) {

					System.out.println("������ ���� ������ �ִ� ���̵� �Է��ϼ���");
					inputType = in.nextInt();

					System.out.print("������ �����Ͻðڽ��ϱ�?\n1. ���Գ��� \n2. �׸�\n3. ���Աݾ�\n");
					inputType2 = in.nextInt();
					if (inputType2 == 1) {
						System.out.println("������ ���Գ����� �Է��ϼ���");
						String inputString = in.nextLine();
						accountitem.setTitle(inputString);
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}
					if (inputType2 == 2) {
						System.out.println("������ �׸��� �Է��ϼ���");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						;
						accountitem.setId(inputType3);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}
					if (inputType2 == 3) {
						System.out.println("������ ���Աݾ��� �Է��ϼ���");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.setIncome(inputType3);
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}

				}
				if (inputType1 == 2) {

					System.out.println("������ ���� ������ �ִ� ���̵� �Է��ϼ���");
					inputType = in.nextInt();

					System.out.print("������ �����Ͻðڽ��ϱ�?\n1. ���⳻�� \n2. �׸�\n3. ����ݾ�\n");
					if (inputType2 == 1) {
						System.out.println("������ ���⳻���� �Է��ϼ���");
						String inputString = in.nextLine();
						accountitem.setTitle(inputString);
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}
					if (inputType2 == 2) {
						System.out.println("������ �׸��� �Է��ϼ���");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						;
						accountitem.setId(inputType3);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}
					if (inputType2 == 3) {
						System.out.println("������ ����ݾ��� �Է��ϼ���");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.setOutcome(inputType3);
						dao.update(accountitem);
						System.out.println("���� �Ϸ�");
					}
				}
				if (inputType1 == 3) {

					System.out.println("������ ������ �ִ� ���̵� �Է��ϼ���");

					inputType = in.nextInt();

					dao.delete(inputType);
					System.out.println("�����Ϸ�!");
					System.out.printf("%s%5s%5s%15s%10s%10s\n", "���̵�", "��¥", "Ÿ��Ʋ", "���� �ݾ�", "���� �ݾ�");
					System.out.println("-----------------------------------------------------");
					System.out.printf("%5d%5d%10s%7d��%7�� ", accountitem.getId(), accountitem.getCreated(),
							accountitem.getTitle(), accountitem.getIncome(), accountitem.getOutcome());
				}
			}

			if (inputType == 4) {
				System.out.println("��� �ڷ�\n");
				System.out.println("1. ���� ���� �� ���� ���\n2. ���� ���Դ�� ���� ����");
				inputType1 = in.nextInt();

				if (inputType1 == 1) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					List<Accountitem> aiList = dao.selectAll();
					int[] monthOutcomeSum = new int[12];
					int[] monthIncomeSum = new int[12];

					for (int i = 0; i < aiList.size(); i++) {
						for (int j = 0; j < 12; j++) {
							if (aiList.get(i).getCreated().getMonth() == j) {
								monthOutcomeSum[j] += aiList.get(i).getOutcome(); // ���� ����
								monthIncomeSum[j] += aiList.get(i).getIncome(); // ���� ����
								System.out.println(monthIncomeSum[j]);
								System.out.println(monthOutcomeSum[j]);

							}
						}
						if (aiList.get(i).getOutcome() == 0) {
							System.out.printf("%5s%5s%10s%10d��(����)\n", aiList.get(i).getCreated(),
									aiList.get(i).getId(), aiList.get(i).getTitle(), aiList.get(i).getIncome());

						}
						if (aiList.get(i).getIncome() == 0) {
//						System.out.printf("%s��%s��", monthOutcomeSum, monthIncomeSum);	
							System.out.printf("%5s%5s%10s%10d��(����)\n", aiList.get(i).getCreated(),
									aiList.get(i).getId(), aiList.get(i).getTitle(), aiList.get(i).getOutcome());

						}
					}

					System.out.print("���� ���� �� ���� ���\n");
					System.out.println("-----------------------------------------------------");
					System.out.printf("1�� ���� : %s\t1�� ���� : %s\n2�� ���� : %s\t2�� ���� : %s\n3�� ���� : %s\t3�� ���� : %s\n"
							+ "4�� ���� : %s\t4�� ���� : %s\n5�� ���� : %s\t5�� ���� : %s\n6�� ���� : %s\t6�� ���� : %s\n7�� ���� : %s\t7�� ���� : %s\n"
							+ "8�� ���� : %s\t8�� ���� : %s\n9�� ���� : %s\t9�� ���� : %s\n10�� ���� : %s\t10�� ���� : %s\n11�� ���� : %s\t11�� ���� : %s\n"
							+ "12�� ���� : %s\t12�� ���� : %s", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2150000, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

				}
				if (inputType1 == 2) {
					System.out.printf("1�� ���Դ�� ���� ���� : %s\n" + "2�� ���Դ�� ���� ���� : %s\n" + "3�� ���Դ�� ���� ���� : %s\n"
							+ "4�� ���Դ�� ���� ���� : %s\n" + "5�� ���Դ�� ���� ���� : %s\n" + "6�� ���Դ�� ���� ���� : %s\n" + "7�� ���Դ�� ���� ���� : %s\n"
							+ "8�� ���Դ�� ���� ���� : %s\n" + "9�� ���Դ�� ���� ���� : %s\n" + "10�� ���Դ�� ���� ���� : %s\n"
							+ "11�� ���Դ�� ���� ���� : %s\n" + "12�� ���Դ�� ���� ���� : %s\n");
				}

			}

		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
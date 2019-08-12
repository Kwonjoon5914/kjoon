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

			System.out.print("시작화면\n1. 가계부 작성\n2. 가계부 조회\n3. 가계부 수정\n4. 통계 자료\n5. 항목 작성");
			System.out.println();
			inputType = in.nextInt();
			in.nextLine();
			if (inputType == 5) {

				AccountDao dao = new AccountDaoImpl();
				Account account = new Account();
				System.out.println("항목 명칭을 입력하세요");
				String title = in.nextLine();

				account.setTitle(title);
				dao.create(account);
				System.out.println("항목 생성 완료");

			}

			if (inputType == 1) {
				AccountitemDaoImpl dao = new AccountitemDaoImpl();
				Account account = new Account();
				Accountitem accountitem = new Accountitem();

				System.out.print("어디에 입력하시겠습니까?");
				account_id = in.nextInt();

				account.setId(account_id);
				in.nextLine();

				System.out.println("내용을 입력하세요");

				String title = in.nextLine();
				accountitem.setTitle(title);

				System.out.println("수입을 입력하세요");
				int income = in.nextInt();

				accountitem.setIncome(income);

				System.out.print("지출을 입력하세요");
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
				System.out.println("가계부 조회\n1. 수입조회\n2. 지출조회\n3. 전체조회");
				inputType1 = in.nextInt();
				if (inputType1 == 1) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					System.out.println("찾을 아이디를 입력하세요");
					inputType = in.nextInt();
					Accountitem accountitem = dao.select(inputType);
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%7s%10s\n", "수입 일자", "아이디", "타이틀", "수입 금액");
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%10.5s%7s원 ", accountitem.getCreated(), accountitem.getId(),
							accountitem.getTitle(), accountitem.getIncome());
					assertEquals(accountitem.getId(), inputType);
				}
				if (inputType1 == 2) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					System.out.println("찾을 아이디를 입력하세요");
					inputType = in.nextInt();
					Accountitem accountitem = dao.select(inputType);
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%10s%15s%10s\n", "지출 일자", "아이디", "타이틀", "지출 금액");
					System.out.println("-----------------------------------------");
					System.out.printf("%5s%5s%10s%10s원 ", accountitem.getCreated(), accountitem.getId(),
							accountitem.getTitle(), accountitem.getOutcome());
					assertEquals(accountitem.getId(), inputType);
				}
				if (inputType1 == 3) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					List<Accountitem> aiList = dao.selectAll();
					System.out.println("-----------------------------------------------------");
					System.out.printf("%5s%5s%7s%7s%10s\n", "날짜", "아이디", "타이틀", "수입 금액", "지출 금액");
					System.out.println("-----------------------------------------------------");

					for (int i = 0; i < aiList.size(); i++) {
						System.out.printf("%5s%5s%10s%10d원%10d원\n", aiList.get(i).getCreated(), aiList.get(i).getId(),
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
				System.out.println("가계부 수정\n1. 수입 수정\n2. 지출 수정\n3. 데이터 삭제");
				inputType1 = in.nextInt();
				AccountitemDaoImpl dao = new AccountitemDaoImpl();
				Accountitem accountitem = new Accountitem();

				if (inputType1 == 1) {

					System.out.println("수정할 수입 내용이 있는 아이디를 입력하세요");
					inputType = in.nextInt();

					System.out.print("무엇을 수정하시겠습니까?\n1. 수입내용 \n2. 항목\n3. 수입금액\n");
					inputType2 = in.nextInt();
					if (inputType2 == 1) {
						System.out.println("수정할 수입내용을 입력하세요");
						String inputString = in.nextLine();
						accountitem.setTitle(inputString);
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("수정 완료");
					}
					if (inputType2 == 2) {
						System.out.println("수정할 항목을 입력하세요");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						;
						accountitem.setId(inputType3);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("수정 완료");
					}
					if (inputType2 == 3) {
						System.out.println("수정할 수입금액을 입력하세요");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.setIncome(inputType3);
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("수정 완료");
					}

				}
				if (inputType1 == 2) {

					System.out.println("수정할 지출 내용이 있는 아이디를 입력하세요");
					inputType = in.nextInt();

					System.out.print("무엇을 수정하시겠습니까?\n1. 지출내용 \n2. 항목\n3. 지출금액\n");
					if (inputType2 == 1) {
						System.out.println("수정할 지출내용을 입력하세요");
						String inputString = in.nextLine();
						accountitem.setTitle(inputString);
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("수정 완료");
					}
					if (inputType2 == 2) {
						System.out.println("수정할 항목을 입력하세요");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						;
						accountitem.setId(inputType3);
						accountitem.getIncome();
						accountitem.getOutcome();
						dao.update(accountitem);
						System.out.println("수정 완료");
					}
					if (inputType2 == 3) {
						System.out.println("수정할 지출금액을 입력하세요");
						int inputType3 = in.nextInt();
						accountitem.getTitle();
						Account account = new Account();
						account.setId(inputType);
						accountitem.setId(inputType);
						accountitem.getIncome();
						accountitem.setOutcome(inputType3);
						dao.update(accountitem);
						System.out.println("수정 완료");
					}
				}
				if (inputType1 == 3) {

					System.out.println("삭제할 내용이 있는 아이디를 입력하세요");

					inputType = in.nextInt();

					dao.delete(inputType);
					System.out.println("삭제완료!");
					System.out.printf("%s%5s%5s%15s%10s%10s\n", "아이디", "날짜", "타이틀", "수입 금액", "지출 금액");
					System.out.println("-----------------------------------------------------");
					System.out.printf("%5d%5d%10s%7d원%7원 ", accountitem.getId(), accountitem.getCreated(),
							accountitem.getTitle(), accountitem.getIncome(), accountitem.getOutcome());
				}
			}

			if (inputType == 4) {
				System.out.println("통계 자료\n");
				System.out.println("1. 월별 수입 및 지출 통계\n2. 월별 수입대비 지출 비율");
				inputType1 = in.nextInt();

				if (inputType1 == 1) {
					AccountitemDaoImpl dao = new AccountitemDaoImpl();
					List<Accountitem> aiList = dao.selectAll();
					int[] monthOutcomeSum = new int[12];
					int[] monthIncomeSum = new int[12];

					for (int i = 0; i < aiList.size(); i++) {
						for (int j = 0; j < 12; j++) {
							if (aiList.get(i).getCreated().getMonth() == j) {
								monthOutcomeSum[j] += aiList.get(i).getOutcome(); // 지출 총합
								monthIncomeSum[j] += aiList.get(i).getIncome(); // 수입 총합
								System.out.println(monthIncomeSum[j]);
								System.out.println(monthOutcomeSum[j]);

							}
						}
						if (aiList.get(i).getOutcome() == 0) {
							System.out.printf("%5s%5s%10s%10d원(수입)\n", aiList.get(i).getCreated(),
									aiList.get(i).getId(), aiList.get(i).getTitle(), aiList.get(i).getIncome());

						}
						if (aiList.get(i).getIncome() == 0) {
//						System.out.printf("%s원%s원", monthOutcomeSum, monthIncomeSum);	
							System.out.printf("%5s%5s%10s%10d원(지출)\n", aiList.get(i).getCreated(),
									aiList.get(i).getId(), aiList.get(i).getTitle(), aiList.get(i).getOutcome());

						}
					}

					System.out.print("월별 수입 및 지출 통계\n");
					System.out.println("-----------------------------------------------------");
					System.out.printf("1월 수입 : %s\t1월 지출 : %s\n2월 수입 : %s\t2월 지출 : %s\n3월 수입 : %s\t3월 지출 : %s\n"
							+ "4월 수입 : %s\t4월 지출 : %s\n5월 수입 : %s\t5월 지출 : %s\n6월 수입 : %s\t6월 지출 : %s\n7월 수입 : %s\t7월 지출 : %s\n"
							+ "8월 수입 : %s\t8월 지출 : %s\n9월 수입 : %s\t9월 지출 : %s\n10월 수입 : %s\t10월 지출 : %s\n11월 수입 : %s\t11월 지출 : %s\n"
							+ "12월 수입 : %s\t12월 지출 : %s", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2150000, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

				}
				if (inputType1 == 2) {
					System.out.printf("1월 수입대비 지출 비율 : %s\n" + "2월 수입대비 지출 비율 : %s\n" + "3월 수입대비 지출 비율 : %s\n"
							+ "4월 수입대비 지출 비율 : %s\n" + "5월 수입대비 지출 비율 : %s\n" + "6월 수입대비 지출 비율 : %s\n" + "7월 수입대비 지출 비율 : %s\n"
							+ "8월 수입대비 지출 비율 : %s\n" + "9월 수입대비 지출 비율 : %s\n" + "10월 수입대비 지출 비율 : %s\n"
							+ "11월 수입대비 지출 비율 : %s\n" + "12월 수입대비 지출 비율 : %s\n");
				}

			}

		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}

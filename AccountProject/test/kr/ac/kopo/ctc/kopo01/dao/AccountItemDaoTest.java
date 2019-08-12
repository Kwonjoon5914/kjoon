package kr.ac.kopo.ctc.kopo01.dao;

import static org.junit.Assert.assertEquals;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import kr.ac.kopo.ctc.kopo01.domain.Account;
import kr.ac.kopo.ctc.kopo01.domain.Accountitem;

public class AccountItemDaoTest {

//	private static void testCreate() throws ClassNotFoundException, SQLException {
//		@Test
//		public void testItemCreate() {
//			AccountitemDaoImpl dao = new AccountitemDaoImpl();
//			
//			Account account = new Account();
//			account.setId(8);
//			
//			Accountitem accountitem = new Accountitem();
//			accountitem.setTitle("개인용");
//			accountitem.setIncome(30000);
//			accountitem.setOutcome(15000);
//			accountitem.setAccount(account);
//			dao.create(accountitem);			
//		}
//		@Test
//		public void testItemSelect() {
//			AccountitemDaoImpl dao = new AccountitemDaoImpl();
//			Accountitem accountitem = dao.select(16);
//			System.out.println(accountitem.getId());
//			System.out.println(accountitem.getTitle());
//			assertEquals(accountitem.getTitle(), "개인용");
//		}
		
//		@Test
//		public void testItemSelectAll() {
//			AccountitemDaoImpl dao = new AccountitemDaoImpl();
//			List<Accountitem> accountitem = new ArrayList<Accountitem>();
//			accountitem = dao.selectAll();
//			for (int i=0; i<accountitem.size();i++) {
//				System.out.println(accountitem.get(i));
//			}
//		}
		@Test
		public void testItemUpdate() {
			AccountitemDaoImpl dao = new AccountitemDaoImpl();
			Accountitem accountitem = new Accountitem();
			Account account = new Account();
			account.setId(1);
			accountitem.setId(4);
			accountitem.setTitle("가나초콜릿");
			accountitem.setAccount(account);
			accountitem.setIncome(0);
			accountitem.setOutcome(10000);
			dao.update(accountitem);
		}

//		@Test
//		public void testItemDelete() {
//			AccountitemDaoImpl dao = new AccountitemDaoImpl();
//			Accountitem accountitem = dao.delete(13);
//		}
//			
}
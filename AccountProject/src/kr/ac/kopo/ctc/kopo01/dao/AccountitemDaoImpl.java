package kr.ac.kopo.ctc.kopo01.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.ac.kopo.ctc.kopo01.domain.Account;
import kr.ac.kopo.ctc.kopo01.domain.Accountitem;

public class AccountitemDaoImpl extends GenericDaoImpl<Accountitem> implements AccountitemDao {

	@Override
	public Accountitem create(Accountitem accountitem) {
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo", "root", "dcsw01");
			Statement stmt = conn.createStatement();
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String created = transFormat.format(new Date());

			stmt.execute("insert into Accountitem (title, created, account, income, outcome)" + " values ('"
					+ accountitem.getTitle() + "', '" + created + "' , '" + accountitem.getAccount().getId() + "' , '"
					+ accountitem.getIncome() + "' , '" + accountitem.getOutcome() + "');");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		System.out.println("create");
		return null;
	}

	@Override
	public Accountitem select_overriding(Statement stmt, int id) {
		Accountitem ret = new Accountitem();
		Account account = new Account();
		try {
			ResultSet rset = stmt.executeQuery(
					"select a.id, a.title, a.created, a.account," + " a.income, a.outcome, b.id, b.title, b.created"
							+ " from Accountitem a, Account b where a.id = " + id + " AND a.account = b.id");
			if (rset.next()) {
				ret.setId(rset.getInt(1));
				ret.setTitle(rset.getString(2));
				ret.setCreated(rset.getDate(3));
				account.setId(rset.getInt(4));
				ret.setIncome(rset.getInt(5));
				ret.setOutcome(rset.getInt(6));
				account.setTitle(rset.getString(8));
				account.setCreated(rset.getDate(9));

				ret.setAccount(account);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public List<Accountitem> selectAll_overriding(Statement stmt) {
		List<Accountitem> listAccountitem = new ArrayList<Accountitem>();
		try {
			ResultSet rset = stmt.executeQuery("select * from Accountitem");

			while (rset.next()) {
Accountitem accountitem = new Accountitem();
				
				
				AccountDaoImpl accountDao = new AccountDaoImpl();
				
				accountitem.setId(rset.getInt(1));
				accountitem.setTitle(rset.getString(2));
				accountitem.setCreated(rset.getDate(3));
				
				Account account = accountDao.select(rset.getInt("account"));
				
				accountitem.setAccount(account);
				accountitem.setIncome(rset.getInt(5));
				accountitem.setOutcome(rset.getInt(6));
				

				listAccountitem.add(accountitem);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listAccountitem;
	}

	@Override
	public List<Accountitem> selectAllContainingTitle_overriding(Statement stmt, String title) {
		List<Accountitem> listAccountitem = new ArrayList<Accountitem>();
		try {
			ResultSet rset = stmt.executeQuery("SELECT * FROM Accountitem;");

			while (rset.next()) {
				Accountitem accountitem = new Accountitem();
				
				
				AccountDaoImpl accountDao = new AccountDaoImpl();
				
				accountitem.setId(rset.getInt(1));
				accountitem.setTitle(rset.getString(2));
				accountitem.setCreated(rset.getDate(3));
				
				Account account = accountDao.select(rset.getInt("account_id"));
				
				accountitem.setAccount(account);
				accountitem.setIncome(5);
				accountitem.setOutcome(6);
				

				listAccountitem.add(accountitem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listAccountitem;
	}

	@Override
	public Accountitem update_overriding(Statement stmt, Accountitem accountitem) {
		Accountitem ret = new Accountitem();
		try {
			stmt.execute("update Accountitem set title = '" + accountitem.getTitle() + "'," + "income = "
					+ accountitem.getIncome() + "," + "outcome = " + accountitem.getOutcome() + "," + "account = "
					+ accountitem.getAccount().getId() + " where id=" + accountitem.getId() + ";");
//			if (rset.next()) {
//				ret.setId(rset.getInt(1));
//				ret.setTitle(rset.getString(2));
//				ret.setCreated(rset.getDate(3));
//			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public Accountitem delete_overriding(Statement stmt, int id) {
		Accountitem ret = new Accountitem();
		try {
			stmt.execute("delete from Accountitem where id=" + id + ";");
//			if (rset.next()) {
//				ret.setId(rset.getInt(1));
//				ret.setTitle(rset.getString(2));
//				ret.setCreated(rset.getDate(3));
//			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public Accountitem create_overriding(Statement stmt, Accountitem t) {
		// TODO Auto-generated method stub
		return null;
	}
}
package kr.ac.kopo.ctc.kopo01.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.ac.kopo.ctc.kopo01.domain.Account;

public class AccountDaoImpl extends GenericDaoImpl<Account> implements AccountDao {

	@Override
	public Account create_overriding(Statement stmt, Account account) {

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String created = transFormat.format(new Date());

		try {
			stmt.execute(
					"insert into Account (title, created) values ('" + account.getTitle() + "', '" + created + "');");
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Account select_overriding(Statement stmt, int id) {
		Account ret = new Account();
		try {
			ResultSet rset = stmt.executeQuery("select id, title, created from Account where id=" + id + ";");
			if (rset.next()) {
				ret.setId(rset.getInt(1));
				ret.setTitle(rset.getString(2));
				ret.setCreated(rset.getDate(3));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public List<Account> selectAll_overriding(Statement stmt) {
		List<Account> listAccount = new ArrayList<Account>();
		try {
			ResultSet rset = stmt.executeQuery("select id, title, created from Account;");

			while (rset.next()) {
				Account account = new Account();
				account.setId(rset.getInt(1));// id

				listAccount.add(account);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listAccount;
	}

	@Override
	public List<Account> selectAllContainingTitle_overriding(Statement stmt, String title) {
		List<Account> listAccount = new ArrayList<Account>();
		try {
			ResultSet rset = stmt
					.executeQuery("select id, title, created from Account where title like '%" + title + "%';");

			while (rset.next()) {
				Account account = new Account();
				account.setId(rset.getInt(1));// id

				listAccount.add(account);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listAccount;
	}

	@Override
	public Account update_overriding(Statement stmt, Account account) {
		Account ret = new Account();
		try {
			stmt.execute("update Account set title = '" + account.getTitle() + "' where id=" + account.getId() + ";");
			
//			if (rset.next()) {
//				ret.setId(rset.getInt(1));
//				ret.setTitle(rset.getString(2));
//				ret.setCreated(rset.getDate(3));
//			}
//			
			// stmt.execute("update Account set title = '°¡°èºÎ' where id=" + id + ";");
			// ret = select_overriding(stmt, id);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public Account delete_overriding(Statement stmt, int id) {
		Account ret = new Account();
		try {
			ResultSet rset = stmt.executeQuery("delete * from Account where id=" + id + ";");
			if (rset.next()) {
				ret.setId(rset.getInt(1));
				ret.setTitle(rset.getString(2));
				ret.setCreated(rset.getDate(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

}
package kr.ac.kopo.ctc.kopo01.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public abstract class GenericDaoImpl<T> implements GenericDao<T> {

	@Override
	public T create(T t) {
		T ret = null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = create_overriding(stmt, t);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public T select(int id) {
		T ret = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = select_overriding(stmt, id);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<T> selectAll() {
		List<T> ret = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = selectAll_overriding(stmt);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<T> selectAllContainingTitle(String title) {
		List<T> ret = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = selectAllContainingTitle_overriding(stmt, title);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	@Override
	public T update(T t) {
		T ret = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = update_overriding(stmt, t);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public T delete(int id) {
		T ret = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.56.102:3306/kopo?serverTimezone=UTC", "root", "dcsw01");
			Statement stmt = conn.createStatement();

			ret = delete_overriding(stmt, id);

			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
//	@Override
//	public T create_overriding(Statement stmt, T t) {
//		return null;
//	}
//	@Override
//	public T select_overriding(Statement stmt, int id) {
//		return null;
//	}
//	@Override
//	public List<T> selectAll_overriding(Statement stmt) {
//		return null;
//	}
//	@Override
//	public List<T> selectAllContainingTitle_overriding(Statement stmt, String title) {
//		return null;
//	}
//	@Override
//	public T update_overriding(Statement stmt, int id) {
//		return null;
//	}
//	@Override
//	public T delete_overriding(Statement stmt, int id) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}

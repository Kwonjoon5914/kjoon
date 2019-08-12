package kr.ac.kopo.ctc.kopo01.dao;

import java.sql.Statement;
import java.util.List;

public interface GenericDao<T> {
	// C
	T create(T t);
	T create_overriding(Statement stmt, T t);
	// R
	T select(int id);
	T select_overriding(Statement stmt, int id);
	
	List<T> selectAll_overriding(Statement stmt);
	List<T> selectAll();

	List<T> selectAllContainingTitle_overriding(Statement stmt, String title);
	List<T> selectAllContainingTitle(String title);
	// U
	T update_overriding(Statement stmt, T t);	
	T update(T t);
	// D
	T delete_overriding(Statement stmt, int id);
	T delete(int id);

}

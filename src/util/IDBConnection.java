package util;

import java.sql.ResultSet;

public interface IDBConnection {
	
	void connSQL();
	
	void deconnSQL();
	
	ResultSet selectSQL(String sql);
	
	boolean insertSQL(String sql);
	
	boolean deleteSQL(String sql);
	
	boolean updateSQL(String sql);

}

package br.com.sixfit.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

public final class DAOUtil {

    public static PreparedStatement prepareStatement (Connection connection, String sql, boolean returnGeneratedKeys, List<Object> values)
            throws SQLException {
        
    	PreparedStatement statement = connection.prepareStatement(sql,
            returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS);
        setValues(statement, values);
        return statement;
    }

    public static void setValues(PreparedStatement statement, List<Object> values) throws SQLException {
    	
    	int index = 0;
    	for (Iterator iterator = values.iterator(); iterator.hasNext();) {
			Object object = (Object) iterator.next();			
			statement.setObject(index , object);
			index++;
		}
    }

    public static Date toSqlDate(java.util.Date date) {
     return (date != null) ? new Date(date.getTime()) : null;
    }
}
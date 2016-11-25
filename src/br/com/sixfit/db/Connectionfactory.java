package br.com.sixfit.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectionfactory {

    private static final String PROPERTY_URL = "url";
    private static final String PROPERTY_DRIVER = "driver";
    private static final String PROPERTY_USERNAME = "username";
    private static final String PROPERTY_PASSWORD = "password";
    private static final String PROPERTY_DB_NAME = "sixfit";
    
    private String url;
    private String username;
    private String password;
    
    private Connectionfactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public static Connectionfactory getInstance() throws Exception {
    	Connectionfactory instance;
    	
        DBProperties properties = new DBProperties(PROPERTY_DB_NAME);        
        String url = properties.getProperty(PROPERTY_URL, true);
        String driverName = properties.getProperty(PROPERTY_DRIVER, false);
        String password = properties.getProperty(PROPERTY_PASSWORD, false);
        String username = properties.getProperty(PROPERTY_USERNAME, password != null);
        

	    try {
	    	Class.forName(driverName);
	    } catch (ClassNotFoundException e) {
	    	e.printStackTrace();
	    }
	    
	    instance = new Connectionfactory(url, username, password);

        return instance;
    }

    public Connection getConnection() throws SQLException {
    	return DriverManager.getConnection(url, username, password);
    }
}

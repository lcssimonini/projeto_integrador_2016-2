package br.com.sixfit.db;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DBProperties {

    private static final String PROPERTIES_FILE = "db.properties";
    private static final Properties PROPERTIES = new Properties();

    static {
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream propertiesFile = classLoader.getResourceAsStream(PROPERTIES_FILE);

        try {
            PROPERTIES.load(propertiesFile);
        } catch (IOException e) {
        	e.printStackTrace();
        }
    }

    private String dbName;

    public DBProperties(String dbName) throws Exception {
        this.dbName = dbName;
    }

    public String getProperty(String key, boolean mandatory) throws Exception {
        String fullKey = this.dbName + "." + key;
        String property = PROPERTIES.getProperty(fullKey);

        if (property == null || property.trim().length() == 0) {
            if (mandatory) {
                throw new Exception("A propriedade '" + fullKey + "'"
                    + " não existe no arquivo '" + PROPERTIES_FILE + "'.");
            } else {
                property = null;
            }
        }

        return property;
    }
}

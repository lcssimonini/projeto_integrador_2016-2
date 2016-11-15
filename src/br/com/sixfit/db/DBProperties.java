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

    private String key;

    public DBProperties(String specificKey) throws Exception {
        this.key = specificKey;
    }

    public String getProperty(String key, boolean mandatory) throws Exception {
        String fullKey = key + "." + key;
        String property = PROPERTIES.getProperty(fullKey);

        if (property == null || property.trim().length() == 0) {
            if (mandatory) {
                throw new Exception("Required property '" + fullKey + "'"
                    + " is missing in properties file '" + PROPERTIES_FILE + "'.");
            } else {
                // Make empty value null. Empty Strings are evil.
                property = null;
            }
        }

        return property;
    }
}

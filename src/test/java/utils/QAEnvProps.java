package utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class QAEnvProps {
    private static Properties properties=new Properties();
    public static void init(){
        try {
            properties.load(new FileInputStream("src/test/resources/product.properties"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
    public static String getValue(String key){
        return properties.getProperty(key);


    }
}
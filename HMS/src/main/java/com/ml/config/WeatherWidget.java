package com.ml.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class WeatherWidget {
    private static final String CONFIG_FILE = "/app.properties"; // Note the leading '/' indicating the root of the classpath
    private static final String API_KEY_PROPERTY = "weatherApiKey";

    public static String getWeatherApiKey() {
        try (InputStream input = WeatherWidget.class.getResourceAsStream(CONFIG_FILE)) {
            Properties prop = new Properties();
            if (input != null) {
                prop.load(input);
                return prop.getProperty(API_KEY_PROPERTY);
            } else {
                System.err.println("Unable to load " + CONFIG_FILE + ". Make sure the file is in the classpath.");
                return null;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}

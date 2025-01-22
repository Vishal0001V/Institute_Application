package com.cjc.app;  // Specifies the package name for the application. It's used to organize your classes.

import org.springframework.boot.SpringApplication;  // Imports SpringApplication class from Spring Boot framework, which is used to run the application.
import org.springframework.boot.autoconfigure.SpringBootApplication;  // Imports the SpringBootApplication annotation that indicates this class is a Spring Boot application.

@SpringBootApplication  // This annotation marks the class as a Spring Boot application, enabling auto-configuration and component scanning.
public class Application {  // Defines the main class of the Spring Boot application.

    public static void main(String[] args) {  // The main method, which is the entry point to the program. It is executed first when the application runs.
        SpringApplication.run(Application.class, args);  // Runs the Spring Boot application by invoking the SpringApplication.run() method.
    }

}  // Ends the Application class definition.

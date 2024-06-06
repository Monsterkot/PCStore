package com.antonshypitsa.spring.store.mystore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class SpringMystoreApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(SpringMystoreApplication.class, args);
    }


    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SpringMystoreApplication.class);
    }

}

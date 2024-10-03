package com.example.nhom5webapp_laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class Nhom5WebAppLapTopShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(Nhom5WebAppLapTopShopApplication.class, args);
	}

}

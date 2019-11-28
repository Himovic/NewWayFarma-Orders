package com.webapp.nwforder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.webapp.nwforder"})
public class NwfOrderApplication {

	public static void main(String[] args) {
		SpringApplication.run(NwfOrderApplication.class, args);
	}

}

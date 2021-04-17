package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EntityScan("com.example.model")  // look for entity pkg
@EnableJpaRepositories(basePackages = {"com.example.repo"})
@ComponentScan(basePackages = {"com.example.controller","com.example.service"})
@SpringBootApplication
public class FilmopediaApplication {

	public static void main(String[] args) {
		SpringApplication.run(FilmopediaApplication.class, args);
	}

}

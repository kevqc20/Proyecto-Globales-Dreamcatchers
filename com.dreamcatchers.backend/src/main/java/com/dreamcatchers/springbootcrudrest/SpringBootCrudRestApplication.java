package com.dreamcatchers.springbootcrudrest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
@EnableConfigurationProperties
@EntityScan(basePackages = {"com.dreamcatchers.springbootcrudrest.model"})  // scan JPA entities
public class SpringBootCrudRestApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootCrudRestApplication.class, args);
	}
}

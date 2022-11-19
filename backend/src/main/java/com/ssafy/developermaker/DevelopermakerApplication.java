package com.ssafy.developermaker;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
@RequiredArgsConstructor
public class DevelopermakerApplication {

	private final InitClass initClass;

	public static void main(String[] args) {
		SpringApplication.run(DevelopermakerApplication.class, args);
	}

}

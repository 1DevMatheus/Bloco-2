package org.generation.projetospring.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // informa que a classe é um controller
@RequestMapping("/index")//Informa o endereço web


public class projetospringController {
	
		@GetMapping // pega informação do metodo e exibe
		public String hello() {
			return ("Hello Wolrd! Seja, bem vinda ao Spring");
		}
		

		@GetMapping("/bsm")
			public String bsm() {
			return ("Bsm's da Generation Brasil!");
		}
		
		@GetMapping("/obj")
			public String obj() {
			return ("Objetivo de aprendizagem da semana...");
		}
}

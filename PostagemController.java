package org.generatio.blogpessoal.controller;

import java.util.List;

import org.generatio.blogpessoal.model.Postagem;
import org.generatio.blogpessoal.repository.PostagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/postagem")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class PostagemController {

	@Autowired
	private PostagemRepository postagemRepository;
	
		@GetMapping
		public ResponseEntity<List<Postagem>> GetAll(){
			return ResponseEntity.ok(postagemRepository.findAll());
		}
}

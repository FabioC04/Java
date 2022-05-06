package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Operazioni {

	@GetMapping("/somma")
	public int somma(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
		int somma = num1 + num2;
		return somma;
	}
	
	@GetMapping("/differenza")
	public int differenza(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
		int differenza = num1 - num2;
		return differenza;
	}
	
	@GetMapping("/prodotto")
	public int prodotto(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
		int prodotto = num1 * num2;
		return prodotto;
	}
	
	@GetMapping("/quoziente")
	public int quoziente(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
		int quoziente = num1 / num2;
		return quoziente;
	}

}

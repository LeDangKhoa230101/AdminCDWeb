package com.example.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String homePage() {
		return "index";
	}
	
	@GetMapping("/products")
	public String productsPage() {
		return "products";
	}
	
	@GetMapping("/products-edit")
	public String productsEditPage() {
		return "products-edit";
	}
	
	@GetMapping("/products-add")
	public String productsAddPage() {
		return "products-add";
	}
	
	@GetMapping("/orders")
	public String ordersPage() {
		return "orders";
	}
	
	@GetMapping("/orders-detail")
	public String ordersDetailPage() {
		return "orders-detail";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "login-page";
	}
	
	@GetMapping("/register")
	public String registerPage() {
		return "register-page";
	}
}
















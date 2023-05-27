package com.example.admin.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.admin.model.Product;
import com.example.admin.repository.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	private ProductRepository productRepository;
	
	@GetMapping("/products")
	public String productsPage(Model model, @RequestParam(name = "page", defaultValue = "0") int page) {
		Pageable pageable = PageRequest.of(page, 4);
		Page<Product> products = productRepository.findAll(pageable);
        model.addAttribute("products", products.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", products.getTotalPages());
        
		return "products";
	}
	
	@GetMapping("/products-edit/{productid}")
	public String productsEditPage(@PathVariable Integer productid, Model model) {
		Product product = productRepository.findByProductid(productid);
		model.addAttribute("product", product);
		
		return "products-edit";
	}
	
	
	
	@GetMapping("/products-add")
	public String productsAddPage() {
		return "products-add";
	}
	
}

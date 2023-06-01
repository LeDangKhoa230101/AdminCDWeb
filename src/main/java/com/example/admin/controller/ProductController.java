package com.example.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@PostMapping("/products-edit/{productid}")
	public String productsEdit(@PathVariable Integer productid, Model model, @ModelAttribute Product prod) {
		
		Product product = productRepository.findByProductid(productid);
		product.setProductName(prod.getProductName());
		product.setDescription(prod.getDescription());
		product.setPrice(prod.getPrice());
		product.setDiscount(prod.getDiscount());
		
		productRepository.save(product); 
		
		model.addAttribute("product", product);
		
		return "products-edit";
	}
	
	@PostMapping("/products")
	public String deleteProduct(@RequestParam Integer productid, Model model, 
			@RequestParam(name = "page", defaultValue = "0") int page) {
		productRepository.deleteByProductid(productid);

		Pageable pageable = PageRequest.of(page, 4);
		Page<Product> products = productRepository.findAll(pageable);
        model.addAttribute("products", products.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", products.getTotalPages());
		
		return "products";
	}
	
	
	@GetMapping("/products-add")
	public String productsAddPage() {
		return "products-add";
	}
	
}

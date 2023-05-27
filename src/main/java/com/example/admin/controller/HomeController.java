package com.example.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.admin.model.Orders;
import com.example.admin.model.User;
import com.example.admin.repository.OrdersRepository;
import com.example.admin.repository.UserRepository;

@Controller
public class HomeController {
	
	@Autowired
	private OrdersRepository ordersRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/")
	public String showOrderAll(Model model) {
		List<Orders> orders = ordersRepository.findAll();
		model.addAttribute("orders", orders);
		
		List<User> users = userRepository.findAll();
		model.addAttribute("users", users);
		return "index";
	}
	
	@GetMapping("/orders")
	public String ordersPage() {
		return "orders";
	}
	
	@GetMapping("/orders-detail")
	public String ordersDetailPage() {
		return "orders-detail";
	}
}
















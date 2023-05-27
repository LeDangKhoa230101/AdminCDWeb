package com.example.admin.controller;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.admin.model.User;
import com.example.admin.repository.UserRepository;

@RestController
public class UserRestController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/check-email")
    public boolean checkEmailExist(@RequestParam String email) {
		User user = userRepository.findByEmail(email);
        if (user != null) {
        	return true;
        } 
		return false;
    }
}

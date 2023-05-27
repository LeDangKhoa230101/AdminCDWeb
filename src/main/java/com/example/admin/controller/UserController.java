package com.example.admin.controller;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.admin.model.User;
import com.example.admin.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/register")
	public String showRegisterPage() {
		return "register-page";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute User user) {
		userRepository.save(user);
		
		return "redirect:/login";
	}

	@GetMapping("/login")
	public String showLoginPage(Model model) {
		return "login-page";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, 
			HttpSession session) {
		User user = userRepository.findByEmail(email);
		
		// xác thực user và lưu thông tin vào session
		if (user != null && user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			return "redirect:/";
		} else {
			return "redirect:/login?error";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/login";
	}
	
}






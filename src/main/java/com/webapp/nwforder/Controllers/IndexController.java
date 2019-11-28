package com.webapp.nwforder.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.webapp.nwforder.Models.User;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public String getIndexPage(Model model) {
		model.addAttribute("user",new User());
		return "index/index";
	}
	
	@GetMapping("/register")
	public String showRegisterPage(Model model) {
		model.addAttribute("user",new User());
		return "index/register";
	}
	
	@GetMapping("/forget")
	public String showForgetPasswordPage() {
		return "index/forget";
	}
}

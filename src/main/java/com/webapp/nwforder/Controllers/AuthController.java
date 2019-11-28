package com.webapp.nwforder.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.webapp.nwforder.Models.Customer;
import com.webapp.nwforder.Models.User;
import com.webapp.nwforder.Services.UserRepository;
import com.webapp.nwforder.Services.iUser;

@Controller
public class AuthController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private iUser iUser;
	
	@Autowired
	private HttpSession session;
	
	@PostMapping("/login")
	public String confirmLogin(@Valid @ModelAttribute("user") User user, Model model
			,BindingResult bindingResult) {
		if(bindingResult.hasFieldErrors("email")||bindingResult.hasFieldErrors("password")) {
			//form error
			model.addAttribute("error","error");
			return "index/index";
		}else {
			List<User> findByEmail = userRepository.findByEmail(user.getEmail());
			if(findByEmail.size()== 0) {
				//no account
				model.addAttribute("errorBlank","blank");
				return "index/index";
			}else {
				try {
					User loginUser = null;
					loginUser = iUser.login(user.getEmail(),user.getPassword());
					if(loginUser != null) {
						if(loginUser.getEmployee() != null) {
							String function = loginUser.getEmployee().getFunction();
							if(function.equalsIgnoreCase("admin")) {
								//show admin page
								session.setAttribute("admin",loginUser);
								return "welcome/admin/admin";
							}else if(function.equalsIgnoreCase("stock")) {
								//show stock page
								session.setAttribute("product",loginUser);
								return "welcome/product";
							}else if(function.equalsIgnoreCase("commercial")) {
								//show commercial page
								session.setAttribute("commercial",loginUser);
								return "welcome/commercial";
							}else {
								//no function
								return "index/index";
							}
						}else if(loginUser.getCustomer() != null) {
							//show customer page
							session.setAttribute("customer",loginUser);
							return "welcome/customer";
						}else {
							//error unkowen
							model.addAttribute("errorUnkowen","fail");
							return "index/index";
						}
					}else {
						//error unknowen
						model.addAttribute("errorUnkowen","fail");
						return "index/index";
					}
				}catch(IndexOutOfBoundsException ex) {
					//email || password incorrect
					model.addAttribute("errorLogin","fail");
					return "index/index";
				}
			}
		}
	}

	
	@PostMapping("/confirmRegister")
	public String confirmRegister(@Valid @ModelAttribute("customer") Customer customer, 
			BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			model.addAttribute("error","error");
			return "index/register";
		}else {
			User user = new User(customer.getName(),customer.getEmail(),
					customer.getPassword(),customer.getContactNumber());
			Customer regCustomer = new Customer(customer.getType(),customer.getCompanyName(),
					customer.getAddress(),customer.getCity());
			user.setCustomer(regCustomer);
			userRepository.save(user);
			model.addAttribute("successRegister","successRegister");
			return "index/index";
		}
	}
	
	@PostMapping("/logout")
	public String logout(Model model) {
		session.invalidate();
		model.addAttribute("logout","logout");
		return "index/index";
	}
}

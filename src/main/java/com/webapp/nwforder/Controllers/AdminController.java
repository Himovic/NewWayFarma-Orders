package com.webapp.nwforder.Controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.webapp.nwforder.Functions.Ressources;
import com.webapp.nwforder.Models.Employee;
import com.webapp.nwforder.Models.User;
import com.webapp.nwforder.Services.EmployeeRepository;
import com.webapp.nwforder.Services.iEmployee;

@Controller
public class AdminController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private iEmployee intEmployee;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@GetMapping("/account")
	public String showAccountPage(Model model) {
		User user = (User) session.getAttribute("admin");
		model.addAttribute("employee",user.getEmployee());
		return "welcome/admin/account";
	}
	
	@GetMapping("/addEmployee")
	public String showAddEmployeePage(Model model) {
		model.addAttribute("employee",new Employee());
		return "welcome/admin/addEmployee";
	}
	
	@GetMapping("/tasks")
	public String showEmployeeTasksPage(Model model) {
		model.addAttribute("employee",new Employee());
		return "welcome/admin/tasks";
	}
	
	@PostMapping("/confirmAccount")
	public String confirmAccountInfo(@Valid @ModelAttribute("employee") Employee employee, 
			BindingResult bindingResult, Model model) {
		if(bindingResult.hasFieldErrors("name") || bindingResult.hasFieldErrors("email") 
				|| bindingResult.hasFieldErrors("contactNumber") || 
				bindingResult.hasFieldErrors("function")) {
			model.addAttribute("errorBlank","errorBlank");
			return "welcome/admin/account";
		}else {
			boolean resultUpdate = intEmployee.updateById(employee.getId());
			if(!resultUpdate) {
				model.addAttribute("errorUnknowen","errorUnknowen");
				return "welcome/admin/account";
			}else {
				model.addAttribute("updateSuccess","updateSuccess");
				return "welcome/admin/account";
			}
		}
	}
	
	@PostMapping("/confirmAddEmployee")
	public String confirmAddEmployee(@Valid @ModelAttribute("employee") Employee employee,
			BindingResult bindingResult, Model model) {
		if(bindingResult.hasFieldErrors("name") || bindingResult.hasFieldErrors("email") 
				|| bindingResult.hasFieldErrors("contactNumber") || 
				bindingResult.hasFieldErrors("function")) {
			model.addAttribute("errorBlank","errorBlank");
			return "welcome/admin/addEmployee";
		}else {
			String password = Ressources.generatePassword();
			User user = new User(employee.getName(),employee.getEmail(),password,employee.getContactNumber());
			Employee newEmployee = new Employee(employee.getFunction());
			newEmployee.setUserEmp(user);
			employeeRepository.save(newEmployee);
			//TODO add a script to send the password to the employee email
			model.addAttribute("addSuccess","addSuccess");
			return "welcome/admin/addEmployee";
		}
	}
	
	@GetMapping("/listEmployee")
	public String listEmployee(Model model) {
		Iterable<Employee> itEmployee = employeeRepository.findAll();
		List<Employee> listEmployee = new ArrayList<>();
		for(Employee employee : itEmployee) {
			listEmployee.add(employee);
		}
		model.addAttribute("allEmployee",listEmployee);
		return "welcome/admin/listEmployee";
	}
	
	@PostMapping("/delete")
	public ResponseEntity<?> deleteEmployee(@Valid @RequestBody Long id, Errors errors) {
		if(errors.hasErrors()) {
			return ResponseEntity.badRequest().body("error");
		}else {
			employeeRepository.deleteById(id);
			return ResponseEntity.ok("success");
		}
	}
}

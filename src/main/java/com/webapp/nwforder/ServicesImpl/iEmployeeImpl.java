package com.webapp.nwforder.ServicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.webapp.nwforder.Models.Employee;
import com.webapp.nwforder.Models.User;
import com.webapp.nwforder.Services.EmployeeRepository;
import com.webapp.nwforder.Services.iEmployee;

@Component
public class iEmployeeImpl implements iEmployee {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private EmployeeRepository employeeRepository; 
	
	@Override
	public boolean updateById(Long id) {
		
		Employee employee = employeeRepository.findById(id).get();
		User user = employee.getUserEmp();
		int updateUser = jdbcTemplate.update("UPDATE user SET name = ?, email = ?, contactNumber = ? WHERE id = ?", 
				new Object[] {user.getName(),user.getEmail(),user.getContactNumber(),user.getId()});
		if(updateUser != 0) {
			int updateEmployee = jdbcTemplate.update("UPDATE employee SET function = ? WHERE id = ?",
					new Object[] {employee.getFunction(),employee.getId()});
			if(updateEmployee != 0) {
				return true;
			}else {
				return false;
			}
		}else {
			return false;
		}
	}

}

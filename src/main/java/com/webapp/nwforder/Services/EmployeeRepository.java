package com.webapp.nwforder.Services;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import com.webapp.nwforder.Models.Employee;

@Component("employeeRepository")
public interface EmployeeRepository extends CrudRepository<Employee,Long>{
	 
	Optional<Employee> findById(Long id);
	void deleteById(Long id);
	Iterable<Employee> findAll();
}

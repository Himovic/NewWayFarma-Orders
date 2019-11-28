package com.webapp.nwforder.Services;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import com.webapp.nwforder.Models.User;

@Component("userRepository")
public interface UserRepository extends CrudRepository<User, Long> {
	
	List<User> findByEmail(String email);
}

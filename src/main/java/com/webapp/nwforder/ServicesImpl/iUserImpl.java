package com.webapp.nwforder.ServicesImpl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.webapp.nwforder.Models.User;
import com.webapp.nwforder.Services.iUser;

@Component
public class iUserImpl implements iUser {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("SELECT * FROM entreprise WHERE email = ? AND password = ?"
				, new Object[] {email,password},(rs,rowNum)->
				Optional.of(new User
						(rs.getLong("id"), rs.getString("name"), rs.getString("email"),
								rs.getString("password"),rs.getString("contactNumber")
								))
				).get(0).get();
	}

}

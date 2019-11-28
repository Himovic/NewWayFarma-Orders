package com.webapp.nwforder.Services;

import com.webapp.nwforder.Models.User;

public interface iUser {
	
	public User login(String email,String password);
}

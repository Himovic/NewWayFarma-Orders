package com.webapp.nwforder.Functions;

import net.bytebuddy.utility.RandomString;

public class Ressources {
	
	public static String generatePassword() {
		return RandomString.make(8);
	}
}

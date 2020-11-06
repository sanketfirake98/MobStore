package com.sanket.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Data {

	@Id
	private String username;
	private String email;
	private String passwords;
	
   
	public String getUsername() {
		
		return username;
	}
	public void setUsername(String username) {
	    
		this.username = username;
		
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Data [username=" + username + ", passwords=" + passwords + ", email=" + email + "]";
	}
	
	
}

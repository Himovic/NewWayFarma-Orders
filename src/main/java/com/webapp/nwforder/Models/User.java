package com.webapp.nwforder.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
		
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "contactNumber")
	private String contactNumber;
	
	@OneToOne
	@JoinColumn(name = "userEmpId")
	private Employee employee;
	
	@OneToOne
	@JoinColumn(name = "userCustId")
	private Customer customeru;
	
	public User() {
		
	}
	
	public User(String name, String email, String password, String contactNumber) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.contactNumber = contactNumber;
	}
	
	public User(Long id, String name, String email, String password, String contactNumber) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.contactNumber = contactNumber;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Customer getCustomer() {
		return customeru;
	}

	public void setCustomer(Customer customeru) {
		this.customeru = customeru;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", password=" + password
				+ ", contactNumber=" + contactNumber + "]";
	}
}

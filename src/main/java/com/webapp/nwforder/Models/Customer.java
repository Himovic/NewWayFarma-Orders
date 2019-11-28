package com.webapp.nwforder.Models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer extends User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "type")
	private String type;
	
	@Column(name = "companyName")
	private String companyName;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "city")
	private String city;
	
	@OneToMany(mappedBy = "customer")
	private Set<Order> customerOrders = new HashSet<>();
	
	@OneToOne(mappedBy = "customeru",cascade = CascadeType.REMOVE)
	private User userCust;
	
	public Customer() {
		
	}
	
	public Customer(String type,String companyName,String address,String city) {
		this.type = type;
		this.companyName = companyName;
		this.address = address;
		this.city = city;
	}
	
	public Customer(String name, String email, String password, String contactNumber,
			String type, String companyName, String address, String city,Long id) {
		super(id, name, email, password, contactNumber);
		this.type = type;
		this.companyName = companyName;
		this.address = address;
		this.city = city;
	}
	
	public Customer(String name, String username, String email, String password, String contactNumber,
			Long id, String type, String companyName, String address, String city) {
		super(name, email, password, contactNumber);
		this.id = id;
		this.type = type;
		this.companyName = companyName;
		this.address = address;
		this.city = city;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public Set<Order> getCustomerOrders() {
		return customerOrders;
	}

	public void setCustomerOrders(Set<Order> customerOrders) {
		this.customerOrders = customerOrders;
	}
	
	public User getUserCust() {
		return userCust;
	}

	public void setUserCust(User userCust) {
		this.userCust = userCust;
	}

	@Override
	public String toString() {
		return "Customer [type=" + type + ", companyName=" + companyName + ", address=" + address + ", city=" + city
				+ "]";
	}
}

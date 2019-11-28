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
@Table(name = "employee")
public class Employee extends User{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "function")
	private String function;
	
	@OneToOne(mappedBy = "namingEmployee")
	private NamingProduct namingProduct;
	
	@OneToMany(mappedBy = "employee")
	private Set<Product> products = new HashSet<>();
	
	@OneToOne(mappedBy = "employee",cascade = CascadeType.REMOVE)
	private User userEmp;
	
	public Employee() {
		
	}
	
	public Employee(String function) {
		this.function = function;
	}
	
	public Employee(String name, String email, String password, String contactNumber,
			String function,Long id) {
		super(id,name, email, password, contactNumber);
		this.function = function;
	}
	
	public Employee(String name, String email, String password, String contactNumber,
			Long id, String function) {
		super(name, email, password, contactNumber);
		this.id = id;
		this.function = function;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}
	
	public NamingProduct getNamingProduct() {
		return namingProduct;
	}

	public void setNamingProduct(NamingProduct namingProduct) {
		this.namingProduct = namingProduct;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	public User getUserEmp() {
		return userEmp;
	}

	public void setUserEmp(User userEmp) {
		this.userEmp = userEmp;
	}

	@Override
	public String toString() {
		return "Employee [function=" + function + "]";
	}
}

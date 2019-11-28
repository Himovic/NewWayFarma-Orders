package com.webapp.nwforder.Models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "namingProduct")
public class NamingProduct {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "productCode")
	private String productCode;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "picture")
	private String picture;
	
	@OneToOne
	@JoinColumn(name = "employee_id")
	private Employee namingEmployee;
	
	@OneToOne(mappedBy = "namingProduct",cascade = CascadeType.REMOVE)
	private Product product;
	
	public NamingProduct() {
		
	}
	
	public NamingProduct(String name, String description, String productCode, double price, String picture) {
		this.name = name;
		this.description = description;
		this.productCode = productCode;
		this.price = price;
		this.picture = picture;
	}
	
	public NamingProduct(Long id, String name, String description, String productCode, double price, String picture) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.productCode = productCode;
		this.price = price;
		this.picture = picture;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public Employee getNamingEmployee() {
		return namingEmployee;
	}

	public void setNamingEmployee(Employee namingEmployee) {
		this.namingEmployee = namingEmployee;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "NamingProduct [name=" + name + ", description=" + description + ", productCode=" + productCode
				+ ", price=" + price + ", picture=" + picture + "]";
	}
}

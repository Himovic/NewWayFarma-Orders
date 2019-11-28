package com.webapp.nwforder.Models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "fabricationDate")
	private String fabricationDate;
	
	@Column(name = "expiryDate")
	private String expiryDate;
	
	@Column(name = "registryDate")
	private String registryDate;
	
	@Column(name = "quantity")
	private String quantity;
	
	@ManyToOne
	@JoinColumn(name = "employee_id")
	private Employee employee;
	
	@OneToOne
	@JoinColumn(name = "namingProduct_id")
	private NamingProduct namingProduct;
	
	@OneToMany(mappedBy = "product")
	private Set<Order> productsOrder = new HashSet<>();
	
	public Product() {
		
	}
	
	public Product(String fabricationDate, String expiryDate, String registryDate, String quantity) {
		this.fabricationDate = fabricationDate;
		this.expiryDate = expiryDate;
		this.registryDate = registryDate;
		this.quantity = quantity;
	}
	
	public Product(Long id, String fabricationDate, String expiryDate, String registryDate, String quantity) {
		this.id = id;
		this.fabricationDate = fabricationDate;
		this.expiryDate = expiryDate;
		this.registryDate = registryDate;
		this.quantity = quantity;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFabricationDate() {
		return fabricationDate;
	}

	public void setFabricationDate(String fabricationDate) {
		this.fabricationDate = fabricationDate;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public String getRegistryDate() {
		return registryDate;
	}

	public void setRegistryDate(String registryDate) {
		this.registryDate = registryDate;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public NamingProduct getNamingProduct() {
		return namingProduct;
	}

	public void setNamingProduct(NamingProduct namingProduct) {
		this.namingProduct = namingProduct;
	}

	public Set<Order> getProductsOrder() {
		return productsOrder;
	}

	public void setProductsOrder(Set<Order> productsOrder) {
		this.productsOrder = productsOrder;
	}

	@Override
	public String toString() {
		return "Product [fabricationDate=" + fabricationDate + ", expiryDate=" + expiryDate + ", quantity=" + quantity
				+ "]";
	}
}

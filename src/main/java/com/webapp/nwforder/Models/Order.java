package com.webapp.nwforder.Models;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order")
public class Order {

	@EmbeddedId
	OrderKey orderKey;
	
	@ManyToOne
	@MapsId("customerId")
	@JoinColumn(name = "customerIdObj")
	Customer customer;
	
	@ManyToOne
	@MapsId("productId")
	@JoinColumn(name = "productIdObj")
	Product product;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name="prixHT")
	private double prixHT;
	
	@Column(name="prixTTC")
	private double prixTTC;
	
	@Column(name="orderDate")
	private String orderDate;
	
	@OneToOne(mappedBy = "order")
	private OrderStatut orderStatut;
	
	public Order(){
		
	}
	
	
	
	public Order(OrderKey orderKey, Customer customer, Product product, int quantity, double prixHT, 
			double prixTTC,String orderDate) {
		this.orderKey = orderKey;
		this.customer = customer;
		this.product = product;
		this.quantity = quantity;
		this.prixHT = prixHT;
		this.prixTTC = prixTTC;
		this.orderDate = orderDate;
	}

	public OrderKey getOrderKey() {
		return orderKey;
	}

	public void setOrderKey(OrderKey orderKey) {
		this.orderKey = orderKey;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrixHT() {
		return prixHT;
	}

	public void setPrixHT(double prixHT) {
		this.prixHT = prixHT;
	}

	public double getPrixTTC() {
		return prixTTC;
	}

	public void setPrixTTC(double prixTTC) {
		this.prixTTC = prixTTC;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public OrderStatut getOrderStatut() {
		return orderStatut;
	}

	public void setOrderStatut(OrderStatut orderStatut) {
		this.orderStatut = orderStatut;
	}

	@Override
	public String toString() {
		return "Order [orderKey=" + orderKey + ", customer=" + customer + ", product=" + product + ", quantity="
				+ quantity + ", prixHT=" + prixHT + ", prixTTC=" + prixTTC + ", orderDate=" + orderDate
				+ ", orderStatut=" + orderStatut + "]";
	}
}

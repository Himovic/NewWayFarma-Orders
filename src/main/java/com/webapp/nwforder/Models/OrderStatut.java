package com.webapp.nwforder.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderStatut")
public class OrderStatut {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "statutName")
	private String statutName;
	
	@Column(name = "date")
	private String date;
	
	@OneToOne
	@JoinColumns({
		@JoinColumn(name = "order_id"),
		@JoinColumn(name = "orderStatut_id")
	})
	private Order order;
	
	public OrderStatut() {
		
	}
	
	public OrderStatut(String statutName, String date) {
		this.statutName = statutName;
		this.date = date;
	}
	
	public OrderStatut(Long id, String statutName, String date) {
		this.id = id;
		this.statutName = statutName;
		this.date = date;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStatutName() {
		return statutName;
	}

	public void setStatutName(String statutName) {
		this.statutName = statutName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "OrderStatut [statutName=" + statutName + ", date=" + date + "]";
	}	
}

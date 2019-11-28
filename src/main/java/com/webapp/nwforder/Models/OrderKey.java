package com.webapp.nwforder.Models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class OrderKey implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Column(name = "customerId")
	private Long customerId;
	
	@Column(name = "productId")
	private Long productId;
	
	public OrderKey() {
		
	}
	
	public OrderKey(Long customerId,Long productId) {
		this.customerId = customerId;
		this.productId = productId;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "OrderKey [customerId=" + customerId + ", productId=" + productId + "]";
	}	
}

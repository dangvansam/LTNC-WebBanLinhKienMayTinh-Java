package com.vienmv.model;

import java.io.Serializable;
import java.sql.Date;

public class Cart implements Serializable {
	private String id;
	private User buyer;
	private Date buyDate;
	public Cart() {
		super();
	}
	public Cart(String id, User buyer, Date buyDate) {
		super();
		this.id = id;
		this.buyer = buyer;
		this.buyDate = buyDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	
}

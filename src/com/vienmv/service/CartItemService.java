package com.vienmv.service;

import java.util.List;

import com.vienmv.model.Cart;
import com.vienmv.model.CartItem;

public interface CartItemService {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(int id);
	
	List<CartItem> getAll();

	List<CartItem> search(String keyword);
}

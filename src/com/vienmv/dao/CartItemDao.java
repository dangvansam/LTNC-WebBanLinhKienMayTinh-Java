package com.vienmv.dao;

import java.util.List;

import com.vienmv.model.Cart;
import com.vienmv.model.CartItem;
import com.vienmv.model.Category;

public interface CartItemDao {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(String name);

	CartItem get(int id);

	List<CartItem> getAll();

	List<CartItem> search(String name);
}

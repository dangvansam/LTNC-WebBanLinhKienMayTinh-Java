package com.vienmv.dao;

import java.util.List;

import com.vienmv.model.Cart;
import com.vienmv.model.Category;

public interface CartDao {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(String name);

	Cart get(int id);

	List<Cart> getAll();

	List<Cart> search(String name);
}

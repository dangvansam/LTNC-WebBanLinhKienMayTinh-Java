package com.vienmv.service.impl;

import java.io.File;
import java.util.List;

import com.vienmv.dao.CartDao;
import com.vienmv.dao.ProductDao;
import com.vienmv.dao.UserDao;
import com.vienmv.dao.impl.CartDaoImpl;
import com.vienmv.dao.impl.ProductDaoImpl;
import com.vienmv.dao.impl.UserDaoImpl;
import com.vienmv.model.Cart;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CartService;
import com.vienmv.service.ProductService;
import com.vienmv.service.UserService;

public class CartServiceImpl implements CartService {
	CartDao cartDao = new CartDaoImpl();

	@Override
	public List<Cart> search(String name) {
		return cartDao.search(name);
	}

	@Override
	public void insert(Cart cart) {
		cartDao.insert(cart);

	}

	@Override
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	@Override
	public Cart get(int id) {
		return cartDao.get(id);
	}

	@Override
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());

		oldCart.setBuyDate(newCart.getBuyDate());
		oldCart.setBuyer(newCart.getBuyer());
		
		
		cartDao.edit(oldCart);

	}

	@Override
	public void delete(int id) {
		cartDao.delete(id);
	}
}

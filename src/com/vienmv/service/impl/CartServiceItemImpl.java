package com.vienmv.service.impl;

import java.io.File;
import java.util.List;

import com.vienmv.dao.CartDao;
import com.vienmv.dao.CartItemDao;
import com.vienmv.dao.ProductDao;
import com.vienmv.dao.UserDao;
import com.vienmv.dao.impl.CartDaoImpl;
import com.vienmv.dao.impl.CartItemDaoImpl;
import com.vienmv.dao.impl.ProductDaoImpl;
import com.vienmv.dao.impl.UserDaoImpl;
import com.vienmv.model.Cart;
import com.vienmv.model.CartItem;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CartItemService;
import com.vienmv.service.CartService;
import com.vienmv.service.ProductService;
import com.vienmv.service.UserService;

public class CartServiceItemImpl implements CartItemService {
	CartItemDao cartItemDao = new CartItemDaoImpl();

	@Override
	public void insert(CartItem cartItem) {
		cartItemDao.insert(cartItem);
		
	}

	@Override
	public void edit(CartItem newCartItem) {
		CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
		oldCartItem.setCart(newCartItem.getCart());
		oldCartItem.setProduct(newCartItem.getProduct());
		oldCartItem.setQuantity(newCartItem.getQuantity());
		oldCartItem.setUnitPrice(newCartItem.getUnitPrice());
		
		cartItemDao.edit(oldCartItem);
	}

	@Override
	public void delete(String id) {
		cartItemDao.delete(id);
	}

	@Override
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	@Override
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	@Override
	public List<CartItem> search(String keyword) {
		return cartItemDao.search(keyword);
	}

	
}

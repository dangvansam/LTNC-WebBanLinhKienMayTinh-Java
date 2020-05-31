package com.vienmv.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vienmv.model.CartItem;
import com.vienmv.model.Category;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CartItemService;
import com.vienmv.service.CategoryService;
import com.vienmv.service.ProductService;
import com.vienmv.service.UserService;
import com.vienmv.service.impl.CartServiceItemImpl;
import com.vienmv.service.impl.CategoryServiceImpl;
import com.vienmv.service.impl.ProductServiceImpl;
import com.vienmv.service.impl.UserServiceImpl;

@WebServlet(urlPatterns="/admin")
public class welcome extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();
	UserService userService = new UserServiceImpl();
	CartItemService cartItemService=new CartServiceItemImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object obj=session.getAttribute("account");
		User user=(User) obj;
		req.setAttribute("username", user.getUsername());
		
		List<Product> proList = productService.getAll();
		List<User> userList = userService.getAll();
		List<Category> catList = cateService.getAll();
		List<CartItem> cartItemList = cartItemService.getAll();
		
		System.out.println("Total user="+userList.size());
		System.out.println("Total product="+proList.size());
		System.out.println("Total category="+catList.size());
		System.out.println("Total cart item="+cartItemList.size());
		
		req.setAttribute("total_user", userList.size());
		req.setAttribute("total_pro", proList.size());
		req.setAttribute("total_cat", catList.size());
		req.setAttribute("total_cart", cartItemList.size());
		
		req.getRequestDispatcher("/view/admin/view/index.jsp").forward(req, resp);
	}

}

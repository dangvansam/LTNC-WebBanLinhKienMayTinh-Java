package com.vienmv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CategoryService;
import com.vienmv.service.ProductService;
import com.vienmv.service.impl.CategoryServiceImpl;
import com.vienmv.service.impl.ProductServiceImpl;


@WebServlet(urlPatterns="/welcome")
public class WellcomeController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("*********WellcomeController doGet()***********");
		
		List<Product> productList = productService.getAll();
		//System.out.println("*********WellcomeController productService.getAll() OK***********");
		req.setAttribute("pwelcome", productList);
		
		//Get session username
		HttpSession session= req.getSession();
		if(session != null && session.getAttribute("account") != null) {
			User u=(User) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
			
			}
		req.getRequestDispatcher("/view/client/view/index.jsp").forward(req, resp);
	
	}
}


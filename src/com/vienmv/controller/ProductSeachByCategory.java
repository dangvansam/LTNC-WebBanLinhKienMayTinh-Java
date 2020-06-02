package com.vienmv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.ProductService;
import com.vienmv.service.impl.ProductServiceImpl;
@WebServlet(urlPatterns="/product/category")
public class ProductSeachByCategory extends HttpServlet {
	ProductService productService=new ProductServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cate_id = req.getParameter("cate_id");
		List<Product> productSeachByCategory = productService.seachByCategory(Integer.parseInt(cate_id));
		//System.out.println(productSeachByCategory.get(0));
		String category_name = productSeachByCategory.get(0).getCategory().getName();
		//System.out.println();
		req.setAttribute("productSeachByCategory", productSeachByCategory);
		
		//Get session username
		HttpSession session= req.getSession();
		if(session != null && session.getAttribute("account") != null) {
			User u=(User) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
		}
		req.setAttribute("category_name", category_name);
		req.setAttribute("category_id", cate_id);
		req.getRequestDispatcher("/view/client/view/productSeachByCategory.jsp").forward(req, resp);
		
		
	}
}

package com.vienmv.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.vienmv.model.Category;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CategoryService;
import com.vienmv.service.ProductService;
import com.vienmv.service.UserService;
import com.vienmv.service.impl.CategoryServiceImpl;
import com.vienmv.service.impl.ProductServiceImpl;
import com.vienmv.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/product/list" })
public class ProductListClientController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> productList = productService.getAll();
		req.setAttribute("productList", productList);
		
		//Get session username
		HttpSession session= req.getSession();
		if(session != null && session.getAttribute("account") != null) {
			User u=(User) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/product-list.jsp");
		dispatcher.forward(req, resp);
	}// cái này sai

}

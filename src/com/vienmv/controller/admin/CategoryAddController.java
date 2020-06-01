package com.vienmv.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vienmv.model.Category;
import com.vienmv.service.CategoryService;
import com.vienmv.service.impl.CategoryServiceImpl;

@WebServlet(urlPatterns = { "/admin/category/add" })
public class CategoryAddController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/add-category.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println(req);
		String name = req.getParameter("cate_name");
		System.out.println("***********");
		System.out.println(name);
		System.out.println("***********");
		Category category = new Category();
		CategoryService cateService = new CategoryServiceImpl();
		category.setName(name);
		cateService.insert(category);
		resp.sendRedirect(req.getContextPath() + "/admin/category/list");

	}
}

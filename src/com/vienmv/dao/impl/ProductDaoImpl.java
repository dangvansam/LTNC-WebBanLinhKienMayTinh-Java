package com.vienmv.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vienmv.dao.ProductDao;
import com.vienmv.dao.UserDao;
import com.vienmv.jdbc.JDBCConnection;
import com.vienmv.model.Category;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.CategoryService;
import com.vienmv.service.impl.CategoryServiceImpl;

public class ProductDaoImpl extends JDBCConnection implements ProductDao {
	CategoryService categortService = new CategoryServiceImpl();

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO Product(name, price, image, cate_id, des) VALUES (?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setLong(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE Product SET Product.name = ? , price = ?, image = ?,cate_id=?, des=?  WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			;
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.setInt(6, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM Product WHERE id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Product get(int id) {
		String sql = "SELECT product.id, product.name AS p_name, product.price, product.image,product.des, category.cate_name AS c_name, category.cate_id AS c_id "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id WHERE product.id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));

				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);

				return product;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getAll() {

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id  "
				+ "FROM product INNER JOIN category " + "ON product.cate_id = category.cate_id";
		Connection conn = super.getJDBCConnection();
		System.out.println("**********ProductDaoImpl getAll() Start********");
		try {
			System.out.println("***********Try***********");
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.println("**********PreparedStatement************");
			ResultSet rs = ps.executeQuery();
			System.out.println("***********ResultSet***********");
			
			while (rs.next()) {
				System.out.println("**********while (rs.next())********");
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("**********ProductDaoImpl getAll() Error********");
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> search(String keyword) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT * FROM user WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));

				Category category = new Category();
				category.setId(rs.getInt("c_id"));
				category.setName(rs.getString("c_name"));

				product.setCategory(category);

				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> seachByCategory(int cate_id) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id 				 FROM Product , Category   where product.cate_id = category.cate_id and Category.cate_id=?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cate_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);

				product.setCategory(category);
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> seachByName(String productName) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.id, product.name AS p_name, product.price, product.image, product.des , category.cate_name AS c_name, category.cate_id AS c_id 				"
				+ " FROM Product , Category   where product.cate_id = category.cate_id and Product.name like ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+ productName +"%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);

				product.setCategory(category);
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

}

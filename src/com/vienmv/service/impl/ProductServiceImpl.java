package com.vienmv.service.impl;

import java.io.File;
import java.util.List;
import com.vienmv.dao.ProductDao;
import com.vienmv.dao.UserDao;
import com.vienmv.dao.impl.ProductDaoImpl;
import com.vienmv.dao.impl.UserDaoImpl;
import com.vienmv.model.Product;
import com.vienmv.model.User;
import com.vienmv.service.ProductService;
import com.vienmv.service.UserService;

public class ProductServiceImpl implements ProductService {
	ProductDao productDao = new ProductDaoImpl();

	@Override
	public void insert(Product product) {
		productDao.insert(product);

	}

	@Override
	public void edit(Product newProduct) {
		Product oldProduct = productDao.get(newProduct.getId());

		oldProduct.setName(newProduct.getName());
		oldProduct.setPrice(newProduct.getPrice());
		oldProduct.setCategory(newProduct.getCategory());
		if (newProduct.getImage() != null) {
			// XOA ANH CU DI
			String fileName = oldProduct.getImage();
			final String dir = "F:\\upload";
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}

			oldProduct.setImage(newProduct.getImage());
		}

		productDao.edit(oldProduct);

	}

	@Override
	public void delete(int id) {
		productDao.delete(id);

	}

	@Override
	public Product get(int id) {
		return productDao.get(id);
	}

	@Override
	public List<Product> getAll() {
		return productDao.getAll();
	}

	@Override
	public List<Product> search(String product) {
		return productDao.search(product);
	}

	@Override
	public List<Product> seachByCategory(int cate_id) {
		return productDao.seachByCategory(cate_id);
	}

	@Override
	public List<Product> seachByName(String productName) {
		return productDao.seachByName(productName);
	}

}

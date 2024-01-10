package com.davron.service;

import com.davron.dao.ProductDAOImpl;
import com.davron.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDAOImpl productDAO;

    @Override
    public Product getProductById(Integer id) {
        return productDAO.selectProductById(id);
    }

    @Override
    public List<Product> getMaxsulotList() {
        return productDAO.selectAllProduct();
    }

    @Override
    public void createProduct(Product product) {
            productDAO.insertProduct(product);
    }

    @Override
    public void updateProduct(Integer id, Product product) {
            productDAO.updateProduct(id,product);
    }

    @Override
    public void deleteProduct(Integer id) {
            productDAO.deleteProduct(id);
    }
}

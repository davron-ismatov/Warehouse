package com.davron.dao;

import com.davron.model.Product;

import java.util.List;

public interface ProductDAO {
    Product selectProductById(Integer id);
    List<Product> selectAllProduct();

    void insertProduct(Product product);
    void updateProduct(Integer id, Product product);

    void deleteProduct(Integer id);
}

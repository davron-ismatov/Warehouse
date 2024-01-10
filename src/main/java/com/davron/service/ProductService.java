package com.davron.service;

import com.davron.model.Product;

import java.util.List;

public interface ProductService {
    Product getProductById(Integer id);
    List<Product> getMaxsulotList();

    void createProduct(Product product);
    void updateProduct(Integer id, Product product);
    void deleteProduct(Integer id);
}

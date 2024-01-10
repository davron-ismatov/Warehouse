package com.davron.dao;

import com.davron.mapper.ProductMapper;
import com.davron.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public class ProductDAOImpl implements ProductDAO{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public Product selectProductById(Integer id) {

        return  jdbcTemplate.queryForObject("select * from products where id = ?",new Object[]{id},new ProductMapper());
    }

    @Override
    public List<Product> selectAllProduct() {
        return jdbcTemplate.query("select * from products",new ProductMapper());
    }

    @Override
    public void insertProduct(Product product) {
        jdbcTemplate.update("insert into products values(DEFAULT,?,?)",product.getName(),product.getPrice());
    }

    @Override
    public void updateProduct(Integer id, Product product) {
        String query = "update products set name = ?  , price = ?  where id= ?";
        jdbcTemplate.update(query,product.getName(),product.getPrice(),id);
    }

    @Override
    public void deleteProduct(Integer id) {
        jdbcTemplate.update("delete from products where id = ?",id);
    }
}

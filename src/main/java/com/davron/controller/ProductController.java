package com.davron.controller;

import com.davron.model.Product;
import com.davron.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ProductController {

    @Autowired
    private ProductService service;

    @RequestMapping("/products")
    public ModelAndView productList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("productsTable");
        view.addObject("products",service.getMaxsulotList());
        return view;
    }

    @RequestMapping("productInfo/view/{id}")
    public ModelAndView productInfo(@PathVariable("id") Integer id){
        Product product = service.getProductById(id);
        ModelAndView view = new ModelAndView();
        view.setViewName("productInfo");
        view.addObject("product",product);
        return view;
    }

    @RequestMapping("productInfo/edit/{id}")
    public ModelAndView  updateData(@PathVariable("id") Integer id){
        Product product = service.getProductById(id);
        ModelAndView view = new ModelAndView();
        view.setViewName("edit");
        view.addObject("product", product);
        return view;
    }

    @GetMapping(value = "product/{name}/{price}/{id}")
    public ModelAndView  editedData(@PathVariable("id") Integer id,@PathVariable("name") java.lang.String name,@PathVariable("price") Float price){
        Product product = service.getProductById(id);
        product.setName(name);
        product.setPrice(price);
        service.updateProduct(product.getId(),product);
        ModelAndView view = new ModelAndView();
        view.setViewName("productsTable");
        view.addObject("products",service.getMaxsulotList());
        return view;
    }

    @RequestMapping("productInfo/delete/{id}")
    public ModelAndView deleteData(@PathVariable("id") Integer id){
        System.out.println(id);
        service.deleteProduct(id);
        ModelAndView view = new ModelAndView();
        view.setViewName("productsTable");
        view.addObject("products",service.getMaxsulotList());
        return view;
    }
    @RequestMapping("/create")
    public String createProduct(){
        return "create";
    }

    @GetMapping("insert/{name}/{price}")
    public ModelAndView insertProduct(@PathVariable("name") String name,@PathVariable("price") Double price){
        service.createProduct(new Product(name,price));
        ModelAndView view = new ModelAndView();
        view.setViewName("productsTable");
        view.addObject("products",service.getMaxsulotList());
        return view;
    }
}

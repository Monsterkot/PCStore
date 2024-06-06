package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.entity.Product;

import java.util.List;

public interface ProductService {


    List<Product> getAllProducts();

    Product getProduct(int id);

    List<Product> findAllByCategoryId(int id);

}

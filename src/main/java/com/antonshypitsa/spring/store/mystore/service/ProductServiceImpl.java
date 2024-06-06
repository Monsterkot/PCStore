package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.dao.ProductRepository;
import com.antonshypitsa.spring.store.mystore.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    ProductRepository productRepository;

    @Autowired
    ProductServiceImpl(ProductRepository productRepository){
        this.productRepository = productRepository;
    }


    @Override
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public Product getProduct(int id) {
        return productRepository.findById(id).get();
    }

    @Override
    public List<Product> findAllByCategoryId(int id) {
        return productRepository.findAllByCategoryId(id);
    }
}

package com.antonshypitsa.spring.store.mystore.dao;

import com.antonshypitsa.spring.store.mystore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {

    List<Product> findAllByCategoryId(int id);
}

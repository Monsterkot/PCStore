package com.antonshypitsa.spring.store.mystore.dao;

import com.antonshypitsa.spring.store.mystore.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CartRepository extends JpaRepository<Cart, Integer> {
    void deleteAll();

}

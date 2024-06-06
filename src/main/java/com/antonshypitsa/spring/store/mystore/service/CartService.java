package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.entity.Cart;
import com.antonshypitsa.spring.store.mystore.entity.Product;

import java.util.List;

public interface CartService {

    void saveItem(Product product);

    List<Cart> getAllItems();

    void deleteAll();

    void deleteItem(int id);
}

package com.antonshypitsa.spring.store.mystore.service;


import com.antonshypitsa.spring.store.mystore.dao.CartRepository;
import com.antonshypitsa.spring.store.mystore.entity.Cart;
import com.antonshypitsa.spring.store.mystore.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService{

    CartRepository cartRepository;

    @Autowired
    CartServiceImpl(CartRepository cartRepository){
        this.cartRepository = cartRepository;
    }
    @Override
    public void saveItem(Product product) {
        Cart item = new Cart(product.getBrand(), product.getModel(),
                product.getImage(), product.getPrice(), product.getId());
        cartRepository.save(item);
    }

    @Override
    public List<Cart> getAllItems() {
        return cartRepository.findAll();
    }

    @Override
    public void deleteAll() {
        cartRepository.deleteAll();
    }

    @Override
    public void deleteItem(int id) {
        cartRepository.deleteById(id);
    }


}

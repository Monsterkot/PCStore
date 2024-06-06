package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.entity.Cart;

import javax.mail.internet.AddressException;
import java.util.List;

public interface OrderService {

    public void processOrder(String name, String email, String number, String orderPrice, List<Cart> cartList) throws AddressException;
}

package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.entity.Cart;
import com.antonshypitsa.spring.store.mystore.entity.Product;
import com.antonshypitsa.spring.store.mystore.mail.MailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import javax.mail.internet.AddressException;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    @Override
    @Async
    public void processOrder(String name, String email, String number, String orderPrice, List<Cart> cartList) throws AddressException {
        MailSender.sendTo(email, name, orderPrice, cartList);
    }
}

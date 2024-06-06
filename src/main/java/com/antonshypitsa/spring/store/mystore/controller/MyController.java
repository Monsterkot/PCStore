package com.antonshypitsa.spring.store.mystore.controller;

import com.antonshypitsa.spring.store.mystore.entity.*;
import com.antonshypitsa.spring.store.mystore.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.internet.AddressException;
import java.util.List;

@Controller
public class MyController {

    CartService cartService;
    ProductService productService;
    CategoryService categoryService;
    OrderService orderService;

    @Autowired
    public MyController(CartService cartService, ProductService productService,
                        CategoryService categoryService, OrderService orderService){
        this.cartService = cartService;
        this.productService = productService;
        this.categoryService = categoryService;
        this.orderService = orderService;
    }

    @GetMapping("/home")
    public String getHomePage(){
        return "home";
    }

    @GetMapping("/products")
    public String getProdcuts(Model model){
        List<Product> Products = productService.getAllProducts();
        List<Category> Categories = categoryService.getAllCategories();
        model.addAttribute("Products", Products);
        model.addAttribute("Categories", Categories);
        return "products";
    }

    @GetMapping("/us")
    public String getAboutUs(){
        return "aboutus";
    }

    @GetMapping("/product")
    public String getProductInfo(@RequestParam("productId") int id, Model model){
        model.addAttribute("Product", productService.getProduct(id));
        return "productinfo";
    }

    @GetMapping("/getByCategory")
    public String getByCategory(@RequestParam("categoryId") int category_id, Model model){
        List<Product> Products = productService.findAllByCategoryId(category_id);
        model.addAttribute("Products", Products);
        model.addAttribute("Categories", categoryService.getAllCategories());
        return "products";
    }

    @GetMapping("/cart")
    public String getCart(Model model){
        List<Cart> Items = cartService.getAllItems();
        model.addAttribute("Items", Items);
        return "cart";
    }

    @GetMapping("/addToCart")
    public String addtToCart(@RequestParam("productId") int id, Model model){
        cartService.saveItem(productService.getProduct(id));
        return getProdcuts(model);
    }

    @GetMapping("/deleteFromCart")
    public String deleteItemFromCart(@RequestParam("itemId") int id, Model model){
        cartService.deleteItem(id);
        return getCart(model);
    }

    @PostMapping("/orderProcessed")
    public String orderProcessed(@RequestParam("name") String name, @RequestParam("email") String email,
                                 @RequestParam("number") String number, @RequestParam("orderPrice") String orderPrice)
            throws AddressException {
        orderService.processOrder(name, email, number, orderPrice, cartService.getAllItems());
        cartService.deleteAll();
        return "order-is-processed";
    }
}

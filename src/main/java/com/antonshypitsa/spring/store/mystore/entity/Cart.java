package com.antonshypitsa.spring.store.mystore.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.CollectionId;

@Entity
@Table(name = "cart")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "brand")
    private String brand;
    @Column(name = "model")
    private String model;
    @Column(name = "img")
    private String image;
    @Column(name = "price")
    private float price;
    @Column(name = "product_id")
    private int productId;


    public Cart() {
    }

    public Cart(String brand, String model, String image, float price, int productId) {
        this.brand = brand;
        this.model = model;
        this.image = image;
        this.price = price;
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", productId=" + productId +
                '}';
    }
}

package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.entity.Category;

import java.util.List;

public interface CategoryService {

    List<Category> getAllCategories();

    Category getCategory(int id);
}

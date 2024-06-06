package com.antonshypitsa.spring.store.mystore.service;

import com.antonshypitsa.spring.store.mystore.dao.CategoryRepository;
import com.antonshypitsa.spring.store.mystore.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService{

    CategoryRepository categoryRepository;

    @Autowired
    CategoryServiceImpl(CategoryRepository categoryRepository){
        this.categoryRepository=categoryRepository;
    }
    @Override
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategory(int id) {
        return categoryRepository.findById(id).get();
    }
}

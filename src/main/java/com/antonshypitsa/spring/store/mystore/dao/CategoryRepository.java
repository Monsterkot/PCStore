package com.antonshypitsa.spring.store.mystore.dao;

import com.antonshypitsa.spring.store.mystore.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}

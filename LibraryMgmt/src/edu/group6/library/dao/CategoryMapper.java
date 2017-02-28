package edu.group6.library.dao;

import edu.group6.library.model.Category;

import java.util.List;

public interface CategoryMapper {
    int insert(Category record);

    List<Category> selectByParentId(Integer id);
}
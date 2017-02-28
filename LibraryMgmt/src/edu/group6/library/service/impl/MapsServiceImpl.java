package edu.group6.library.service.impl;


import edu.group6.library.model.Press;
import edu.group6.library.model.Category;
import edu.group6.library.dao.PressMapper;
import edu.group6.library.dao.CategoryMapper;
import edu.group6.library.service.MapsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MapsServiceImpl implements MapsService{

    @Autowired
    private PressMapper pressMapper;

    @Autowired
    private CategoryMapper categoryMapper;

    public int insertCategory(Category record) {
        return categoryMapper.insert(record);
    }

    public List<Category> getCategoryByParentId(int id) {
        return categoryMapper.selectByParentId(id);
    }

    public Press getPressById(int id) {
        return pressMapper.selectByPrimaryKey(id);
    }

    public List<Press> getPresses() {
        return pressMapper.selectPresses();
    }
}

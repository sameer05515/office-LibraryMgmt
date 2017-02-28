package edu.group6.library.service;

import edu.group6.library.model.Category;
import edu.group6.library.model.Press;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MapsService {

    int insertCategory(Category record);

    List<Category> getCategoryByParentId(int id);

    Press getPressById(int id);

    List<Press> getPresses();
}

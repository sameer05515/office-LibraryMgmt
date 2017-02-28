package edu.group6.library.dao;

import edu.group6.library.model.Press;

import java.util.List;

public interface PressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Press record);

    int insertSelective(Press record);

    Press selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Press record);

    int updateByPrimaryKey(Press record);

    List<Press> selectPresses();
}
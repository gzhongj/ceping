package com.gzj.app.ceping.admin.dao;


import com.gzj.app.ceping.admin.entity.Person;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface PersonMapper {
    Person getByTag(Map<String, Object> tagParams);

    void save(Person person);

    Person getById(String id);

    void delete(String id);
}

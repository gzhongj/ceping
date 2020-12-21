package com.gzj.app.ceping.admin.dao;


import com.gzj.app.ceping.admin.entity.Question;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface QuestionMapper {
    int save(Question question);

    void delete(Integer id);

    List<Question> list(Object o);
}

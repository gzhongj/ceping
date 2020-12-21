package com.gzj.app.ceping.admin.service;


import com.gzj.app.ceping.admin.entity.Question;

import java.util.List;

public interface IQuestionService {

    void saveOrUpdate(Question question);

    void delete(Integer id);

    List<Question> list(Object o);

}

package com.gzj.app.ceping.admin.service.impl;

import com.gzj.app.ceping.admin.dao.QuestionMapper;
import com.gzj.app.ceping.admin.entity.Question;
import com.gzj.app.ceping.admin.service.IQuestionService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService implements IQuestionService {

    private QuestionMapper questionMapper;

    @Override
    public void saveOrUpdate(Question question) {
        questionMapper.save(question);
    }

    @Override
    public void delete(Integer id) {
        questionMapper.delete(id);
    }

    @Override
    public List<Question> list(Object o) {
        return questionMapper.list(o);
    }
}

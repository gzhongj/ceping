package com.gzj.app.ceping.admin.service.impl;

import java.util.HashMap;
import java.util.Map;


import com.gzj.app.ceping.admin.dao.PersonMapper;
import com.gzj.app.ceping.admin.entity.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.gzj.app.ceping.admin.service.IPersonService;

@Service
public class PersonService implements IPersonService {

	@Value("${imgs.domain}")
	private String imgsDomain;

	private PersonMapper personMapper;

	@Override
	public Person findByTags(String tag) {
		Map<String, Object> tagParams = new HashMap<>();
		tagParams.put("tags", tag);
		return personMapper.getByTag(tagParams);
	}

	@Override
	public void saveOrUpdate(Person person) {
		personMapper.save(person);
	}

	@Override
	public Person getById(String id) {
		return personMapper.getById(id);
	}

	@Override
	public void delete(String id) {
		personMapper.delete(id);
	}

}

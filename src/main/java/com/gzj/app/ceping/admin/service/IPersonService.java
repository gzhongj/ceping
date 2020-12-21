package com.gzj.app.ceping.admin.service;


import com.gzj.app.ceping.admin.entity.Person;

public interface IPersonService {

	Person findByTags(String tag);

	void saveOrUpdate(Person person);

	Person getById(String id);

	void delete(String id);
}

package com.gzj.app.ceping.admin.service.impl;

import com.gzj.app.ceping.admin.dao.OptionMapper;
import com.gzj.app.ceping.admin.entity.Options;
import com.gzj.app.ceping.admin.service.IOptionService;
import org.springframework.stereotype.Service;

@Service
public class OptionService  implements IOptionService {

	private OptionMapper optionMapper;

	@Override
	public Options getById(String id) {
		return optionMapper.getByid(id);
	}

	@Override
	public void delete(String id) {
		optionMapper.delete(id);
	}
}

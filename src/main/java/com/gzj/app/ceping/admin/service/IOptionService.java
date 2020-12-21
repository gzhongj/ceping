package com.gzj.app.ceping.admin.service;

import com.gzj.app.ceping.admin.entity.Options;

public interface IOptionService {

    Options getById(String id);

    void delete(String id);
}

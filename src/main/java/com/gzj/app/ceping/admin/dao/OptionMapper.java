package com.gzj.app.ceping.admin.dao;


import com.gzj.app.ceping.admin.entity.Options;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OptionMapper {
    Options getByid(String id);

    void delete(String id);
}

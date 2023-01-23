package com.example.spring.mapper;

import com.example.spring.model.Apteka;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AptekaMapper {

    @Select("select * from apteka")
    Apteka[] selectApteki();
}

package com.example.spring.mapper;

import com.example.spring.model.Pracownik;
import com.example.spring.model.Produkt;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ProduktMapper {

    @Select("SELECT * FROM produkt")
    Produkt[] selectProdukty();
}

package com.example.spring.mapper;

import com.example.spring.model.Uzytkownik;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface UzytkownikMapper {

    @Select("select * from uzytkownik")
    Uzytkownik[] selectUzytkownicy();

    @Insert("insert into uzytkownik (id, username, password, email, imie, nazwisko, plec, adres, telefon, kraj ,wiek, id_pracownika) values(#{id}, #{username}, #{password}, #{email}, #{imie}, #{nazwisko}, #{plec}, #{adres}, #{telefon}, #{kraj}, #{wiek}, #{id_pracownika})")
    int insertUzytkownik(Uzytkownik uzytkownik);

    @Update("UPDATE uzytkownik SET username=#{username}, password=#{password}, email=#{email}, imie=#{imie}, nazwisko=#{nazwisko}, adres=#{adres}, telefon=#{telefon}, kraj=#{kraj}, wiek=#{wiek} WHERE id = #{id}")
    int updateUzytkownik(Uzytkownik uzytkownik);
}

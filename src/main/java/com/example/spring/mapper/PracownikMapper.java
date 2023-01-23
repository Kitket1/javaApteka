package com.example.spring.mapper;

import com.example.spring.model.Pracownik;
import com.example.spring.model.Uzytkownik;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface PracownikMapper {

    @Select("SELECT * FROM pracownik")
    Pracownik[] selectPracownicy();

    @Insert("insert into pracownik (id, imie, nazwisko, adres, telefon, pozycja, plec) values(#{id}, #{imie}, #{nazwisko}, #{adres}, #{telefon}, #{pozycja}, #{plec})")
    int insertPracownik(Pracownik pracownik);


}

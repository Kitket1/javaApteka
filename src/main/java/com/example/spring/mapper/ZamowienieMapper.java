package com.example.spring.mapper;


import com.example.spring.model.Zamowienie;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface ZamowienieMapper {

    @Select("select * from zamowienie")
    Zamowienie[] selectZamowienie();

    @Insert("insert into zamowienie (id, data, kwota, metoda_platnosci, adres, telefon, id_uzytkownika, apap_i, cholinex_i, aspirin_i ,buscopan_i, rutinoscorbin_i, ketonal_i, altacet_i, stoperan_i, espumisan_i) values(#{id}, #{data}, #{kwota}, #{metoda_platnosci}, #{adres}, #{telefon}, #{id_uzytkownika}, #{apap_i}, #{cholinex_i}, #{aspirin_i} ,#{buscopan_i}, #{rutinoscorbin_i}, #{ketonal_i}, #{altacet_i}, #{stoperan_i}, #{espumisan_i})")
    int insertZamowienie(Zamowienie zamowienie);

    @Update("UPDATE uzytkownik SET username=#{username}, password=#{password}, email=#{email}, imie=#{imie}, nazwisko=#{nazwisko}, adres=#{adres}, telefon=#{telefon}, kraj=#{kraj}, wiek=#{wiek} WHERE id = #{id}")
    int updateZamowienie(Zamowienie zamowienie);
}
package com.example.spring.service;


import com.example.spring.mapper.UzytkownikMapper;
import com.example.spring.model.Uzytkownik;
import org.springframework.stereotype.Service;


@Service
public class UzytkownikService {

    private UzytkownikMapper uzytkownikMapper;

    public UzytkownikService(UzytkownikMapper uzytkownikMapper) {
        this.uzytkownikMapper = uzytkownikMapper;
    }

    public int addUzytkownik(Uzytkownik uzytkownik){
        return uzytkownikMapper.insertUzytkownik(uzytkownik);
    }

    public int updateUzytkownik(Uzytkownik uzytkownik){
        return uzytkownikMapper.updateUzytkownik(uzytkownik);
    }

    public Uzytkownik[] getUzytkownicy() {
        Uzytkownik[] uzytkownicy = uzytkownikMapper.selectUzytkownicy();

        return uzytkownicy;
    }
}


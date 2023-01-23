package com.example.spring.service;

import com.example.spring.mapper.PracownikMapper;
import com.example.spring.mapper.UzytkownikMapper;
import com.example.spring.model.Pracownik;
import com.example.spring.model.Uzytkownik;
import org.springframework.stereotype.Service;

@Service
public class PracownikService {

    private PracownikMapper pracownikMapper;

    public PracownikService(PracownikMapper pracownikMapper) {
        this.pracownikMapper = pracownikMapper;
    }

    public int addPracownik(Pracownik pracownik){
        return pracownikMapper.insertPracownik(pracownik);
    }

    public Pracownik[] getPracownicy() {
        Pracownik[] pracownicy = pracownikMapper.selectPracownicy();

        return pracownicy;
    }
}

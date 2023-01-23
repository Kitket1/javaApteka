package com.example.spring.service;

import com.example.spring.mapper.PracownikMapper;
import com.example.spring.mapper.ProduktMapper;
import com.example.spring.model.Pracownik;
import com.example.spring.model.Produkt;
import org.springframework.stereotype.Service;

@Service
public class ProduktService {

    private ProduktMapper produktMapper;

    public ProduktService(ProduktMapper produktMapper) {
        this.produktMapper = produktMapper;
    }

    /*
    public int addPracownik(Pracownik pracownik){
        return pracownikMapper.insertPracownik(pracownik);
    }*/

    public Produkt[] getProdukty() {
        Produkt[] produkty = produktMapper.selectProdukty();

        return produkty;
    }
}

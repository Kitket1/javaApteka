package com.example.spring.service;


import com.example.spring.mapper.ZamowienieMapper;

import com.example.spring.model.Zamowienie;
import org.springframework.stereotype.Service;

@Service
public class ZamowienieService {
    private ZamowienieMapper zamowienieMapper;

    public ZamowienieService(ZamowienieMapper zamowienieMapper){
        this.zamowienieMapper = zamowienieMapper;
    }

    public int addZamowienie(Zamowienie zamowienie){
        return zamowienieMapper.insertZamowienie(zamowienie);
    }

    public Zamowienie[] getZamowienia(){
        Zamowienie[] zamowienia = zamowienieMapper.selectZamowienie();
        return zamowienia;
    }
}


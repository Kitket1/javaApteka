package com.example.spring.service;

import com.example.spring.mapper.AptekaMapper;
import com.example.spring.mapper.PracownikMapper;
import com.example.spring.mapper.UzytkownikMapper;
import com.example.spring.model.Apteka;
import com.example.spring.model.Pracownik;
import org.springframework.stereotype.Service;

@Service
public class AptekaService {
    private AptekaMapper aptekaMapper;

    public AptekaService(AptekaMapper aptekaMapper) {
        this.aptekaMapper = aptekaMapper;
    }

    public Apteka[] getApteki() {
        Apteka[] apteki = aptekaMapper.selectApteki();

        return apteki;
    }
}

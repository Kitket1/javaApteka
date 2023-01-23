package com.example.spring.model;

public class Zamowienie {
    private Integer id;
    private String data;
    private Integer kwota;
    private String metoda_platnosci;
    private String adres;
    private String telefon;
    private Integer id_uzytkownika;
    private Integer apap_i;
    private Integer cholinex_i;
    private Integer aspirin_i;
    private Integer buscopan_i;
    private Integer rutinoscorbin_i;
    private Integer ketonal_i;
    private Integer altacet_i;
    private Integer stoperan_i;
    private Integer espumisan_i;

    public Zamowienie(){
        this.id = 0;
        this.data = "";
        this.kwota = 0;
        this.metoda_platnosci = "";
        this.adres = "";
        this.telefon = "";
        this.id_uzytkownika = 0;
        this.apap_i = 0;
        this.cholinex_i = 0;
        this.aspirin_i = 0;
        this.buscopan_i = 0;
        this.rutinoscorbin_i = 0;
        this.ketonal_i = 0;
        this.altacet_i = 0;
        this.stoperan_i = 0;
        this.espumisan_i = 0;
    }

    public Zamowienie(Integer id, String data, Integer kwota, String metoda_platnosci, String adres, String telefon, Integer id_uzytkownika, Integer apap_i, Integer cholinex_i, Integer aspirin_i, Integer buscopan_i, Integer rutinoscorbin_i, Integer ketonal_i, Integer altacet_i, Integer stoperan_i, Integer espumisan_i) {
        this.id = id;
        this.data = data;
        this.kwota = kwota;
        this.metoda_platnosci = metoda_platnosci;
        this.adres = adres;
        this.telefon = telefon;
        this.id_uzytkownika = id_uzytkownika;
        this.apap_i = apap_i;
        this.cholinex_i = cholinex_i;
        this.aspirin_i = aspirin_i;
        this.buscopan_i = buscopan_i;
        this.rutinoscorbin_i = rutinoscorbin_i;
        this.ketonal_i = ketonal_i;
        this.altacet_i = altacet_i;
        this.stoperan_i = stoperan_i;
        this.espumisan_i = espumisan_i;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public Integer getKwota() {
        return kwota;
    }

    public void setKwota(Integer kwota) {
        this.kwota = kwota;
    }

    public String getMetoda_platnosci() {
        return metoda_platnosci;
    }

    public void setMetoda_platnosci(String metoda_platnosci) {
        this.metoda_platnosci = metoda_platnosci;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public Integer getId_uzytkownika() {
        return id_uzytkownika;
    }

    public void setId_uzytkownika(Integer id_uzytkownika) {
        this.id_uzytkownika = id_uzytkownika;
    }

    public Integer getApap_i() {
        return apap_i;
    }

    public void setApap_i(Integer apap_i) {
        this.apap_i = apap_i;
    }

    public Integer getCholinex_i() {
        return cholinex_i;
    }

    public void setCholinex_i(Integer cholinex_i) {
        this.cholinex_i = cholinex_i;
    }

    public Integer getAspirin_i() {
        return aspirin_i;
    }

    public void setAspirin_i(Integer aspirin_i) {
        this.aspirin_i = aspirin_i;
    }

    public Integer getBuscopan_i() {
        return buscopan_i;
    }

    public void setBuscopan_i(Integer buscopan_i) {
        this.buscopan_i = buscopan_i;
    }

    public Integer getRutinoscorbin_i() {
        return rutinoscorbin_i;
    }

    public void setRutinoscorbin_i(Integer rutinoscorbin_i) {
        this.rutinoscorbin_i = rutinoscorbin_i;
    }

    public Integer getKetonal_i() {
        return ketonal_i;
    }

    public void setKetonal_i(Integer ketonal_i) {
        this.ketonal_i = ketonal_i;
    }

    public Integer getAltacet_i() {
        return altacet_i;
    }

    public void setAltacet_i(Integer altacet_i) {
        this.altacet_i = altacet_i;
    }

    public Integer getStoperan_i() {
        return stoperan_i;
    }

    public void setStoperan_i(Integer stoperan_i) {
        this.stoperan_i = stoperan_i;
    }

    public Integer getEspumisan_i() {
        return espumisan_i;
    }

    public void setEspumisan_i(Integer espumisan_i) {
        this.espumisan_i = espumisan_i;
    }
}

package com.example.spring.model;

public class Apteka {
    private Integer id;
    private String nazwa;
    private String adres;
    private String kraj;
    private String telefon;



    public Apteka(){}

    public Apteka(Integer id, String nazwa, String adres, String kraj, String telefon) {
        this.id = id;
        this.nazwa = nazwa;
        this.adres = adres;
        this.kraj = kraj;
        this.telefon = telefon;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getKraj() {
        return kraj;
    }

    public void setKraj(String kraj) {
        this.kraj = kraj;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    @Override
    public String toString() {
        return "Apteka{" +
                "id=" + id +
                ", nazwa='" + nazwa + '\'' +
                ", adres='" + adres + '\'' +
                ", kraj='" + kraj + '\'' +
                ", telefon='" + telefon + '\'' +
                '}';
    }
}

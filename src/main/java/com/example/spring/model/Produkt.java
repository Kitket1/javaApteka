package com.example.spring.model;

public class Produkt {
    private Integer id;
    private String nazwa;
    private Integer cena;
    private String typ;
    private String opis;
    private String opis_krotki;
    private String sklad;
    private Integer recepta;
    private String img;

    public Produkt(Integer id, String nazwa, Integer cena, String typ, String opis, String opis_krotki, String sklad, Integer recepta, String img) {
        this.id = id;
        this.nazwa = nazwa;
        this.cena = cena;
        this.typ = typ;
        this.opis = opis;
        this.opis_krotki = opis_krotki;
        this.sklad = sklad;
        this.recepta = recepta;
        this.img = img;
    }


    public String getImg(){
        return img;
    }

    public void setImg(String img){
        this.img = img;
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

    public Integer getCena() {
        return cena;
    }

    public void setCena(Integer cena) {
        this.cena = cena;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getOpis_krotki() {
        return opis_krotki;
    }

    public void setOpis_krotki(String opis_krotki) {
        this.opis_krotki = opis_krotki;
    }

    public String getSklad() {
        return sklad;
    }

    public void setSklad(String sklad) {
        this.sklad = sklad;
    }

    public Integer getRecepta() {
        return recepta;
    }

    public void setRecepta(Integer recepta) {
        this.recepta = recepta;
    }
}

package com.example.spring.model;

public class Pracownik {
    private Integer id;
    private String imie;
    private String nazwisko;
    private String adres;
    private String telefon;
    private String pozycja;
    private String plec;

    public Pracownik(){}

    public Pracownik(Integer id, String imie, String nazwisko, String adres, String telefon, String pozycja, String plec) {
        this.id = id;
        this.imie = imie;
        this.nazwisko = nazwisko;
        this.adres = adres;
        this.telefon = telefon;
        this.pozycja = pozycja;
        this.plec = plec;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlec() {
        return plec;
    }

    public void setPlec(String plec) {
        this.plec = plec;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
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

    public String getPozycja() {
        return pozycja;
    }

    public void setPozycja(String pozycja) {
        this.pozycja = pozycja;
    }
}

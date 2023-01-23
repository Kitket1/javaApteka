package com.example.spring.model;

public class Uzytkownik {
    private Integer id;
    private String username;
    private String password;
    private String imie;
    private String nazwisko;
    private String wiek;
    private String plec;
    private String adres;
    private String email;
    private String telefon;
    private String kraj;
    private Integer id_pracownika;

    public Uzytkownik(){}

    public Uzytkownik(Integer id, String username, String password, String imie, String nazwisko, String wiek, String plec, String adres, String email, String telefon, String kraj, Integer id_pracownika) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.imie = imie;
        this.nazwisko = nazwisko;
        this.wiek = wiek;
        this.plec= plec;
        this.adres = adres;
        this.email = email;
        this.telefon = telefon;
        this.kraj = kraj;
        this.id_pracownika = id_pracownika;
    }

    public Integer getId_pracownika() {
        return id_pracownika;
    }

    public void setId_pracownika(Integer id_pracownika) {
        this.id_pracownika = id_pracownika;
    }

    public String getWiek() {
        return wiek;
    }

    public void setWiek(String wiek) {
        this.wiek = wiek;
    }

    public String getPlec() {
        return plec;
    }

    public void setPlec(String plec) {
        this.plec = plec;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getKraj() {
        return kraj;
    }

    public void setKraj(String kraj) {
        this.kraj = kraj;
    }

    @Override
    public String toString() {
        return "Uzytkownik{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", wiek='" + wiek + '\'' +
                ", plec='" + plec + '\'' +
                ", adres='" + adres + '\'' +
                ", email='" + email + '\'' +
                ", telefon='" + telefon + '\'' +
                ", kraj='" + kraj + '\'' +
                '}';
    }
}

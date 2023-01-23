package com.example.spring.controller;

import com.example.spring.model.*;
import com.example.spring.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class WebController {
    private Uzytkownik uzytkownikZalogowany;
    private Apteka wybranaApteka;
    private Magazyn koszyk;
    private Zamowienie zamowienieKoncowe;

    private PracownikService pracownikService;
    private UzytkownikService uzytkownikService;
    private AptekaService aptekaService;
    private ProduktService produktService;
    private ZamowienieService zamowienieService;


    public WebController(PracownikService pracownikService, UzytkownikService uzytkownikService, AptekaService aptekaService, ProduktService produktService, ZamowienieService zamowienieService) {
        this.pracownikService = pracownikService;
        this.uzytkownikService = uzytkownikService;
        this.aptekaService = aptekaService;
        this.produktService = produktService;
        this.zamowienieService = zamowienieService;
    }

    @PostMapping("/login")
    public String logowanie(Model model, Uzytkownik uzytkownik){

        String username = uzytkownik.getUsername();
        String password = uzytkownik.getPassword();
        boolean jest =false;


        Pracownik[] pracownicy = pracownikService.getPracownicy();
        List<Pracownik> listpracownicy= Arrays.asList(pracownicy);

        model.addAttribute("pracownicy", listpracownicy);
        model.addAttribute("message", listpracownicy.get(0).getId());

        Uzytkownik[] uzytkownicy = uzytkownikService.getUzytkownicy();
        List<Uzytkownik> listUzytkownik = Arrays.asList(uzytkownicy);
        model.addAttribute("uzytkownicy", listUzytkownik);


        for(int i = 0; i<listUzytkownik.size();i++){
            if(username.equals(listUzytkownik.get(i).getUsername())  && password.equals(listUzytkownik.get(i).getPassword())){

                jest = true;
                uzytkownikZalogowany = listUzytkownik.get(i);
                //return "home";
                return "redirect:/apteka-wybor";
            }
        }
        if(jest == true){
            model.addAttribute("successMessage", String.format("successfully added %s", uzytkownik.getUsername()));
        }else{
            model.addAttribute("errorMessage", String.format("Nieporawny login lub hasło %s", uzytkownik.getUsername()));
        }


        return "login";
    }

    @GetMapping("/login")
    public String getLoginScreen(Model model, Uzytkownik uzytkownik){



        Pracownik[] pracownicy = pracownikService.getPracownicy();
        List<Pracownik> listpracownicy= Arrays.asList(pracownicy);


        model.addAttribute("pracownicy", listpracownicy);
        model.addAttribute("message", listpracownicy.get(0).getId());

        Uzytkownik[] uzytkownicy = uzytkownikService.getUzytkownicy();
        List<Uzytkownik> listUzytkownik = Arrays.asList(uzytkownicy);

        model.addAttribute("uzytkownicy", listUzytkownik);


        return "login";
    }

    @PostMapping("/register")
    public String addUzytkownik(Model model, Uzytkownik uzytkownik){
        String username = uzytkownik.getUsername();
        String password = uzytkownik.getPassword();
        String imie = uzytkownik.getImie();
        String nazwisko = uzytkownik.getNazwisko();
        String email = uzytkownik.getEmail();
        String telefon = uzytkownik.getTelefon();
        String adres = uzytkownik.getAdres();
        String wiek = uzytkownik.getWiek();
        String kraj = uzytkownik.getKraj();
        String plec = uzytkownik.getPlec();
        uzytkownik.setId_pracownika(0);

        Uzytkownik[] uzytkownicy = uzytkownikService.getUzytkownicy();
        Integer id = uzytkownicy.length + 1;
        uzytkownik.setId(id);
        uzytkownikService.addUzytkownik(uzytkownik);
        uzytkownikZalogowany = uzytkownik;

        return "redirect:/apteka-wybor";
    }

    @GetMapping("/register")
    public String getRegisterScreen(Model model, Uzytkownik uzytkownik){

        //to hold data
        Uzytkownik uzytkownik1 = new Uzytkownik();
        model.addAttribute("uzytkownik", uzytkownik1);

        return "register";

    }



    @GetMapping("/home")
    public String getHomeScreen(Model model){
        String nazwaUzytkonika = uzytkownikZalogowany.getUsername();
        Integer id_pracownika = uzytkownikZalogowany.getId_pracownika();
        if(id_pracownika == null){ id_pracownika=0;}
        model.addAttribute("nazwaUzytkownika", nazwaUzytkonika);
        model.addAttribute("id_pracownika", id_pracownika);

        return "home";

    }


    @PostMapping("/apteka-wybor")
    public String validateApteka(@ModelAttribute("apteka") Apteka apteka, Model model){
        //model.addAttribute("data",apteka.toString());

        String nazwa = apteka.getNazwa();

        Apteka[] apteki = aptekaService.getApteki();
        List<Apteka> listaAptek = Arrays.asList(apteki);

        for(int i=0;i<listaAptek.size();i++){
            if(nazwa.equals(listaAptek.get(i))){
                wybranaApteka = listaAptek.get(i);
                break;
            }
        }


        return "redirect:/home";
    }

    @GetMapping("/apteka-wybor")
    public String getAptekaWyborScreen(Model model, Apteka apteka){

        Apteka[] apteki = aptekaService.getApteki();
        /*
        List<String> listaNazwAptek = new ArrayList<String>();
        for(int i=0;i<apteki.length;i++){
            listaNazwAptek.add(apteki[i].getNazwa());
        }

       */
        List<Apteka> listaAptek = Arrays.asList(apteki);
        wybranaApteka = listaAptek.get(0);

        Apteka nowaApteka = new Apteka();
        //model.addAttribute("aptekaa", nowaApteka);
        model.addAttribute("apteki", listaAptek);



        return "apteka-wybor";

    }

    @PostMapping("/profil")
    public String changeUzytkownik(Model model, Uzytkownik uzytkownik){
        String username = uzytkownik.getUsername();
        String password = uzytkownik.getPassword();
        String imie = uzytkownik.getImie();
        String nazwisko = uzytkownik.getNazwisko();
        String email = uzytkownik.getEmail();
        String telefon = uzytkownik.getTelefon();
        String adres = uzytkownik.getAdres();
        String wiek = uzytkownik.getWiek();
        String kraj = uzytkownik.getKraj();
        String plec = uzytkownik.getPlec();

        uzytkownik.setId(uzytkownikZalogowany.getId());
        uzytkownik.setPlec(uzytkownikZalogowany.getPlec());
        uzytkownik.setId_pracownika(uzytkownikZalogowany.getId_pracownika());

        uzytkownikService.updateUzytkownik(uzytkownik);

        uzytkownikZalogowany = uzytkownik;

        return "profil";
    }

    @PostMapping("/produkty")
    public String getKoszyk(Model model, Magazyn magazyn){
        Integer l1 = magazyn.getL1();
        Integer l2 = magazyn.getL2();
        Integer l3 = magazyn.getL3();
        Integer l4 = magazyn.getL4();
        Integer l5 = magazyn.getL5();
        Integer l6 = magazyn.getL6();
        Integer l7 = magazyn.getL7();
        Integer l8 = magazyn.getL8();
        Integer l9 = magazyn.getL9();

        ArrayList<Integer> ceny = new ArrayList<Integer>();
        ceny.add(l1);
        ceny.add(l2);
        ceny.add(l3);
        ceny.add(l4);
        ceny.add(l5);
        ceny.add(l6);
        ceny.add(l7);
        ceny.add(l8);
        ceny.add(l9);
        int koszt = 0;

        Produkt[] produkty = produktService.getProdukty();
        List<Produkt> listaProduktow= Arrays.asList(produkty);

        for(int i=0; i<listaProduktow.size();i++){
            koszt += listaProduktow.get(i).getCena() * ceny.get(i);
        }

        koszyk = magazyn;

        koszyk.setKoszt(koszt);
        koszyk.setL1(l1);
        koszyk.setL2(l2);
        koszyk.setL3(l3);
        koszyk.setL4(l4);
        koszyk.setL5(l5);
        koszyk.setL6(l6);
        koszyk.setL7(l7);
        koszyk.setL8(l8);
        koszyk.setL9(l9);

        String nazwaUzytkownika = uzytkownikZalogowany.getUsername();


        return "redirect:/podsumowanie";
    }

    @GetMapping("/produkty")
    public String getProduktyScreen(Model model, Magazyn magazyn){

        model.addAttribute("nazwaUzytkownika", uzytkownikZalogowany.getUsername());

        Produkt[] produkty = produktService.getProdukty();
        List<Produkt> listaProduktow= Arrays.asList(produkty);

        String nazwaUzytkownika = uzytkownikZalogowany.getUsername();

        model.addAttribute("produkty", listaProduktow);
        model.addAttribute("nazwaUzytkownika", nazwaUzytkownika);
        model.addAttribute("id_pracownika", uzytkownikZalogowany.getId_pracownika());

        Magazyn magazyn1 = new Magazyn(1,0,0,0,0,0,0,0,0,0,0);
        model.addAttribute("magazyn", magazyn1);

        return "produkty";
    }


    @GetMapping("/profil")
    public String getProfilScreen(Model model){
        Uzytkownik uzytkownik = uzytkownikZalogowany;
        model.addAttribute("uzytkownik", uzytkownik );

        return "profil";

    }



    @PostMapping("/pracownicy")
    public String pracownicy(Model model, Pracownik pracownik){

        String imie = pracownik.getImie();
        String nazwisko = pracownik.getNazwisko();
        String adres = pracownik.getAdres();
        String telefon = pracownik.getTelefon();
        String pozycja = pracownik.getPozycja();
        String plec = pracownik.getPlec();


        Pracownik[] pracownicy = pracownikService.getPracownicy();

        Integer id = pracownicy.length + 1;
        pracownik.setId(id);
        pracownikService.addPracownik(pracownik);

        pracownicy = pracownikService.getPracownicy();
        List<Pracownik> listpracownicy= Arrays.asList(pracownicy);

        String nazwaUzytkownika = uzytkownikZalogowany.getUsername();

        model.addAttribute("nazwaUzytkownika", nazwaUzytkownika);
        model.addAttribute("pracownicy", listpracownicy);
        model.addAttribute("id_pracownika", uzytkownikZalogowany.getId_pracownika());

        return "pracownicy";
    }

    @GetMapping("/pracownicy")
    public String getPracownicyScreen(Model model, Pracownik pracownik){



        Pracownik[] pracownicy = pracownikService.getPracownicy();
        List<Pracownik> listpracownicy= Arrays.asList(pracownicy);

        String nazwaUzytkownika = uzytkownikZalogowany.getUsername();

        model.addAttribute("pracownicy", listpracownicy);
        model.addAttribute("nazwaUzytkownika", nazwaUzytkownika);
        model.addAttribute("id_pracownika", uzytkownikZalogowany.getId_pracownika());
        return "pracownicy";
    }

    @GetMapping("/uzytkownicy")
    public String getUzytkownicyScreen(Model model, Pracownik pracownik){



        Uzytkownik[] uzytkownicy = uzytkownikService.getUzytkownicy();
        List<Uzytkownik> listUzytkownik = Arrays.asList(uzytkownicy);

        model.addAttribute("uzytkownicy", listUzytkownik);
        model.addAttribute("nazwaUzytkownika", uzytkownikZalogowany.getUsername());
        return "uzytkownicy";
    }


    @GetMapping("/apteka")
    public String getAptekaScreen(Model model){
        Apteka apteka = wybranaApteka;
        model.addAttribute("apteka", apteka );
        model.addAttribute("nazwaUzytkownika", uzytkownikZalogowany.getUsername() );

        return "apteka";

    }

    @GetMapping("/historia-zamowien")
    public String getHistoriaScreen(Model model){
        Uzytkownik uzytkownik = uzytkownikZalogowany;
        model.addAttribute("nazwaUzytkownika", uzytkownikZalogowany.getUsername() );
        model.addAttribute("id_pracownika", uzytkownikZalogowany.getId_pracownika());


        Zamowienie[] zamowienia = zamowienieService.getZamowienia();
        List<Zamowienie> listaZamowien= Arrays.asList(zamowienia);
        ArrayList<Zamowienie> listaZamowienUrzytkownika = new ArrayList<Zamowienie>();

        for(int i =0;i<listaZamowien.size();i++){
            if(uzytkownikZalogowany.getId().equals(listaZamowien.get(i).getId_uzytkownika()) ){
                listaZamowienUrzytkownika.add(listaZamowien.get(i));
            }
        }


        model.addAttribute("zamowienia", listaZamowienUrzytkownika);

        return "historia-zamowien";

    }

    @GetMapping("/podsumowanie")
    public String getPodsumowanieScreen(Model model, Zamowienie zamowienie){
        Uzytkownik uzytkownik = uzytkownikZalogowany;
        model.addAttribute("uzytkownik", uzytkownik );
        model.addAttribute("nazwaUzytkownika", uzytkownikZalogowany.getUsername() );
        model.addAttribute("magazyn", koszyk);



        return "podsumowanie";

    }

    @PostMapping("/podsumowanie")
    public String podsumowanie(Model model, Zamowienie zamowienie){

        String metoda_platnosci = zamowienie.getMetoda_platnosci();
        String adres = zamowienie.getAdres();
        String telefon = zamowienie.getTelefon();


        Zamowienie[] zamownienia = zamowienieService.getZamowienia();
        Integer id = zamownienia.length + 1;
        zamowienie.setId(id);

        zamowienieKoncowe = zamowienie;

        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        zamowienieKoncowe.setData(date.format(formatter));
        zamowienieKoncowe.setKwota(koszyk.getKoszt());
        zamowienieKoncowe.setId_uzytkownika(uzytkownikZalogowany.getId());
        zamowienieKoncowe.setApap_i(koszyk.getL1());
        zamowienieKoncowe.setCholinex_i(koszyk.getL2());
        zamowienieKoncowe.setAspirin_i(koszyk.getL3());
        zamowienieKoncowe.setBuscopan_i(koszyk.getL4());
        zamowienieKoncowe.setRutinoscorbin_i(koszyk.getL5());
        zamowienieKoncowe.setKetonal_i(koszyk.getL6());
        zamowienieKoncowe.setAltacet_i(koszyk.getL7());
        zamowienieKoncowe.setStoperan_i(koszyk.getL8());
        zamowienieKoncowe.setEspumisan_i(koszyk.getL9());


        zamowienieService.addZamowienie(zamowienieKoncowe);

        return "redirect:/home";
    }

}

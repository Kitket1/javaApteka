--------------------------------------------------------
--  File created - poniedzia�ek-stycznia-16-2023   
--------------------------------------------------------
DROP TABLE "SYSTEM"."PRACOWNIK";
DROP TABLE "SYSTEM"."PRODUKT";
DROP TABLE "SYSTEM"."APTEKA";
DROP TABLE "SYSTEM"."ZAMOWIENIE";
DROP TABLE "SYSTEM"."UZYTKOWNIK";
DROP TABLE "SYSTEM"."PRACOWNIK";
DROP TABLE "SYSTEM"."APTEKA";
DROP TABLE "SYSTEM"."UZYTKOWNIK";
--------------------------------------------------------
--  DDL for Table PRACOWNIK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRACOWNIK" 
   (	"ID" NUMBER, 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PLEC" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"POZYCJA" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUKT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUKT" 
   (	"ID" NUMBER(7,0), 
	"NAZWA" VARCHAR2(40 BYTE), 
	"CENA" NUMBER(4,0), 
	"TYP" VARCHAR2(20 BYTE), 
	"OPIS" VARCHAR2(1000 BYTE), 
	"OPIS_KROTKO" VARCHAR2(500 BYTE), 
	"SKLAD" VARCHAR2(1000 BYTE), 
	"RECEPTA" NUMBER(1,0), 
	"IMG" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table APTEKA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."APTEKA" 
   (	"ID" NUMBER, 
	"NAZWA" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(20 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"KRAJ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ZAMOWIENIE" 
   (	"ID" NUMBER(4,0), 
	"DATA" VARCHAR2(20 BYTE), 
	"KWOTA" NUMBER, 
	"METODA_PLATNOSCI" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"ID_UZYTKOWNIKA" NUMBER, 
	"APAP_I" NUMBER, 
	"CHOLINEX_I" NUMBER, 
	"ASPIRIN_I" NUMBER, 
	"BUSCOPAN_I" NUMBER, 
	"RUTINOSCORBIN_I" NUMBER, 
	"KETONAL_I" NUMBER, 
	"ALTACET_I" NUMBER, 
	"STOPERAN_I" NUMBER, 
	"ESPUMISAN_I" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNIK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."UZYTKOWNIK" 
   (	"ID" NUMBER, 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PLEC" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"KRAJ" VARCHAR2(20 BYTE), 
	"WIEK" VARCHAR2(20 BYTE), 
	"ID_PRACOWNIKA" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRACOWNIK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRACOWNIK" 
   (	"ID" NUMBER, 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PLEC" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"POZYCJA" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table APTEKA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."APTEKA" 
   (	"ID" NUMBER, 
	"NAZWA" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(20 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"KRAJ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNIK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."UZYTKOWNIK" 
   (	"ID" NUMBER, 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PLEC" VARCHAR2(20 BYTE), 
	"ADRES" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(20 BYTE), 
	"KRAJ" VARCHAR2(20 BYTE), 
	"WIEK" VARCHAR2(20 BYTE), 
	"ID_PRACOWNIKA" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.PRACOWNIK
SET DEFINE OFF;
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('1','Waleria','Domaga�a','�','os.Na Skarpie 14, Krak�w','456234123','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('2','Bogdan','Wolski','m','ul. Grodzka 12, Krak�w','456213543','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('3','Ma�gorzata','Karp','�','os. Zielone 34/12, Krak�w','645123543','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('4','Anna','�ciborek','�','os. Na Lotnisku 4/12, Krak�w','432123123','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('5','asdf','fsadfas','m','asdzfasdf','123543512','fdsafas');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('6','gdf','ddd','m','as','432123534','fsadf');
REM INSERTING into SYSTEM.PRODUKT
SET DEFINE OFF;
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('1','APAP Caps','9','kapsulki','Lek APAP Caps stosuje si� w leczeniu objawowym �agodnego do umiarkowanego b�lu i (lub) gor�czki. Ten lek nale�y zawsze stosowa� zgodnie z zaleceniami lekarza lub farmaceuty. W razie w�tpliwo�ci nale�y zwr�ci� si� do lekarza lub farmaceuty. Kapsu�k� nale�y po�kn�� popijaj�c du�� ilo�ci� wody (p� szklanki). Nale�y powiedzie� lekarzowi lub farmaceucie o wszystkich lekach stosowanych przez pacjenta obecnie lub ostatnio, a tak�e o lekach, kt�re pacjent planuje stosowa�, w tym lekach wydawanych z przepisu lekarza.
Ro�ne leki, stosowane jednocze�nie, mog� wzajemnie na siebie wp�ywa�.','APAP Caps 500 mg przeznacozny jest do stosowania w leczeniu objawowym �agodnego do umiarkowanego b�lu oraz gor�czki.','Substancj� czynn� leku jest Paracetamol. Ka�da kapsu�ka mi�kka zawiera 500 mg Paracetamolu.
Pozosta�e sk�adniki to:
Zawarto�� kapsu�ki: Makrogol 400, Makrogol 600, Woda oczyszczona, Glikol propylenowy, Powidon, Krzemionka koloidalna bezwodna.
Os�onka kapsu�ki: �elatyna, Sorbitol ciek�y, Cz�ciowo odwodniony, Woda oczyszczona, Glicerol, Tytanu dwutlenek (E171).
Zawiera �ladowe ilo�ci alkoholu izopropylowego, trigliceryd�w nasyconych kwas�w t�uszczowych o �redniej d�ugo�ci �a�cucha, lecytyny sojowej.','0','images/apap.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('2','Cholinex','15','pastylki','Cholinex, 150 mg, pastylki twarde. Posta� farmaceutyczna: pastylka twarda. Pastylki twarde o kszta�cie p�askiego walca lekko obustronnie wypuk�ego, barwie ��tawoz�ocistej i zapachu mi�towym. Wskazania do stosowania: Stany zapalne jamy ustnej i gard�a. B�l i obrz�k gard�a towarzysz�cy stanom zapalnym. Jako lek wspomagaj�cy antybiotykoterapi� zaka�e� b�ony �luzowej jamy ustnej i gard�a wywo�anych przez niekt�re drobnoustroje. Dawkowanie i spos�b podawania: Do podawania doustnego. Doro�li i dzieci powy�ej 12 roku �ycia: przeci�tnie ssa� po 1 pastylce 4 do 6 razy na dob�. Je�li b�l gard�a nie ust�puje w ci�gu 1 do 2 dni nale�y skontaktowa� si� z lekarzem.','Lek Cholinex dzia�a przeciwzapalnie, zmniejsza stan zapalny oraz b�l gard�a oraz szybko i skutecznie niweluje zaczerwienienia oraz obrz�k gard�a i jamy ustnej. Lek dla doros�ych oraz dzieci powy�ej 12. roku �ycia.','Sk�ad jako�ciowy i ilo�ciowy: 1 pastylka zawiera 150 mg Cholini salicylas (choliny salicylanu). Substancje pomocnicze o znanym dzia�aniu: sacharoza 1848 mg, glukoza ciek�a 1493 mg. ','0','images/cholinex.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('3','ASPIRIN C FORTE','21','tabletki musujace','spirin C Forte to lek przeznaczony do walki z objawami przezi�bienia takimi jak gor�czka, b�l g�owy, r�wnie� b�l gard�a. Forma rozpuszczalnej tabletki przyspiesza wch�anianie leku. Ma dzia�anie: przeciwgor�czkowe, przeciwb�lowe, przeciwzapalne. awarto�� witaminy C wzmacnia system odporno�ciowy organizmu, musuj�ca posta� leku przyspiesza jego wch�anianie. Lek do podawania doustnego. Tabletk� musuj�c� nale�y rozpu�ci� w szklance wody i wypi� musuj�cy p�yn. Przyjmowa� po posi�kach. Leku nie nale�y stosowa� d�u�ej ni� 4 dni bez konsultacji z lekarzem.','Lek na objawy przezi�bienia oraz b�l r�nego pochodzenia o umiarkowanym lub ma�ym nasileniu.','Kwas acetylosalicylowy- 800 mg, Witamina C 480 mg .','0','images/aspirin.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('4','Buscopan Forte','15','tabletki','Buscopan Forte lek przeznaczony do stosowania w �agodzeniu b�l�w kolkowych, tj. b�l�w w obr�bie jamy brzusznej, kt�rych intensywno�� nasila si� i (lub) s�abnie i trudno okre�li� ich dok�adn� lokalizacj�. Buscopan mo�na stosowa� w stanach skurczowych mi�ni g�adkich przewodu pokarmowego (w zaburzeniach czynno�ciowych w obr�bie przewodu pokarmowego, bolesnych skurczach �o��dka, kolce jelitowej, zespole jelita dra�liwego), w stanach skurczowych i dyskinezji dr�g ��ciowych (w zaburzeniach czynno�ciowych w obr�bie dr�g ��ciowych, ostrym b�lu w drogach ��ciowych, kolce ��ciowej), w stanach skurczowych w obr�bie uk�adu moczowo-p�ciowego (w bolesnym miesi�czkowaniu, kolce nerkowej, stanach skurczowych zwi�zanych z kamic� moczowodow�).','Lek o dzia�aniu rozkurczowym przeznaczony jest dla os�b doros�ych oraz m�odzie�y powy�ej 12. roku �ycia.','Substancj� czynn� leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Substancj� czynn� leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Pozosta�e sk�adniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpo�redniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).Pozosta�e sk�adniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpo�redniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).','0','images/buscopan.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('5','Rutinoscorbin','15','tabletki','Wskazania do stosowania: w stanach niedoboru kwasu askorbowego, w stanach zwi�kszonego zapotrzebowania na kwas askorbowy (przezi�bienia, zaka�enia wirusowe, w tym grypa), pomocniczo w nadmiernej przepuszczalno�ci naczy�. Produkt Rutinoscorbin jest wskazany do stosowania u os�b doros�ych i dzieci w wieku 6 lat i starszych. Przeciwwskazania: Nadwra�liwo�� na rutozyd lub kwas askorbowy lub na kt�r�kolwiek substancj� pomocnicz�.','Lek polecany do stosowania w stanach niedoboru witaminy C oraz pomocniczo w nadmiernej przepuszczalno�ci naczy�. Wskazany do stosowania od 6. roku �ycia.','Rutinoscorbin to lek ��cz�cy w sobie 2 uzupe�niaj�ce si� sk�adniki: dzia�aj�ce w synergii rutyn� i witamin� C.

Rutyna (rutozyd) - wzmacnia naczynia krwiono�ne i zmniejsza ich przepuszczalno��. Chroni r�wnie� witamin� C przed utlenieniem, dzi�ki czemu zachowuje ona d�u�ej swoje w�a�ciwo�ci.

Witamina C, czyli kwas askorbowy, dzia�a przeciwutleniaj�co. Jest niezb�dna w wielu procesach metabolicznych, uczestniczy mi�dzy innymi w tworzeniu kolagenu i hemoglobiny oraz u�atwia przyswajanie �elaza.','0','images/rutinoscorbin.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('6','Ketonal Active','16','kapsulki','Ostre b�le g�owy, b�le menstruacyjne, b�le staw�w, mi�ni lub z�b�w? Ka�dy z nas od czasu do czasu do�wiadcza b�lu. Aby nie przeszkadza� nam on w normalnym funkcjonowaniu, si�gnij po Ketonal Active i walcz z b�lem. Kapsu�ki Ketonal Active polecane s� osobom dora�nie potrzebuj�cym leku przeciwb�lowego w leczeniu lekkiego do umiarkowanego b�lu r�nego pochodzenia. Ketonal Active mo�e by� stosowany w przypadku b�l�w kostno-stawowych, b�lu g�owy, b�lu mi�ni, z�b�w, b�l�w menstruacyjnych oraz b�l�w pourazowych.','Lek przeciwb�lowy, przeciwzapalny oraz przeciwgor�czkowy polecany dla os�b doros�ych i m�odzie�y powy�ej 15. roku �ycia.','Ketonal Active: 1 kapsu�ka zawiera 50 mg ketoprofenu oraz 186,10 mg laktozy jednowodnej. Ketonal Sprint: 1 saszetka zawiera 25 mg ketoprofenu w postaci ketoprofenu z lizyn� (40 mg)/1 saszetka zawiera 50 mg ketoprofenu w postaci ketoprofenu z lizyn� (80 mg).','0','images/ketonal.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('7','ALTACET ','13','zel','Ka�dy z nas dozna� w swoim �yciu kontuzji podczas aktywno�ci fizycznej. Jazda na rowerze, gra w pi�k�, bieganie, a nawet chodzenie na szpilkach lub chwila nieuwagi mog� sko�czy� si� urazem, silnym st�uczeniem lub zwichni�ciem stawu. Takie kontuzje prowadz� do uszkodzenia tkanek mi�kkich lub staw�w. Aby przeciwdzia�a� ich objawom i ukoi� b�l zastosuj �el Altacet. Altacet od firmy Sandoz to �el przeciwb�lowy na st�uczenia i siniaki. To r�wnie� idealny �rodek na oparzenia I stopnia. Doskonale sprawdzi si� w ka�dej domowej apteczce. �el Altacet stosuje si� miejscowo na sk�r�.','Lek Altacet �el to nowoczesny preparat do miejscowego stosowania w przypadku uraz�w i kontuzji, a tak�e obrz�k�w spowodowanych oparzeniami I stopnia. Altacet skutecznie zmniejsza obrz�k tkanek, �agodzi objawy odczynu zapalnego, a tak�e redukuje b�l.','Substancj� czynn� leku jest Glinu octanowinian 10 mg/g.
Pozosta�e sk�adniki to: Etanol 96%, Lewomentol, Metylu parahydroksybenzoesan, Karbomer, Sodu wodorotlenek, Woda oczyszczona.','0','images/altacet.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('8','Stoperan ','11','kapsulki','Stoperan 2 mg to lek przeciwbiegunkowy zawiera loperamid. Hamuje nasilone ruchy jelit, a tak�e zwi�ksza wch�anianie wody. powoduj�c zwrotne wch�anianie wody w jelicie grubym, zmienia konsystencj� stolca. Stoperan jest wskazany w objawowym leczeniu ostrej i przewlek�ej biegunki.
','Stoperan 2 mg lek przeciwbiegunkowy przeznaczony jest do stosowania u doros�ych i dzieci w wieku od 6 lat.','Substancj� czynn� leku jest Loperamidu chlorowodorek (Loperamidi hydrochloridum) 2 mg.
Substancje pomocnicze to: Laktoza jednowodna, Skrobia kukurydziana, Talk, Magnezu stearynian, sk�ad kapsu�ki �elatynowej: �elatyna, Erytrozyna (E127), B��kit patentowy (E131), Tytanu dwutlenek (E171), ��cie� chinolinowa (E104).','0','images/stoperan.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('9','ESPUMISAN ','17','kapsulki','Simetikon obni�a napi�cie powierzchniowe p�cherzyk�w gazu zawartych w pokarmie i �luzie przewodu pokarmowego, powoduj�c ich p�kanie i wch�anianie przez �ciany jelit lub wydalenie. Podczas wykonywania bada� ultrasonograficznych i radiologicznych: �o��dka, jelit, trzustki, p�cherzyka ��ciowego i nerek zapobiega nak�adaniu si� gaz�w i pieni�cej tre�ci pokarmowej na obraz badanych narz�d�w. Simetikon nie wch�ania si� z przewodu pokarmowego i jest wydalany w postaci niezmienionej.','Lek Espumisan stosowany jest w leczeniu wzd�cia brzucha i stan�w nadmiernego tworzenia i nagromadzenia si� gaz�w w �o��dku i jelitach','1 kaps. zawiera 40 mg simetikonu','0','images/espumisan.jpg');
REM INSERTING into SYSTEM.APTEKA
SET DEFINE OFF;
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('1','Ma�a','os.Solne','123534123','Polska');
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('2','Du�a','ul. D�uga','543123654','Polska');
REM INSERTING into SYSTEM.ZAMOWIENIE
SET DEFINE OFF;
Insert into SYSTEM.ZAMOWIENIE (ID,DATA,KWOTA,METODA_PLATNOSCI,ADRES,TELEFON,ID_UZYTKOWNIKA,APAP_I,CHOLINEX_I,ASPIRIN_I,BUSCOPAN_I,RUTINOSCORBIN_I,KETONAL_I,ALTACET_I,STOPERAN_I,ESPUMISAN_I) values ('1','16-01-2023','278','przelewe',null,null,'1','12','0','4','0','5','0','0','1','0');
REM INSERTING into SYSTEM.UZYTKOWNIK
SET DEFINE OFF;
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('1','przemo','przemo','przemo123@gamil.com','Przemys�aw','Kowalski','m','ul.Powaski 12, Krak�w','123456789','Polska','25',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('2','Gural','Guralesko','grzegorz.winiarski@gmail.com','Grzegorz','Winiarski','m','ul.Prosta 12, Krak�w','123543123','Polska','23',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('3','Krzychu','Krzychu','krzysiek@gmail.com','Krzysztof','Zygfryd','m','ul. Ma�a 44, Krak�w','234512342','Polska','54',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('4','Barbara','basia','barbar@gmail.com','Barbara','Domaga�a','�','os.Piast�w 23, Krak�w','654123534','Polska','23',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('5','pan','pan','fsdfas@gmail.com','fdsfsd','fsdfsd','m','fsdfsd','123432123','Polska','32','1');
--------------------------------------------------------
--  DDL for Index PRACOWNIK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PRACOWNIK_PK" ON "SYSTEM"."PRACOWNIK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index APTEKA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."APTEKA_PK" ON "SYSTEM"."APTEKA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."UZYTKOWNIK_PK" ON "SYSTEM"."UZYTKOWNIK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PRACOWNIK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRACOWNIK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRACOWNIK" ADD CONSTRAINT "PRACOWNIK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUKT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUKT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APTEKA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."APTEKA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."APTEKA" ADD CONSTRAINT "APTEKA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ZAMOWIENIE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UZYTKOWNIK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."UZYTKOWNIK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."UZYTKOWNIK" ADD CONSTRAINT "UZYTKOWNIK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;

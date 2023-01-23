--------------------------------------------------------
--  File created - poniedzia³ek-stycznia-16-2023   
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
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('1','Waleria','Domaga³a','¿','os.Na Skarpie 14, Kraków','456234123','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('2','Bogdan','Wolski','m','ul. Grodzka 12, Kraków','456213543','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('3','Ma³gorzata','Karp','¿','os. Zielone 34/12, Kraków','645123543','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('4','Anna','Œciborek','¿','os. Na Lotnisku 4/12, Kraków','432123123','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('5','asdf','fsadfas','m','asdzfasdf','123543512','fdsafas');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('6','gdf','ddd','m','as','432123534','fsadf');
REM INSERTING into SYSTEM.PRODUKT
SET DEFINE OFF;
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('1','APAP Caps','9','kapsulki','Lek APAP Caps stosuje siê w leczeniu objawowym ³agodnego do umiarkowanego bólu i (lub) gor¹czki. Ten lek nale¿y zawsze stosowaæ zgodnie z zaleceniami lekarza lub farmaceuty. W razie w¹tpliwoœci nale¿y zwróciæ siê do lekarza lub farmaceuty. Kapsu³kê nale¿y po³kn¹æ popijaj¹c du¿¹ iloœci¹ wody (pó³ szklanki). Nale¿y powiedzieæ lekarzowi lub farmaceucie o wszystkich lekach stosowanych przez pacjenta obecnie lub ostatnio, a tak¿e o lekach, które pacjent planuje stosowaæ, w tym lekach wydawanych z przepisu lekarza.
Ro¿ne leki, stosowane jednoczeœnie, mog¹ wzajemnie na siebie wp³ywaæ.','APAP Caps 500 mg przeznacozny jest do stosowania w leczeniu objawowym ³agodnego do umiarkowanego bólu oraz gor¹czki.','Substancj¹ czynn¹ leku jest Paracetamol. Ka¿da kapsu³ka miêkka zawiera 500 mg Paracetamolu.
Pozosta³e sk³adniki to:
Zawartoœæ kapsu³ki: Makrogol 400, Makrogol 600, Woda oczyszczona, Glikol propylenowy, Powidon, Krzemionka koloidalna bezwodna.
Os³onka kapsu³ki: ¯elatyna, Sorbitol ciek³y, Czêœciowo odwodniony, Woda oczyszczona, Glicerol, Tytanu dwutlenek (E171).
Zawiera œladowe iloœci alkoholu izopropylowego, triglicerydów nasyconych kwasów t³uszczowych o œredniej d³ugoœci ³añcucha, lecytyny sojowej.','0','images/apap.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('2','Cholinex','15','pastylki','Cholinex, 150 mg, pastylki twarde. Postaæ farmaceutyczna: pastylka twarda. Pastylki twarde o kszta³cie p³askiego walca lekko obustronnie wypuk³ego, barwie ¿ó³tawoz³ocistej i zapachu miêtowym. Wskazania do stosowania: Stany zapalne jamy ustnej i gard³a. Ból i obrzêk gard³a towarzysz¹cy stanom zapalnym. Jako lek wspomagaj¹cy antybiotykoterapiê zaka¿eñ b³ony œluzowej jamy ustnej i gard³a wywo³anych przez niektóre drobnoustroje. Dawkowanie i sposób podawania: Do podawania doustnego. Doroœli i dzieci powy¿ej 12 roku ¿ycia: przeciêtnie ssaæ po 1 pastylce 4 do 6 razy na dobê. Jeœli ból gard³a nie ustêpuje w ci¹gu 1 do 2 dni nale¿y skontaktowaæ siê z lekarzem.','Lek Cholinex dzia³a przeciwzapalnie, zmniejsza stan zapalny oraz ból gard³a oraz szybko i skutecznie niweluje zaczerwienienia oraz obrzêk gard³a i jamy ustnej. Lek dla doros³ych oraz dzieci powy¿ej 12. roku ¿ycia.','Sk³ad jakoœciowy i iloœciowy: 1 pastylka zawiera 150 mg Cholini salicylas (choliny salicylanu). Substancje pomocnicze o znanym dzia³aniu: sacharoza 1848 mg, glukoza ciek³a 1493 mg. ','0','images/cholinex.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('3','ASPIRIN C FORTE','21','tabletki musujace','spirin C Forte to lek przeznaczony do walki z objawami przeziêbienia takimi jak gor¹czka, ból g³owy, równie¿ ból gard³a. Forma rozpuszczalnej tabletki przyspiesza wch³anianie leku. Ma dzia³anie: przeciwgor¹czkowe, przeciwbólowe, przeciwzapalne. awartoœæ witaminy C wzmacnia system odpornoœciowy organizmu, musuj¹ca postaæ leku przyspiesza jego wch³anianie. Lek do podawania doustnego. Tabletkê musuj¹c¹ nale¿y rozpuœciæ w szklance wody i wypiæ musuj¹cy p³yn. Przyjmowaæ po posi³kach. Leku nie nale¿y stosowaæ d³u¿ej ni¿ 4 dni bez konsultacji z lekarzem.','Lek na objawy przeziêbienia oraz ból ró¿nego pochodzenia o umiarkowanym lub ma³ym nasileniu.','Kwas acetylosalicylowy- 800 mg, Witamina C 480 mg .','0','images/aspirin.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('4','Buscopan Forte','15','tabletki','Buscopan Forte lek przeznaczony do stosowania w ³agodzeniu bólów kolkowych, tj. bólów w obrêbie jamy brzusznej, których intensywnoœæ nasila siê i (lub) s³abnie i trudno okreœliæ ich dok³adn¹ lokalizacjê. Buscopan mo¿na stosowaæ w stanach skurczowych miêœni g³adkich przewodu pokarmowego (w zaburzeniach czynnoœciowych w obrêbie przewodu pokarmowego, bolesnych skurczach ¿o³¹dka, kolce jelitowej, zespole jelita dra¿liwego), w stanach skurczowych i dyskinezji dróg ¿ó³ciowych (w zaburzeniach czynnoœciowych w obrêbie dróg ¿ó³ciowych, ostrym bólu w drogach ¿ó³ciowych, kolce ¿ó³ciowej), w stanach skurczowych w obrêbie uk³adu moczowo-p³ciowego (w bolesnym miesi¹czkowaniu, kolce nerkowej, stanach skurczowych zwi¹zanych z kamic¹ moczowodow¹).','Lek o dzia³aniu rozkurczowym przeznaczony jest dla osób doros³ych oraz m³odzie¿y powy¿ej 12. roku ¿ycia.','Substancj¹ czynn¹ leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Substancj¹ czynn¹ leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Pozosta³e sk³adniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpoœredniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).Pozosta³e sk³adniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpoœredniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).','0','images/buscopan.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('5','Rutinoscorbin','15','tabletki','Wskazania do stosowania: w stanach niedoboru kwasu askorbowego, w stanach zwiêkszonego zapotrzebowania na kwas askorbowy (przeziêbienia, zaka¿enia wirusowe, w tym grypa), pomocniczo w nadmiernej przepuszczalnoœci naczyñ. Produkt Rutinoscorbin jest wskazany do stosowania u osób doros³ych i dzieci w wieku 6 lat i starszych. Przeciwwskazania: Nadwra¿liwoœæ na rutozyd lub kwas askorbowy lub na któr¹kolwiek substancjê pomocnicz¹.','Lek polecany do stosowania w stanach niedoboru witaminy C oraz pomocniczo w nadmiernej przepuszczalnoœci naczyñ. Wskazany do stosowania od 6. roku ¿ycia.','Rutinoscorbin to lek ³¹cz¹cy w sobie 2 uzupe³niaj¹ce siê sk³adniki: dzia³aj¹ce w synergii rutynê i witaminê C.

Rutyna (rutozyd) - wzmacnia naczynia krwionoœne i zmniejsza ich przepuszczalnoœæ. Chroni równie¿ witaminê C przed utlenieniem, dziêki czemu zachowuje ona d³u¿ej swoje w³aœciwoœci.

Witamina C, czyli kwas askorbowy, dzia³a przeciwutleniaj¹co. Jest niezbêdna w wielu procesach metabolicznych, uczestniczy miêdzy innymi w tworzeniu kolagenu i hemoglobiny oraz u³atwia przyswajanie ¿elaza.','0','images/rutinoscorbin.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('6','Ketonal Active','16','kapsulki','Ostre bóle g³owy, bóle menstruacyjne, bóle stawów, miêœni lub zêbów? Ka¿dy z nas od czasu do czasu doœwiadcza bólu. Aby nie przeszkadza³ nam on w normalnym funkcjonowaniu, siêgnij po Ketonal Active i walcz z bólem. Kapsu³ki Ketonal Active polecane s¹ osobom doraŸnie potrzebuj¹cym leku przeciwbólowego w leczeniu lekkiego do umiarkowanego bólu ró¿nego pochodzenia. Ketonal Active mo¿e byæ stosowany w przypadku bólów kostno-stawowych, bólu g³owy, bólu miêœni, zêbów, bólów menstruacyjnych oraz bólów pourazowych.','Lek przeciwbólowy, przeciwzapalny oraz przeciwgor¹czkowy polecany dla osób doros³ych i m³odzie¿y powy¿ej 15. roku ¿ycia.','Ketonal Active: 1 kapsu³ka zawiera 50 mg ketoprofenu oraz 186,10 mg laktozy jednowodnej. Ketonal Sprint: 1 saszetka zawiera 25 mg ketoprofenu w postaci ketoprofenu z lizyn¹ (40 mg)/1 saszetka zawiera 50 mg ketoprofenu w postaci ketoprofenu z lizyn¹ (80 mg).','0','images/ketonal.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('7','ALTACET ','13','zel','Ka¿dy z nas dozna³ w swoim ¿yciu kontuzji podczas aktywnoœci fizycznej. Jazda na rowerze, gra w pi³kê, bieganie, a nawet chodzenie na szpilkach lub chwila nieuwagi mog¹ skoñczyæ siê urazem, silnym st³uczeniem lub zwichniêciem stawu. Takie kontuzje prowadz¹ do uszkodzenia tkanek miêkkich lub stawów. Aby przeciwdzia³aæ ich objawom i ukoiæ ból zastosuj ¿el Altacet. Altacet od firmy Sandoz to ¿el przeciwbólowy na st³uczenia i siniaki. To równie¿ idealny œrodek na oparzenia I stopnia. Doskonale sprawdzi siê w ka¿dej domowej apteczce. ¯el Altacet stosuje siê miejscowo na skórê.','Lek Altacet ¿el to nowoczesny preparat do miejscowego stosowania w przypadku urazów i kontuzji, a tak¿e obrzêków spowodowanych oparzeniami I stopnia. Altacet skutecznie zmniejsza obrzêk tkanek, ³agodzi objawy odczynu zapalnego, a tak¿e redukuje ból.','Substancj¹ czynn¹ leku jest Glinu octanowinian 10 mg/g.
Pozosta³e sk³adniki to: Etanol 96%, Lewomentol, Metylu parahydroksybenzoesan, Karbomer, Sodu wodorotlenek, Woda oczyszczona.','0','images/altacet.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('8','Stoperan ','11','kapsulki','Stoperan 2 mg to lek przeciwbiegunkowy zawiera loperamid. Hamuje nasilone ruchy jelit, a tak¿e zwiêksza wch³anianie wody. powoduj¹c zwrotne wch³anianie wody w jelicie grubym, zmienia konsystencjê stolca. Stoperan jest wskazany w objawowym leczeniu ostrej i przewlek³ej biegunki.
','Stoperan 2 mg lek przeciwbiegunkowy przeznaczony jest do stosowania u doros³ych i dzieci w wieku od 6 lat.','Substancj¹ czynn¹ leku jest Loperamidu chlorowodorek (Loperamidi hydrochloridum) 2 mg.
Substancje pomocnicze to: Laktoza jednowodna, Skrobia kukurydziana, Talk, Magnezu stearynian, sk³ad kapsu³ki ¿elatynowej: ¯elatyna, Erytrozyna (E127), B³êkit patentowy (E131), Tytanu dwutlenek (E171), ¯ó³cieñ chinolinowa (E104).','0','images/stoperan.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('9','ESPUMISAN ','17','kapsulki','Simetikon obni¿a napiêcie powierzchniowe pêcherzyków gazu zawartych w pokarmie i œluzie przewodu pokarmowego, powoduj¹c ich pêkanie i wch³anianie przez œciany jelit lub wydalenie. Podczas wykonywania badañ ultrasonograficznych i radiologicznych: ¿o³¹dka, jelit, trzustki, pêcherzyka ¿ó³ciowego i nerek zapobiega nak³adaniu siê gazów i pieni¹cej treœci pokarmowej na obraz badanych narz¹dów. Simetikon nie wch³ania siê z przewodu pokarmowego i jest wydalany w postaci niezmienionej.','Lek Espumisan stosowany jest w leczeniu wzdêcia brzucha i stanów nadmiernego tworzenia i nagromadzenia siê gazów w ¿o³¹dku i jelitach','1 kaps. zawiera 40 mg simetikonu','0','images/espumisan.jpg');
REM INSERTING into SYSTEM.APTEKA
SET DEFINE OFF;
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('1','Ma³a','os.Solne','123534123','Polska');
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('2','Du¿a','ul. D³uga','543123654','Polska');
REM INSERTING into SYSTEM.ZAMOWIENIE
SET DEFINE OFF;
Insert into SYSTEM.ZAMOWIENIE (ID,DATA,KWOTA,METODA_PLATNOSCI,ADRES,TELEFON,ID_UZYTKOWNIKA,APAP_I,CHOLINEX_I,ASPIRIN_I,BUSCOPAN_I,RUTINOSCORBIN_I,KETONAL_I,ALTACET_I,STOPERAN_I,ESPUMISAN_I) values ('1','16-01-2023','278','przelewe',null,null,'1','12','0','4','0','5','0','0','1','0');
REM INSERTING into SYSTEM.UZYTKOWNIK
SET DEFINE OFF;
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('1','przemo','przemo','przemo123@gamil.com','Przemys³aw','Kowalski','m','ul.Powaski 12, Kraków','123456789','Polska','25',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('2','Gural','Guralesko','grzegorz.winiarski@gmail.com','Grzegorz','Winiarski','m','ul.Prosta 12, Kraków','123543123','Polska','23',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('3','Krzychu','Krzychu','krzysiek@gmail.com','Krzysztof','Zygfryd','m','ul. Ma³a 44, Kraków','234512342','Polska','54',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('4','Barbara','basia','barbar@gmail.com','Barbara','Domaga³a','¿','os.Piastów 23, Kraków','654123534','Polska','23',null);
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

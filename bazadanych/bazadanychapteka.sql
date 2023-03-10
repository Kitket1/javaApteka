--------------------------------------------------------
--  File created - poniedziałek-stycznia-16-2023   
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
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('1','Waleria','Domagała','ż','os.Na Skarpie 14, Kraków','456234123','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('2','Bogdan','Wolski','m','ul. Grodzka 12, Kraków','456213543','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('3','Małgorzata','Karp','ż','os. Zielone 34/12, Kraków','645123543','Ekspedient');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('4','Anna','Ściborek','ż','os. Na Lotnisku 4/12, Kraków','432123123','Magazynier');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('5','asdf','fsadfas','m','asdzfasdf','123543512','fdsafas');
Insert into SYSTEM.PRACOWNIK (ID,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,POZYCJA) values ('6','gdf','ddd','m','as','432123534','fsadf');
REM INSERTING into SYSTEM.PRODUKT
SET DEFINE OFF;
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('1','APAP Caps','9','kapsulki','Lek APAP Caps stosuje się w leczeniu objawowym łagodnego do umiarkowanego bólu i (lub) gorączki. Ten lek należy zawsze stosować zgodnie z zaleceniami lekarza lub farmaceuty. W razie wątpliwości należy zwrócić się do lekarza lub farmaceuty. Kapsułkę należy połknąć popijając dużą ilością wody (pół szklanki). Należy powiedzieć lekarzowi lub farmaceucie o wszystkich lekach stosowanych przez pacjenta obecnie lub ostatnio, a także o lekach, które pacjent planuje stosować, w tym lekach wydawanych z przepisu lekarza.
Rożne leki, stosowane jednocześnie, mogą wzajemnie na siebie wpływać.','APAP Caps 500 mg przeznacozny jest do stosowania w leczeniu objawowym łagodnego do umiarkowanego bólu oraz gorączki.','Substancją czynną leku jest Paracetamol. Każda kapsułka miękka zawiera 500 mg Paracetamolu.
Pozostałe składniki to:
Zawartość kapsułki: Makrogol 400, Makrogol 600, Woda oczyszczona, Glikol propylenowy, Powidon, Krzemionka koloidalna bezwodna.
Osłonka kapsułki: Żelatyna, Sorbitol ciekły, Częściowo odwodniony, Woda oczyszczona, Glicerol, Tytanu dwutlenek (E171).
Zawiera śladowe ilości alkoholu izopropylowego, triglicerydów nasyconych kwasów tłuszczowych o średniej długości łańcucha, lecytyny sojowej.','0','images/apap.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('2','Cholinex','15','pastylki','Cholinex, 150 mg, pastylki twarde. Postać farmaceutyczna: pastylka twarda. Pastylki twarde o kształcie płaskiego walca lekko obustronnie wypukłego, barwie żółtawozłocistej i zapachu miętowym. Wskazania do stosowania: Stany zapalne jamy ustnej i gardła. Ból i obrzęk gardła towarzyszący stanom zapalnym. Jako lek wspomagający antybiotykoterapię zakażeń błony śluzowej jamy ustnej i gardła wywołanych przez niektóre drobnoustroje. Dawkowanie i sposób podawania: Do podawania doustnego. Dorośli i dzieci powyżej 12 roku życia: przeciętnie ssać po 1 pastylce 4 do 6 razy na dobę. Jeśli ból gardła nie ustępuje w ciągu 1 do 2 dni należy skontaktować się z lekarzem.','Lek Cholinex działa przeciwzapalnie, zmniejsza stan zapalny oraz ból gardła oraz szybko i skutecznie niweluje zaczerwienienia oraz obrzęk gardła i jamy ustnej. Lek dla dorosłych oraz dzieci powyżej 12. roku życia.','Skład jakościowy i ilościowy: 1 pastylka zawiera 150 mg Cholini salicylas (choliny salicylanu). Substancje pomocnicze o znanym działaniu: sacharoza 1848 mg, glukoza ciekła 1493 mg. ','0','images/cholinex.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('3','ASPIRIN C FORTE','21','tabletki musujace','spirin C Forte to lek przeznaczony do walki z objawami przeziębienia takimi jak gorączka, ból głowy, również ból gardła. Forma rozpuszczalnej tabletki przyspiesza wchłanianie leku. Ma działanie: przeciwgorączkowe, przeciwbólowe, przeciwzapalne. awartość witaminy C wzmacnia system odpornościowy organizmu, musująca postać leku przyspiesza jego wchłanianie. Lek do podawania doustnego. Tabletkę musującą należy rozpuścić w szklance wody i wypić musujący płyn. Przyjmować po posiłkach. Leku nie należy stosować dłużej niż 4 dni bez konsultacji z lekarzem.','Lek na objawy przeziębienia oraz ból różnego pochodzenia o umiarkowanym lub małym nasileniu.','Kwas acetylosalicylowy- 800 mg, Witamina C 480 mg .','0','images/aspirin.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('4','Buscopan Forte','15','tabletki','Buscopan Forte lek przeznaczony do stosowania w łagodzeniu bólów kolkowych, tj. bólów w obrębie jamy brzusznej, których intensywność nasila się i (lub) słabnie i trudno określić ich dokładną lokalizację. Buscopan można stosować w stanach skurczowych mięśni gładkich przewodu pokarmowego (w zaburzeniach czynnościowych w obrębie przewodu pokarmowego, bolesnych skurczach żołądka, kolce jelitowej, zespole jelita drażliwego), w stanach skurczowych i dyskinezji dróg żółciowych (w zaburzeniach czynnościowych w obrębie dróg żółciowych, ostrym bólu w drogach żółciowych, kolce żółciowej), w stanach skurczowych w obrębie układu moczowo-płciowego (w bolesnym miesiączkowaniu, kolce nerkowej, stanach skurczowych związanych z kamicą moczowodową).','Lek o działaniu rozkurczowym przeznaczony jest dla osób dorosłych oraz młodzieży powyżej 12. roku życia.','Substancją czynną leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Substancją czynną leku jest hioscyny butylobromek. Jedna tabletka powlekana zawiera 20 mg hioscyny butylobromku (Hyoscini butylbromidum).
Pozostałe składniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpośredniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).Pozostałe składniki leku to: powidon K25, laktoza jednowodna, celuloza mikrokrystaliczna, laktoza jednowodna (do tabletkowania bezpośredniego), magnezu stearynian. Otoczka: Opadry II White 85G18490 (alkohol poliwinylowy, talk, tytanu dwutlenek, lecytyna, makrogol).','0','images/buscopan.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('5','Rutinoscorbin','15','tabletki','Wskazania do stosowania: w stanach niedoboru kwasu askorbowego, w stanach zwiększonego zapotrzebowania na kwas askorbowy (przeziębienia, zakażenia wirusowe, w tym grypa), pomocniczo w nadmiernej przepuszczalności naczyń. Produkt Rutinoscorbin jest wskazany do stosowania u osób dorosłych i dzieci w wieku 6 lat i starszych. Przeciwwskazania: Nadwrażliwość na rutozyd lub kwas askorbowy lub na którąkolwiek substancję pomocniczą.','Lek polecany do stosowania w stanach niedoboru witaminy C oraz pomocniczo w nadmiernej przepuszczalności naczyń. Wskazany do stosowania od 6. roku życia.','Rutinoscorbin to lek łączący w sobie 2 uzupełniające się składniki: działające w synergii rutynę i witaminę C.

Rutyna (rutozyd) - wzmacnia naczynia krwionośne i zmniejsza ich przepuszczalność. Chroni również witaminę C przed utlenieniem, dzięki czemu zachowuje ona dłużej swoje właściwości.

Witamina C, czyli kwas askorbowy, działa przeciwutleniająco. Jest niezbędna w wielu procesach metabolicznych, uczestniczy między innymi w tworzeniu kolagenu i hemoglobiny oraz ułatwia przyswajanie żelaza.','0','images/rutinoscorbin.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('6','Ketonal Active','16','kapsulki','Ostre bóle głowy, bóle menstruacyjne, bóle stawów, mięśni lub zębów? Każdy z nas od czasu do czasu doświadcza bólu. Aby nie przeszkadzał nam on w normalnym funkcjonowaniu, sięgnij po Ketonal Active i walcz z bólem. Kapsułki Ketonal Active polecane są osobom doraźnie potrzebującym leku przeciwbólowego w leczeniu lekkiego do umiarkowanego bólu różnego pochodzenia. Ketonal Active może być stosowany w przypadku bólów kostno-stawowych, bólu głowy, bólu mięśni, zębów, bólów menstruacyjnych oraz bólów pourazowych.','Lek przeciwbólowy, przeciwzapalny oraz przeciwgorączkowy polecany dla osób dorosłych i młodzieży powyżej 15. roku życia.','Ketonal Active: 1 kapsułka zawiera 50 mg ketoprofenu oraz 186,10 mg laktozy jednowodnej. Ketonal Sprint: 1 saszetka zawiera 25 mg ketoprofenu w postaci ketoprofenu z lizyną (40 mg)/1 saszetka zawiera 50 mg ketoprofenu w postaci ketoprofenu z lizyną (80 mg).','0','images/ketonal.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('7','ALTACET ','13','zel','Każdy z nas doznał w swoim życiu kontuzji podczas aktywności fizycznej. Jazda na rowerze, gra w piłkę, bieganie, a nawet chodzenie na szpilkach lub chwila nieuwagi mogą skończyć się urazem, silnym stłuczeniem lub zwichnięciem stawu. Takie kontuzje prowadzą do uszkodzenia tkanek miękkich lub stawów. Aby przeciwdziałać ich objawom i ukoić ból zastosuj żel Altacet. Altacet od firmy Sandoz to żel przeciwbólowy na stłuczenia i siniaki. To również idealny środek na oparzenia I stopnia. Doskonale sprawdzi się w każdej domowej apteczce. Żel Altacet stosuje się miejscowo na skórę.','Lek Altacet żel to nowoczesny preparat do miejscowego stosowania w przypadku urazów i kontuzji, a także obrzęków spowodowanych oparzeniami I stopnia. Altacet skutecznie zmniejsza obrzęk tkanek, łagodzi objawy odczynu zapalnego, a także redukuje ból.','Substancją czynną leku jest Glinu octanowinian 10 mg/g.
Pozostałe składniki to: Etanol 96%, Lewomentol, Metylu parahydroksybenzoesan, Karbomer, Sodu wodorotlenek, Woda oczyszczona.','0','images/altacet.jpg');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('8','Stoperan ','11','kapsulki','Stoperan 2 mg to lek przeciwbiegunkowy zawiera loperamid. Hamuje nasilone ruchy jelit, a także zwiększa wchłanianie wody. powodując zwrotne wchłanianie wody w jelicie grubym, zmienia konsystencję stolca. Stoperan jest wskazany w objawowym leczeniu ostrej i przewlekłej biegunki.
','Stoperan 2 mg lek przeciwbiegunkowy przeznaczony jest do stosowania u dorosłych i dzieci w wieku od 6 lat.','Substancją czynną leku jest Loperamidu chlorowodorek (Loperamidi hydrochloridum) 2 mg.
Substancje pomocnicze to: Laktoza jednowodna, Skrobia kukurydziana, Talk, Magnezu stearynian, skład kapsułki żelatynowej: Żelatyna, Erytrozyna (E127), Błękit patentowy (E131), Tytanu dwutlenek (E171), Żółcień chinolinowa (E104).','0','images/stoperan.png');
Insert into SYSTEM.PRODUKT (ID,NAZWA,CENA,TYP,OPIS,OPIS_KROTKO,SKLAD,RECEPTA,IMG) values ('9','ESPUMISAN ','17','kapsulki','Simetikon obniża napięcie powierzchniowe pęcherzyków gazu zawartych w pokarmie i śluzie przewodu pokarmowego, powodując ich pękanie i wchłanianie przez ściany jelit lub wydalenie. Podczas wykonywania badań ultrasonograficznych i radiologicznych: żołądka, jelit, trzustki, pęcherzyka żółciowego i nerek zapobiega nakładaniu się gazów i pieniącej treści pokarmowej na obraz badanych narządów. Simetikon nie wchłania się z przewodu pokarmowego i jest wydalany w postaci niezmienionej.','Lek Espumisan stosowany jest w leczeniu wzdęcia brzucha i stanów nadmiernego tworzenia i nagromadzenia się gazów w żołądku i jelitach','1 kaps. zawiera 40 mg simetikonu','0','images/espumisan.jpg');
REM INSERTING into SYSTEM.APTEKA
SET DEFINE OFF;
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('1','Mała','os.Solne','123534123','Polska');
Insert into SYSTEM.APTEKA (ID,NAZWA,ADRES,TELEFON,KRAJ) values ('2','Duża','ul. Długa','543123654','Polska');
REM INSERTING into SYSTEM.ZAMOWIENIE
SET DEFINE OFF;
Insert into SYSTEM.ZAMOWIENIE (ID,DATA,KWOTA,METODA_PLATNOSCI,ADRES,TELEFON,ID_UZYTKOWNIKA,APAP_I,CHOLINEX_I,ASPIRIN_I,BUSCOPAN_I,RUTINOSCORBIN_I,KETONAL_I,ALTACET_I,STOPERAN_I,ESPUMISAN_I) values ('1','16-01-2023','278','przelewe',null,null,'1','12','0','4','0','5','0','0','1','0');
REM INSERTING into SYSTEM.UZYTKOWNIK
SET DEFINE OFF;
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('1','przemo','przemo','przemo123@gamil.com','Przemysław','Kowalski','m','ul.Powaski 12, Kraków','123456789','Polska','25',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('2','Gural','Guralesko','grzegorz.winiarski@gmail.com','Grzegorz','Winiarski','m','ul.Prosta 12, Kraków','123543123','Polska','23',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('3','Krzychu','Krzychu','krzysiek@gmail.com','Krzysztof','Zygfryd','m','ul. Mała 44, Kraków','234512342','Polska','54',null);
Insert into SYSTEM.UZYTKOWNIK (ID,USERNAME,PASSWORD,EMAIL,IMIE,NAZWISKO,PLEC,ADRES,TELEFON,KRAJ,WIEK,ID_PRACOWNIKA) values ('4','Barbara','basia','barbar@gmail.com','Barbara','Domagała','ż','os.Piastów 23, Kraków','654123534','Polska','23',null);
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

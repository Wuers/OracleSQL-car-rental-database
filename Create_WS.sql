--Skrypt tworz¹cy tabele, sekwencje, triggery sekwencji, trigery u¿ytkowe, funkcje, procedury, indeksy

CREATE TABLE stan_techniczny
(
  id INTEGER not null,
  opis VARCHAR2(50) not null,
  constraint stan_techniczny_pkey primary key (id)
);

CREATE TABLE miejsca
(
  id INTEGER not null,
  nazwa VARCHAR2(50) not null,
  adres VARCHAR2(50) not null,
  constraint miejsca_pkey primary key (id)
);

CREATE TABLE klienci
(
  id INTEGER not null,
  imiona_nazwisko VARCHAR2(50) not null,
  nip INTEGER,
  adres_klienta VARCHAR2(50) not null,
  typ_dokumentu VARCHAR2(50) not null,
  nr_dokumentu VARCHAR2(50) not null,
  constraint klienci_pkey primary key (id)
);

CREATE TABLE samochody
(
  id INTEGER not null,
  marka VARCHAR2(30) not null,
  model_auta VARCHAR2(30) not null,
  rok INTEGER not null,
  vin VARCHAR2(30) not null,
  pojemnosc_silnika INTEGER not null,
  moc_silnika INTEGER not null,
  paliwo VARCHAR(30),
  typ_nadwozia VARCHAR2(10) check (typ_nadwozia in('sedan',
    'hatchback','kombi','cabrio','coupe','SUV','dostawczy')),
  cena_za_dobe INTEGER not null,
  data_badania_technicznego DATE not null,
  stan_techniczny INTEGER not null,
  miejsce INTEGER not null,
  constraint samochody_pkey primary key (id),
  constraint fk_samochody_stan_techniczny foreign key (stan_techniczny)
  	references stan_techniczny (id),
  constraint fk_samochody_miejsce foreign key (miejsce)
  	references miejsca (id)
);

CREATE TABLE wypozyczenia
(
  id INTEGER not null,
  samochod INTEGER not null,
  klient INTEGER not null,
  miejsce_odebrania INTEGER not null,
  data_odebrania DATE,
  miejsce_oddania INTEGER,
  data_oddania DATE,
  planowana_data_oddania DATE,
  przebieg_przed INTEGER not null,
  przebieg_po INTEGER,
  constraint wypozyczenia_pkey primary key (id),
  constraint fk_wypozyczenia_samochody foreign key (samochod)
  	references samochody (id),
  constraint fk_wypozyczenia_klient foreign key (klient)
    references klienci (id),
  constraint fk_wypozyczenia_miejsce01 foreign key (miejsce_odebrania)
  	references miejsca (id),
  constraint fk_wypozyczenia_miejsce02 foreign key (miejsce_oddania)
  	references miejsca (id)
  );
  
CREATE TABLE faktury
(
  id INTEGER not null,
  wypozyczenie INTEGER not null,
  data_wystawienia DATE,
  termin_platnosci DATE,
  sprzedawca VARCHAR (50) not null,
  nabywca INTEGER not null,
  nr_faktury VARCHAR (50) not null,
  constraint faktury_pkey primary key (id),
  constraint fk_faktury_klienci foreign key (nabywca)
  	references klienci (id),
  constraint fk_faktury_wypozyczenia foreign key (wypozyczenie)
    references wypozyczenia (id)
);
 
CREATE TABLE faktura_pozycje
(
  id INTEGER not null,
  faktura_id INTEGER not null,
  samochod INTEGER not null,
  czas_wypozyczenia INTEGER not null,
  cena_netto NUMBER not null,
  vat_stawka NUMBER not null,
  wartosc_netto NUMBER not null,
  wartosc_brutto NUMBER not null,
  constraint faktura_pozycje_pkey primary key (id),
  constraint fk_faktura_pozycje_faktury foreign key (faktura_id)
  	references faktury (id),
  constraint fk_faktura_pozycje_samochody foreign key (samochod)
  	references samochody (id)
);
  
CREATE SEQUENCE SEQ_STAN_TECHNICZNY INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_MIEJSCA INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_KLIENCI INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_SAMOCHODY INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_FAKTURY INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_FAKTURA_POZYCJE INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
CREATE SEQUENCE SEQ_WYPOZYCZENIA INCREMENT BY 1 START WITH 1 MAXVALUE 999999999 MINVALUE 1 NOCACHE ORDER;
  
CREATE OR REPLACE TRIGGER TR_STAN_TECHNICZNY
    BEFORE INSERT ON "STAN_TECHNICZNY"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_STAN_TECHNICZNY.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_MIEJSCA
    BEFORE INSERT ON "MIEJSCA"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_MIEJSCA.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_KLIENCI
    BEFORE INSERT ON "KLIENCI"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_KLIENCI.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_SAMOCHODY
    BEFORE INSERT ON "SAMOCHODY"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_SAMOCHODY.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_FAKTURY
    BEFORE INSERT ON "FAKTURY"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_FAKTURY.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_FAKTURA_POZYCJE
    BEFORE INSERT ON "FAKTURA_POZYCJE"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_FAKTURA_POZYCJE.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

CREATE OR REPLACE TRIGGER TR_WYPOZYCZENIA
    BEFORE INSERT ON "WYPOZYCZENIA"
    FOR EACH ROW
BEGIN
    if inserting then
        if :NEW."ID" is null then
            SELECT SEQ_WYPOZYCZENIA.nextval into :NEW."ID" from dual;
        end if;
    end if;
END;
/

--TRIGGER 1 - ostrze¿enie, jesli przy dodawaniu wypozyczania dany klient nie ma aktywanego juz wypozyczenia
-- uwaga, zwracana uwaga widoczna jest tylko w DBMS Output (view>DBMS Output)
CREATE OR REPLACE TRIGGER TR_aktywne_wypozyczenie
BEFORE INSERT ON WYPOZYCZENIA
FOR EACH ROW
DECLARE
    v_count NUMBER;
    exc exception;
BEGIN
    -- Sprawdzenie, czy klient ma aktywne wypo¿yczenia
    SELECT COUNT(*)
        INTO v_count
        FROM wypozyczenia w
        WHERE w.klient = :NEW.KLIENT
            AND data_oddania IS NULL;
            
    if v_count > 0 THEN
        raise exc;
    END if;
    
    exception 
    when exc then
        DBMS_OUTPUT.PUT_LINE('---------------Uwaga---------------
        Ten klient ma aktualne wypozyczenia');
END;
/
--test dodanie wypozyczenia z klientem nr 14
-- insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po)
-- values ('1','14','3','2024-06-08','2024-06-09','3','2024-06-09','13000','13300');
   
--TRIGGER 2 - kontrola bledow - wprowadzanego przebiegu
CREATE OR REPLACE TRIGGER TR_kontrola_przebiegu 
BEFORE INSERT ON "WYPOZYCZENIA"
FOR EACH ROW
BEGIN
    if inserting or updating then
        if :NEW."PRZEBIEG_PO" is not null then
            if :NEW."PRZEBIEG_PO" < :NEW."PRZEBIEG_PRZED" then
                RAISE_APPLICATION_ERROR(-20000, '---------------Uwaga---------------
                Wykryto b³ad we wprowadzanych wartosciach (przebiegu). Sprobuj ponownie');
            end if;
        end if;
    end if;
END;
/
--test bez oddania
--insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania, przebieg_przed)
--values ('1','1','1','2022-12-08','2022-12-11','10000');
--test oddanie z bledem 
--insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,
--data_oddania,przebieg_przed,przebieg_po)
--values ('1','2','3','2024-06-11','2024-06-11','4','2024-06-12','13000','12000');
--test poprawnego oddania
--insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,
--data_oddania,przebieg_przed,przebieg_po)
--values ('1','1','3','2024-06-08','2024-06-09','3','2024-06-09','13000','13300');

--TRIGGER 3 - monit o zblizonym terminie przegladu jesli przeglad - planowana_data_oddania < 7 dni
create or replace trigger TR_info_przeglad 
before insert on "WYPOZYCZENIA"
FOR EACH ROW
DECLARE
    date_check DATE;
    exc exception;
    exc_bug exception;
BEGIN
    SELECT s.data_badania_technicznego
        INTO date_check
        FROM samochody s
        WHERE s.id = :NEW.samochod;
    
    if :NEW."PLANOWANA_DATA_ODDANIA" - date_check < 7 then
        raise exc;
    end if;
    
    exception 
    when exc then
        DBMS_OUTPUT.PUT_LINE('---------------Uwaga---------------
        Planowana data oddnia jest poni¿ej 7 dni od terminu przegladu pojazdu');
    
END;
/

--TRIGGER 4 - trigger tworzacy kopie informacji z tabeli wypozycznia jesli zostanie
-- wykonana na niej operacja (delete, update lub insert)
--pomocnicza tabela:
CREATE TABLE wypozyczenia_kopia
(
dzialanie VARCHAR2(2),
data_operacji DATE not null,
wykonujacy VARCHAR2(20),
id INTEGER,
samochod INTEGER,
klient INTEGER,
miejsce_odebrania INTEGER,
data_odebrania DATE,
miejsce_oddania INTEGER,
data_oddania DATE,
planowana_data_oddania DATE,
przebieg_przed INTEGER,
przebieg_po INTEGER
);

create or replace TRIGGER TR_kopia_wypozyczen 
AFTER INSERT OR UPDATE OR DELETE ON "WYPOZYCZENIA"
FOR EACH ROW
DECLARE
    action varchar2(1);
BEGIN
    if deleting then
        action := 'D';
            insert into wypozyczenia_kopia (dzialanie, data_operacji, wykonujacy,
                samochod,id,
                klient, miejsce_odebrania, data_odebrania, miejsce_oddania, 
                data_oddania, planowana_data_oddania,przebieg_przed, przebieg_po) 
            values (action, sysdate, user, 
                :old.samochod, :old.id,
                :old.klient, :old.miejsce_odebrania, :old.data_odebrania, 
                :old.miejsce_oddania, :old.data_oddania,
                :old.planowana_data_oddania, :old.przebieg_przed, :old.przebieg_po);

    elsif inserting then 
        action := 'I';
        insert into wypozyczenia_kopia(dzialanie, data_operacji, wykonujacy, id,klient, miejsce_odebrania, data_odebrania, 
                planowana_data_oddania,przebieg_przed) 
        values (action, sysdate, user, :new.id, :new.klient, :new.miejsce_odebrania, :new.data_odebrania,  
                :new.planowana_data_oddania, :new.przebieg_przed);
    elsif updating then
        action :='U';
        insert into wypozyczenia_kopia(dzialanie, data_operacji, wykonujacy, id,klient, miejsce_odebrania, data_odebrania, 
                planowana_data_oddania,przebieg_przed) 
        values (action, sysdate, user, :new.id, :new.klient, :new.miejsce_odebrania, :new.data_odebrania,  
                :new.planowana_data_oddania, :new.przebieg_przed);
    end if;
END;
/
--przyklad dodania rekordu, ktory spowoduje zapisanie kopii informacji w tabeli wypozyczenia_kopia
--insert into wypozyczenia(samochod, klient, miejsce_odebrania, 
--data_odebrania,miejsce_oddania,data_oddania,
--        planowana_data_oddania, przebieg_przed,przebieg_po)
--        values ('47','16','3','2024-06-17','2','2024-06-19','2024-06-19','1000','2000');


--FUNKCJA 1 - zwrócenie ile faktur i na jaka sume zaplacil dany klient. Podac NIP 
-- funkcja wyswietla sume faktur dla danego klienta na podstawie NIP
Create or replace function F1_suma_platnosci_nip(sprawdz_nip in NUMBER)
RETURN NUMBER AS
    suma_faktur NUMBER;
    id_nabywcy INTEGER;
BEGIN
        SELECT k.id
        INTO id_nabywcy
        FROM klienci k
        WHERE k.nip = sprawdz_nip;
        
        SELECT sum(fp.wartosc_brutto)
        INTO suma_faktur
        FROM faktury f
        LEFT JOIN faktura_pozycje fp on f.id = fp.faktura_id
        --nie sprawdz nip tylko podstawiony id nabywcy
        WHERE f.nabywca = id_nabywcy;
    return suma_faktur;
END;
/

-- FUNKCJA 2 - zwracajaca koszt wypozyczenia na podstawie podanego id samochodu, 
-- daty odbioru oraz daty planowanego oddania i/lub liczby dni
-- jesli wpisane daty to na przyklad 0 i 0 to funkcja zwroci wynik na podstawie wpisanej 
-- liczby dni
CREATE OR REPLACE FUNCTION F2_oblicz_koszt(
    ins_id_auta IN INTEGER,
    ins_data1 IN DATE,
    ins_data2 IN DATE,
    ins_l_dni IN INTEGER)
RETURN NUMBER AS
    koszt_brutto_daty NUMBER;
    koszt_netto_daty NUMBER;
    koszt_brutto_dni NUMBER;
    koszt_netto_dni NUMBER;
    za_dobe NUMBER;
    l_dni_pomocnicza INTEGER;
BEGIN
    SELECT s.cena_za_dobe
        INTO za_dobe
        FROM samochody s
        WHERE s.id = ins_id_auta;

    if ins_data1 < ins_data2 then
        l_dni_pomocnicza := ins_data2 - ins_data1;
        koszt_netto_daty := l_dni_pomocnicza * za_dobe;
        koszt_brutto_daty := koszt_netto_daty * 1.23;
        DBMS_OUTPUT.PUT_LINE('Liczba dni miedzy datami ' || ins_data1 || '-' || ins_data2 || ' to ' ||
            l_dni_pomocnicza || '. Koszt wypo¿yczenia to: ' || koszt_netto_daty || 'z³ netto
            lub '|| koszt_brutto_daty || 'z³ brutto.');
        
        if ins_l_dni != 0 THEN
            koszt_netto_dni := ins_l_dni * za_dobe;
            koszt_brutto_dni := koszt_netto_dni * 1.23;
            DBMS_OUTPUT.PUT_LINE('Za ' || ins_l_dni || ' dni koszt wypo¿yczenia wynosi: ' ||
                koszt_netto_dni || 'z³ netto lub ' || koszt_brutto_dni || 'z³ brutto.');
        END if;
    else
        if ins_l_dni != 0 THEN
            koszt_netto_dni := ins_l_dni * za_dobe;
            DBMS_OUTPUT.PUT_LINE('Za ' || ins_l_dni || ' dni koszt wypo¿yczenia wynosi: ' ||
                koszt_netto_dni || ' z³ netto');
            RETURN koszt_brutto_dni;-- Zwracamy koszt brutto z dat
        else
            DBMS_OUTPUT.PUT_LINE('Wprowadzono b³êdne dane. Wpisz poprawne daty i/lub liczbê dni.');
        END if;
    END if;
RETURN koszt_brutto_daty;-- Zwracamy koszt brutto z dat
    
END;
/

--poni¿sze wywo³anie zwraca tylko koszt brutto przy podaniu dat wypozyczenia:
--SELECT F2_oblicz_koszt(1,'25/03/01','25/03/03',0) as "Brutto daty" from DUAL;

--poni¿sze wywo³anie funkcji zwraca wiecej informacji:
--DECLARE
--pomocnicza wartosc do wywolania
--    v_koszt NUMBER;
--BEGIN
--przypisanie wyniku dzialania funkcji do v_koszt
--    v_koszt := f2_oblicz_koszt(
    --wprowadzenie argumentów. Celowo podano inna liczbe dni,
    --niz roznica miedzy datami aby otrzymac wiecej informacji.
--        ins_id_auta => 1,
--        ins_data1 => '25/03/01',
--        ins_data2 =>'25/03/02',
--        ins_l_dni => 2
--    );
--END;
--/


-- PROCEDURA 1 - do zamkniecia wypozyczenia
--wymaga VIN, miejsca oddania, daty oddania i km_po
CREATE OR REPLACE PROCEDURE P1_zamkniecie_wypozyczenia
(vin_zwracanego IN VARCHAR2, gdzie_oddany IN NUMBER, kiedy_oddany IN DATE, km_po IN NUMBER)
IS
    id_auta NUMBER;
    id_wyp NUMBER;
BEGIN
--wyciagniecie ID_auta za pomoca podanego VIN
    SELECT s.ID
        INTO id_auta
        FROM samochody s
        WHERE s.vin = vin_zwracanego;
--uzupelnienie tab. samochody za pomoca uzyskanego ID_auta
    UPDATE samochody
        SET stan_techniczny = 1
        WHERE vin = vin_zwracanego;
-- tabela w aktywnymi wypozyczeniami
--znalezienie id_wyp dzieki id_auta
    SELECT w.id
        INTO id_wyp
        FROM wypozyczenia w
        WHERE w.miejsce_oddania IS NULL
        AND w.samochod = id_auta;
-- uzupelnienie tabeli wypoczenia - kolumn miejsce_oddania, data_oddania
-- przeg_po dzieki dopaowaniu id_wyp do wypozyczenia.id
    UPDATE wypozyczenia w
        SET w.miejsce_oddania = gdzie_oddany,
            w.data_oddania = kiedy_oddany,
            w.przebieg_po = km_po
        WHERE w.id = id_wyp;
        
    COMMIT;
END;
/

--test procedury - samochod 48:
--WDB1HY8L3PRA81724,1,24/07/30,41000
--BEGIN
--    P1_zamkniecie_wypozyczenia('WDB1HY8L3PRA81724', 1, TO_DATE('24/07/30', 'RR/MM/DD'), 41000);
--END;
--/

--PROCEDURA 2
CREATE OR REPLACE PROCEDURE P2_dodaj_klienta(
    ins_imiona_nazwisko IN VARCHAR2,
    ins_nip IN NUMBER,
    ins_adres_klienta IN VARCHAR2,
    ins_typ_dokumentu IN VARCHAR2,
    ins_nr_dokumentu IN VARCHAR2) AS
    V_istniejacy_klient NUMBER;
BEGIN
    --sprawdzenie istnienia danego klienta w bazie na podstawie nr dokumentu
    SELECT COUNT (*)
        INTO V_istniejacy_klient
        FROM klienci k
        WHERE k.nr_dokumentu = ins_nr_dokumentu;
        
    if V_istniejacy_klient = 0 THEN
        INSERT INTO klienci (imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu)
        VALUES (ins_imiona_nazwisko, ins_nip, ins_adres_klienta, ins_typ_dokumentu, ins_nr_dokumentu);
        COMMIT;
    else
        DBMS_OUTPUT.PUT_LINE('Klient o numerze dokumentu ' || ins_nr_dokumentu || ' jest 
        ju¿ zarejestrowany w bazie.');
    END if;
END;
/
--test pracodury - przyk³adowe wywolanie funkcji
--BEGIN
--    P2_dodaj_klienta('Marcin Siemaszko', 6222264553, 'Szkolna 15 78-043 Konin', 'prawo jazdy', 'MCR614216');
--END;
--/

--Indexy
--stworzenie kopii tabeli wypozyczenia
CREATE TABLE wypozyczenia_bez_indeksow AS SELECT * FROM wypozyczenia;
--stworzenie indeksu
create index pierwszy_index on wypozyczenia(data_odebrania);
--drop indexu:

--zapytanie1 testujace koszty zapytan:
--    select data_odebrania from wypozyczenia where data_odebrania > '22/12/S08';
--    select data_odebrania from wypozyczenia_bez_indeksow where data_odebrania > '22/12/08';
        --zapytanie na tabeli bez indeksow spowodowalo trzykrotny wzrost kosztow zapytania
        --zmienila sie takze metoda przeszukiwania metody z RANGE SCAN(najszybszy) na FULL SCAN (najwolniejszy)
--zapytanie2 testujace koszty zapytan:
--    select data_odebrania from wypozyczenia where data_odebrania > '24/06/15' order by data_odebrania;
--    select data_odebrania from wypozyczenia_bez_indeksow where data_odebrania > '24/06/15' order by data_odebrania;
        --dzieki zastosowaniu indeksow zapytanie wykorzystujace sortowanie nie spowodowalo wzrostu kosztu zapytania


--Skrypt dropujacy: Sekwencje,widoki,triggery tabele, 

--drop sekwencji
drop SEQUENCE SEQ_STAN_TECHNICZNY;
drop SEQUENCE SEQ_MIEJSCA;
drop SEQUENCE SEQ_KLIENCI;
drop SEQUENCE SEQ_SAMOCHODY;
drop SEQUENCE SEQ_FAKTURY;
drop SEQUENCE SEQ_FAKTURA_POZYCJE;
drop SEQUENCE SEQ_WYPOZYCZENIA;

--drop widoków
drop view "V1_powracajacy_klienci";
drop view "V2_rozmieszczenie_floty";
drop view "V3_dostawcze";
drop view "V4_najtansze";
drop view "V5_aktywne_wypozyczenia";

--drop wyzwalaczy
drop trigger tr_wypozyczenia;
drop trigger tr_kategoria;
drop trigger tr_faktura_pozycje;
drop trigger tr_faktury;
drop trigger tr_samochody;
drop trigger tr_klienci;
drop trigger tr_miejsca;
drop trigger tr_stan_techniczny;

drop trigger tr_aktywne_wypozyczenie;
drop trigger tr_info_przeglad;
drop trigger tr_kopia_wypozyczen;

--drop tabel
drop TABLE wypozyczenia;
drop TABLE kategoria;
drop TABLE faktura_pozycje;
drop TABLE faktury;
drop TABLE samochody;
drop TABLE wypozyczenia_kopia;
drop TABLE wypozyczenia_bez_indeksow;
drop TABLE klienci;
drop TABLE miejsca;
drop TABLE stan_techniczny;


--drop zalozonego indexu
drop index pierwszy_index;

--drop funkcji i procedur
drop function F1_suma_platnosci_nip;
drop function F2_oblicz_koszt;
drop procedure P1_zamkniecie_wypozyczenia;
drop procedure P2_dodaj_klienta;

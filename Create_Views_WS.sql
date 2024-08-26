--Skrypt tworz¹cy widoki

-- Widok 1
-- Klienci z najwieksza liczba wypozyczen
create or replace view "V1_powracajacy_klienci" as
select k.imiona_nazwisko , count (k.id) as "liczba wypozyczen"
from faktury f, klienci k 
where f.nabywca = k.id
group by k.imiona_nazwisko
order by "liczba wypozyczen" desc
;
-- Widok 2
-- Rozmieszczenie samochodów w poszczegolnych wypozyczalnia
create or replace view "V2_rozmieszczenie_floty" as
select m.nazwa as "Wypozyczalnia", count(s.id) as "Liczba samochodow"
from samochody s, miejsca m
where s.miejsce = m.id 
group by m.nazwa;

-- Widok 3
-- dostawcze w poszczególnych wypo¿yczalniach
CREATE OR REPLACE VIEW "V3_dostawcze" AS
SELECT s.model_auta, count (s.model_auta) as ilosc, m.adres
FROM samochody s
LEFT JOIN miejsca m ON s.miejsce = m.id
WHERE s.typ_nadwozia = 'dostawczy'
GROUP BY m.adres, s.model_auta;


-- Widok 4
-- wyœwietlenie po max 3 najtanszych samochodów w ka¿dej wypo¿yczalni
CREATE OR REPLACE VIEW "V4_najtansze" AS
SELECT s.model_auta, s.cena_za_dobe, m.adres
FROM 
(
    SELECT s.*, ROW_NUMBER() OVER (PARTITION BY s.miejsce ORDER BY s.cena_za_dobe)
    AS RN
    from samochody s
) s
JOIN miejsca m ON s.miejsce = m.id
WHERE RN <=3;


--Widok 5
-- widok z aktywnymi wypozyczeniami
CREATE OR REPLACE VIEW "V5_aktywne_wypozyczenia" AS 
select "ID","SAMOCHOD","KLIENT","MIEJSCE_ODEBRANIA","DATA_ODEBRANIA","MIEJSCE_ODDANIA","DATA_ODDANIA","PLANOWANA_DATA_ODDANIA","PRZEBIEG_PRZED","PRZEBIEG_PO"
from wypozyczenia w
where w.data_oddania is NULL
order by id;

--przyklad wywolania widoku
--  select * from "V3_dostawcze";


--Skrypt dodajacy dane do tabel

 insert into stan_techniczny(opis) values ('Dostepny');
 insert into stan_techniczny(opis) values ('W naprawie');
 insert into stan_techniczny(opis) values ('Wypozyczony');
 insert into stan_techniczny(opis) values ('Trwale niedostepny');
 
 insert into miejsca(nazwa,adres) values ('Wypozyczalnia Kielce','Stokowa 4, 25-702 Kielce');
 insert into miejsca(nazwa,adres) values ('Wypozyczalnia Warszawa','Bartycka 103, 00-716 Warszawa');
 insert into miejsca(nazwa,adres) values ('Wypozyczalnia Radom','Jaracza 5, 26-610 Radom');
 insert into miejsca(nazwa,adres) values ('Wypozyczalnia Krakow','Sosnowiecka 147, 31-345 Krakow');


insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Amir Makowski','3426842524','Piwna 1 45-289 Nowy Sacz','prawo jazdy','LYG893719');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Maciej Jaworski','5328350620','Orzechowa 2 24-611 Zamosc','prawo jazdy','ASV546374');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Przemyslaw Zawadzki','5095511644','Lesna 5 87-893 Legnica','prawo jazdy','OUZ889392');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Olaf Stepien','5338646322','Matejki 8 03-491 Nowy Sacz','prawo jazdy','ORG214981');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Amir Madowski','7574442770','Jagodowa 555 58-927 Krakow','prawo jazdy','EXE597527');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Diego Dabrowski','3379153006','Ogrodowa 24 90-831 Zielona Gora','prawo jazdy','WIO292454');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Aleksy Mazur','3948352055','Nowobielawska 66 96-909 Plock','prawo jazdy','AMJ057380');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Radoslaw Jaworski','5347188416','Jagodowa 1 37-160 Walbrzych','prawo jazdy','ZGW866148');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Florian Brzezinski','4161052464','Slowackiego 1 54-078 Sosnowiec','prawo jazdy','VLG725819');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Olaf Stepien','8227664784','Stawowa 3 54-078 Sosnowiec','prawo jazdy','SOV210725');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Artur Tomaszewski','1228235082','Pomorska 5 26-249 Bydgoszcz','prawo jazdy','NJX756919');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Diego Dabrowski','1169762459','Szkolna 11 78-043 Konin','prawo jazdy','MCQ603513');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Aleksy Mazur','5218213709','Stachury 6 Tychy Tychy','prawo jazdy','AUF540129');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Cyprian Szymczak','1192110037','Bielawska 77 47-785 Konin','prawo jazdy','KTR780663');
insert into klienci(imiona_nazwisko, nip, adres_klienta, typ_dokumentu, nr_dokumentu) 
values ('Jerzy Jankowski','3775964711','Sosnowa 35 55-266 Biala Podlaska','prawo jazdy','FXE955890');



insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A4','2015','2LN8ARHG89T121012','2000','143','diesel','kombi','200','2025/03/12','2','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A5','2017','8AGXCGSV32H8J3798','3000','265','benzyna','kombi','250','2025/02/20','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A6','2020','93ZEMCET019XP6085','3000','245','diesel','sedan','300','2025/06/13','2','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 4','2023','8ACF5Y5W1DGW40163','3000','310','benzyna','kombi','250','2025/01/21','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 6','2023','SHS8RB7U9Z0YK4491','4400','440','benzyna','coupe','350','2025/01/16','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 3','2021','XTASZ49A3C6KD2133','3000','235','diesel','sedan','200','2024/09/02','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Mustang','2014','ZHWGTBPM3T8BH0147','4700','365','benzyna','coupe','350','2024/12/08','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Mustang','2022','SHS5HB7U9Z0YK4591','5000','420','benzyna','coupe','400','2024/09/30','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volkswagen','Passat','2017','WEBK4KNH9991P9270','2000','160','diesel','kombi','190','2025/03/04','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volkswagen','Golf','2016','6T1FADZB1ZE4X9306','2500','190','benzyna','hatchback','180','2025/01/13','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volkswagen','Passat','2019','2HMT0RPK4M98R2529','2000','170','diesel','sedan','190','2024/09/26','4','4');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volkswagen','Passat','2005','SHS8RB7U9Z0SK4591','2000','110','diesel','sedan','700','2024/03/23','3','4');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volkswagen','Lupo','2020','2G2C24HG0112G2503','1000','90','diesel','hatchback','80','2024/12/05','1','4');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A4','2015','8BCAVJPU0CUHF2099','2000','143','diesel','kombi','200','2024/12/21','2','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A5','2017','9BHAG7SX2LKXT9511','3000','265','benzyna','kombi','250','2024/10/06','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','A6','2020','LMGP40SB770DC8102','3000','245','diesel','sedan','300','2024/10/01','2','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 4','2023','LVHUTEXU5GYVE2659','3000','310','benzyna','kombi','250','2024/10/22','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 6','2023','LVG2HE345E0031150','4400','440','benzyna','sedan','350','2024/12/31','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','seria 3','2021','2HHBB46G06T2V4742','3000','235','diesel','sedan','200','2024/07/22','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Mustang','2014','PR8GL7HZ2Y28A4147','5000','365','benzyna','coupe','350','2025/02/04','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Mustang','2022','7A8LU7BF2SUY96380','5000','420','benzyna','coupe','400','2024/12/06','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volskwagen','Passat','2017','WUAG0C177HF351799','2000','170','diesel','kombi','190','2024/07/21','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volskwagen','Golf','2017','WDBKR4DE08D8F4942','1900','190','benzyna','hatchback','180','2025/01/05','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volskwagen','Passat','2019','PL1R6WZR1WVLY2992','2000','170','diesel','sedan','190','2024/06/01','4','4');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volskwagen','Passat','2005','XTA558CF5ZMK76017','2000','110','diesel','sedan','700','2024/12/13','3','4');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Volskwagen','Lupo','2020','1GMTY1469F7CP6525','1000','90','diesel','hatchback','80','2024/10/04','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','Q5','2014','MRH119C98FMD53749','3000','223','diesel','SUV','400','2024/08/11','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Audi','Q3','2014','VA06457B276GE4791','2000','170','benzyna','SUV','310','2024/07/31','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','X1','2019','2M2BKGYS4AF426666','2000','170','benzyna','SUV','260','2024/10/25','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','X3','2013','LWVV12EH4VCN19645','3000','245','benzyna','SUV','300','2025/01/24','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','X3','2013','LPADM75U23BSN8925','3000','245','benzyna','SUV','400','2025/02/17','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','Z3','2020','3F84NDPN79NLT5800','3000','260','benzyna','cabrio','400','2025/02/13','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('BMW','Z3','2020','LVVMBLLB0476K3249','3000','260','benzyna','cabrio','400','2025/01/04','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Kuga','2021','LBER8ZNC54C194713','1500','140','benzyna','SUV','220','2024/03/26','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Kuga','2021','PL1L6V985D6C30697','1500','140','benzyna','SUV','220','2025/01/28','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Transit','2014','6FVLCB8L5H1WK4663','2000','130','diesel','dostawczy','320','2025/03/16','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Transit','2014','WV2RXVK93JWKR0004','2000','130','diesel','dostawczy','320','2025/01/31','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Ford','Transit','2016','MNTFV2S66FXP71953','2000','130','diesel','dostawczy','320','2024/04/23','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Citroen','Berlingo','2016','9UWNGT423TMUT4307','1600','75','diesel','dostawczy','240','2024/05/20','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Citroen','Berlingo','2017','ZFAZ9KA24B1WB4624','1600','75','diesel','dostawczy','240','2025/06/04','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Citroen','Berlingo','2017','3KPG75RA56HJW3938','1600','75','diesel','dostawczy','240','2024/12/01','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Citroen','Berlingo','2017','7A4B12417RBRG1784','1600','92','diesel','dostawczy','240','2024/12/04','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Citroen','Berlingo','2017','U5Y0ML5M8VPF50973','1600','92','diesel','dostawczy','240','2025/01/10','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vivaro','2021','LVSJ4WS982XU63024','1900','115','diesel','dostawczy','270','2024/03/19','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vivaro','2021','LSGA8ELU6UYFB8732','1900','115','diesel','dostawczy','270','2024/07/09','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vivaro','2010','2HM7XJM181EK92559','1900','135','diesel','dostawczy','270','2024/09/03','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vectra','2014','LGXR73P40KDC31499','2000','135','benzyna','sedan','200','2024/11/20','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vectra','2014','WDB1HY8L3PRA81724','2000','145','diesel','sedan','200','2024/05/13','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Vectra','2019','9BFC9ZZZ85D8E1560','2500','130','benzyna','sedan','200','2025/01/27','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Astra','2019','8AGZ7BDN4RPD25413','2000','120','benzyna','hatchback','170','2024/06/16','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Astra','2019','WAP77K011RDUB3142','1400','105','benzyna','hatchback','170','2025/01/15','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Astra','2020','WP0F29S77X6DE1050','1600','120','diesel','hatchback','170','2024/05/21','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Astra','2022','WJRN7DCF7NYST1342','1400','105','benzyna','hatchback','180','2024/02/27','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Opel','Astra','2014','WJRN7DCF7NYST1341','1400','105','benzyna','hatchback','170','2024/12/12','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Ducato','2008','PL1W26EH3E4A38535','2000','180','diesel','dostawczy','240','2024/05/17','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Ducato','2006','5YJDGZPN1PFK06121','2500','195','diesel','dostawczy','240','2024/10/21','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Ducato','2008','JFS7C0XA0LRCE7491','2500','195','diesel','dostawczy','240','2024/10/14','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Ducato','2010','6U98STZ85LF8F7080','2000','160','diesel','dostawczy','240','2024/10/03','1','3');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Panda','2005','KPTPL3FF7ZBTP8850','1000','70','benzyna','hatchback','90','2024/08/25','1','1');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Panda','2005','99AG4RNT6UZ5G0130','1000','70','benzyna','hatchback','90','2024/12/30','1','2');
insert into samochody (marka,model_auta,rok,vin,pojemnosc_silnika,moc_silnika,paliwo,typ_nadwozia,cena_za_dobe,data_badania_technicznego,stan_techniczny,miejsce) values ('Fiat','Panda','2005','WKK9KULJ1202A7582','1500','85','benzyna','hatchback','90','2024/05/08','1','2');



insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','1','1','2022-12-08','2022-12-11','1','2022-12-11','10000','12000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','2','1','2022-12-11','2022-12-13','1','2022-12-13','11000','13000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','3','1','2022-12-13','2022-12-15','1','2022-12-15','15000','17000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('2','4','3','2022-12-11','2022-12-13','2','2022-12-13','15000','17000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('2','5','3','2022-12-13','2022-12-15','3','2022-12-15','15000','17000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('2','6','1','2022-12-15','2022-12-17','1','2022-12-17','17000','18000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('3','7','3','2022-12-11','2022-12-18','3','2022-12-18','1000','1300');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('3','8','4','2022-12-18','2022-12-21','4','2022-12-21','1300','1400');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('3','9','4','2022-12-21','2022-12-24','4','2022-12-24','1400','1500');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('4','10','4','2022-12-11','2022-12-13','4','2022-12-13','1400','1500');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('4','11','3','2022-12-13','2022-12-16','3','2022-12-16','1500','1600');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('4','12','3','2022-12-16','2022-12-19','3','2022-12-19','1600','1700');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','13','3','2023-01-01','2023-01-06','3','2023-01-06','17000','18000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','14','2','2023-01-06','2023-01-09','2','2023-01-09','18000','19000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','15','2','2023-01-09','2023-01-12','2','2023-01-12','19000','20000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('5','1','1','2023-01-09','2023-01-10','1','2023-01-10','19000','20000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('5','6','1','2023-01-11','2023-01-12','1','2023-01-12','20000','21000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('6','15','1','2023-01-11','2023-01-14','1','2023-01-14','20000','21000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','15','2','2023-01-11','2023-01-14','2','2023-01-14','20000','25000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('1','2','2','2023-01-20','2023-01-25','2','2023-01-25','25000','26000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('26','1','4','2024-06-10','2024-06-18','3','2024-06-18','190000','200000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('27','2','3','2024-06-10','2024-06-19','1','2024-06-19','230000','231000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('28','3','3','2024-06-11','2024-06-20','4','2024-06-20','120000','120600');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,miejsce_oddania,data_oddania,przebieg_przed,przebieg_po) values ('29','5','3','2024-06-11','2024-06-20','4','2024-06-20','15000','17230');


insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('30','5','2','2024-06-12','2024-06-21','12000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('32','5','2','2024-06-12','2024-06-21','2000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('36','6','1','2024-06-12','2024-06-22','350000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('38','7','1','2024-06-12','2024-06-25','400000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('40','8','4','2024-06-15','2024-06-30','200000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('41','9','3','2024-06-15','2024-07-03','320000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('42','10','3','2024-06-17','2024-07-04','140000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('46','13','3','2024-06-17','2024-07-04','250000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('47','14','2','2024-06-17','2024-07-17','240000');
insert into wypozyczenia (samochod,klient,miejsce_odebrania,data_odebrania,planowana_data_oddania,przebieg_przed) values ('48','15','2','2024-06-17','2024-07-30','40000');


insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('1','2001-01-23','2001-04-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210001');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('2','2002-01-23','2002-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','2','1401210002');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('3','2002-01-23','2002-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','3','1401210003');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('4','2003-01-23','2003-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','4','1401210004');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('5','2003-01-23','2003-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','5','1401210005');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('6','2003-01-23','2003-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','6','1401210006');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('7','2005-01-23','2005-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','7','1401210007');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('8','2005-01-23','2005-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210008');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('9','2007-01-23','2007-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210009');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('10','2007-01-23','2007-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210010');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('11','2008-01-23','2008-04-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210011');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('12','2008-01-23','2008-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210012');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('13','2008-01-23','2008-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210013');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('14','2009-01-23','2009-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','8','1401210014');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('15','2011-01-23','2011-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210015');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('16','2012-01-23','2012-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210016');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('17','2012-01-23','2012-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210017');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('18','2013-01-23','2013-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210018');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('19','2014-01-23','2014-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210019');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('20','2015-01-23','2015-03-23','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210020');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('21','2024-06-18','2024-07-02','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','1','1401210021');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('22','2024-06-19','2024-07-03','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','2','1401210022');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('23','2024-06-20','2024-07-04','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','3','1401210023');
insert into faktury (wypozyczenie,data_wystawienia,termin_platnosci,sprzedawca,nabywca,nr_faktury) values ('24','2024-06-20','2024-07-04','Speedy Gonzales Rent NIP XXX Sienkiewicza 1, 01-200 Kielce','5','1401210024');


insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('1','1','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('2','1','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('3','1','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('4','2','2','250','23','500','615');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('5','2','2','250','23','500','615');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('6','2','2','250','23','500','615');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('7','3','7','300','23','2100','2583');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('8','3','3','300','23','900','1107');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('9','3','3','300','23','900','1107');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('10','4','2','250','23','500','615');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('11','4','3','250','23','750','922');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('12','4','3','250','23','750','922');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('13','1','5','200','23','1000','1230');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('14','1','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('15','1','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('16','5','1','350','23','350','430');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('17','5','1','350','23','350','430');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('18','6','3','200','23','600','738');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('19','1','5','200','23','1000','1230');
insert into faktura_pozycje (faktura_id, samochod, czas_wypozyczenia, cena_netto, vat_stawka, wartosc_netto, wartosc_brutto)
values ('20','1','5','200','23','1000','1230');
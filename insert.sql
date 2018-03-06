-- autor
INSERT autor VALUES ('Nicolas', 'Sparks')
INSERT autor VALUES ('Harlan', 'Coben')
INSERT autor VALUES ('Remigiusz', 'Mróz')
INSERT autor VALUES ('Beata', 'D¹browska')
INSERT autor VALUES ('Dale', 'Carnegie')
INSERT autor VALUES ('Jojo', 'Moyes')
INSERT autor VALUES ('Andre', 'Acima')
INSERT autor VALUES ('Sarah', 'Churchwell')

-- dostawa
INSERT dostawa VALUES ('kurier')
INSERT dostawa VALUES ('poczta')
INSERT dostawa VALUES ('in post')
INSERT dostawa VALUES ('odbiór osobisty')

-- dzial pracownik
INSERT dzial_pracownik VALUES ('ksiêgowoœæ')
INSERT dzial_pracownik VALUES ('obs³uga klienta')
INSERT dzial_pracownik VALUES ('dostawa')
INSERT dzial_pracownik VALUES ('sprzeda¿')
INSERT dzial_pracownik VALUES ('IT')

-- kategoria ksiazki
INSERT kategoria_ksiazki VALUES ('Literatura obyczajowa')
INSERT kategoria_ksiazki VALUES ('Kuchnia')
INSERT kategoria_ksiazki VALUES ('Rozwój osobisty')
INSERT kategoria_ksiazki VALUES ('Krymina³')
INSERT kategoria_ksiazki VALUES ('Biografie')

-- stanowisko
INSERT stanowisko VALUES ('ksiêgowa')
INSERT stanowisko VALUES ('kasjer')
INSERT stanowisko VALUES ('informatyk')
INSERT stanowisko VALUES ('magazynier')
INSERT stanowisko VALUES ('doradca klienta')

GO

-- ksiazka
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Kuchnia' ), 'Dieta warzywno-owocowa dr Ewy D¹browskiej', '2017', '22834598')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Tamte dni, tamte noce', '2018', '25074673')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Rozwój osobisty'), 'Jak przestaæ siê martwiæ i zacz¹æ ¿yæ', '2003', '25077823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Krymina³'), 'Nieodnaleziona', '2018', '42677823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'We dwoje', '2017', '49637823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Pamiêtnik', '2005', '49637855')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Krymina³'), 'W domu', '2018', '42741523')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Ostatni list od kochanka', '2018', '99637855')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Biografie'), 'Twarze Marilyn Monroe', '2018', '99688888')


-- pracownik
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'ksiêgowa'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'ksiêgowoœæ'), 'Magdalena', 'Kokos', '2015-10-01', NULL, 2500, '652 896 123')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzeda¿'), 'Ewa', 'Miga', '2010-06-01', NULL, 2000, '896 147 258')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzeda¿'), 'Karolina', 'Paprotka', '2010-06-01', NULL, 2000, '896 147 258')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'informatyk'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'IT'), 'Jaros³aw', 'Dziedzic', '2010-02-01', NULL, 4000, '562 784 123')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'doradca klienta'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'obs³uga klienta'), 'Micha³', 'Jurczak', '2016-10-01', NULL, 2600, '789 963 321')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'magazynier'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'dostawa'), 'Sebastian', 'Kot', '2010-06-01', NULL, 2500, '654 321 987')



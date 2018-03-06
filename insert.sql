-- autor
INSERT autor VALUES ('Nicolas', 'Sparks')
INSERT autor VALUES ('Harlan', 'Coben')
INSERT autor VALUES ('Remigiusz', 'Mr�z')
INSERT autor VALUES ('Beata', 'D�browska')
INSERT autor VALUES ('Dale', 'Carnegie')
INSERT autor VALUES ('Jojo', 'Moyes')
INSERT autor VALUES ('Andre', 'Acima')
INSERT autor VALUES ('Sarah', 'Churchwell')

-- dostawa
INSERT dostawa VALUES ('kurier')
INSERT dostawa VALUES ('poczta')
INSERT dostawa VALUES ('in post')
INSERT dostawa VALUES ('odbi�r osobisty')

-- dzial pracownik
INSERT dzial_pracownik VALUES ('ksi�gowo��')
INSERT dzial_pracownik VALUES ('obs�uga klienta')
INSERT dzial_pracownik VALUES ('dostawa')
INSERT dzial_pracownik VALUES ('sprzeda�')
INSERT dzial_pracownik VALUES ('IT')

-- kategoria ksiazki
INSERT kategoria_ksiazki VALUES ('Literatura obyczajowa')
INSERT kategoria_ksiazki VALUES ('Kuchnia')
INSERT kategoria_ksiazki VALUES ('Rozw�j osobisty')
INSERT kategoria_ksiazki VALUES ('Krymina�')
INSERT kategoria_ksiazki VALUES ('Biografie')

-- stanowisko
INSERT stanowisko VALUES ('ksi�gowa')
INSERT stanowisko VALUES ('kasjer')
INSERT stanowisko VALUES ('informatyk')
INSERT stanowisko VALUES ('magazynier')
INSERT stanowisko VALUES ('doradca klienta')

GO

-- ksiazka
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Kuchnia' ), 'Dieta warzywno-owocowa dr Ewy D�browskiej', '2017', '22834598')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Tamte dni, tamte noce', '2018', '25074673')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Rozw�j osobisty'), 'Jak przesta� si� martwi� i zacz�� �y�', '2003', '25077823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Krymina�'), 'Nieodnaleziona', '2018', '42677823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'We dwoje', '2017', '49637823')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Pami�tnik', '2005', '49637855')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Krymina�'), 'W domu', '2018', '42741523')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Literatura obyczajowa'), 'Ostatni list od kochanka', '2018', '99637855')
INSERT ksiazka VALUES ((SELECT id_kategoria_ksiazki FROM kategoria_ksiazki WHERE nazwa_kategoria ='Biografie'), 'Twarze Marilyn Monroe', '2018', '99688888')


-- pracownik
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'ksi�gowa'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'ksi�gowo��'), 'Magdalena', 'Kokos', '2015-10-01', NULL, 2500, '652 896 123')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzeda�'), 'Ewa', 'Miga', '2010-06-01', NULL, 2000, '896 147 258')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzeda�'), 'Karolina', 'Paprotka', '2010-06-01', NULL, 2000, '896 147 258')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'informatyk'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'IT'), 'Jaros�aw', 'Dziedzic', '2010-02-01', NULL, 4000, '562 784 123')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'doradca klienta'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'obs�uga klienta'), 'Micha�', 'Jurczak', '2016-10-01', NULL, 2600, '789 963 321')
INSERT pracownik VALUES ((SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'magazynier'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'dostawa'), 'Sebastian', 'Kot', '2010-06-01', NULL, 2500, '654 321 987')



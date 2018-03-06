-- autor
INSERT autor VALUES (NULL, 'Nicolas', 'Sparks');
INSERT autor VALUES (NULL, 'Harlan', 'Coben');
INSERT autor VALUES (NULL, 'Remigiusz', 'Mróz');
INSERT autor VALUES (NULL, 'Beata', 'Dąbrowska');
INSERT autor VALUES (NULL, 'Dale', 'Carnegie');
INSERT autor VALUES (NULL, 'Jojo', 'Moyes');
INSERT autor VALUES (NULL, 'Andre', 'Acima');
INSERT autor VALUES (NULL, 'Sarah', 'Churchwell');

-- dostawa
INSERT dostawa VALUES (NULL, 'kurier');
INSERT dostawa VALUES (NULL, 'poczta');
INSERT dostawa VALUES (NULL, 'in post');
INSERT dostawa VALUES (NULL, 'odbiór osobisty');

-- dzial pracownik
INSERT dzial_pracownik VALUES (NULL, 'księgowość');
INSERT dzial_pracownik VALUES (NULL, 'obsługa klienta');
INSERT dzial_pracownik VALUES (NULL, 'dostawa');
INSERT dzial_pracownik VALUES (NULL, 'sprzedaż');
INSERT dzial_pracownik VALUES (NULL, 'IT');

-- kategoria ksiazki
INSERT kategoria_ksiazka VALUES (NULL, 'Literatura obyczajowa');
INSERT kategoria_ksiazka VALUES (NULL, 'Kuchnia');
INSERT kategoria_ksiazka VALUES (NULL, 'Rozwój osobisty');
INSERT kategoria_ksiazka VALUES (NULL, 'Kryminał');
INSERT kategoria_ksiazka VALUES (NULL, 'Biografie');

-- stanowisko
INSERT stanowisko VALUES (NULL, 'księgowa');
INSERT stanowisko VALUES (NULL, 'kasjer');
INSERT stanowisko VALUES (NULL, 'informatyk');
INSERT stanowisko VALUES (NULL, 'magazynier');
INSERT stanowisko VALUES (NULL, 'doradca klienta');

-- klient
INSERT klient VALUES (NULL, 'Patrycja', 'Mazur', 'Kocia 2/3', '54666', 'Trzebnica', '565251222');
INSERT klient VALUES (NULL, 'Ewa', 'Kokoszka', 'Leska 8/7', '54687', 'Kraków', '569651222');
INSERT klient VALUES (NULL, 'Honorata', 'Wilczyńska', 'Podlaska 8/2', '58566', 'Toruń', '789991222');
INSERT klient VALUES (NULL, 'Krystian', 'Adamowicz ', 'Rysia 16/85', '54432', 'Wrocław', '858414233');
INSERT klient VALUES (NULL, 'Jacek', 'Jański', 'Aleja Piastów 1a', '84788', 'Wrocław', '606565999');
INSERT klient VALUES (NULL, 'Emilia', 'Urban', 'Taborowa 45/1', '87800', 'Włocławek', '510885222');
INSERT klient VALUES (NULL, 'Janusz', 'Gołąb', 'Opolska 2b', '54034', 'Wrocław', '510633356');
INSERT klient VALUES (NULL, 'Grażyna', 'Sobczak', 'Legnicka 19/20', '66510', 'Warszawa', '630450950');

-- zamowienie
INSERT zamowienie VALUES (NULL, 'Kocia 2/3', 'Warszawa', '54666', false, 963963, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 1), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 21), (SELECT id_klient FROM klient WHERE id_klient = 8));
INSERT zamowienie VALUES (NULL, 'Opolska 2b', 'Wrocław', '54034', false, 785369, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 2), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 22), (SELECT id_klient FROM klient WHERE id_klient = 7));
INSERT zamowienie VALUES (NULL, 'Taborowa 45/1', 'Włocławek', '87800', true, 785888, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 3), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 23), (SELECT id_klient FROM klient WHERE id_klient = 6));
INSERT zamowienie VALUES (NULL, 'Aleja Piastów 1a', 'Wrocław', '84788', true, 854478, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 2), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 23), (SELECT id_klient FROM klient WHERE id_klient = 5));
INSERT zamowienie VALUES (NULL, 'Rysia 16/85', 'Wrocław', '54432', false, 865558, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 3), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 21), (SELECT id_klient FROM klient WHERE id_klient = 4));
INSERT zamowienie VALUES (NULL, 'Podlaska 8/2', 'Toruń', '58566', true, 744452, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 2), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 22), (SELECT id_klient FROM klient WHERE id_klient = 3));
INSERT zamowienie VALUES (NULL, 'Leska 8/7', 'Kraków', '54687', false, 744453, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 3), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 21), (SELECT id_klient FROM klient WHERE id_klient = 2));
INSERT zamowienie VALUES (NULL, 'Legnicka 19/20', 'Warszawa', '66510', false, 744454, (SELECT id_pracownik FROM pracownik WHERE id_pracownik = 3), (SELECT id_dostawa FROM dostawa WHERE id_dostawa = 23), (SELECT id_klient FROM klient WHERE id_klient = 1));







COMMIT;

-- ksiazka
INSERT ksiazka VALUES (NULL, 'Dieta warzywno-owocowa dr Ewy Dąbrowskiej', '2017', '22834598',(SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Kuchnia'));
INSERT ksiazka VALUES (NULL, 'Tamte dni, tamte noce', '2018', '25074673', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Literatura obyczajowa'));
INSERT ksiazka VALUES (NULL, 'Jak przestać się martwić i zacząć żyć', '2003', '25077823', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Rozwój osobisty'));
INSERT ksiazka VALUES (NULL, 'Nieodnaleziona', '2018', '42677823', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Kryminał'));
INSERT ksiazka VALUES (NULL, 'We dwoje', '2017', '49637823', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Literatura obyczajowa'));
INSERT ksiazka VALUES (NULL, 'Pamiętnik', '2005', '49637855', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Literatura obyczajowa'));
INSERT ksiazka VALUES (NULL, 'W domu', '2018', '42741523', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Kryminał'));
INSERT ksiazka VALUES (NULL, 'Ostatni list od kochanka', '2018', '99637855', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Literatura obyczajowa'));
INSERT ksiazka VALUES (NULL, 'Twarze Marilyn Monroe', '2018', '99688888', (SELECT id_kategoria_ksiazki FROM kategoria_ksiazka WHERE nazwa_kategoria ='Biografie'));


-- pracownik
INSERT pracownik VALUES (NULL, 'Magdalena', 'Kokos', '2015-10-01', NULL, 2500, '652896123', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'księgowa'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'księgowość'));
INSERT pracownik VALUES (NULL, 'Ewa', 'Miga', '2010-06-01', NULL, 2000, '896147258', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzedaż'));
INSERT pracownik VALUES (NULL, 'Karolina', 'Paprotka', '2010-06-01', NULL, 2000, '896147258', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'kasjer'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'sprzedaż'));
INSERT pracownik VALUES (NULL, 'Jarosław', 'Dziedzic', '2010-02-01', NULL, 4000, '562784123', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'informatyk'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'IT'));
INSERT pracownik VALUES (NULL, 'Michał', 'Jurczak', '2016-10-01', NULL, 2600, '789963321', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'doradca klienta'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'obsługa klienta'));
INSERT pracownik VALUES (NULL, 'Sebastian', 'Kot', '2010-06-01', NULL, 2500, '654321987', (SELECT id_stanowisko FROM stanowisko WHERE nazwa_stanowisko = 'magazynier'), (SELECT id_dzial_pracownik FROM dzial_pracownik WHERE nazwa_dzial_pracownik = 'dostawa'));

-- autor_has_ksiazki
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 45), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 11));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 48), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 12));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 46), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 13));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 44), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 14));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 42), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 15));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 42), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 16));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 43), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 17));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 47), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 18));
INSERT autor_has_ksiazka VALUES ((SELECT id_autor FROM autor WHERE id_autor = 49), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki= 19));

-- zamowienie_has_ksiazka

INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 1), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 19));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 1), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 16));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 2), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 11));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 3), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 12));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 3), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 13));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 3), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 19));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 4), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 15));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 4), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 14));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 4), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 11));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 5), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 12));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 6), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 13));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 7), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 19));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 7), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 17));
INSERT zamowienie_has_ksiazka VALUES ((SELECT id_zamowienie FROM zamowienie WHERE id_zamowienie = 8), (SELECT id_ksiazki FROM ksiazka WHERE id_ksiazki = 18));



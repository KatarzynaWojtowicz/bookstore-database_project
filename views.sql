CREATE VIEW v_zamowienia_stolica AS
SELECT * FROM zamowienie WHERE miasto_dostawy = 'Warszawa';

CREATE VIEW v_przyzwoity_pracownik AS
SELECT imie_pracownik, nazwisko_pracownik, pensja FROM zamowienie WHERE pensja > 2500;

CREATE VIEW v_faktury AS
SELECT * FROM zamowienie WHERE faktura = true;
 
CREATE VIEW v_ulubione_ksiazki AS
SELECT ksiazka.tytul, ksiazka.rok_wydania, ksiazka.numer_isbn, autor.imie_autor, autor.nazwisko_autor FROM ksiazka 
INNER JOIN autor_has_ksiazka ON ksiazka.id_ksiazki = autor_has_ksiazka.ksiazki_id_ksiazki
INNER JOIN autor ON autor.id_autor = autor_has_ksiazka.autor_id_autor
WHERE autor.nazwisko_autor = 'Sparks' AND autor.imie_autor = 'Nicolas';

CREATE VIEW v_dzial_IT AS
SELECT pracownik.id_pracownik, pracownik.imie_pracownik, pracownik.nazwisko_pracownik, pracownik.data_zatrudnienia, pracownik.pensja, pracownik.numer_telefonu FROM pracownik
INNER JOIN dzial_pracownik ON pracownik.dzial_pracownik_id_dzial_pracownik = dzial_pracownik.id_dzial_pracownik 
WHERE dzial_pracownik.nazwa_dzial_pracownik = 'IT' AND pracownik.data_zwolnienia IS NULL;
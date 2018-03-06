SELECT nazwa_dostawa, COUNT(*) AS ilosc FROM zamowienie 
INNER JOIN dostawa ON dostawa.id_dostawa = zamowienie.dostawa_id_dostawa
GROUP BY nazwa_dostawa; 

SELECT imie_klient, nazwisko_klient FROM klient 
INNER JOIN zamowienie ON klient.id_klient = zamowienie.klient_id_klient
WHERE zamowienie.faktura = true;

SELECT dzial_pracownik.nazwa_dzial_pracownik, SUM(pracownik.pensja) AS koszty_pensji FROM pracownik 
INNER JOIN dzial_pracownik ON pracownik.dzial_pracownik_id_dzial_pracownik = dzial_pracownik.id_dzial_pracownik
GROUP BY dzial_pracownik.nazwa_dzial_pracownik
ORDER BY koszty_pensji DESC;

SELECT nazwa_kategoria, count(*) AS ilosc FROM ksiazka
INNER JOIN kategoria_ksiazka ON ksiazka.kategoria_ksiazki_id_kategoria_ksiazki = kategoria_ksiazka.id_kategoria_ksiazki
GROUP BY nazwa_kategoria;

SELECT nazwa_kategoria FROM ksiazka
RIGHT JOIN kategoria_ksiazka ON ksiazka.kategoria_ksiazki_id_kategoria_ksiazki = kategoria_ksiazka.id_kategoria_ksiazki
WHERE ksiazka.id_ksiazki IS NULL;

SELECT autor.imie_autor, autor.nazwisko_autor, MIN(ksiazka.rok_wydania) FROM autor 
INNER JOIN autor_has_ksiazka ON autor.id_autor = autor_has_ksiazka.autor_id_autor
INNER JOIN ksiazka ON autor_has_ksiazka.ksiazki_id_ksiazki = ksiazka.id_ksiazki
GROUP BY autor.imie_autor, autor.nazwisko_autor;

SELECT DISTINCT nazwa_stanowisko, nazwa_dzial_pracownik FROM pracownik 
INNER JOIN stanowisko ON pracownik.stanowisko_id_stanowisko = stanowisko.id_stanowisko
INNER JOIN dzial_pracownik ON pracownik.dzial_pracownik_id_dzial_pracownik = dzial_pracownik.id_dzial_pracownik;

SELECT zamowienie.numer_zamowienia, COUNT(*) AS ilosc_zamowionych_pozycji FROM zamowienie 
INNER JOIN zamowienie_has_ksiazka ON zamowienie.id_zamowienie = zamowienie_has_ksiazka.zamowienie_id_zamowienie
INNER JOIN ksiazka ON zamowienie_has_ksiazka.ksiazki_id_ksiazki = ksiazka.id_ksiazki
GROUP BY numer_zamowienia
ORDER by ilosc_zamowionych_pozycji DESC;

SELECT zamowienie.numer_zamowienia, dostawa.nazwa_dostawa FROM zamowienie
INNER JOIN dostawa ON zamowienie.dostawa_id_dostawa = dostawa.id_dostawa;

SELECT ksiazka.tytul, autor.imie_autor, autor.nazwisko_autor FROM ksiazka 
INNER JOIN autor_has_ksiazka ON ksiazka.id_ksiazki = autor_has_ksiazka.ksiazki_id_ksiazki
INNER JOIN autor ON autor_has_ksiazka.autor_id_autor = autor.id_autor;




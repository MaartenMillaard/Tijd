/* vulling van tabellen*/

/* projecten */
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (1, "migratie cognos", "intern project", "Jeanine Vosselman", "I&S", "2018-01-01", "2019-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (2, "dmo indicatiewaarden", "project", "Arne Tiel Groenestegen", "DMO", "2018-01-01", "2019-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (3, "financiele rapportage", "project", "Willem van der Heide", "F&I", "2018-04-01", "2019-03-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (4, "bezoekersaantallen", "project", "Erik Heijbroek", "Sport050", "2018-08-01", "2019-04-15");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (5, "data virtualisatie", "project", "Hans Julsing", "IKD", "2018-11-01", "2019-03-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (6, "management", "overhead", "Jeanine Vosselman", "I&S", "2001-01-01", "2050-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (7, "verlof", "afwezigheid", "Jeanine Vosselman", "I&S", "2001-01-01", "2050-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (8, "ziek", "afwezigheid", "Jeanine Vosselman", "I&S", "2001-01-01", "2050-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (9, "feestdag", "afwezigheid", "Jeanine Vosselman", "I&S", "2001-01-01", "2050-12-31");
INSERT INTO `tijd`.tblproject(idproject, naam, categorie, opdrachtgever, directie, startdatum, einddatum) VALUES (10, "opleiding", "afwezigheid", "Jeanine Vosselman", "I&S", "2001-01-01", "2050-12-31");

/* medewerkers */
INSERT INTO `tijd`.tblmedewerker(emailadres, naam, wachtwoord, team, rol, contracturen, startdatum, einddatum) VALUES ("erwin.reinders@groningen.nl", "Erwin", "welkom", "reporting", "medewerker", 40.00, "2009-04-01", null);
INSERT INTO `tijd`.tblmedewerker(emailadres, naam, wachtwoord, team, rol, contracturen, startdatum, einddatum) VALUES ("arjan.hegge@groningen.nl", "Arjan", "welkom", "reporting", "beheerder", 40.00, "2008-01-01", null);
INSERT INTO `tijd`.tblmedewerker(emailadres, naam, wachtwoord, team, rol, contracturen, startdatum, einddatum) VALUES ("maarten.millaard@groningen.nl", "Maarten", "welkom", "datawarehouse", "medewerker", 40.00, "1998-03-15", null);
INSERT INTO `tijd`.tblmedewerker(emailadres, naam, wachtwoord, team, rol, contracturen, startdatum, einddatum) VALUES ("jeanine.vosselman@groningen.nl", "Jeanine", "welkom", "reporting", "afdelingshoofd", 40.00, "1994-02-19", null);

/* uren eerste 8 weken, medewerker 1 */
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2018-12-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 8, "2019-01-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-01-02", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-01-03", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-01-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-01-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-09", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-10", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 4, "2019-01-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 4, "2019-01-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-16", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-17", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 3, "2019-01-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-22", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-23", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-24", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 1, "2019-01-25", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 1, "2019-01-28", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-29", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-01-30", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 4, "2019-01-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 1, "2019-02-05", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 5, "2019-02-06", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 1, "2019-02-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 1, "2019-02-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-12", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-13", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 2, "2019-02-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 10, "2019-02-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-02-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-02-19", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-02-20", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-02-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (1 , 7, "2019-02-22", 8);

/*medewerker 2*/
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2018-12-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 8, "2019-01-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-02", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-03", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-01-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-01-09", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-01-10", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-01-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-16", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 4, "2019-01-17", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-01-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 4, "2019-01-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-22", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-23", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-24", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-25", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-01-28", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-29", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-30", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 3, "2019-01-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-02-05", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 5, "2019-02-06", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-02-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 1, "2019-02-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-12", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-13", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 2, "2019-02-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 10, "2019-02-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2019-02-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2019-02-19", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2019-02-20", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2019-02-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (2 , 7, "2019-02-22", 8);

/*medewerker 3*/
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 7, "2018-12-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 8, "2019-01-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 ,2, "2019-01-02", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-03", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-01-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-09", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-01-10", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 4, "2019-01-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-16", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 4, "2019-01-17", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 4, "2019-01-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-22", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-23", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-24", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-01-25", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-01-28", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-29", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-01-30", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 4, "2019-01-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-02-05", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 5, "2019-02-06", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-02-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-02-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-12", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-13", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 10, "2019-02-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 1, "2019-02-19", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-20", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (3 , 2, "2019-02-22", 8);

/*medewerker 4*/
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2018-12-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 8, "2019-01-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-02", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4, 6, "2019-01-03", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-09", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-10", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-16", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-17", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-22", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-23", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-24", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-25", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-28", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-29", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-30", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-01-31", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-01", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-04", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-05", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-06", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-07", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-08", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-11", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-12", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-13", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2019-02-14", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2019-02-15", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2019-02-18", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2019-02-19", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 7, "2019-02-20", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-21", 8);
INSERT INTO `tijd`.tblregistratie(idmedewerker, idproject, startdatum, uren) VALUES (4 , 6, "2019-02-22", 4);
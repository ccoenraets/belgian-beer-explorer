--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: beer; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE beer (
    name text,
    tags text,
    alcohol numeric(3,1),
    brewery text,
    id integer NOT NULL,
    brewery_id integer,
    image text
);


--
-- Name: beer_id_seq; Type: SEQUENCE; Schema: public;
--

CREATE SEQUENCE beer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: beer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner:
--

ALTER SEQUENCE beer_id_seq OWNED BY beer.id;


--
-- Name: brewery; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE brewery (
    id integer NOT NULL,
    name text
);


--
-- Name: brewery_id_seq; Type: SEQUENCE; Schema: public;
--

CREATE SEQUENCE brewery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: brewery_id_seq; Type: SEQUENCE OWNED BY; Schema: public;
--

ALTER SEQUENCE brewery_id_seq OWNED BY brewery.id;


--
-- Name: id; Type: DEFAULT; Schema: public;
--

ALTER TABLE ONLY beer ALTER COLUMN id SET DEFAULT nextval('beer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public;
--

ALTER TABLE ONLY brewery ALTER COLUMN id SET DEFAULT nextval('brewery_id_seq'::regclass);


--
-- Data for Name: beer; Type: TABLE DATA; Schema: public;
--

COPY beer (name, tags, alcohol, brewery, id, brewery_id, image) FROM stdin;
Bons Voeux	blonde	9.5	Brasserie Dupont	250	130	generic.png
Boerke Blond	blonde	6.8	Brouwerij Angerik	233	287	generic.png
Leffe Blond	blonde, abbey	6.6	AB InBev	945	216	generic.png
Watou's Wit	white	5.0	Brouwerij Van Eecke	1662	219	generic.png
Leffe Ruby	fruit beer, abbey	6.5	AB InBev	951	216	generic.png
Jeanke	Blonde	\N	Brasserie St. Jean	770	6	generic.png
De Nacht	winter	5.2	Brouwerij Vissenaken	456	51	generic.png
Lou Pepe	geuze	5.0	Brasserie Cantillon	991	170	generic.png
Leffe 9°	high fermentation	9.0	AB InBev	954	216	generic.png
Vat 44	geuze	8.0	Brouwerij Boon	1610	348	generic.png
Scotch C.T.S.	scotch	7.2	AB InBev	1343	216	generic.png
Stropken	amber	7.0	Brouwerij Bios	1461	244	generic.png
Maredsous blond	blonde	6.0	Brouwerij Duvel Moortgat	1021	3	generic.png
Witheer	white	5.0	Scheldebrouwerij	1689	52	generic.png
Goedendag	gold blonde	8.0	Brouwerij Toye	633	191	generic.png
Hofnar	amber	9.0	t Hofbrouwerijke	729	96	generic.png
Vlaskop	white	5.5	Brouwerij Strubbe	1645	2	generic.png
Belle-Vue Kriek	kriek	5.2	Brouwerij Belle-Vue (AB InBev)	146	14	generic.png
La Vauban	abbey	6.0	Brasserie de Bouillon	932	224	generic.png
Grisette Blanche	white	5.0	Brasserie St-Feuillien	678	319	generic.png
Poperings Hommelbier	high fermentation	7.5	Brouwerij Van Eecke	1242	219	generic.png
Vicaris Tripel	high fermentation, triple	8.5	Brouwerij Dilewyns	1619	31	generic.png
Hotteuse Grand Cru	dark	8.0	Affligem Brewery (Heineken)	747	19	generic.png
La Rulles Estivale	high fermentation	5.2	Brasserie Artisanale de Rulles	917	144	generic.png
Meuuh!	white	5.5	Brasserie Saint-Monon for Confrérie du Busson	1040	214	generic.png
Bruin Leroy	table beer	1.8	Brouwerij Het Sas	283	257	generic.png
t Smisje Speciaal	high fermentation	10.5	Brouwerij De Regenboog	1502	190	generic.png
Postel Dubbel	brown, abbey	7.0	Affligem Brewery (Heineken)	1238	19	generic.png
Ceci n'est pas une stout	stout	6.5	t Hofbrouwerijke	344	96	generic.png
Gouyasse Tradition	high fermentation, blonde	6.0	Brasserie des Géants	661	198	generic.png
Anker Herfstbok	brown special, bock	6.5	Brouwerij Het Anker	68	161	generic.png
Tournay	high fermentation	6.7	Brasserie de Cazeau	1541	309	generic.png
Gordon Five	pils	5.0	Group John Martin	649	91	generic.png
Flodder	high fermentation	8.0	De Proefbrouwerij for bierfirma VALOCCO	565	338	generic.png
Spioenkopje	fruit beer, white	5.0	Brouwerij Strubbe for den Haene	1399	125	generic.png
Abbaye de Saint-Martin Triple	abbey, triple	9.0	Brasserie de Brunehaut	20	349	generic.png
Delirium Tremens	triple	9.0	Brouwerij Huyghe	466	271	generic.png
Bornem Tripel	abbey	9.0	Brouwerij Van Steenberge	252	241	generic.png
Klets	top fermentation	8.0	Brouwerij Bier & Karakter by Brouwerij Deca	837	118	generic.png
Père Noël	christmas	7.0	Brouwerij De Ranke	1198	313	generic.png
Omer.	high fermentation, blonde	8.0	Brouwerij Bockor	1129	24	generic.png
Odlo Hivernum	winter, belgian imperial Stout	8.7	Brouwerij Lupus for (T)Huisbrouwerij Odlo	1123	255	generic.png
Speculoos Bier	high fermentation (label beer)	8.0	Brasserie d'Ecaussinnes	1397	66	generic.png
Piedbœuf Brune	table beer	1.5	Brasserie Piedboeuf (AB InBev)	1210	1	generic.png
Slaapmutske Blond	high fermentation, blonde	6.4	De Proefbrouwerij for Brouwerij Slaapmutske	1367	9	generic.png
Bush de Noël	christmas	12.0	Brouwerij Dubuisson	312	74	generic.png
Louwaege Stout	stout	4.8	Alken-Maes (Heineken)	996	358	generic.png
Duvel	high fermentation	8.5	Brouwerij Duvel Moortgat	520	3	generic.png
Sara Blond	blonde, high fermentation, buckwheat	6.0	Brasserie de Silenrieux	1328	44	generic.png
Smiske Extra	triple	7.0	Brouwerij Smisje	1383	105	generic.png
Affligem Noël	abbey, christmas	9.0	Affligem Brewery (Heineken)	45	19	generic.png
Den Herberg Tarwe	white	5.0	Brouwerij Den Herberg	477	256	generic.png
Lokernaere	label beer	5.5	Brouwerij Het Sas	987	257	generic.png
Korsakoff	unfiltered, blonde	6.5	t Hofbrouwerijke	848	96	generic.png
Bittere Waarheid	belgian IPA	11.0	Brouwerij Het Alternatief by Brouwerij De Graal	189	299	generic.png
Waas Klok Bier Bruin	dark	8.5	Brouwerij Boelens	1654	193	generic.png
Patrasche dubbel	dark brown	8.0	De Proefbrouwerij for Brouwerij De Arend (Hoboken)	1190	85	generic.png
De Koninck Triple d'Anvers	blonde	8.0	Brouwerij De Koninck (Duvel-Moortgat)	453	236	generic.png
Hoegaarden Spéciale	high fermentation, gold blonde	5.7	Brouwerij De Kluis (AB InBev)	720	109	generic.png
Hoegaarden Verboden Vrucht	fruit beer	8.8	Brouwerij De Kluis (AB InBev)	721	109	generic.png
Kerstpater	high fermentation, christmas	9.0	Brouwerij Van Den Bossche	829	251	generic.png
Gouden Carolus Ambrio	amber	8.0	Brouwerij Het Anker	653	161	generic.png
Jessenhofke Maya	high fermentation, organic	6.0	De Proefbrouwerij for Brouwerij Jessenhofke	772	148	generic.png
Kleveretien	high fermentation, winter	10.0	De Scheldebrouwerij for Brouwerij Het Nest	838	82	generic.png
Grimbergen Optimo Bruno	high fermentation	10.0	Alken-Maes (Heineken)	674	358	generic.png
Celtic Angel	high fermentation, amber	6.2	De Proefbrouwerij for Microbrewery Achilles	348	62	generic.png
Dagelyckx bier	label beer	8.0	Brouwerij Jessenhofke	436	316	generic.png
Brussels Fruit Beer "Red Fruit"	fruit beer	3.2	Brasserie Du Bocq	297	70	generic.png
Gruut Wit	white	5.0	Stadsbrouwerij Gruut	689	26	generic.png
Gauloise Christmas	christmas	8.1	Brasserie Du Bocq	617	70	generic.png
Blanche de Charleroi	white	5.0	Brasserie Val de Sambre	206	306	generic.png
Ridder	low alcohol	2.3	Brouwerij Het Sas	1277	257	generic.png
Saison Cazeau	saison	5.0	Brasserie de Cazeau	1313	309	generic.png
Bierpruver Winter	winter	8.0	Huisbrouwerij de 3 vaten	180	40	generic.png
Noblesse Extra	high fermentation, IPA	7.0	Brouwerij De Dochter van de Korenaar	1109	201	generic.png
Noël de Silenrieux	triple, christmas	9.0	Brasserie de Silenrieux	1110	44	generic.png
Bioloo Amber	organic	7.8	Brouwerij Belgoobeer by Brasserie La Binchoise	186	307	generic.png
Courage	high fermentation, winter	8.0	Brouwerij De Dochter van de Korenaar	396	201	generic.png
Special Extra Export Stout	stout	9.0	De Dolle Brouwers	1393	300	generic.png
Florival Blond	abbey	7.0	Affligem Brewery (Heineken)	588	19	generic.png
Grimbergen Tripel	triple	9.0	Alken-Maes (Heineken)	676	358	generic.png
Slim³	top fermentation	8.0	Brouwerij De Graal for SLIM	1378	101	generic.png
Ter Dolen Blond	blonde	6.1	Kasteelbrouwerij De Dool	1509	312	generic.png
Corsendonk Bruin	high fermentation	6.5	Brouwerij du Bocq for Corsendonk nv	390	252	generic.png
Keyte-Dobbel-Tripel	ruby, high fermentation	9.2	Brouwerij Strubbe	836	2	generic.png
Crack Pils	low fermentation, pils	5.0	Brouwerij Het Sas	399	257	generic.png
Ciney Blond	high fermentation, blonde	7.0	Alken-Maes (Heineken)	376	358	generic.png
Pater Verbiest Blond	organic, blonde	6.5	De Proefbrouwerij	1186	133	generic.png
Tongerlo Blond	high fermentation, abbey	6.0	Brouwerij Haacht	1532	47	generic.png
Queueu de Charrue Triple	triple	9.0	Brouwerij Van Steenberge commissioned by Brouwerij Vanuxeem	1257	149	generic.png
Lindemans Framboise	lambic	2.5	Brouwerij Lindemans	979	233	generic.png
La Mac Vertus	stout	4.8	Brasserie Millevertus	900	340	generic.png
Timmermans Kriek Retro	fruit beer	5.0	Brouwerij Timmermans	1520	350	generic.png
t Smisje Sleedoornbier	fruit beer	6.0	Brouwerij De Regenboog	1500	190	generic.png
Super des Fagnes Brune	high fermentation, brown	7.5	Brasserie des Fagnes	1469	234	generic.png
BRWN	high fermentation, organic	7.0	De Proefbrouwerij for Brouwerij Jessenhofke	300	148	generic.png
Belle-Vue Kriek Classique	Kriek	5.1	Brouwerij Belle-Vue (AB InBev)	147	14	generic.png
Hanssens Lambic Experimental Raspberry	lambic, fruit beer	4.0	Brouwerij Hanssens	698	248	generic.png
Steenbrugge Blond	abbey, blonde	6.5	Brouwerij Palm	1440	302	generic.png
Pannepot	high fermentation	10.0	De Struise Brouwers by Brouwerij Deca	1174	154	generic.png
t Smisje Honingbier Bruin	honey	6.0	Brouwerij De Regenboog	1497	190	generic.png
Bloemenbier	belgian strong ale	7.0	De Proefbrouwerij	218	133	generic.png
Naked Ladies	high fermentation	4.4	Brouwerij Alvinne	1089	63	generic.png
Floreffe Wit-Bier	white, abbey	4.5	Brouwerij Lefebvre	570	147	generic.png
Broeder Jacob Bruin	brown	7.5	Brasserie du Bocq for Broeder Jacob bvba	268	150	generic.png
Kapel van Viven Blond	blonde	6.8	De Proefbrouwerij for Beerdevelopment Viven	794	263	generic.png
Hervoise	high fermentation	8.2	Brasserie Grain d'Orge	710	329	generic.png
Vieux Bruxelles Kriek	label beer	4.0	Brouwerij Van Honsebrouck	1629	106	generic.png
Vingeronne	fruit beer, lambic	6.0	Brasserie Cantillon	1631	170	generic.png
t Gaverhopke Blondje	high fermentation	6.8	Brouwerij 't Gaverhopke	1478	79	generic.png
Ceci n'est pas une triple	triple	8.0	t Hofbrouwerijke	345	96	generic.png
Lam Gods	brown double	6.8	Brouwerij Van Steenberge for Brouwerij Paeleman	937	140	generic.png
Bière de Garde	organic, red brown	10.0	Brouwerij Jessenhofke by De Proefbrouwerij	170	41	generic.png
Vanderghinste oud bruin	West-flemish red brown	5.5	Brouwerij Bockor	1608	24	generic.png
Vapeur cochonne	belgian ale	9.0	Brasserie à Vapeur	1609	132	generic.png
Johannes	local	6.5	Brouwerij De Graal for bierfirma Johannes	775	343	generic.png
Oude Gueuze Hanssens	geuze	6.0	Hanssens Artisanaal	1147	48	generic.png
Florilège d’Hibiscus	fruit beer, flower beer	9.0	Brasserie d'Ecaussinnes	574	66	generic.png
Golding Campina	pils	4.8	Alken-Maes (Heineken)	638	358	generic.png
Gouden Carolus Hopsinjoor	blonde special	8.0	Brouwerij Het Anker	657	161	generic.png
Steendonk	white	4.5	Brouwerij Duvel Moortgat	1444	3	generic.png
Steenuilke	high fermentation	6.5	Brouwerij De Rijck	1445	325	generic.png
Druïde Blond	light blonde	6.5	De Proefbrouwerij for Brouwerij Druïde	509	327	generic.png
Festina Lente	dark brown	7.0	Brouwerij Alvinne	562	63	generic.png
Beersel Blond	blonde	7.0	Geuzestekerij 3 Fonteinen	127	195	generic.png
Beersel Lager	pils	5.2	Geuzestekerij 3 Fonteinen	128	195	generic.png
Bel Pils	pils	5.0	Brouwerij Duvel Moortgat	129	3	generic.png
Belval	blonde	4.8	Gageleer	156	352	generic.png
Griboval	high fermentation	6.5	Brouwerij Van Den Bossche for Scouts Moen 50 jaar (2011)	669	126	generic.png
La Troufette Rousse	high fermentation	7.8	Brasserie de Bastogne	931	222	generic.png
Mariënrode Quadruple	brown	12.0	Brouwerij Anders for Halen Breweries	1025	145	generic.png
Robustus	quadruple	10.0	Brouwerij Het Gulden Spoor	1281	282	generic.png
t Zelfde	blonde	4.0	Brouwerij Bosteels	1504	155	generic.png
Kasteelbier Bruin	brown	11.0	Brouwerij Van Honsebrouck	811	106	generic.png
Ferre	quadruple	10.0	Brouwerij Maenhout by Brouwerij Gulden Spoor	561	104	generic.png
Armand’4 Lente	old geuze	6.0	Geuzestekerij 3 Fonteinen	86	195	generic.png
Winterkoninkske	high fermentation	8.3	Brouwerij Sint-Jozef for brouwerij Kerkom	1685	305	generic.png
Prima Leroy	table beer	3.3	Brouwerij Het Sas	1247	257	generic.png
Li P'tite Gayoûle	saison	5.5	Brouwerij De Ranke for NovaBirra	966	357	generic.png
Felix Oud Bruin	brown	5.2	Brouwerij Verhaeghe for Brouwerij Clarysse (bierfirma)	557	86	generic.png
Martens Pils	pils	5.0	Brouwerij Martens (Bocholt)	1029	311	generic.png
Triple de Brabant	triple, blonde	8.5	Group John Martin	1559	91	generic.png
Triple Moine	triple	7.3	Brasserie Du Bocq	1560	70	generic.png
Fort Lapin 8	triple	8.0	Brouwerij Fort Lapin	598	322	generic.png
Mort Subite Original Kriek	fruit beer	4.5	Alken-Maes (Heineken)	1069	358	generic.png
Mort Subite Framboise	fruit beer	5.0	Alken-Maes (Heineken)	1065	358	generic.png
Bierbeekse	blonde-amber, high fermentation	7.3	Brouwerij Van Steenberge for de gemeente Bierbeek en Terclavers	166	108	generic.png
Belgian Kriek	fruit beer	3.5	Brasserie Lefebvre	132	242	generic.png
St. Louis Peche	fruit beer	3.5	Brouwerij Van Honsebrouck	1427	106	generic.png
Rousse de Brabant	koper-amber	5.2	Group John Martin	1300	91	generic.png
Terracotta	blonde	7.0	Brouwerij De Regenboog	1513	190	generic.png
Blanche d'Ardenne	white	4.3	Brasserie du Bocq for Corsendonk nv	202	228	generic.png
Modeste Tripel	triple, organic	8.4	Brouwerij Strubbe for BioFresh	1043	360	generic.png
Santa Bee	brown christmas	8.5	Brouwerij Boelens	1327	193	generic.png
Reinaert Blond	amber	7.0	De Proefbrouwerij	1271	133	generic.png
Liter van Pallieter	triple	8.0	Microbrewery Achilles	982	16	generic.png
Pandreitje	dark blonde	7.0	Brouwerij De Regenboog	1173	190	generic.png
Antiek Super 5 Blond	blonde	5.0	Brouwerij Deca	72	183	generic.png
Campus Gold	blonde	6.2	Brouwerij Huyghe	321	271	generic.png
Vieux Bruges Peche	fruit beer	3.5	Brouwerij Van Honsebrouck	1627	106	generic.png
Augrenoise	cloudy blonde	6.5	Brouwerij Augrenoise	94	235	generic.png
Abdis Bruin	brown	6.5	Brouwerij Riva	27	317	generic.png
Beer for Life	blonde	6.5	Brouwerij Dilewyns	124	31	generic.png
Klooster van Viven	brown	6.6	De Proefbrouwerij for Beerdevelopment Viven	843	263	generic.png
Gordon Finest Chrome	high fermentation	10.5	Group John Martin	641	91	generic.png
La Binchoise Organic’ Brune	high fermentation, organic	7.0	Brasserie La Binchoise	872	120	generic.png
L'Enfant Terrible	high fermentation, oak aged	7.0	Brouwerij De Dochter van de Korenaar	960	201	generic.png
Ceci n'est pas une saison	saison	6.5	t Hofbrouwerijke	343	96	generic.png
Bière de Miel Bio	organic, honey	8.0	Brasserie Dupont	172	130	generic.png
Ignis & Flamma	IPA	7.0	De Struise Brouwers by Brouwerij Deca	754	154	generic.png
Cuvée Freddy	stout	10.0	Brouwerij Alvinne	422	63	generic.png
Boskeun	light blonde	7.0	De Dolle Brouwers	256	300	generic.png
Romy Pils	pils	5.1	Brouwerij Roman	1291	291	generic.png
Suma Pils	label beer	5.0	Brouwerij Het Sas	1466	257	generic.png
VI Wheat	high fermentation, wheat	6.0	Brasserie de Jandrain-Jandrenouille	5	13	generic.png
Aarschotse Bruine	brown	6.0	Stadsbrouwerij Aarschot	7	288	generic.png
Vedett Extra ordinary IPA	blonde	6.0	Brouwerij Duvel Moortgat	1614	3	generic.png
Gribousine Hiver	winter	8.5	Brasserie La Binchoise (for Brasserie de Malonne)	668	204	generic.png
Katje Special	high fermentation, ale	6.0	Brouwerij Het Sas	815	257	generic.png
Wintersnood	winter	6.4	‘t Hofbrouwerijke for De Verhuisbrouwerij	1687	121	generic.png
Ghulden Cop	dark blonde	6.0	Brouwerij De Graal	628	34	generic.png
Gigi speciale	table beer	2.5	Brasserie Gigi	629	261	generic.png
Alfri	NA pils	0.5	Brouwerij Roman	52	291	generic.png
Brussels Kriek	fruit beer	5.0	Brouwerij Van Steenberge	293	241	generic.png
Dobbel Palm	high fermentation	6.0	Brouwerij Palm	491	302	generic.png
Caulier 28 Pale Ale	blonde	5.0	De Proefbrouwerij for Caulier Developpement	336	259	generic.png
Hofblues	stout	5.5	t Hofbrouwerijke	726	96	generic.png
La Troufette Brune	high fermentation, winter	6.8	Brasserie de Bastogne	929	222	generic.png
Karlsquell	pils	4.6	Brouwerij Martens	802	284	generic.png
Hector	high fermentation, triple	8.2	Brouwerij De Graal	701	34	generic.png
Hertalse Poorter	high fermentation, blonde	6.5	Brouwerij Slaghmuylder	708	49	generic.png
Tongerlo Winterbier	high fermentation, abbey	7.0	Brouwerij Haacht	1536	47	generic.png
Caulier 28 Brett	versneden, amber	7.5	De Proefbrouwerij for Caulier Developpement	335	259	generic.png
Westmalle Tripel	trappist	9.5	Brouwerij Westmalle	1666	97	generic.png
Export 8	pils	4.7	Brouwerij Haacht	543	47	generic.png
Agrumbocq	high fermentation, white, fruit beer	3.1	Brasserie du Bocq	48	210	generic.png
Keizer Karel Goud Blond	blonde	8.5	Brouwerij Haacht	820	47	generic.png
Bush Amber Tripel	triple, amber	12.0	Brouwerij Dubuisson	309	74	generic.png
Mariënrode Double	brown	8.0	Brouwerij Anders for Halen Breweries	1024	145	generic.png
Hik Bruin	high fermentation	6.5	Brouwerij Het Alternatief by Brouwerij De Graal	712	299	generic.png
Lamme Goedzak	high fermentation	7.0	De Scheldebrouwerij	940	318	generic.png
Kwets	blonde wheat	6.8	Brouwerij Van Steenberge for Microbrewery Paeleman commissioned by Kwets vzw	865	294	generic.png
Chapeau Exotic (ananas)	fruit beer, lambic	3.5	Brouwerij De Troch	357	303	generic.png
Gentse Strop	blonde	6.9	Brouwerij Roman	618	291	generic.png
Snoek Blond	high fermentation	7.5	Brouwerij Bavik for “Mout- en Brouwhuis De Snoek”	1386	59	generic.png
Bavik Premium Pils	pils	5.2	Brouwerij Bavik	122	81	generic.png
Poperings Nunnebier	high fermentation	7.2	Brouwerij Verhaeghe	1243	64	generic.png
Straffe Winter	geuze	8.0	Geuzestekerij 3 fonteinen	1458	285	generic.png
Slaapmutske Dry Hopped Lager	low fermentation, dortmunder	5.3	De Proefbrouwerij for Brouwerij Slaapmutske	1373	9	generic.png
Abdij van Roosenberg Dubbel	double	7.0	Brouwerij Van Steenberge	29	241	generic.png
Bokrijks	blonde, abbey	7.2	Brouwerij du Bocq	241	8	generic.png
Mort Subite Gueuze	geuze	4.5	Alken-Maes (Heineken)	1066	358	generic.png
Vichtenaar	red browne ale	5.1	Brouwerij Verhaeghe	1621	64	generic.png
Floris Passion	fruit beer	3.6	Brouwerij Huyghe	584	271	generic.png
Jupiler	pils	5.2	Brasserie Piedboeuf (AB InBev)	783	1	generic.png
Goliath Blonde	high fermentation, blonde	5.5	Brasserie des Légendes	635	100	generic.png
Goliath Triple	high fermentation, triple	9.0	Brasserie des Légendes	636	100	generic.png
Kerkomse Tripel	triple	9.0	Brouwerij Kerkom by Brouwerij Sint-Jozef	828	67	generic.png
Double Bie	brown	6.5	Brouwerij De Bie	498	220	generic.png
La Guillotine	strong blonde	8.5	Brouwerij Huyghe	897	271	generic.png
Zeven Zonden Luxuria	high fermentation	8.5	Brouwerij Gulden Spoor for bierfirma Hugel	1715	266	generic.png
Redbocq	fruit beer	3.1	Brasserie Du Bocq	1268	70	generic.png
Queueu de Charrue Brune	old brown	5.4	Brouwerij Verhaeghe Vichte commissioned by Brouwerij Vanuxeem	1256	254	generic.png
Faro Girardin	faro	5.0	Brouwerij Girardin	551	175	generic.png
Belgoo Bio Blond	organic	6.4	Brouwerij Belgoobeer by Brasserie La Binchoise	137	307	generic.png
Corsendonk Pater	red brown, double	7.5	Brouwerij du Bocq for Corsendonk nv	392	252	generic.png
Elliot Brew	imperial IPA	9.0	De Struise Brouwers by Brouwerij Deca	529	154	generic.png
Gouyasse Triple	triple	9.0	Brasserie des Géants	662	198	generic.png
Grisette Ambrée	amber	5.0	Brasserie St-Feuillien	677	319	generic.png
Florilège de Pensée	fruit beer, flower beer	9.0	Brasserie d'Ecaussinnes	571	66	generic.png
Florilège de Rose	fruit beer, flower beer	9.0	Brasserie d'Ecaussinnes	572	66	generic.png
Leute Bokbier	red brown, high fermentation	7.5	Brouwerij Van Steenberge	963	241	generic.png
Troubadour Imperial Stout	imperial stout	9.0	De Proefbrouwerij for Brouwerij The Musketeers	1566	75	generic.png
t Gaverhopke Kriek	high fermentation, fruit beer	6.8	Brouwerij 't Gaverhopke	1481	79	generic.png
Mariënrode Triple	triple	9.1	Brouwerij Anders for Halen Breweries	1026	145	generic.png
La Rulles La Grande 10	high fermentation, belgian strong pale ale	10.0	Brasserie Artisanale de Rulles	918	144	generic.png
La Rulles Triple	high fermentation, triple	8.4	Brasserie Artisanale de Rulles	919	144	generic.png
Nivoo	triple	7.0	Brouwerij Anders for GIBRIT	1107	4	generic.png
Gordon Finest Red	high fermentation, rood	8.4	Group John Martin	645	91	generic.png
Hoegaarden Grand Cru	high fermentation	8.5	Brouwerij De Kluis (AB InBev)	718	109	generic.png
Valeir Divers	high fermentation, triple	8.5	Brouwerij Contreras	1604	310	generic.png
Blondine IPA	IPA	8.0	Brouwerij De Graal for Hopduvel Gent	226	25	generic.png
Bock Leroy	table beer	1.8	Brouwerij Het Sas	227	257	generic.png
Boerinneken	high fermentation, blonde	9.5	De Proefbrouwerij for Verstraeten H&S	232	230	generic.png
La Chérie	fruit beer	5.0	Brasserie Val de Sambre	887	306	generic.png
La Chèvenis	high fermentation	6.0	Brasserie de Bouillon	888	224	generic.png
Mater Witbier	wheat	5.0	Brouwerij Roman	1032	291	generic.png
Noblesse	high fermentation, blonde	5.5	Brouwerij De Dochter van de Korenaar	1108	201	generic.png
Slaapmutske Bruin	high fermentation, brown	6.0	De Proefbrouwerij for Brouwerij Slaapmutske	1368	9	generic.png
Slaapmutske Bio Tripel	organic, triple , gold blonde	8.0	De Proefbrouwerij for Brouwerij Slaapmutske	1369	9	generic.png
Bush 7	amber	7.5	Brouwerij Dubuisson	316	74	generic.png
Ducassis	fruit beer	3.0	Brasserie des Légendes	515	100	generic.png
Affligem Patersvat	abbey, double hopped	6.8	Affligem Brewery (Heineken)	46	19	generic.png
Tournée Générale	belgian special	6.5	Brouwerij Duvel Moortgat	1544	3	generic.png
La Rulles Blonde	high fermentation	7.0	Brasserie Artisanale de Rulles	914	144	generic.png
La Spéciale Fêtes	winter	8.5	Brasserie de Bouillon	925	224	generic.png
Peter Benoit	label beer	5.0	Brouwerij Het Sas	1199	257	generic.png
Jupiler Blue	low fermentation, pils	3.3	Brasserie Piedboeuf (AB InBev)	784	1	generic.png
Gruut Inferno	gold	9.0	Stadsbrouwerij Gruut	688	26	generic.png
Ultra Fraîche	light blonde	3.5	Brasserie d'Ecaussinnes	1585	66	generic.png
El Toro	high fermentation, IPA	6.5	Brouwerij Contreras	530	310	generic.png
t Gaverhopke Kerstbier	high fermentation, christmas	6.8	Brouwerij 't Gaverhopke	1480	79	generic.png
Bière du Mont Saint-Aubert	blonde	8.0	Brasserie de Brunehaut	175	349	generic.png
Belgian Angel Stout	stout	5.2	Brasserie Brootcoorens	130	78	generic.png
Hof ten Dormaal Blond	high fermentation	8.0	Brouwerij Hof ten Dormaal	724	163	generic.png
St. Louis Gueuze	geuze	5.0	Brouwerij Van Honsebrouck	1424	106	generic.png
Caulier Brune	high fermentation, amber brown	6.8	De Proefbrouwerij for Caulier Developpement	339	259	generic.png
Flandrien	high fermentation	7.0	Brouwerij Louwaege	564	229	generic.png
Urthel Parlus Magnificum	dark brown	7.5	Brouwerij De Leyerth	1595	129	generic.png
Ename Tripel	abbey, triple	8.5	Brouwerij Roman	537	291	generic.png
Mort Subite Witte Lambic	lambic	5.0	Alken-Maes (Heineken)	1076	358	generic.png
Kwibus Blond	blonde, high fermentation	6.4	Brouwerij Danny	866	199	generic.png
Gordon Finest Copper	high fermentation	6.6	Group John Martin	642	91	generic.png
Petrus Dubbel Bruin	brown	6.5	Brouwerij Bavik	1202	81	generic.png
Kerelsbier Licht	label beer	6.4	Brouwerij Het Sas	827	257	generic.png
Westoek XX	high fermentation	8.0	De Struise Brouwers	1668	172	generic.png
Vlaamsche Leeuw Tripel	triple	8.5	Brouwerij Van Steenberge for De Brouwerij van Vlaanderen	1642	315	generic.png
Bière des Ours (Berenbier)	honey	8.5	Brasserie La Binchoise	173	120	generic.png
Paus	local	8.5	De Scheldebrouwerij for De Lelie	1192	122	generic.png
Den Drupneuze	winter	8.5	Brouwerij Den Tseut	473	107	generic.png
Black Ghost	high fermentation	8.0	Brasserie Fantôme	198	206	generic.png
Cuvée Lambikstoemper	old geuze	7.0	Brouwerij Boon & De Lambikstoempers	425	237	generic.png
Cuvée Li Crochon	high fermentation, brown	8.7	Brasserie Du Bocq	426	70	generic.png
Cuvée Mam'zelle	blonde	8.5	Brouwerij De Leite	427	137	generic.png
Cuvée René Oude Geuze	old geuze	5.5	Brouwerij Lindemans	428	233	generic.png
Cuvée René Oude Kriek	fruit beer, lambic	6.0	Brouwerij Lindemans	429	233	generic.png
Brugs Beertje 25	amber	9.0	Brouwerij De Regenboog	278	190	generic.png
Mort Subite Oude Gueuze	old geuze	7.0	Alken-Maes (Heineken)	1070	358	generic.png
Wolf 7	blonde	7.4	Brouwerij Lupus	1699	184	generic.png
Abbaye d'Aulne Blonde des Pères 6	abbey, blonde	6.0	Brasserie Val de Sambre	8	306	generic.png
Blonde	blonde	7.0	Brasserie de Bellevaux	219	159	generic.png
Waase Wolf	amber	6.0	Brouwerij Boelens	1656	193	generic.png
Antwerps Blond	blonde	5.0	Huisbrouwerij 't Pakhuis	74	215	generic.png
Gouden Pier Kloeffe	high fermentation, triple	8.1	De Proefbrouwerij for Brouwerij Slaapmutske	659	9	generic.png
Super 64	high fermentation, amber	5.0	Brasserie de Silly	1467	87	generic.png
Cuvée de Francorchamps	label beer	8.0	Brouwerij Lefebvre	407	147	generic.png
Cantillon Geuze	spontaneous fermentation	5.0	Brasserie Cantillon	324	170	generic.png
De Hoop	blonde	9.0	De Dolle Brouwers	450	300	generic.png
La Vapeur Légère	\N	5.0	Brasserie à Vapeur	934	132	generic.png
Keikop Saison	saison	6.5	Brouwerij De Graal for Brouwerij De Kassei	816	29	generic.png
Moulin de Hollange – Blonde d’Epeautre	high fermentation, spelt	6.0	Brasserie Millevertus	1078	340	generic.png
Double Enghien Brune	high fermentation, amber	8.0	Brasserie de Silly	501	87	generic.png
St. Louis Gueuze Fond Tradition	geuze	5.0	Brouwerij Van Honsebrouck	1425	106	generic.png
Anker Blond	blonde	6.5	Brouwerij Het Anker	66	161	generic.png
Cuvée De Ranke	mixed fermentation	7.0	Brouwerij De Ranke	408	313	generic.png
Zoeg	pils	5.0	Brouwerij De Vlier for Promaco Vision	1718	55	generic.png
Blonde	blonde, low fermentation	1.2	Brouwerij Haacht	220	47	generic.png
Kapittel Abt	brown	10.0	Brouwerij Van Eecke	796	219	generic.png
Kriek Belgique	fruit beer	3.5	Brasserie du Bocq	850	210	generic.png
La Vapeur en Folie	\N	8.0	Brasserie à Vapeur	933	132	generic.png
Ter Dolen Kriek	fruit beer	4.5	Brouwerij Ter Dolen	1511	347	generic.png
Sint-Idesbald Réserve Ten Duinen Dubbel	abbey	8.0	Brouwerij Huyghe	1409	271	generic.png
Brigand	blonde	9.0	Brouwerij Van Honsebrouck	266	106	generic.png
Triest X-mas	high fermentation, christmas	8.5	Microbrewery Den Triest	1554	10	generic.png
Triomfbier Vooruit	amber	6.0	Brasserie Dupont for Kunstencentrum Vooruit	1555	18	generic.png
Druivenbier	fruit beer	6.0	Brouwerij Van Steenberge for Brouwerij Paeleman	512	140	generic.png
Malheur 10	blonde	10.0	Brouwerij De Landtsheer	1009	205	generic.png
Serafijn Tripel	triple	8.0	De Proefbrouwerij for Microbrewery Achilles	1349	62	generic.png
Abbaye de Saint-Martin Blonde	abbey	7.0	Brasserie de Brunehaut	17	349	generic.png
Belle-Vue LA	low alcohol	1.0	Brouwerij Belle-Vue (AB InBev)	150	14	generic.png
Leffe Radieuse	abbey	8.2	AB InBev	949	216	generic.png
Caulier Gluten free Blonde	high fermentation, blonde	6.8	De Proefbrouwerij for Caulier Developpement	340	259	generic.png
XX Bitter	high fermentation, blonde	6.2	Brouwerij De Ranke	1705	313	generic.png
Dubbel Buitenlust	blonde	8.5	De Proefbrouwerij	513	133	generic.png
Abdis Blond	blonde	6.5	Brouwerij Riva	26	317	generic.png
Chimay Wit	triple	8.0	Abbaye Notre-Dame de Scourmont	370	272	generic.png
Ribaldus blond	blonde	7.5	Brouwerij De Graal for bierfirma Ribaldus	1279	334	generic.png
t Smisje Tripel	triple	9.0	Brouwerij De Regenboog	1503	190	generic.png
Echte Kriek	fruit beer	6.8	Brouwerij Verhaeghe	523	64	generic.png
Draeckenier	gold blonde	7.5	De Proefbrouwerij for Brouwerij Troch	508	274	generic.png
Oude Lambiek De Cam	lambic	5.0	Geuzestekerij De Cam	1154	11	generic.png
Outblack	belgian strong ale	10.0	De Struise Brouwers	1156	172	generic.png
Sernia Brune	scotch, label beer	7.2	AB InBev	1351	216	generic.png
de Chokier	high fermentation, amber	7.0	De Proefbrouwerij	440	133	generic.png
Toetëlèr Amber Tripel	triple	8.5	Brouwerij Den Toetëlèr	1529	174	generic.png
Piedbœuf Blonde	table beer	1.5	Brasserie Piedboeuf (AB InBev)	1209	1	generic.png
La Binchoise XO	high fermentation	12.0	Brasserie La Binchoise	877	120	generic.png
La Botteresse Ambrée	high fermentation	8.5	Brasserie la Botteresse de Sur-les-bois	878	37	generic.png
Novice Blue	gold blonde	8.5	Brouwerij De Landtsheer	1119	205	generic.png
Novice Tripel Black	brown, triple	8.5	Brouwerij De Landtsheer	1120	205	generic.png
Bourgogne des Flandres Blond	high fermentation, blonde	6.0	Brouwerij Timmermans	258	350	generic.png
Grimbergen Goud 8°	high fermentation, blonde	8.0	Alken-Maes (Heineken)	673	358	generic.png
Koekelaring	high fermentation	6.5	Brouwerij De Graal for De Hoevebrouwers	845	116	generic.png
Ommegang	strogeel, high fermentation	8.0	Brouwerij Haacht	1130	47	generic.png
Ondineke	triple	8.5	Brouwerij De Glazen Toren	1131	321	generic.png
Orval	trappist	6.2	Abdij Notre-Dame d'Orval	1135	165	generic.png
Slaapmutske Tripel	organic, triple , gold blonde	8.1	De Proefbrouwerij for Brouwerij Slaapmutske	1371	9	generic.png
Palm N.A	low alcohol	0.3	Brouwerij Palm	1169	302	generic.png
Palm Royale	high fermentation	7.5	Brouwerij Palm	1170	302	generic.png
Vondel	dark brown	8.5	Brouwerij Liefmans	1649	20	generic.png
Zingende Blondine	high fermentation	9.8	Brouwerij 't Gaverhopke	1716	79	generic.png
Horst bier	low fermentation, blonde	6.5	Brouwerij Haacht	746	47	generic.png
Celis White	white	5.0	Brouwerij Van Steenberge	347	241	generic.png
Vuuve	white	5.0	Brouwerij De Regenboog	1653	190	generic.png
Floreffe Tripel	abbey	7.5	Brouwerij Lefebvre	569	147	generic.png
Saison Dupont Bio	saison, organic	5.5	Brasserie Dupont	1322	130	generic.png
Bellegems Bruin	flemish old brown	5.5	Brouwerij Bockor	154	24	generic.png
La Safranaise	high fermentation, spice beer	7.0	Brasserie Millevertus	920	340	generic.png
Tournay Noire	stout	7.6	Brasserie de Cazeau	1543	309	generic.png
Boerke Krieken	fruit beer	6.5	Brouwerij Angerik	235	287	generic.png
Kriekenbier	fruit beer	4.5	Brouwerij Strubbe	862	2	generic.png
Egmont	blonde	6.5	Brouwerij Strubbe for Brouwerij Crombé	528	292	generic.png
Bon Secours Ambrée	high fermentation, amber	8.0	Brouwerij Caulier	243	238	generic.png
Petrus Blond	high fermentation, blonde	6.6	Brouwerij Bavik	1201	81	generic.png
Florival Winter	red brown	9.0	Affligem Brewery (Heineken)	591	19	generic.png
Op-Ale	ale	5.0	Affligem Brewery (Heineken)	1132	19	generic.png
St. Benoit Brune	abbey	6.5	Brasserie du Bocq	1413	210	generic.png
Gruut Bruin	brown	8.0	Stadsbrouwerij Gruut	687	26	generic.png
La Botteresse Ambrée au miel	high fermentation, honey	8.5	Brasserie la Botteresse de Sur-les-bois	883	37	generic.png
Timmermans Gueuze Lambic	geuze	5.0	Brouwerij Timmermans	1518	350	generic.png
La Moneuse	saison, amber	8.0	Brasserie de Blaugies	903	332	generic.png
Jaded Stillwater Artisanal	Belgo/american ale	10.0	De Struise Brouwers by Brouwerij Deca	762	154	generic.png
Belgian Pêches	fruit beer	3.5	Brasserie Lefebvre	133	242	generic.png
Alvinne Extra Restyled	light amber	7.0	Brouwerij Alvinne	57	63	generic.png
Boneffe	abbey	9.0	Brasserie de Tubize	249	83	generic.png
Florival Bruin	dark brown	7.0	Affligem Brewery (Heineken)	589	19	generic.png
Zomer Zjef	stout	9.0	Brouwerij 't Paenhuys	1720	277	generic.png
Oerbier special Reserva	high fermentation	13.0	De Dolle Brouwers	1127	300	generic.png
Slaefke	triple	7.5	Huisbrouwerij Sint Canarus for De Verhuisbrouwerij	1374	194	generic.png
Slaghmuylder's Kerstbier	low fermentation, blonde	5.2	Brouwerij Slaghmuylder	1376	49	generic.png
Hopjutters Triple Hop	india pale ale	7.3	Brouwerij De Graal for De Hopjutters	737	94	generic.png
Palm	belgian special	5.4	Brouwerij Palm	1164	302	generic.png
Zwarte Zjef	stout	9.0	Brouwerij 't Paenhuys	1734	277	generic.png
Hoegaarden Citron	fruit beer	3.0	Brouwerij De Kluis (AB InBev)	717	109	generic.png
Cuvée Jeun'homme	blonde	6.5	Brouwerij De Leite	423	137	generic.png
La Binchoise Spéciale Noël	high fermentation, christmas	9.0	Brasserie La Binchoise	875	120	generic.png
Wevelgemse Tripel	triple	8.0	Brouwerij De Ranke for Bierwinkel Bacelle	1673	156	generic.png
Wieze Christmas Tripel Hop	triple christmas	8.0	Brouwerij Wieze	1675	286	generic.png
Oude Kriek Boon	lambic	6.5	Brouwerij Boon	1150	348	generic.png
Joseph Bio	high fermentation, blonde, spelt	5.4	Brasserie de Silenrieux	777	44	generic.png
Hertenheer	high fermentation, amber	6.5	Scheldebrouwerij for Brouwerij Het Nest	709	359	generic.png
Winter Zjef	winter	9.0	Brouwerij 't Paenhuys	1683	277	generic.png
La Bouillonnaise	brown, high fermentation	7.0	Brasserie de Bouillon	886	224	generic.png
Framboise Boon	lambic, fruit beer	6.0	Brouwerij Boon	599	348	generic.png
Eupener Bier	pils	5.2	Brouwerij Haacht	542	47	generic.png
Bertinchamps Triple	triple	8.0	Brasserie de Bertinchamps	161	341	generic.png
Livinus Brune	dark	9.0	Brouwerij Van Eecke	986	219	generic.png
Morpheus Extra RA	high fermentation	7.1	Brouwerij Alvinne	1060	63	generic.png
Valeir Donker	high fermentation	6.5	Brouwerij Contreras	1611	310	generic.png
Ter Dolen Tripel	triple	8.1	Brouwerij Ter Dolen	1512	347	generic.png
Stouterik	stout	4.5	Brouwerij De Ranke for Brasserie de la Senne	1454	131	generic.png
Svea IPA	IPA	5.0	De Struise Brouwers by Brouwerij Deca	1476	154	generic.png
Riva Blanche	white	5.0	Brouwerij Riva	1280	317	generic.png
Zwarte Pol	stout	6.5	Brouwerij Inter-Pol	1733	72	generic.png
St. Feuillien Cuvée de Noël	abbey, christmas	8.5	Brasserie St-Feuillien	1418	319	generic.png
St. Paul Tripel	abbey, triple	5.0	Brasserie du Bocq for Brouwerij Sterkens	1436	207	generic.png
Sint-Amatus	quadruple	10.5	De Struise Brouwers by Brouwerij Deca	1361	154	generic.png
Kastel	amber	7.0	De Proefbrouwerij commissioned by De Kastelse Biervereniging	813	157	generic.png
Faro Perte Totale	faro	5.0	Brouwerij Boon	553	348	generic.png
Oude Geuze Vintage 3 Fonteinen	geuze	6.0	Geuzestekerij 3 Fonteinen	1143	195	generic.png
Floris Pomme / Apple	fruit beer	3.5	Brouwerij Huyghe	586	271	generic.png
Bavik Triple Bock	bock	3.0	Brouwerij Bavik	123	81	generic.png
Smisje Kerst	dark amber	11.0	Brouwerij Smisje	1380	105	generic.png
Vossen met de Meynen 69	high fermentation, blonde	6.9	Brouwerij Hof ten Dormaal	1651	163	generic.png
t Smisje Honing	honey	6.0	Brouwerij De Regenboog	1496	190	generic.png
Belle-Vue Gueuze	lambic	5.5	Brouwerij Belle-Vue (AB InBev)	149	14	generic.png
Fantôme	high fermentation	8.0	Brasserie Fantôme	547	206	generic.png
Campus	strong dark	7.0	Brouwerij Huyghe	320	271	generic.png
Oud Tassels	triple	8.5	Brouwerij Boelens for Bier- en Wijnhandel De Neys-Asselman	1139	326	generic.png
Spéciale de Brabant	pils	5.3	Group John Martin	1396	91	generic.png
Corsendonk Rousse	amber, high fermentation	8.0	Brouwerij du Bocq for Corsendonk nv	393	252	generic.png
Corsendonk Triple 11.11.11	triple (label beer)	7.5	Brouwerij du Bocq for Corsendonk nv	394	252	generic.png
Petrus Gouden Tripel	triple	7.5	Brouwerij Bavik	1203	81	generic.png
Blauwersbier	mengbier	6.5	Brouwerij Van Eecke	215	219	generic.png
Abbaye des Rocs Grand Cru	abbey ale	9.5	Brasserie de l'Abbaye des Rocs	24	226	generic.png
Valeir Extra	high fermentation, IPA	6.5	Brouwerij Contreras	1606	310	generic.png
Floris Chocolat	brown	4.2	Brouwerij Huyghe	576	271	generic.png
Zonderik Dubbel Donker	high fermentation	8.0	De Proefbrouwerij for Zonderik Beer Company	1722	278	generic.png
Bierpruver Dubbel Bruin	double	7.5	Huisbrouwerij de 3 vaten	178	40	generic.png
Polygonneke	red brown, label beer	6.0	Brouwerij Van Eecke	1235	219	generic.png
Roodebol	fruit beer	6.6	Brouwerij Loterbol	1294	102	generic.png
Adler	pils	6.5	Brouwerij Haacht	39	47	generic.png
Vieux Temps	belgian special	5.2	AB InBev	1630	216	generic.png
Piedbœuf Foncée	table beer	1.5	Brasserie Piedboeuf (AB InBev)	1212	1	generic.png
Kameleon Amber	organic	6.5	Brouwerij Den Hopperd	789	268	generic.png
Chapeau Kriek	fruit beer, lambic	3.5	Brouwerij De Troch	361	303	generic.png
Pilaarbijter Blond	high fermentation	7.2	Brouwerij Bavik	1218	81	generic.png
Vieux Bruges Gueuze	geuze	5.0	Brouwerij Van Honsebrouck	1624	106	generic.png
Kasteel Rouge	kriek	8.0	Brouwerij Van Honsebrouck	808	106	generic.png
Serafijn Grand Cru	amber, high fermentation	9.0	De Proefbrouwerij for Microbrewery Achilles	1348	62	generic.png
Kriek de Silenrieux	fruit beer	4.5	Brasserie de Silenrieux	854	44	generic.png
St. Bernardus Wit	white	5.5	Brouwerij St. Bernardus	1407	134	generic.png
Angélus Spéciale Noël	christmas	9.0	Brasserie Brootcoorens	65	78	generic.png
Hoppe	pils	5.0	Brouwerij Van Steenberge	739	241	generic.png
Caulier Blonde	high fermentation, blonde	6.8	De Proefbrouwerij for Caulier Developpement	338	259	generic.png
La Cré Tonnerre	high fermentation, triple	7.0	Brasserie de Silly	892	87	generic.png
Bella Mère	blonde	6.5	Brasserie Millevertus	141	340	generic.png
Hoegaarden 0,0 Rosée	non alcoholic, fruit beer	0.0	Brouwerij De Kluis (AB InBev)	716	109	generic.png
Boscoli	fruit beer	3.5	Brouwerij Het Anker	255	161	generic.png
Faro Lambic Lindemans	faro	4.5	Brouwerij Lindemans	552	233	generic.png
Capoen	amber	6.5	De Proefbrouwerij	326	133	generic.png
Captain Cooker Manuka Beer	amber	5.7	De Proefbrouwerij for Captain Cooker	327	90	generic.png
Vieux Bruges Kriek	label beer	3.2	Brouwerij Van Honsebrouck	1625	106	generic.png
Vieux Bruges Kriek Lambic	label beer	5.0	Brouwerij Van Honsebrouck	1626	106	generic.png
La Rulles Cuvée Meilleurs Vœux	high fermentation, winter	7.3	Brasserie Artisanale de Rulles	916	144	generic.png
Brugse Bok	light dark	6.5	Brouwerij De Halve Maan	280	84	generic.png
Valeir Donker	high fermentation	6.5	Brouwerij Contreras	1605	310	generic.png
Leireken Wilde Vruchten	fruit beer, high fermentation, organic	5.2	Brouwerij Strubbe for Guldenboot nv	958	301	generic.png
Palm Hop Select	high fermentation	6.0	Brouwerij Palm	1168	302	generic.png
Maredsous bruin	brown	8.0	Brouwerij Duvel Moortgat	1022	3	generic.png
St. Benoit Blonde	abbey	6.3	Brasserie du Bocq	1412	210	generic.png
Affligem Dubbel	abbey, brown	6.8	Affligem Brewery (Heineken)	43	19	generic.png
La Douce Vertus	high fermentation, ale	7.0	Brasserie Millevertus	894	340	generic.png
De Kavijaks	india pale ale	7.0	De Dolle Brouwers for Kaffee Kavijaks	451	185	generic.png
Enfant Terriple	blonde, triple	8.2	Brouwerij De Leite	538	137	generic.png
Ultramour	fruit beer	5.0	Brasserie d'Ecaussinnes	1587	66	generic.png
Dobbelken Amber	local, amber	6.5	Brouwerij Strubbe	492	2	generic.png
Dobbelken Bruin	local, brown	5.0	Brouwerij Strubbe	493	2	generic.png
Moinette Biologique	blonde, organic	7.5	Brasserie Dupont	1047	130	generic.png
Molse Tripel	triple	8.3	Scheldebrouwerij	1048	52	generic.png
Mongozo Banana	fruit beer	4.5	Brouwerij Huyghe	1049	271	generic.png
Brugse Babbelaar	blonde	6.5	De Proefbrouwerij	279	133	generic.png
Abbaye de Saint-Martin Cuvée de Noël	abbey, christmas	8.5	Brasserie de Brunehaut	19	349	generic.png
Phaedra	amber	6.0	Brouwerij Het Alternatief by Brouwerij De Graal	1207	299	generic.png
Drongens Plezierke	high fermentation, dark	7.5	Brouwerij Slaghmuylder	507	49	generic.png
Belgian Framboises	fruit beer	3.5	Brasserie Lefebvre	131	242	generic.png
Zinnebir	blonde	5.8	Brouwerij De Ranke for Brasserie de la Senne	1717	131	generic.png
Marckloff	high fermentation	6.5	Brasserie La Ferme au Chêne	1020	267	generic.png
Mug	high fermentation	5.0	De Scheldebrouwerij	1080	318	generic.png
Plokkersbier	amber	7.0	Brouwerij De Bie	1231	220	generic.png
Zonderik Tripel	blonde, triple	8.0	De Proefbrouwerij for Zonderik Beer Company	1723	278	generic.png
Cristal 1928	low fermentation, pils	5.8	Alken-Maes (Heineken)	402	358	generic.png
Mort Subite Xtreme Framboise	fruit beer	4.3	Alken-Maes (Heineken)	1073	358	generic.png
Pipedream	IPA	7.8	Brouwerij Alvinne	1223	63	generic.png
Asterie	white	4.9	Brasserie d'Ecaussinnes	91	66	generic.png
Crianza	mengbier, lambic	7.0	Brasserie de la Senne	400	351	generic.png
Satan Red	flemish brown	8.0	Brouwerij De Block	1335	354	generic.png
Saison St-Feuillien	saison, amber	6.5	Brasserie Saint-Feuillien	1325	186	generic.png
Lindemans Cassis	fruit beer	3.5	Brouwerij Lindemans	978	233	generic.png
Vals Paterke	triple	8.3	Brouwerij De Graal for t'Drankorgel	1607	113	generic.png
Vicaris Kerst	high fermentation, christmas	10.0	Brouwerij Dilewyns	1618	31	generic.png
Den Bi3r	triple	9.0	Brouwerij Den Tseut	471	107	generic.png
Lozen Boer	high fermentation, quadruple	10.0	De Proefbrouwerij for de familie Neyt	997	355	generic.png
Jan Buuc	label beer	7.5	Brouwerij Het Sas	764	257	generic.png
Ne Flierefluiter	triple	8.5	Brouwerij De Smedt commissioned by bierfirma Fisser	1091	54	generic.png
XXX Bitter	high fermentation, blonde	6.0	Brouwerij De Ranke	1706	313	generic.png
Douglas Celtic Lager	blonde lager	5.0	Scottish & Newcastle for Group John Martin	503	36	generic.png
Bersalis Tripel	blonde, high fermentation, triple	9.5	Brouwerij Huyghe for Brouwerij Oud Beersel	158	162	generic.png
Mageleno	blonde	7.5	Huisbrouwerij Sint Canarus	1006	209	generic.png
Anker Pils	pils	5.0	Brouwerij Het Anker	69	161	generic.png
Zeunt	high fermentation	7.0	De Proefbrouwerij for het Zeuntcomité	1712	135	generic.png
Super des Fagnes Blonde	high fermentation, blonde	7.5	Brasserie des Fagnes	1468	234	generic.png
Ichtegem's Oud Bruin	red brown, high fermentation	5.0	Brouwerij Strubbe	753	2	generic.png
Mouten Kop	copper, india pale ale	6.0	Brouwerij De Graal for De Hopjutters	1079	94	generic.png
Bertinchamps Blonde	blonde	6.2	Brasserie de Bertinchamps	160	341	generic.png
Jan De Lichte	white	7.0	Brouwerij De Glazen Toren	765	321	generic.png
Maredsous tripel	triple	10.0	Brouwerij Duvel Moortgat	1023	3	generic.png
Oud Bier	table beer	2.1	Brouwerij Strubbe	1138	2	generic.png
Petrus Speciale	special	5.5	Brouwerij Bavik	1205	81	generic.png
Winterkoninkske Haspengouwse Grand Cru	high fermentation, christmas	13.0	Brouwerij Sint-Jozef for brouwerij Kerkom	1686	305	generic.png
Vlasbier	blonde	6.5	Brouwerij Van Eecke	1643	219	generic.png
Brussels Framboos	fruit beer	3.5	Brouwerij Van Steenberge	292	241	generic.png
Bersalis Kadet	blonde	4.5	Brouwerij Huyghe for Brouwerij Oud Beersel	159	162	generic.png
Viven Porter	smoked Porter	7.0	De Proefbrouwerij for Beerdevelopment Viven	1638	263	generic.png
Quackelbeens Donker	high fermentation, chocoladebier	7.1	Brouwerij Gulden Spoor for Alain Quackelbeen	1258	328	generic.png
Rose des Remparts	fruit beer	4.5	Brasserie La Binchoise	1297	120	generic.png
Cuvée Angélique	double, belgian special	8.3	Brouwerij De Glazen Toren	404	321	generic.png
Sinpalsken Donker	high fermentation	8.5	Brouwerij De Cock by Brouwerij Van Steenberge	1358	260	generic.png
Leireken Witte Spelt	blonde, high fermentation, spelt	5.0	Brouwerij Strubbe for Guldenboot nv	959	301	generic.png
400	blonde	5.6	t Hofbrouwerijke for Brouwerij Montaigu	2	231	generic.png
Sezoens Quattro	high fermentation, amber	8.0	Brouwerij Martens (Bocholt)	1353	311	generic.png
Leffe Kerst	christmas, abbey	6.5	AB InBev	947	216	generic.png
St. Louis Frambozen(bier)	raspberry	5.0	Brouwerij Van Honsebrouck	1423	106	generic.png
Douglas Celtic XXX Strong	blonde, high fermentation	12.0	Scottish & Newcastle for Group John Martin	506	36	generic.png
La Grognarde	high fermentation	5.5	Brasserie Sainte-Hélène	896	344	generic.png
La Jamboise de Bister	pale blonde	6.5	Brouwerij Lefebvre	898	147	generic.png
Hoegaarden 0,0	non alcoholic, white	0.0	Brouwerij De Kluis (AB InBev)	715	109	generic.png
Kloeke Blonde	high fermentation, belgian blonde ale	6.0	De Struise Brouwers	841	172	generic.png
Saint-Monon Brune	double	7.5	Brasserie Saint-Monon	1309	42	generic.png
Bellebier Trippel	triple	8.0	Brouwerij Van Steenberge for Paeleman	153	39	generic.png
Blanche de Tubize	white	4.8	Brasserie de Tubize	208	83	generic.png
Antigoon	blonde	6.7	De Proefbrouwerij for The Musketeers	73	45	generic.png
Pêche Mel Bush	fruit beer	8.5	Brouwerij Dubuisson	1195	74	generic.png
Reninge Bitter Blond	blonde	7.0	Seizoensbrouwerij Vandewalle	1274	265	generic.png
Riebedebie	triple	9.0	Brouwerij De Bie	1278	220	generic.png
Beta	dark amber	6.0	Brouwerij Anders for Brussels Beer Project	162	297	generic.png
Kwaremont	blonde, high fermentation	6.6	Brouwerij Bavik	864	81	generic.png
Motuecha	high fermentation	5.0	De Struise Brouwers	1077	172	generic.png
Pater Lieven Blond	abbey	6.5	Brouwerij Van Den Bossche	1182	251	generic.png
Cornet	high fermentation, blonde	8.5	Brouwerij Palm	387	302	generic.png
Saison 1900	amber, saison	5.2	Brouwerij Lefebvre	1311	147	generic.png
Saison 2000	saison	6.5	Brasserie des Légendes	1312	100	generic.png
Urthel Samaranth	amberkleurig special, high fermentation	11.5	Brouwerij De Koningshoeven commissioned by Brouwerij Urthel	1597	275	generic.png
Cuvée van de Keizer Blauw	ruby special	11.0	Brouwerij Het Anker	434	161	generic.png
Dark White BBB	high fermentation	4.5	Brasserie Fantôme	438	206	generic.png
Alvinne Lex'ke	blonde	6.3	Brouwerij Alvinne	58	63	generic.png
Bueckenholt Belge	belgian special, amber	6.5	Brouwerij Anders for Brouwerij Bueckenholt	302	80	generic.png
Maris Otter Aperitiefbier	blonde	5.0	De Proefbrouwerij	1027	133	generic.png
Boerken	high fermentation, brown	9.5	De proefbrouwerij for Verstraeten H&S	236	53	generic.png
Bokkereyer	low fermentation	6.0	Brouwerij Sint-Jozef	237	296	generic.png
Rader Blonde	blonde	6.5	Brasserie de l'Abbaye du Val-Dieu for Radermacher Distillerie	1263	181	generic.png
Den Zytholoog	blonde	6.6	Brouwerij De Graal for bierfirma Vacas	481	56	generic.png
Cuvée Ermesinde	high fermentation, amber	7.8	Brasserie Saint-Monon	421	42	generic.png
Cuvée Jolie Môme	high fermentation, white	4.5	Brasserie du Flo	424	160	generic.png
Buffalo Belgian Stout	stout	9.0	Brouwerij Van Den Bossche	305	251	generic.png
Bremserbier	amber	6.0	Huisbrouwerij de 3 vaten	263	40	generic.png
Brugge Tripel	special, high fermentation	8.7	Brouwerij Palm (previously in Brouwerij De Gouden Boom)	275	279	generic.png
Zonderix	amber, triple	10.0	De Proefbrouwerij for Zonderik Beer Company	1724	278	generic.png
Straffe Hendrik Quadrupel	high fermentation, special	11.0	Brouwerij De Halve Maan	1456	84	generic.png
Antiek Blond	blonde	8.0	Brouwerij Deca	70	183	generic.png
La Moneuse Spéciale Noël	saison, brown, high fermentation	8.0	Brasserie de Blaugies	904	332	generic.png
Thouroutenaere	blonde	8.5	Alken-Maes (Heineken)	1514	358	generic.png
Timmermans Caveau Gueuze	geuze	5.5	Brouwerij Timmermans	1515	350	generic.png
St. Louis Framboise	raspberry	5.0	Brouwerij Van Honsebrouck	1422	106	generic.png
Mamouche	lambic	5.0	Brasserie Cantillon	1015	170	generic.png
Saison 1858	saison	6.4	Brasserie du Bocq	1310	210	generic.png
Struise Rosse	high fermentation, belgian pale ale	5.0	De Struise Brouwers by Brouwerij Deca	1463	154	generic.png
Blanche de Bruxelles	white	4.5	Brouwerij Lefebvre	205	147	generic.png
Odlo Blond	high fermentation	6.7	Brouwerij De Graal for (T)Huisbrouwerij Odlo	1122	211	generic.png
Hanssens Lambic Experimental Cassis	lambic, fruit beer	4.0	Brouwerij Hanssens	697	248	generic.png
Merck toch hoe sterck	barley wine	9.0	De Scheldebrouwerij	1038	318	generic.png
Floreffe Blond	abbey	6.3	Brouwerij Lefebvre	566	147	generic.png
Captain Cooker White Manuka Beer	white	4.5	De Proefbrouwerij for Captain Cooker	328	90	generic.png
Pater Lieven Tripel	abbey	8.0	Brouwerij Van Den Bossche	1184	251	generic.png
Deugniet	triple (label beer)	7.3	Brasserie Du Bocq	484	70	generic.png
La Trompeuse	high fermentation	6.9	Brasserie Jean Tout Seul	926	92	generic.png
Redbach	fruit beer, kriek	3.5	Brouwerij Rodenbach	1267	17	generic.png
Gordon Xmas	christmas	8.8	Brouwerij Palm for Group John Martin	650	23	generic.png
Horse-Ale	Spéciale belge	5.0	AB InBev	745	216	generic.png
Rochefort 8	trappist	9.2	Abbaye Notre-Dame de Saint-Rémy de Rochefort	1283	93	generic.png
Blanche du Hainaut Bio	white, organic	5.5	Brasserie Dupont	211	130	generic.png
Irma	fruit beer	6.0	for bierfirma Vacas	758	27	generic.png
Coy'Heimsen	red brown, label beer	6.0	Brouwerij Van Eecke	397	219	generic.png
Triporteur from Hell	ale, brown	6.6	Brouwerij Anders for BOMBrewery	1562	196	generic.png
Rebel Local	IPA	8.5	Brouwersverzet by Brouwerij Gulden Spoor	1266	58	generic.png
Achel 5 Blond	trappist, blonde	5.0	Achelse Kluis	31	168	generic.png
Kessel 69	high fermentation	6.9	Brouwerij De Vlier	833	188	generic.png
Ops-Ale	blonde	5.5	Brouwerij Sint-Jozef	1134	296	generic.png
Koerseklakske	high fermentation	5.5	Brouwerij 't Gaverhopke	847	79	generic.png
Hoftrol	amber	6.2	t Hofbrouwerijke	731	96	generic.png
Kastels pompoenbier	wheat, seizoensgebonden, met pompoen	\N	De Proefbrouwerij commissioned by De Kastelse Biervereniging	814	157	generic.png
Broeder Jacob Tripel	triple	7.5	Brasserie du Bocq for Broeder Jacob bvba	272	150	generic.png
Bon Secours Framboise	high fermentation, raspberry	7.0	Brouwerij Caulier	246	238	generic.png
Villers Tripel	abbey, triple	8.0	Brouwerij Huyghe	1632	271	generic.png
Chapeau Lemon	fruit beer, lambic	3.5	Brouwerij De Troch	362	303	generic.png
Ichtegem’s grand cru	\N	6.5	Brouwerij Strubbe	752	2	generic.png
Timmermans Kriek Lambic	kriek	4.0	Brouwerij Timmermans	1519	350	generic.png
Stepa	triple, sugar free	8.0	De Proefbrouwerij for Stepaja bvba	1447	128	generic.png
Big Bayou	cajun spices	4.0	Brouwerij Smisje	181	105	generic.png
Lucifer	blonde, high fermentation	8.4	Brouwerij Het Anker (previously in Brouwerij Riva en Brouwerij Liefmans)	998	197	generic.png
Norman	blonde	7.0	Bierfirma NoordSter by Brouwerij De Vlier	1115	243	generic.png
La Binchoise Organic’ Triple	high fermentation, organic, triple	8.5	Brasserie La Binchoise	874	120	generic.png
Gouden Carolus Easter	dark special	10.0	Brouwerij Het Anker	656	161	generic.png
Star Blond	blonde	0.4	Brouwerij Haacht	1439	47	generic.png
Belgoo Luppoo	gold blonde	6.5	Brouwerij Belgoobeer by Brasserie La Binchoise	140	307	generic.png
Black Hole	pils	5.6	Brouwerij Roman	199	291	generic.png
Jessenhofke Bruin	high fermentation, organic	7.0	De Proefbrouwerij for Brouwerij Jessenhofke	771	148	generic.png
Cristal Alken	low fermentation, pils	4.8	Alken-Maes (Heineken)	401	358	generic.png
Antwerps Bruin	brown	5.8	Huisbrouwerij 't Pakhuis	75	215	generic.png
Modeste Bruin	brown, organic	7.8	Brouwerij Strubbe for BioFresh	1042	360	generic.png
Vossen met de Meynen Blond	label beer	6.5	Brouwerij Het Anker	1650	161	generic.png
Toetëlèr Speculaas	speculaasbier	8.5	Brouwerij Den Toetëlèr	1530	174	generic.png
Struiselensis	high fermentation, belgian blonde ale	7.0	De Struise Brouwers by Brouwerij Deca	1465	154	generic.png
Zeven Zonden Gula	high fermentation	9.0	Brouwerij Gulden Spoor for bierfirma Hugel	1713	266	generic.png
Zeven Zonden Invidia	high fermentation	10.0	Brouwerij Gulden Spoor for bierfirma Hugel	1714	266	generic.png
Double de Brabant	double, dark	6.5	Group John Martin	499	91	generic.png
Cervoise de l'Avouerie d'Anthisnes	\N	5.0	Brasserie de Silly	350	87	generic.png
Rochefort 10	trappist	11.3	Abbaye Notre-Dame de Saint-Rémy de Rochefort	1284	93	generic.png
Dogabier	label beer	6.5	Huisbrouwerij Sint-Canarus	494	346	generic.png
Passchendaele	high fermentation	5.2	Brouwerij Van Honsebrouck	1179	106	generic.png
Itters Bruin	table beer	1.3	Brouwerij Sint-Jozef	759	296	generic.png
Silly Pils	pils	5.0	Brasserie de Silly	1355	87	generic.png
Lesage Blond	high fermentation, triple	7.0	De Proefbrouwerij for bierfirma Lesage	961	22	generic.png
De Maeght van Gottem	dark blonde	6.5	Huisbrouwerij Sint-Canarus	455	346	generic.png
Val-Dieu Blonde	Erkend Belgisch abbey	6.0	Brouwerij Val-Dieu	1599	103	generic.png
Louwaege Dubbel Blond	table beer	1.4	Alken-Maes (Heineken)	993	358	generic.png
Mort Subite Original Gueuze	geuze	4.5	Alken-Maes (Heineken)	1068	358	generic.png
Pa-Gijs	brown	8.5	Brouwerij Boelens	1159	193	generic.png
Caper Fumatis	dark brown	6.3	Brouwerij Alvinne	325	63	generic.png
Hof Korvatunturi	high fermentation, brown	11.0	t Hofbrouwerijke	722	96	generic.png
Canaster	scotch	8.7	Brouwerij De Glazen Toren	323	321	generic.png
Chimay Blauw	trappist	9.0	Abbaye Notre-Dame de Scourmont	368	272	generic.png
Jambe-de-bois	triple	8.0	Brouwerij De Ranke for Brasserie de la Senne	763	131	generic.png
Nello's Tripel	triple	\N	De Proefbrouwerij for Brouwerij De Arend	1097	142	generic.png
Broeder Jacob Double Port	dark brown	9.0	Brasserie du Bocq for Broeder Jacob bvba	270	150	generic.png
Bush Prestige	amber, triple	13.0	Brouwerij Dubuisson	315	74	generic.png
La Saison des Chasses Ambrée	saison	7.0	Brasserie de Bouillon	922	224	generic.png
Stoute Bie	dark brown	5.5	Brouwerij De Bie	1453	220	generic.png
Halleschelle	blonde	8.5	Brouwerij Alvinne	696	63	generic.png
Double Enghien Blonde	high fermentation, blonde	7.5	Brasserie de Silly	500	87	generic.png
Wieze Tripel zoet Bruin	triple	8.0	Brouwerij Wieze	1678	286	generic.png
Finesse	high fermentation, triple	8.5	Brouwerij De Dochter van de Korenaar	563	201	generic.png
Spitfire Oud Balegems	amber	8.0	Brouwerij Van Steenberge	1400	241	generic.png
Podge Belgian Imperial Stout	stout	10.5	Brouwerij Alvinne	1233	63	generic.png
Blanche	white	4.8	Brasserie de Bellevaux	201	159	generic.png
Donkere Stoere	strong dark	8.2	Brouwerij DijkWaert	497	356	generic.png
Black Jack	Porter	7.0	De Struise Brouwers by Brouwerij Deca	200	154	generic.png
Blanche de Bouillon	white	5.5	Brasserie de Bouillon	203	224	generic.png
Grisette Country Cool	\N	3.5	Brasserie St-Feuillien	681	319	generic.png
Mistinguett	high fermentation	6.5	Brasserie Sainte-Hélène	1041	344	generic.png
t Gaverhopke Paasbier	high fermentation, easter beer	8.0	Brouwerij 't Gaverhopke	1482	79	generic.png
Bornem Dubbel	abbey	8.0	Brouwerij Van Steenberge	251	241	generic.png
Tineke Van Heule	high fermentation	8.0	Brouwerij Gulden Spoor	1527	127	generic.png
Trisser	triple	7.5	De Proefbrouwerij for De Verhuisbrouwerij	1563	95	generic.png
Pee Klak Grand Cru	label beer	8.4	Brouwerij Strubbe for Brouwerij Crombé	1196	292	generic.png
Gauloise Ambrée	amber	5.5	Brasserie Du Bocq	613	70	generic.png
Gauloise Blonde	blonde	6.3	Brasserie Du Bocq	614	70	generic.png
Notre Passion	porter	8.0	’t Hofbrouwerijke for Montaigu	1117	218	generic.png
Nounnette	blonde	7.5	Brasserie de l'Abbaye des Rocs	1118	226	generic.png
Bosbier	fruit beer-pils	4.0	Brouwerij Sint-Jozef	254	296	generic.png
St. Bernardus Pater 6	high fermentation	6.7	Brouwerij St. Bernardus	1404	134	generic.png
Judas	high fermentation, ocher blonde	8.5	Alken-Maes (Heineken)	780	358	generic.png
Duvel Tripel Hop	high fermentation	9.5	Brouwerij Duvel Moortgat	521	3	generic.png
Chapeau Pêche	fruit beer, lambic	3.5	Brouwerij De Troch	364	303	generic.png
Trammelantje	amber	6.5	Brouwerij Strubbe for Bierfirma Den Haene	1547	5	generic.png
Gribousine Brune	high fermentation	8.0	Brasserie La Binchoise (for Brasserie de Malonne)	667	204	generic.png
Toverhekske	amber	5.9	Brouwerij Walrave	1546	21	generic.png
Bon Secours Noël	high fermentation, blonde christmas	10.0	Brouwerij Caulier	248	238	generic.png
Sint-Adriaansbier Blond	abbey	6.5	Brouwerij Van Steenberge	1359	241	generic.png
Moeder Overste	blonde	8.0	Brouwerij Lefebvre	1044	147	generic.png
Saison d'Epeautre	blonde, spelt	6.0	Brasserie de Blaugies	1318	332	generic.png
La Binchoise Triple	high fermentation, triple	8.5	Brasserie La Binchoise	876	120	generic.png
Straffe Hendrik	high fermentation, triple	9.0	Brouwerij De Halve Maan	1455	84	generic.png
Oude Gueuze Tilquin à l'ancienne	geuze	6.0	Gueuzerie Tilquin	1148	57	generic.png
Artevelde Grand Cru	red brown	7.2	Brouwerij Huyghe	90	271	generic.png
La Prime	high fermentation, winter	8.5	Brasserie Sainte-Hélène	913	344	generic.png
Bruegel	amber	5.0	Brouwerij Van Steenberge	273	241	generic.png
Canaille	white	5.2	Brasserie Grain d'Orge	322	329	generic.png
ZoemZoem	amber, honey	8.0	Brouwerij Donum Ignis	1719	264	generic.png
Scheldepils	pils	5.0	Brouwerij Huyghe for de De Scheldebrouwerij	1339	353	generic.png
Jezuwiet	high fermentation, triple	8.5	Brouwerij Boelens	774	193	generic.png
Jules de Kriek	fruit beer, ruby	4.9	Brouwerij De Ryck	782	110	generic.png
Serafijn Kerstlicht	amber, christmas	7.0	De Proefbrouwerij for Microbrewery Achilles	1350	62	generic.png
St. Louis Cassis	fruit beer	4.5	Brouwerij Van Honsebrouck	1421	106	generic.png
Gaspar	amber	8.0	Brouwerij Alvinne	612	63	generic.png
Bourgogne des Flandres Bruin	old brown	5.0	Brouwerij Timmermans	259	350	generic.png
St. Paul Blond	abbey	5.3	Brasserie du Bocq for Brouwerij Sterkens	1433	207	generic.png
Cambrinus	belgian ale	5.1	Brouwerij Verhaeghe	318	64	generic.png
n Maurootje	dark blonde	7.0	Brouwerij Alvinne	1085	63	generic.png
Oude Quetsche Tilquin à l'ancienne	lambic	6.4	Gueuzerie Tilquin	1155	57	generic.png
Melse God	blonde	6.5	Brouwerij Huyghe	1037	271	generic.png
Saison de la Senne	saison	4.3	Brouwerij De Ranke for Brasserie de la Senne	1315	131	generic.png
Chimay dorée	blonde table beer	4.8	Abbaye Notre-Dame de Scourmont	371	272	generic.png
Maes Nature	table beer	1.5	Alken-Maes (Heineken)	1005	358	generic.png
Beersel Bio	blonde	7.0	Geuzestekerij 3 Fonteinen	126	195	generic.png
Gentse Tripel	blonde	8.0	Brouwerij Van Steenberge	619	241	generic.png
Golden Kenia	pils	5.1	Brouwerij Huyghe	637	271	generic.png
Cnudde Bizon	fruit beer	5.5	Brouwerij Cnudde	379	239	generic.png
Oude Geuze De Cam	geuze	6.0	Geuzestekerij De Cam	1145	11	generic.png
Curtius	high fermentation, blonde	7.0	Microbrasserie de la Principauté	403	164	generic.png
Blanchette de Lorraine	white, fruit beer	5.0	Brasserie Millevertus	213	340	generic.png
Forestinne Primoria	blonde	7.5	Brasserie Caracole	597	112	generic.png
Jupiler NA	low alcohol	0.5	Brasserie Piedboeuf (AB InBev)	785	1	generic.png
Piedbœuf Excellence	table beer	2.0	Brasserie Piedboeuf (AB InBev)	1211	1	generic.png
Rodenbach Alexander	old brown	6.0	Brouwerij Rodenbach	1286	17	generic.png
Rodenbach Caractère Rouge	old brown	7.0	Brouwerij Rodenbach	1287	17	generic.png
Rodenbach Grand Cru	old brown	6.0	Brouwerij Rodenbach	1288	17	generic.png
Rodenbach Vintage	old brown	7.0	Brouwerij Rodenbach	1289	17	generic.png
Petrus Winterbier	winter	6.5	Brouwerij Bavik	1206	81	generic.png
Chapeau Fraises	fruit beer, lambic	3.5	Brouwerij De Troch	359	303	generic.png
Yellow Mortal	ale	7.2	Brouwerij Mortal's Beers	1708	158	generic.png
Crabbelaer	saison	6.5	Brouwerij De Graal for Brouwerij De 6 Helmen	398	146	generic.png
Orvélo	triple	7.5	De Proefbrouwerij for bierfirma Half Zeven	1136	217	generic.png
Paasei	brown	7.8	for bierfirma Vacas	1158	27	generic.png
Abbaye d'Aulne Brune des Pères 6	abbey, brown	6.0	Brasserie Val de Sambre	9	306	generic.png
t Smisje + dubbel IPA	IPA	10.0	Brouwerij De Regenboog	1484	190	generic.png
La Loubécoise	dark, high fermentation	8.0	Brasserie d'Ecaussinnes	899	66	generic.png
Hik Blond	high fermentation, ale	6.5	Brouwerij Het Alternatief by Brouwerij De Graal	711	299	generic.png
Uitzet 1730	triple	6.8	Brouwerij Van Steenberge for Brouwerij Paeleman	1581	140	generic.png
La Divine	high fermentation, amber	9.5	Brasserie de Silly	893	87	generic.png
Gouden Carolus Christmas	dark special	10.5	Brouwerij Het Anker	654	161	generic.png
La Médiévale	amber, high fermentation	6.0	Brasserie de Bouillon	901	224	generic.png
Abbaye des Rocs Spéciale Noël	abbey, christmas	9.0	Brasserie de l'Abbaye des Rocs	25	226	generic.png
Cuvée de Bouillon	blonde, high fermentation	6.5	Brasserie de Bouillon	405	224	generic.png
Abbaye d'Aulne Super Noël 9	abbey, christmas	9.0	Brasserie Val de Sambre	10	306	generic.png
Bush Amber	high fermentation, amber	12.0	Brouwerij Dubuisson	308	74	generic.png
Westmalle Dubbel	trappist	7.0	Brouwerij Westmalle	1665	97	generic.png
Dendermonde Tripel	abbey, triple	8.0	Brouwerij De Block	482	354	generic.png
Enghien Noël	high fermentation, triple, christmas	9.0	Brasserie de Silly	539	87	generic.png
Abbaye de Forest	abbey, triple	6.5	Brasserie de Silly	15	87	generic.png
Broeder Jacob Formidabel	blonde	5.5	Brasserie du Bocq for Broeder Jacob bvba	271	150	generic.png
Gordon Finest Gold	high fermentation	10.0	Group John Martin	643	91	generic.png
Kempisch Vuur Tripel	triple	7.5	De Proefbrouwerij commissioned by Brouwerij Pirlot	824	60	generic.png
Reninge Oud Bruin	brown	6.0	Seizoensbrouwerij Vandewalle	1275	265	generic.png
Wilderen Kriek	kriek	3.5	Brouwerij Wilderen	1681	69	generic.png
Ultrabrune	dark brown	10.0	Brasserie d'Ecaussinnes	1590	66	generic.png
Paljas Bruin	brown	6.0	Brouwerij Anders for Brouwerij Henricus	1162	247	generic.png
Paljas IPA	amber, IPA	6.0	Brouwerij Anders for Brouwerij Henricus	1163	247	generic.png
Abbaye de la Thure	abbey	10.0	Brasserie Brootcoorens	16	78	generic.png
Maes	pils	5.2	Alken-Maes (Heineken)	1004	358	generic.png
Lesage Dubbel	high fermentation	7.5	De Proefbrouwerij for bierfirma Lesage	962	22	generic.png
La Troufette Belle d'été	high fermentation	6.0	Brasserie de Bastogne	927	222	generic.png
Mort Subite Xtreme Kriek	fruit beer	4.3	Alken-Maes (Heineken)	1074	358	generic.png
L’Amarante	high fermentation, spice beer	8.0	Brasserie Millevertus	938	340	generic.png
Gamma	brown	6.0	Brouwerij Anders for Brussels Beer Project	610	297	generic.png
Brugse Zot Dubbel	brown	7.5	Brouwerij De Halve Maan	282	84	generic.png
Keikoppenbier	blonde, organic	6.1	Brouwerij De Plukker	818	123	generic.png
Buffalo	high fermentation, dark	6.5	Brouwerij Van Den Bossche	304	251	generic.png
Maerlant	triple	9.0	Brouwerij Van Steenberge	1003	241	generic.png
Fancy	low alcohol	0.5	Brouwerij Bavik	546	81	generic.png
Stille Nacht	dark	12.0	De Dolle Brouwers	1448	300	generic.png
Slaghmuylder's Paasbier	low fermentation, blonde	5.2	Brouwerij Slaghmuylder	1377	49	generic.png
Palm Speciale	belgian special	5.2	Brouwerij Palm	1172	302	generic.png
Blonde Bie	blonde	8.0	Brouwerij De Bie	221	220	generic.png
Vieux Bruges Framboise(s)	fruit beer	5.0	Brouwerij Van Honsebrouck	1623	106	generic.png
Mort Subite Pêche	fruit beer	4.5	Alken-Maes (Heineken)	1072	358	generic.png
Brave Broeder	high fermentation (label beer)	5.0	Brasserie de Silly	261	87	generic.png
La Barbiot Blonde	high fermentation	8.0	Brasserie la Barbiot	869	182	generic.png
Palm Sauvin	high fermentation	4.9	Brouwerij Palm	1171	302	generic.png
Ronsischen Tripel	triple	8.0	De Proefbrouwerij for bierfirma Slaapmutske	1293	65	generic.png
Chapeau Cuvée Oude Gueuze	old geuze	5.5	Brouwerij De Troch	356	303	generic.png
Carrousel	high fermentation, blonde	6.0	Brouwerij De Vlier	334	188	generic.png
Métisse Saison	saison	5.7	De Lion à Plume by Brasserie Sainte-Hélène	1039	71	generic.png
Moinette Brune	brown	8.5	Brasserie Dupont	1046	130	generic.png
Wittoen	high fermentation, triple	7.0	Brouwerij Strubbe	1698	2	generic.png
Caulier 28 Triple	blonde	9.0	De Proefbrouwerij for Caulier Developpement	337	259	generic.png
Newton	fruit beer	3.5	Brouwerij Lefebvre	1105	147	generic.png
Extase	imperial/double IPA	8.5	Brouwerij De Dochter van de Korenaar	544	201	generic.png
Ezel Bruin	brown	6.5	Brouwerij Bavik	545	81	generic.png
Florilège de Sureau	fruit beer, flower beer	9.0	Brasserie d'Ecaussinnes	573	66	generic.png
Gordon Finest Scotch	scotch	8.6	Group John Martin	646	91	generic.png
t Baronneke	stout	6.5	t Hofbrouwerijke	1477	96	generic.png
Den Herberg Blond	blonde	5.5	Brouwerij Den Herberg	475	256	generic.png
Kriek Jacobins	lambic	4.5	Brouwerij Bockor	857	24	generic.png
Waas Klok Bier Tripel	triple	8.5	Brouwerij Boelens	1655	193	generic.png
Nonneke	dark	8.0	Brouwerij Anders for Nonneke	1113	7	generic.png
Jules de Bananes	fruit beer, white	4.9	Brouwerij De Ryck	781	110	generic.png
n Slypke	red brown, label beer	6.0	Brouwerij Van Eecke	1087	219	generic.png
n Toeback	high fermentation	9.5	Scheldebrouwerij	1088	52	generic.png
Buffalo Bitter	blonde	8.0	Brouwerij Van Den Bossche	306	251	generic.png
Bufo	blonde	4.8	De Proefbrouwerij for Gageleer cbva-so	307	179	generic.png
3 Schténg	high fermentation	6.0	Brasserie Grain d'Orge	1	329	generic.png
Grimbergen Cuvée de l'Ermitage	high fermentation	7.5	Alken-Maes (Heineken)	671	358	generic.png
Noir de Dottignies	high fermentation	9.0	Brouwerij De Ranke	1111	313	generic.png
Caracole	high fermentation, amber	8.0	Brasserie Caracole	330	112	generic.png
Carioca	white	4.8	De Lion à Plume by Brasserie de Bastogne	331	269	generic.png
Vedett Extra White	white	4.7	Brouwerij Duvel Moortgat	1613	3	generic.png
Sasbräu	dortmunder	6.3	Brouwerij Het Sas	1333	257	generic.png
Postel Blond	blonde, abbey	7.0	Affligem Brewery (Heineken)	1236	19	generic.png
Douglas Celtic Super	blonde, high fermentation	7.9	Scottish & Newcastle for Group John Martin	505	36	generic.png
Bitter Sweet Symphony	doublee IPA	7.8	Brouwerij 't Gaverhopke	188	79	generic.png
Louwaege Faro	table beer	1.4	Alken-Maes (Heineken)	994	358	generic.png
NOORderbierke	high fermentation, amber blonde	8.1	Brouwerij Donum Ignis	1114	264	generic.png
Cuvée Saint-Antoine Blonde	abbey	7.5	Brasserie du Flo	430	160	generic.png
Campus Premium	pils	5.0	Brouwerij Huyghe	319	271	generic.png
Hof ten Dormaal Donker	high fermentation	8.5	Brouwerij Hof ten Dormaal	725	163	generic.png
Kerstbie	dark, christmas	8.0	Brouwerij De Bie	830	220	generic.png
Arend Winter	dark amber	6.3	Brouwerij De Ryck	82	110	generic.png
Arendonker Bruin	brown	8.5	Dorpsbrouwerij Humulus	83	289	generic.png
Arendonker Tripel	gold blonde	8.0	Dorpsbrouwerij Humulus	84	289	generic.png
Redor	pils	5.0	Brasserie Dupont	1269	130	generic.png
Dubbel Klok	dark	8.5	Brouwerij Boelens	514	193	generic.png
Tumulus Nera	wheat	8.0	De Proefbrouwerij commissioned by De Kale Ridders	1577	151	generic.png
Lupulus Brune	triple	8.5	Brasserie les 3 Fourquets	823	176	generic.png
De Graal Gember	blonde	8.0	Brouwerij De Graal	445	34	generic.png
Ma Mère Spéciale	dark blonde	6.0	Brouwerij De Leite	1002	137	generic.png
Pierewietje	\N	6.0	Brouwerij De Regenboog	1214	190	generic.png
Leffe Bruin	brown, abbey	6.5	AB InBev	946	216	generic.png
Gouden Carolus Tripel	triple	9.0	Brouwerij Het Anker	658	161	generic.png
Passendale	amber	6.0	Brouwerij Duvel Moortgat	1180	3	generic.png
Blanche de Namur	white	5.2	Brasserie du Bocq	207	210	generic.png
t Smisje Fiori	high fermentation	7.0	Brouwerij De Regenboog	1492	190	generic.png
St. Louis Premium Pêche	fruit beer	2.6	Brouwerij Van Honsebrouck	1432	106	generic.png
Hoegaarden Rosée	fruit beer	3.0	Brouwerij De Kluis (AB InBev)	719	109	generic.png
Liene	amber, triple	7.0	t Hofbrouwerijke commissioned by Brouwerij Het Nest	972	345	generic.png
Liers Kerstbier	amber, christmas	6.0	Brouwerij Strubbe for stad Lier	973	88	generic.png
Delta	blonde	6.0	Brouwerij Anders for Brussels Beer Project	469	297	generic.png
Cuvée des Trolls	high fermentation, blonde	7.0	Brouwerij Dubuisson	410	74	generic.png
Martin’s Pale Ale	high fermentation	5.5	Group John Martin	1031	91	generic.png
Bush Blond Triple	triple, blonde	10.5	Brouwerij Dubuisson	311	74	generic.png
Camaraderie	blonde	8.0	Brouwerij Bavik	317	81	generic.png
Saison Voisin	saison, amber	5.0	Brasserie des Légendes	1326	100	generic.png
Chapeau Abricot	fruit beer, lambic	3.5	Brouwerij De Troch	354	303	generic.png
Kameleon Ginseng	organic	6.5	Brouwerij Den Hopperd	791	268	generic.png
Ginder Ale	high fermentation, amber	5.1	AB InBev	631	216	generic.png
Manten	high fermentation	6.0	Brouwerij Gulden Spoor	1019	127	generic.png
Airborne	abbey, double	7.5	Brasserie De Bouillon	49	166	generic.png
Florival Tripel	triple	8.5	Affligem Brewery (Heineken)	590	19	generic.png
Framboise Girardin	lambic, fruit beer	5.0	Brouwerij Girardin	600	175	generic.png
Urthel Hop-It	blonde india pale ale	9.5	Brouwerij De Koningshoeven commissioned by Brouwerij Urthel	1593	275	generic.png
Corsendonk Christmas Ale	christmas	8.5	Brouwerij du Bocq for Corsendonk nv	391	252	generic.png
Sint-Idesbald Réserve Ten Duinen Blond	abbey	6.5	Brouwerij Huyghe	1408	271	generic.png
Nuits Blanches	\N	7.5	Brasserie de l'Abbaye des Rocs	1121	226	generic.png
Tournée Générale Tripel Hop	blonde, high fermentation	7.5	Brouwerij Palm	1545	302	generic.png
Hofelf	wheat, triple	7.5	t Hofbrouwerijke	728	96	generic.png
Pink Killer	high fermentation, fruitig white	5.0	Brasserie de Silly	1222	87	generic.png
La Corne du Bois des Pendus Triple	high fermentation, triple	7.0	Brasserie d'Ebly	891	276	generic.png
Urthel Hibernus Quentum	triple	9.0	Brouwerij De Leyerth	1594	129	generic.png
Keikop Tripel	triple	8.7	Brouwerij De Graal for Brouwerij De Kassei	817	29	generic.png
Sint-Idesbald	high fermentation	6.5	Brouwerij Huyghe	1366	271	generic.png
Special Roman	brown	5.5	Brouwerij Roman	1394	291	generic.png
Quintine Bio Organic	high fermentation, organic	5.9	Brasserie Ellezelloise	1260	12	generic.png
Inglorious Quad	quadruple	10.3	Brouwerij Anders for Inglorious Brew Stars	755	249	generic.png
Sas Brune	high fermentation	5.3	Brouwerij Het Sas	1330	257	generic.png
Brigand IPA	india pale ale	6.5	Brouwerij Van Honsebrouck	267	106	generic.png
Vlaskapelle	flemish red brown	5.0	Brouwerij Gulden Spoor	1644	127	generic.png
Bink Bruin	double	5.5	Brouwerij Kerkom	183	200	generic.png
Malheur 12	red brown	12.0	Brouwerij De Landtsheer	1010	205	generic.png
Kasteel Blond	blonde, high fermentation	7.0	Brouwerij Van Honsebrouck	804	106	generic.png
Applebocq	fruit beer	3.1	Brasserie Du Bocq	76	70	generic.png
Black Damnation II (Mocha Bomb)	russian imperial stout	12.0	De Struise Brouwers by Brouwerij Deca	193	154	generic.png
Yperman	ale	5.5	Brouwerij Het Sas	1707	257	generic.png
Betchard Blonde	blonde	5.5	Brasserie de Tubize	164	83	generic.png
Broeder Jacob Double Expresso	brown	7.7	Brasserie du Bocq for Broeder Jacob bvba	269	150	generic.png
Timmermans Oude Kriek	kriekenlambic	5.5	Brouwerij Timmermans	1523	350	generic.png
Vicaris Quinto	high fermentation	5.0	Brouwerij Dilewyns	1620	31	generic.png
De Garre Tripel	triple	11.5	Staminee De Garre (Brouwerij Van Steenberge)	442	333	generic.png
Tonneke	high fermentation, amber	5.0	Brouwerij Contreras	1537	310	generic.png
Vicardin	triple-gueuze	7.0	Brouwerij Dilewyns	1616	31	generic.png
Bellebier Amber	amber	5.2	Brouwerij Van Steenberge for Paeleman	151	39	generic.png
Schapenkop	triple	8.0	Brouwerij 't Paenhuys	1338	277	generic.png
Koantjesbier	high fermentation	7.0	De Proefbrouwerij for Bierfirma Vacas	844	141	generic.png
Tripel Klok	triple	8.5	Brouwerij Boelens	1558	193	generic.png
Hofpint	high fermentation, pils	5.5	t Hofbrouwerijke	730	96	generic.png
Nello's Blond	blonde	7.0	De Proefbrouwerij for Brouwerij De Arend (Hoboken)	1096	85	generic.png
Vleteren Super 8 Blond	blonde	8.0	Brouwerij Deca	1648	183	generic.png
Kastaar	blonde	6.0	Brouwerij De Block	803	354	generic.png
Petrus Aged Pale	aged pale	7.3	Brouwerij Bavik	1200	81	generic.png
Malheur Bière Brut	blonde	11.0	Brouwerij De Landtsheer	1011	205	generic.png
Bière Darbyste	amber	5.8	Brasserie de Blaugies	168	332	generic.png
Bière de Beloeil	high fermentation	8.5	Brasserie Dupont	169	130	generic.png
Floreffe Dubbel	abbey	6.3	Brouwerij Lefebvre	567	147	generic.png
La Botteresse Brune	high fermentation	9.5	Brasserie la Botteresse de Sur-les-bois	881	37	generic.png
Tournay de Noël	stout, christmas	8.2	Brasserie de Cazeau	1542	309	generic.png
Kasteel Cuvée du Chateau	dark	11.0	Brouwerij Van Honsebrouck	805	106	generic.png
De Boomgaard Framboise	fruit beer	4.9	Brasserie d'Ecaussinnes	439	66	generic.png
Saison d'Erpe-Mere	saison	6.9	Brouwerij De Glazen Toren	1319	321	generic.png
Ezel Wit	white	5.8	Brouwerij Bavik	365	81	generic.png
Pikkeling Tripel	triple	8.0	Brouwerij Boelens commissioned by VVV De Faluintjesstreek	1217	320	generic.png
Framboise Max Jacobins	lambic, fruit beer	3.0	Brouwerij Bockor	602	24	generic.png
Bon Secours Myrtille	high fermentation, blueberry	7.0	Brouwerij Caulier	247	238	generic.png
Jack-Op	mixed fermentation	5.5	Brouwerij Boon	761	348	generic.png
Saison Dupont	saison	6.5	Brasserie Dupont	1321	130	generic.png
La Barbiot Ambrée	high fermentation	9.5	Brasserie la Barbiot	868	182	generic.png
Loterbol Bruin	high fermentation	8.0	Brouwerij Loterbol	990	102	generic.png
Haanse Witte	white	5.5	Brouwerij Strubbe for den Haene	695	125	generic.png
t Smisje Great Reserva	high fermentation	10.0	Brouwerij De Regenboog	1494	190	generic.png
Toetëlèr Wit	white	5.2	Brouwerij Den Toetëlèr	1531	174	generic.png
Lustem	wheat	7.0	‘t Hofbrouwerijke for De Verhuisbrouwerij	1001	121	generic.png
St. Bernardus Extra 4	blonde saison	4.8	Brouwerij St. Bernardus	1403	134	generic.png
Strandjuttersbier Mong De Vos	quadruple	9.2	Brouwerij Strubbe for bierfirma Den Haene	1460	76	generic.png
Kameleon Donker	organic	6.0	Brouwerij Den Hopperd	790	268	generic.png
n Peerdevisscher	brown	6.5	Brouwerij Strubbe	1086	2	generic.png
Préaris Quadrupel	belgian strong ale	10.0	De Proefbrouwerij for Vliegende Paard Brouwers	1245	336	generic.png
Leeuwse Witte	white	5.0	Affligem Brewery (Heineken)	944	19	generic.png
Sloeber	high fermentation	7.5	Brouwerij Roman	1379	291	generic.png
De Koninck Winter	ruby	6.5	Brouwerij De Koninck (Duvel-Moortgat)	454	236	generic.png
Nen Uts	belgian special	7.0	Brouwerij De Graal for De Hoevebrouwers	1101	116	generic.png
Netebuk	strong blonde	6.5	Brouwerij Gulden Spoor	1102	127	generic.png
Pannepot Reserva	high fermentation, brown	10.0	De Struise Brouwers by Brouwerij Deca	1175	154	generic.png
Ultra Blonde	blonde	8.0	Brasserie d'Ecaussinnes	1588	66	generic.png
Saison de Dottignies	saison	5.5	Brouwerij De Ranke	1314	313	generic.png
Zulte	high fermentation, light brown	4.7	Alken-Maes (Heineken)	1729	358	generic.png
Bush de Nuits	amber, triple	13.0	Brouwerij Dubuisson	314	74	generic.png
Strubbe Pils	pils	5.2	Brouwerij Strubbe	1462	2	generic.png
Leffe Vieille Cuvée	amber	8.2	AB InBev	953	216	generic.png
Hopverdomme	imperial/double IPA	7.5	De Struise Brouwers	742	172	generic.png
Silly Pils Bio	pils, organic	5.0	Brasserie de Silly	1356	87	generic.png
Duchesse de Bourgogne	old brown	6.2	Brouwerij Verhaeghe Vichte	516	324	generic.png
Sara Bruin	brown, high fermentation, buckwheat	6.0	Brasserie de Silenrieux	1329	44	generic.png
Affligem 950 Cuvee	abbey, blonde	6.8	Affligem Brewery (Heineken)	44	19	generic.png
Louwaege's Kriek	kriek	4.3	Alken-Maes (Heineken)	995	358	generic.png
Hoppesnoet	belgian ale	8.5	Huisbrouwerij Den Tseut	740	330	generic.png
t Smisje Kuvee Elektrik 979 W	high fermentation	9.0	Brouwerij De Regenboog	1498	190	generic.png
Iris	spontaneous fermentation, amber	6.0	Brasserie Cantillon	757	170	generic.png
Vieux Bruges Blanche	label beer, white	4.5	Brouwerij Van Honsebrouck	1622	106	generic.png
Tripel Karmeliet	triple	8.4	Brouwerij Bosteels	1557	155	generic.png
Nostradamus	high fermentation, brown	9.0	Brasserie Caracole	1116	112	generic.png
Piraat	high fermentation	10.5	Brouwerij Van Steenberge	1224	241	generic.png
Timmermans Faro Lambic	faro	4.0	Brouwerij Timmermans	1516	350	generic.png
Hercule Stout	stout	9.0	Brasserie des Légendes	705	100	generic.png
Oude Kriek Oud Beersel	lambic	6.5	Brouwerij Oud Beersel	1153	208	generic.png
Koeketiene	triple	8.5	Brouwerij Maenhout	846	73	generic.png
Triest Blond	high fermentation	6.0	Microbrewery Den Triest	1550	10	generic.png
Triest Dubbel	high fermentation	8.0	Microbrewery Den Triest	1551	10	generic.png
Den Herberg Amber	amber	5.0	Brouwerij Den Herberg	474	256	generic.png
BLAUW	pils, Export	5.2	Brouwerij Bockor	214	24	generic.png
Cluysenaer	high fermentation	7.0	De Proefbrouwerij for Brouwerij Cluysenaer	378	114	generic.png
Boembeke Luiwerk	blonde, light cloudy	6.5	Brouwerij De Graal	231	34	generic.png
Celestus	lager	5.0	Brouwerij Haacht	346	47	generic.png
Charles Quint	lager	6.3	Haacht	367	98	generic.png
Dulle Teve	triple	10.0	De Dolle Brouwers	519	300	generic.png
Urthel Tonicum Finiboldus	amber	7.5	Brouwerij De Leyerth	1598	129	generic.png
Leireken Boekweit Blond	amber, high fermentation, buckwheat, organic	6.0	Brouwerij Strubbe for Guldenboot nv	955	301	generic.png
Cuvée des Jacobins	lambic	5.5	Brouwerij Bockor	409	24	generic.png
Schultenbräu	pils	4.9	Brouwerij Martens for Aldi	1341	115	generic.png
Superpils	pils	4.3	Brouwerij Strubbe	1472	2	generic.png
Ne Kopstoot	high fermentation, gold	7.0	Brasserie de Brunehaut	1093	349	generic.png
Brugs Beertje 20	blonde	6.5	Brouwerij De Regenboog	277	190	generic.png
Abbaye des Rocs Brune	abbey brown	9.0	Brasserie de l'Abbaye des Rocs	23	226	generic.png
La Troufette Blonde	high fermentation	6.0	Brasserie de Bastogne	928	222	generic.png
Schoenlappertje	blackcurrant	5.0	De Scheldebrouwerij	1340	318	generic.png
Prinsesken	light red, fruit beer	6.5	Brouwerij Boelens	1249	193	generic.png
Belgoo Arboo	triple, amber	8.1	Brouwerij Belgoobeer by Brasserie La Binchoise	135	307	generic.png
t Smisje Sleedoorn Extra	fruit beer	7.0	Brouwerij De Regenboog	1501	190	generic.png
Janus Triple	triple	8.0	Brouwerij De Ranke	768	313	generic.png
Jean Nicot	triple, tabaksbier	8.5	Brouwerij De Graal	769	34	generic.png
Villers Vieille	abbey	7.0	Brouwerij Huyghe	1633	271	generic.png
Pissenlit	saison	8.0	Brasserie Fantôme	1225	206	generic.png
La Rulles Brune	high fermentation	6.5	Brasserie Artisanale de Rulles	915	144	generic.png
Armand’4 Herfst	old geuze	6.0	Geuzestekerij 3 Fonteinen	85	195	generic.png
Kwibus Donker	high fermentation	6.4	Brouwerij Danny	867	199	generic.png
KerstSmiske	dark, christmas	11.0	Brouwerij Smisje	831	105	generic.png
Taras Boulba	blonde	4.5	Brouwerij De Ranke for Brasserie de la Senne	1506	131	generic.png
Smiske Winter	dark amber	11.0	Brouwerij Smisje	1384	105	generic.png
Kriekedebie	fruit beer	4.4	Brouwerij De Bie	860	220	generic.png
Bellebier Dubbel	brown	6.2	Brouwerij Van Steenberge for Paeleman	152	39	generic.png
Oesterstout	stout	8.5	De Scheldebrouwerij	1128	318	generic.png
Deinze Export	export	4.6	Huisbrouwerij Sint Canarus for JCI Deinze en Leiestreek	461	298	generic.png
Helleketelbier	amber	7.0	Brouwerij De Bie	704	220	generic.png
Slaapmutske Christmas	high fermentation, christmas	7.4	De Proefbrouwerij for Brouwerij Slaapmutske	1372	9	generic.png
Witkap Pater Special	high fermentation, amber	5.5	Brouwerij Slagmuylder	1691	30	generic.png
Guido	high fermentation	8.0	Brouwerij De Regenboog	690	190	generic.png
Napoleon	dark	7.0	Affligem Brewery (Heineken)	1090	19	generic.png
La Poiluchette Brune	high fermentation	7.5	Brouwerij Huyghe	911	271	generic.png
Guldenberg	dark blonde, abbey	8.5	Brouwerij De Ranke	693	313	generic.png
Liefmans Cuvée-Brut	fruit beer	6.0	Brouwerij Liefmans	967	20	generic.png
Liefmans Frambozenbier	fruit beer	5.4	Brouwerij Liefmans	968	20	generic.png
Kapittel Dubbel	brown	7.5	Brouwerij Van Eecke	798	219	generic.png
Jupiler New Tauro	low fermentation	6.2	Brasserie Piedboeuf (AB InBev)	786	1	generic.png
Belle-Vue Framboise	fruit beer	5.7	Brouwerij Belle-Vue (AB InBev)	144	14	generic.png
Goudster	\N	6.0	Brouwerij Anders for Verenigde Brouwers	660	258	generic.png
Floris Ninkeberry	fruit beer	3.6	Brouwerij Huyghe	583	271	generic.png
Malheur 8	blonde	8.0	Brouwerij De Landtsheer	1008	205	generic.png
Xenophon’s Wine	\N	11.0	De Struise Brouwers	1703	172	generic.png
De Graal SloCK	copper	6.5	Brouwerij De Graal	446	34	generic.png
t Smisje Halloween	high fermentation	10.5	Brouwerij De Regenboog	1495	190	generic.png
Couckelaerschen Doedel	high fermentation	6.5	Brouwerij Strubbe	395	2	generic.png
Stout Leroy	zoete stout	5.0	Brouwerij Het Sas	1452	257	generic.png
Palm Green	low alcohol	0.3	Brouwerij Palm	1166	302	generic.png
Watou Tripel	triple	7.5	Brouwerij St. Bernardus	1661	134	generic.png
Grimbergen Selection	dark, double	7.0	Alken-Maes (Heineken)	675	358	generic.png
Abbaye de Saint-Martin Brune	abbey	8.0	Brasserie de Brunehaut	18	349	generic.png
Chapeau Banana	fruit beer, lambic	3.5	Brouwerij De Troch	355	303	generic.png
Tongerlo Bruin	high fermentation, abbey	6.0	Brouwerij Haacht	1533	47	generic.png
Forestinne Ambrosia	amber	7.5	Brasserie Caracole	593	112	generic.png
Margriet	label beer	6.5	Brouwerij Het Anker	1028	161	generic.png
Goud Vuur	amber, triple	9.0	Brouwerij DijkWaert	651	356	generic.png
Gouden Arend 125	gold blonde	8.5	Brouwerij De Ryck	652	110	generic.png
Hop Verdomme IPA	IPA	7.0	Brouwerij Kerkom	743	200	generic.png
Kriekenbier	fruit beer, low fermentation	4.0	Brouwerij Sint-Jozef	861	296	generic.png
Grisette Fruits des Bois	fruit beer	3.5	Brasserie St-Feuillien	682	319	generic.png
Dulle Griet	double	6.5	De Scheldebrouwerij	518	318	generic.png
Blonde de Noël	blonde	10.0	Brasserie Caulier	223	212	generic.png
Quintine Blonde	high fermentation	8.0	Brasserie Ellezelloise	1261	12	generic.png
Titje	high fermentation, white	5.0	Brasserie de Silly	1528	87	generic.png
Abdis Tripel	triple	8.2	Brouwerij Riva	28	317	generic.png
Embrasse Special Edition	high fermentation, oak aged	9.0	Brouwerij De Dochter van de Korenaar	532	201	generic.png
Cara Pils	pils	4.9	Brouwerij Haacht	329	47	generic.png
Potteloereke	brown	8.0	Huisbrouwerij Sint-Canarus	1240	346	generic.png
Jan van Oudenaarde	blonde	8.0	Brouwerij Slaapmutske	767	342	generic.png
Oude Kriek 3 Fonteinen	lambic, kriek	6.0	Geuzestekerij 3 Fonteinen	1149	195	generic.png
Black Albert	belgian royal stout	13.0	De Struise Brouwers by Brouwerij Deca	191	154	generic.png
Klingse Kalsei	high fermentation, local	8.0	Brouwerij Van Steenberge	839	241	generic.png
Saxo	high fermentation	8.0	Brasserie Caracole	1336	112	generic.png
Pater	local	6.0	De Scheldebrouwerij for De Lelie	1181	122	generic.png
De Regenboog IJzer	\N	6.0	Brouwerij De Regenboog	457	190	generic.png
Coq Hardi	low fermentation, blonde	5.5	Brouwerij Haacht	386	47	generic.png
St. Louis Premium Framboise	fruit beer	2.8	Brouwerij Van Honsebrouck	1430	106	generic.png
De Skieven Architek	high fermentation	10.5	Brouwerij Van Steenberge	458	241	generic.png
Zeezuiper	gold blonde, triple	8.0	De Scheldebrouwerij	1710	318	generic.png
Kasteel Tripel	triple	11.0	Brouwerij Van Honsebrouck	809	106	generic.png
Speciale 1900	amber	5.0	Brouwerij Haacht	1395	47	generic.png
Oxymore	amber, high fermentation	5.0	Brasserie Oxymore	1157	202	generic.png
Wildebok	high fermentation, bockbier	6.5	De Scheldebrouwerij	1679	318	generic.png
Wilderen Goud	high fermentation	6.2	Brouwerij Wilderen	1680	69	generic.png
Joup	high fermentation	7.5	Brasserie Grain d'Orge	778	329	generic.png
Glutaner	gluten free pilsener	5.2	Brouwerij Huyghe	632	271	generic.png
Ultra Ambrée	ale, amber, high fermentation	7.0	Brasserie d'Ecaussinnes	1584	66	generic.png
Plezir D Lux Blond	blonde aperitif	6.7	Brouwerij Sint-Jozef commissioned by Zirvest Cvba	1228	262	generic.png
Bière de la Bonde	triple	10.0	Brouwerij Van Eecke	171	219	generic.png
Mc Chouffe	dark	8.0	Brasserie d'Achouffe (Duvel-Moortgat)	1033	253	generic.png
Podge Oak Aged Stout	stout	11.0	Brouwerij Alvinne	1234	63	generic.png
Freaky Dark	lambic	3.8	Brouwerij Alvinne	607	63	generic.png
Bolivar Blond	blonde	7.5	Brouwerij Huyghe for Oxfam world shops	238	152	generic.png
Ultra Soif	blonde, high fermentation	5.0	Brasserie d'Ecaussinnes	1586	66	generic.png
Leireken Lager Bio	pils, organic	5.2	Brouwerij Strubbe for Guldenboot nv	957	301	generic.png
St. Louis Premium Cassis	fruit beer	3.2	Brouwerij Van Honsebrouck	1428	106	generic.png
St. Louis Premium Faro	faro	3.2	Brouwerij Van Honsebrouck	1429	106	generic.png
Neuzebier Tripel Bruin	dark triple	8.0	Brouwerij Anders for brouwerij De Neus	1104	270	generic.png
N'Ice Chouffe	dark, saison	10.0	Brasserie d'Achouffe (Duvel-Moortgat)	1106	253	generic.png
Den Herberg Bruin	brown	5.5	Brouwerij Den Herberg	476	256	generic.png
Dief Silver	blonde, high fermentation	6.5	Brouwerij Engilsen	488	15	generic.png
Dikke Mathile	high fermentation	6.0	Brouwerij Strubbe	489	2	generic.png
Diôle	belgian ale	6.5	Brasserie des Carrières	490	283	generic.png
Grand Cru St-Feuillien Grand Cru	abbey	9.5	Brasserie Saint Feuillien	1416	138	generic.png
Zwet.be	stout	7.0	De Proefbrouwerij for Geuzestekerij 3 Fonteinen	1735	290	generic.png
Paternoster Dubbel	brown double	8.0	Microbrewery Achilles in De Proefbrouwerij commissioned by Paters en Prinsen	1188	89	generic.png
Postel Tripel	blonde, triple, abbey	8.5	Affligem Brewery (Heineken)	1239	19	generic.png
Felix Kriekbier	kriek	5.2	Brouwerij Verhaeghe for Brouwerij Clarysse (bierfirma)	556	86	generic.png
Stoeren Bonk	amber	6.3	Brouwerij Van Steenberge	1450	241	generic.png
t Schoenlappertje	blackcurrant	6.5	De Scheldebrouwerij	1483	318	generic.png
Eeuwige Liefde	strong dark	8.2	Brouwerij DijkWaert	527	356	generic.png
Ename Blond	abbey, high fermentation	6.5	Brouwerij Roman	533	291	generic.png
Dominus Dubbel	abbey	6.5	Group John Martin	495	91	generic.png
Dentergems Wit	white	5.0	Brouwerij Het Anker	483	161	generic.png
Westvleteren Twaalf	trappist	10.2	Sint-Sixtusabdij van Westvleteren	1672	221	generic.png
La Saison des Chasses Blonde	saison	6.0	Brasserie de Bouillon	923	224	generic.png
Kriek Mariage Parfait	lambic	8.0	Brouwerij Boon	859	348	generic.png
Ename Cuvée 974	high fermentation	7.0	Brouwerij Roman	534	291	generic.png
Ename Cuvée Rouge	high fermentation	7.0	Brouwerij Roman	535	291	generic.png
Nondedju	triple	10.7	’t Hofbrouwerijke for Montaigu	1112	218	generic.png
De Eycken Balthazar	dark brown	9.0	Brouwerij Alvinne	441	63	generic.png
Regal Christmas	brown	8.1	Brasserie Du Bocq	1270	70	generic.png
Nen Kerstbal	christmas	8.0	for bierfirma Vacas	1100	27	generic.png
Gruut Amber	amber	6.6	Stadsbrouwerij Gruut	685	26	generic.png
Pauwel Kwak	special	8.4	Brouwerij Bosteels	1193	155	generic.png
t Smisje Bananenbier	fruit beer	6.0	Brouwerij De Regenboog	1485	190	generic.png
Triest Kriek	white, fruit beer	5.2	Microbrewery Den Triest	1552	10	generic.png
Triest Tripel	high fermentation, triple	7.5	Microbrewery Den Triest	1553	10	generic.png
Timmermans Pêche Lambic	fruit beer	4.0	Brouwerij Timmermans	1524	350	generic.png
Timmermans Strawberry Lambic	fruit beer	4.0	Brouwerij Timmermans	1525	350	generic.png
Leffe Tripel	triple, abbey	8.4	AB InBev	952	216	generic.png
Druïde Grand Q	triple, blonde	8.5	De Proefbrouwerij for Brouwerij Druïde	511	327	generic.png
La Penneffoise	fruit beer	8.0	Brasserie d'Ecaussinnes	908	66	generic.png
Den Bras	brown	7.5	Brouwerij Den Tseut	472	107	generic.png
Grimbergen Dubbel	high fermentation	6.5	Alken-Maes (Heineken)	672	358	generic.png
Living Tripel	triple	9.0	De Proefbrouwerij	983	133	generic.png
Hof ten Dormaal Amber	high fermentation	7.5	Brouwerij Hof ten Dormaal	723	163	generic.png
Briekebakker	triple	8.7	Brouwerij Alvinne	265	63	generic.png
Opitter	export	\N	Brouwerij Sint-Jozef	1133	296	generic.png
Pils de Brabant	pils	4.9	Group John Martin	1220	91	generic.png
La Blanche des Saisis	white	6.2	Brasserie Ellezelloise	885	12	generic.png
La Fumette	high fermentation, Rauchbier	6.5	Brasserie Millevertus	895	340	generic.png
Lousberg	triple	8.0	De Proefbrouwerij for Het Hinkelspel	992	28	generic.png
Tripel Kanunnik	triple	8.2	Brouwerij en stokerij Wilderen	1556	293	generic.png
Delirium Red	fruit beer	8.5	Brouwerij Huyghe	468	271	generic.png
Druïde Bruin	ruby	6.5	De Proefbrouwerij for Brouwerij Druïde	510	327	generic.png
Oud Zottegems Bier	high fermentation	6.5	Brouwerij Strubbe	1141	2	generic.png
Struise Witte	high fermentation	5.0	De Struise Brouwers by Brouwerij Deca	1464	154	generic.png
Cesar	triple	8.5	Brouwerij Van Steenberge	351	241	generic.png
Pannepeut	high fermentation	10.0	De Struise Brouwers by Brouwerij Deca	1177	154	generic.png
Bosprotter	triple	8.5	t Hofbrouwerijke	257	96	generic.png
Delhaize Tafelbier Blond	table beer	1.5	Brasserie Piedboeuf (AB InBev)	463	1	generic.png
Zwarte Piet	top fermentation	8.0	Zennebrouwerij	1731	171	generic.png
La Vermontoise	saison	6.0	Brasserie de Blaugies	935	332	generic.png
Trappieter	amber	6.5	De Proefbrouwerij for Bierfirma Trappieter	1548	139	generic.png
Zonderik 100	blonde, high fermentation	7.0	De Proefbrouwerij for Zonderik Beer Company	1721	278	generic.png
Gauloise Brune	brown	8.1	Brasserie Du Bocq	615	70	generic.png
Delhaize Christmas	label beer	9.0	Affligem Brewery (Heineken)	462	19	generic.png
Gruut Blond	blonde	5.5	Stadsbrouwerij Gruut	686	26	generic.png
Cookie Beer	special	8.0	Brasserie d'Ecaussinnes	385	66	generic.png
Tumulus Magna	wheat	9.0	De Proefbrouwerij commissioned by De Kale Ridders	1576	151	generic.png
St. Bernardus Christmas Ale	christmas	10.0	Brouwerij St. Bernardus	1402	134	generic.png
La Mère Vertus	triple	7.0	Brasserie Millevertus	902	340	generic.png
Gandavum Dry Hopping	blonde	7.5	De Proefbrouwerij for Het Waterhuis aan de bierkant	611	77	generic.png
Abbaye d'Aulne Val de Sambre	abbey, amber	6.4	Brasserie Val de Sambre	13	306	generic.png
Abbaye de Bonne-Espérance	abbey	7.8	Brouwerij Lefebvre	14	147	generic.png
Sur-les-Bois Ambrée	high fermentation	8.0	Brasserie La Botteresse de Sur-les-Bois	1473	117	generic.png
Keizersberg	abbey	9.0	Brouwerij Van Steenberge	821	241	generic.png
Big Bavik	blonde	5.0	Brouwerij Bavik	177	81	generic.png
Christmas Verhaeghe	high fermentation, christmas	7.2	Brouwerij Verhaeghe	374	64	generic.png
Bière du Corsaire Cuvée Spéciale	strong blonde	9.4	Brouwerij Huyghe	174	271	generic.png
Brussels Perzik	fruit beer	4.0	Brouwerij Van Steenberge	294	241	generic.png
Black Damnation IV (Coffée Club)	russian imperial stout	13.0	De Struise Brouwers by Brouwerij Deca	195	154	generic.png
Eerwaarde Pater	Waestvlaams red brown	9.0	Brouwerij Het Alternatief by Brouwerij De Graal or Brouwerij Alvinne	525	227	generic.png
Gildenbier	high fermentation, brown	7.0	Brouwerij Haacht	630	47	generic.png
Satan Gold	blonde, high fermentation	8.0	Brouwerij De Block	1334	354	generic.png
Framboise Oud Beersel	lambic, fruit beer	5.0	Brouwerij Oud Beersel	603	208	generic.png
Frasnoise Givrée	amber	6.3	Brasserie La Frasnoise	604	308	generic.png
Frasnoise Rétro	amber	6.3	Brasserie La Frasnoise	605	308	generic.png
Freaky	Brown ale	3.8	Brouwerij Alvinne	606	63	generic.png
St. Louis Kriek Lambic	kriek	4.5	Brouwerij Van Honsebrouck	1426	106	generic.png
t Smisje Dubbel	high fermentation	9.0	Brouwerij De Regenboog	1491	190	generic.png
St. Feuillien Blonde	abbey	7.5	Brasserie St-Feuillien	1414	319	generic.png
Alvino Bourgogne Barrel OA	fruit beer, oak aged	5.5	Brouwerij Alvinne	60	63	generic.png
Belgoo Magus	blonde	6.6	Brouwerij Belgoobeer by Brasserie La Binchoise	138	307	generic.png
Bieken	blonde	8.0	Brouwerij Boelens	165	193	generic.png
Forestinne Mysteria	blonde special	7.5	Brasserie Caracole	595	112	generic.png
De Graal Blond	blonde	6.5	Brouwerij De Graal	443	34	generic.png
Grotten Flemish Ale	high fermentation, belgian strong ale	7.7	Brouwerij St-Bernardus	683	203	generic.png
Mongozo Coconut	fruit beer	3.5	Brouwerij Huyghe	1050	271	generic.png
Bon Homme	high fermentation, dark brown	6.5	Brouwerij De Leite	242	137	generic.png
La Binchoise Brune	high fermentation	7.7	Brasserie La Binchoise	871	120	generic.png
Leeuw Pilsener	pilsener	5.0	Brouwerij Haacht	943	47	generic.png
Delhaize Tafelbier Bruin	table beer	1.5	Brasserie Piedboeuf (AB InBev)	464	1	generic.png
Pimpernelle	triple, organic	8.0	Brouwerij Jessenhofke	1221	316	generic.png
Jessenhofke Tripel	high fermentation, organic, triple	8.0	De Proefbrouwerij for Brouwerij Jessenhofke	773	148	generic.png
Schaarbeekse Oude Kriek 3 Fonteinen	fruit beer, lambic	5.0	Geuzestekerij 3 Fonteinen	1337	195	generic.png
St. Bernardus Prior 8	high fermentation	8.0	Brouwerij St. Bernardus	1405	134	generic.png
St. Bernardus Tripel	high fermentation	8.0	Brouwerij St. Bernardus	1406	134	generic.png
Kriek Cantillon 100% Lambic	lambic	5.5	Brasserie Cantillon	852	170	generic.png
Kriek Boon	lambic	4.5	Brouwerij Boon	851	348	generic.png
White by Mystic	white	5.1	Brouwerij Haacht	1674	47	generic.png
Saison de Pipaix	saison	6.0	Brasserie à Vapeur	1317	132	generic.png
Neuzebier Tripel	blonde, triple	6.9	Brouwerij Anders for brouwerij De Neus	1103	270	generic.png
Floris Cactus	white	4.2	Brouwerij Huyghe	575	271	generic.png
La Noire Fontaine	high fermentation	8.0	Brasserie de Bouillon	907	224	generic.png
Bavik Faro	table beer	1.5	Brouwerij Bavik	120	81	generic.png
Bavik Pony-Stout	stout	5.2	Brouwerij Bavik	121	81	generic.png
St. Louis Premium Kriek	kriek	3.2	Brouwerij Van Honsebrouck	1431	106	generic.png
ZUIDerbierke	high fermentation, brown red	8.2	Brouwerij Donum Ignis	1728	264	generic.png
Brugge Blond	special, high fermentation	6.5	Brouwerij Palm (previously in Brouwerij De Gouden Boom)	274	279	generic.png
La Waterlootoise	triple	9.0	Brouwerij Van Steenberge	936	241	generic.png
Westoek X	high fermentation	6.0	De Struise Brouwers	1667	172	generic.png
Forestinne Nordika	christmas	7.5	Brasserie Caracole	596	112	generic.png
Altitude 6	ale, blonde	6.0	Brasserie de l'Abbaye des Rocs	56	226	generic.png
Affligem Tripel	abbey, triple	8.5	Affligem Brewery (Heineken)	47	19	generic.png
Content	triple	7.5	Brouwerij De Graal for De Verhuisbrouwerij	382	245	generic.png
Kapel van Viven Bruin	brown	6.6	De Proefbrouwerij for Beerdevelopment Viven	795	263	generic.png
Odlo Triviaal	triple	8.2	Brouwerij De Graal for (T)Huisbrouwerij Odlo	1124	211	generic.png
Abbaye d'Aulne Triple Blonde	abbey, triple	8.0	Brasserie Val de Sambre	11	306	generic.png
Abbaye d'Aulne Triple Brune	abbey, triple	8.0	Brasserie Val de Sambre	12	306	generic.png
Rogier	belgian special	6.5	Brouwerij De Graal for Traagwater	1290	331	generic.png
Akila Pils	pils	5.0	Brouwerij Louwaege	50	229	generic.png
Puitenkop	IPA	5.6	Brouwerij 't Paenhuys	1250	277	generic.png
Witkap Pater Tripel	high fermentation, triple	7.5	Brouwerij Slagmuylder	1693	30	generic.png
Foewerbier	amber	7.0	Brouwerij Kerkom	592	200	generic.png
Forestinne Gothika	scotch	7.5	Brasserie Caracole	594	112	generic.png
De Verboden Vrucht	high fermentation	8.5	Brouwerij De Kluis (AB InBev)	459	109	generic.png
Kamil	high fermentation	6.5	De Proefbrouwerij for bierfirma BVG	792	33	generic.png
Wolf 9	amber	9.0	Brouwerij Lupus	1701	184	generic.png
Grimbergen Blond	abbey, high fermentation	6.7	Alken-Maes (Heineken)	670	358	generic.png
Westvleteren Blond	trappist	5.8	Sint-Sixtusabdij van Westvleteren	1669	221	generic.png
Paulus	old brown	6.0	Brouwerij Het Sas	1191	257	generic.png
Zatte Bie	dark	9.0	Brouwerij De Bie	1709	220	generic.png
Vlaamsche Leeuw Blondje	blonde	5.5	Brouwerij Van Steenberge for De Brouwerij van Vlaanderen	1640	315	generic.png
Floris Witbier	white	5.0	Brouwerij Huyghe	587	271	generic.png
Klokke Roeland	dark	11.5	Brouwerij Van Steenberge	842	241	generic.png
Kriek Fantastiek	fruit beer, red brown	4.9	Brouwerij De Ryck	855	110	generic.png
Ploegsteert	\N	5.4	Brouwerij Verhaeghe Vichte	1230	324	generic.png
Westvleteren Zes	trappist	6.2	Sint-Sixtusabdij van Westvleteren	1670	221	generic.png
Colère Rouge	belgian dark ale	5.0	Brasserie Millevertus	381	340	generic.png
Blonde de Brabant	blonde	6.0	Group John Martin	222	91	generic.png
Préaris IPA (No Hops No Glory)	IPA	6.7	De Proefbrouwerij for Vliegende Paard Brouwers	1246	336	generic.png
Black	dark, high fermentation	6.3	Brasserie de Bellevaux	190	159	generic.png
Blondine	blonde	8.0	Brouwerij Van Steenberge for Hopduvel Gent	225	337	generic.png
Bockor Pils	low fermentation, pils	5.2	Brouwerij Bockor	229	24	generic.png
Turnhoutse Patriot	saison	6.5	Scheldebrouwerij for Hobbybrouwerij Het Nest	1578	68	generic.png
Rochefort 6	trappist	7.5	Abbaye Notre-Dame de Saint-Rémy de Rochefort	1282	93	generic.png
Saint-Lamvinus	fruit beer, lambic	6.0	Brasserie Cantillon	1306	170	generic.png
Green Buzz	organic	6.0	Brasserie Millevertus	664	340	generic.png
Zwarte Piet	brown	8.5	Brouwerij Boelens	1732	193	generic.png
Wostyntje	mosterdbier	7.0	Brouwerij De Regenboog	1702	190	generic.png
Pater Verbiest Donker	organic, dark	9.0	De Proefbrouwerij	1187	133	generic.png
Chouffe Bok 6666	dark amber	6.0	Brasserie d'Achouffe (Duvel-Moortgat)	372	253	generic.png
Den Mulder	blonde	8.0	Brouwerij Den Tseut	478	107	generic.png
Black Damnation III (Black Mes)	russian imperial stout	13.0	De Struise Brouwers by Brouwerij Deca	194	154	generic.png
Viven Bruin	double	6.1	De Proefbrouwerij for Beerdevelopment Viven	1636	263	generic.png
Bush Blond	high fermentation, blonde	10.5	Brouwerij Dubuisson	310	74	generic.png
Snuffelbeer	gold, high fermentation	6.0	Brouwerij De Regenboog	1389	190	generic.png
Bueckenholt SaisoN548	Saison, blonde	6.1	Brouwerij Den Triest en Brouwerij Anders for Brouwerij Bueckenholt	303	232	generic.png
Kortrijk-d’Utsel	brutbier	8.5	Brouwerij Kortrijk-d’Utsel	849	304	generic.png
Brunehaut Village	blonde	6.5	Brasserie de Brunehaut	287	349	generic.png
Brussels Fruit Beer "Apple"	fruit beer	3.2	Brasserie Du Bocq	295	70	generic.png
Gordon Finest Platinum	high fermentation	12.0	Group John Martin	644	91	generic.png
Gordon Finest Silver	high fermentation	7.7	Group John Martin	647	91	generic.png
Brugs (Tarwebier)	white	4.8	Alken-Maes (Heineken) (previously in Brouwerij De Gouden Boom)	276	61	generic.png
Rosé Max	fruit beer	4.5	Brouwerij Bockor	1298	24	generic.png
Sezoens Blond	high fermentation, blonde	6.0	Brouwerij Martens (Bocholt)	1352	311	generic.png
Rader Ambrée	amber	10.5	Brasserie de l'Abbaye du Val-Dieu for Radermacher Distillerie	1262	181	generic.png
Ramée Triple Blond	triple, blonde	8.0	Brasserie de Brunehaut	1265	349	generic.png
Ronsischen Dubbel	winter	7.4	De Proefbrouwerij for bierfirma Slaapmutske	1292	65	generic.png
St. Sebastiaan Dark	abbey	6.9	Brasserie du Bocq for Brouwerij Sterkens	1437	207	generic.png
Kempisch Vuur 3-Dubbel	brown	7.5	De Proefbrouwerij commissioned by Brouwerij Pirlot	822	60	generic.png
Loterbol 6°	high fermentation	6.0	Brouwerij Loterbol	988	102	generic.png
Gertrude Ambrée	amber, high fermentation	6.0	Brasserie de Bouillon	620	224	generic.png
Timmermans Oude Gueuze	lambic	5.5	Brouwerij Timmermans	1522	350	generic.png
Steenbrugge Wit	white	5.0	Brouwerij Palm	1443	302	generic.png
Oudbeitje	strawberry, lambic	6.0	Hanssens Artisanaal	1137	48	generic.png
Armand’4 Zomer	old geuze	6.0	Geuzestekerij 3 Fonteinen	88	195	generic.png
Artevelde	belgian special	5.7	Brouwerij Huyghe	89	271	generic.png
Malheur Cuvée Royale	blonde	9.0	Brouwerij De Landtsheer	1013	205	generic.png
Christmas Leroy	high fermentation, christmas	7.5	Brouwerij Van Eecke	373	219	generic.png
Tongerlo Christmas	high fermentation, abbey	6.5	Brouwerij Haacht	1534	47	generic.png
Postel Christmas	red brown abbey	9.0	Affligem Brewery (Heineken)	1237	19	generic.png
Armand’4 Winter	old geuze	6.0	Geuzestekerij 3 Fonteinen	87	195	generic.png
Poorter	abbey	6.5	Brasserie du Bocq for Brouwerij Sterkens	1241	207	generic.png
Val-Dieu Brune	Erkend Belgisch abbey	8.0	Brouwerij Val-Dieu	1600	103	generic.png
Val-Dieu Grand Cru	Erkend Belgisch abbey	10.5	Brouwerij Val-Dieu	1601	103	generic.png
Val-Dieu Triple	Erkend Belgisch abbey, triple	9.0	Brouwerij Val-Dieu	1602	103	generic.png
Grand Cru Bruocsella	lambic	5.0	Brasserie Cantillon	663	170	generic.png
Floris Honey	honey	4.5	Brouwerij Huyghe	580	271	generic.png
Bon Secours Brune	high fermentation, brown	8.0	Brouwerij Caulier	245	238	generic.png
Lindemans Pecheresse	fruit beer	2.5	Brouwerij Lindemans	981	233	generic.png
Chapeau Gueuze	geuze	5.5	Brouwerij De Troch	353	303	generic.png
Mc Thals	blonde, high fermentation	9.5	Brouwerij DijkWaert	1034	356	generic.png
Ferme Framboos	fruit beer	8.0	Brouwerij De Vlier	560	188	generic.png
Arabier	blonde	8.0	De Dolle Brouwers	77	300	generic.png
Herkenrode Tripel	abbey, triple	7.0	Brouwerij Sint-Jozef	707	296	generic.png
Tremist	high fermentation, blonde	6.0	Brouwerij Van Eecke for Extremis	1549	124	generic.png
Oude Geuze Oud Beersel	geuze	6.0	Brouwerij Oud Beersel	1146	208	generic.png
Floris Kriek	fruit beer	3.6	Brouwerij Huyghe	581	271	generic.png
Floris Mango	fruit beer	3.6	Brouwerij Huyghe	582	271	generic.png
Saison de Silly	saison, amber	5.0	Brasserie de Silly	1320	87	generic.png
Kriek De Ranke	fruit beer	4.5	Brouwerij De Ranke	853	313	generic.png
Saint-Monon au Miel	triple, honey	8.0	Brasserie Saint-Monon	1308	42	generic.png
Mort Subite Faro	faro	4.0	Alken-Maes (Heineken)	1064	358	generic.png
Floris Framboise	fruit beer	3.7	Brouwerij Huyghe	578	271	generic.png
Floris Griotte	fruit beer	3.0	Brouwerij Huyghe	579	271	generic.png
Bière Spéciale Belge	belgian special	5.0	Brasserie La Binchoise	176	120	generic.png
Oude Geuze 3 Fonteinen	geuze	7.0	Geuzestekerij 3 Fonteinen	1142	195	generic.png
Bryggja	triple	8.5	Brouwerij De Graal for Bryggja	301	50	generic.png
Archiduc	\N	6.2	Brasserie d'Ecaussinnes	78	66	generic.png
Steenbrugge Dubbel Bruin	abbey, triple, brown	6.5	Brouwerij Palm (previously in Brouwerij De Gouden Boom)	1441	279	generic.png
Douglas Celtic Red	amber red, high fermentation	7.9	Scottish & Newcastle for Group John Martin	504	36	generic.png
Kriek Max	fruit beer	3.2	Brouwerij Bockor	863	24	generic.png
Chapeau Mirabelle	fruit beer, lambic	3.5	Brouwerij De Troch	363	303	generic.png
La Botteresse aux cerises	high fermentation, fruit beer	5.5	Brasserie la Botteresse de Sur-les-bois	882	37	generic.png
Lindemans Kriek	kriek	4.0	Brouwerij Lindemans	980	233	generic.png
Julius	high fermentation, brown	8.7	Brouwerij De Kluis (AB InBev)	779	109	generic.png
Brussels Fruit Beer "Peaches"	fruit beer	3.2	Brasserie Du Bocq	296	70	generic.png
Ne Janneman	high fermentation, blonde	7.0	Brouwerij Kerkom commissioned by drankenservice Pelgrims	1092	314	generic.png
Chapeau Faro	sweetened geuze	4.8	Brouwerij De Troch	358	303	generic.png
Timmermans Lambicus Blanche	white	4.5	Brouwerij Timmermans	1521	350	generic.png
Pannepot Grand Reserva Vintage	high fermentation, brown	10.0	De Struise Brouwers by Brouwerij Deca	1176	154	generic.png
Houblon Chouffe Dobbelen IPA Tripel	india pale ale	9.0	Brasserie d'Achouffe (Duvel-Moortgat)	748	253	generic.png
Herkenrode Bruin	abbey, brown	7.0	Brouwerij Sint-Jozef	706	296	generic.png
DeuS	special, blonde	11.5	Brouwerij Bosteels	485	155	generic.png
Mystic Krieken	high fermentation, fruit beer	3.5	Brouwerij Haacht	1082	47	generic.png
Serafijn Blond	blonde, high fermentation	6.2	De Proefbrouwerij for Microbrewery Achilles	1346	62	generic.png
Ulricher Extra	pils	5.0	Brouwerij Girardin	1583	175	generic.png
Roste Jeanne	belgian ale	7.0	De Struise Brouwers by Brouwerij Deca	1299	154	generic.png
RSRV	organic, red brown	10.0	Brouwerij Jessenhofke by De Proefbrouwerij	1301	41	generic.png
Revolucion Mexicana’10	low fermentation	5.0	Group John Martin	1276	91	generic.png
La Chouffe	blonde, high fermentation	8.0	Brasserie d'Achouffe (Duvel-Moortgat)	889	253	generic.png
Bocq Christmas	christmas	8.1	Brasserie Du Bocq	230	70	generic.png
Betchard Brune	brown	7.0	Brasserie de Tubize	163	83	generic.png
Mongozo Mango	fruit beer	3.6	Brouwerij Huyghe	1051	271	generic.png
Arend Tripel	gold blonde	8.0	Brouwerij De Ryck	81	110	generic.png
Mystic Perzik	high fermentation, fruit beer	3.7	Brouwerij Haacht	1084	47	generic.png
Keizer Karel Robijn Rood	ruby	8.5	Brouwerij Haacht	819	47	generic.png
Framboise Lindemans	lambic, fruit beer	2.5	Brouwerij Lindemans	601	233	generic.png
De Graal Tripel	triple	9.0	Brouwerij De Graal	447	34	generic.png
De Graal Quest	sugar free	9.0	Brouwerij De Graal	448	34	generic.png
De Graal Triverius	white	6.8	Brouwerij De Graal	449	34	generic.png
Oude Kriek Hanssens	lambic, kriek	6.0	Hanssens Artisanaal	1152	48	generic.png
Goeie Koffe	stout	9.5	Brouwerij DijkWaert	634	356	generic.png
Schuppenboer	triple	8.5	De Scheldebrouwerij for Brouwerij Het Nest	1342	82	generic.png
Kasteelbier Blond	blonde	11.0	Brouwerij Van Honsebrouck	810	106	generic.png
Estaminet Premium Pils	pils	5.2	Brouwerij Palm	540	302	generic.png
Anker Boscoulis	fruit beer	6.5	Brouwerij Het Anker	67	161	generic.png
Horal's Oude Geuze Mega Blend	geuze	7.0	3 Fonteinen, Brouwerij Boon, Timmermans, Oud Beersel, Lindemans, De Troch, De Cam, Hanssens	744	250	generic.png
Troublette	white	5.0	Brasserie Caracole	1570	112	generic.png
Saison Dupont Cuvée Dry Hopping	saison	6.5	Brasserie Dupont	1323	130	generic.png
Vieux Bruxelles Gueuze	label beer	5.0	Brouwerij Van Honsebrouck	1628	106	generic.png
Tempelier	special	6.0	Brasserie du Bocq for Brouwerij Corsendonk	1508	136	generic.png
Den Twaalf	high fermentation	12.0	Brouwerij 't Gaverhopke	480	79	generic.png
Grisette Blonde	blonde	4.5	Brasserie St-Feuillien	679	319	generic.png
Grisette Cérise	fruit beer	3.5	Brasserie St-Feuillien	680	319	generic.png
Holsbeek Lentetripel	triple	8.5	Brouwerij De Vlier	733	188	generic.png
Wieze Tripel	triple	8.0	Brouwerij Roman for Wieze Beer Belgium	1676	169	generic.png
Wieze Tripel Blond	triple	8.0	Brouwerij Wieze	1677	286	generic.png
Triporteur from Heaven	ale, blonde	6.2	Brouwerij Anders for BOMBrewery	1561	196	generic.png
Triverius	wheat	6.8	Brouwerij De Graal	1564	34	generic.png
Atomium Premier Grand Cru	amber	8.0	Brouwerij Van Steenberge	92	241	generic.png
Pax Pils	pils	4.6	Brouwerij Sint-Jozef	1194	296	generic.png
Floreffe Prima Melior	abbey	8.0	Brouwerij Lefebvre	568	147	generic.png
Dominus Tripel	abbey, triple	8.0	Group John Martin	496	91	generic.png
V Cense	high fermentation, belgian special	7.5	Brasserie de Jandrain-Jandrenouille	4	13	generic.png
St. Firminus Blond	abbey	\N	Brasserie Du Bocq	1419	70	generic.png
Sinterklaas	Blond	8.5	Brouwerij Boelens	1363	193	generic.png
Sparta Pils	pils	5.0	Brouwerij Van Steenberge	1390	241	generic.png
Pick-Up	pils	5.0	Brouwerij Walrave	1208	21	generic.png
Malheur 6	gold blonde	6.0	Brouwerij De Landtsheer	1007	205	generic.png
Cervesia	high fermentation, blonde	8.0	Brasserie Dupont	349	130	generic.png
Special 6 Block	amber, high fermentation	6.0	Brouwerij De Block	1391	354	generic.png
Jack’Ouille	blonde	5.5	Brasserie de Bouillon	760	224	generic.png
La Troufette Givrée	high fermentation	8.0	Brasserie de Bastogne	930	222	generic.png
Zottegemse Grand Cru	amber	8.4	Brouwerij Strubbe for Brouwerij Crombé	1727	292	generic.png
De Koninck	amber	5.2	Brouwerij De Koninck (Duvel-Moortgat)	452	236	generic.png
Melchior	amber	11.0	Brouwerij Alvinne	1035	63	generic.png
Stoere Wulp	brown	6.5	De Proefbrouwerij	1449	133	generic.png
Den Tseut	blonde, special	6.5	Brouwerij Den Tseut	479	107	generic.png
Queueu de Charrue Ambrée	amber	5.6	Brouwerij Verhaeghe Vichte commissioned by Brouwerij Vanuxeem	1254	254	generic.png
Ter Dolen Donker	brown	7.1	Brouwerij Ter Dolen	1510	347	generic.png
Felix Speciaal Oudenaards	red brown	4.6	Brouwerij Verhaeghe for Brouwerij Clarysse (bierfirma)	558	86	generic.png
La Binchoise Organic’ Miel	high fermentation, organic, honey	8.5	Brasserie La Binchoise	873	120	generic.png
Livinus	blonde, high fermentation	10.0	Brouwerij Van den Bossche	984	192	generic.png
Belgoo Maxus	gold blonde	8.1	Brouwerij Belgoobeer by Brasserie La Binchoise	139	307	generic.png
Sas Export	export pils	5.0	Brouwerij Het Sas	1331	257	generic.png
Floris Fraise	fruit beer	3.6	Brouwerij Huyghe	577	271	generic.png
Wittekerke	white	5.0	Brouwerij Bavik	1695	81	generic.png
Saison Regal	saison, amber	5.5	Brasserie du Bocq	1324	210	generic.png
Sur-les-Bois Blonde	high fermentation	7.0	Brasserie La Botteresse de Sur-les-Bois	1474	117	generic.png
Sur-les-Bois Brune	high fermentation	9.0	Brasserie La Botteresse de Sur-les-Bois	1475	117	generic.png
Abbaye des Rocs Blonde	abbey, high fermentation	7.5	Brasserie de l'Abbaye des Rocs	22	226	generic.png
Rodenbach	old brown	5.2	Brouwerij Rodenbach	1285	17	generic.png
Ciney Bruin	high fermentation, brown	7.0	Alken-Maes (Heineken)	377	358	generic.png
Stella Artois	pils, low fermentation	5.2	AB InBev	1446	216	generic.png
Sint-Adriaansbier Bruin	abbey	\N	Brouwerij Van Steenberge	1360	241	generic.png
Cuvée Saint Gilloise	spontaneous fermentation, 100% lambic	5.0	Brasserie Cantillon	432	170	generic.png
Kriek Lindemans	lambic	3.5	Brouwerij Lindemans	858	233	generic.png
Gypsy Rose	amber	9.0	Brasserie Sainte-Hélène	694	344	generic.png
Gribousine Blonde	high fermentation	8.5	Brasserie La Binchoise (for Brasserie de Malonne)	666	204	generic.png
Smiske	blonde	7.0	Brouwerij Smisje	1381	105	generic.png
Smiske Bruin	double	7.0	Brouwerij Smisje	1382	105	generic.png
Femme Fatale	high fermentation, amber	6.5	Brouwerij De Leite	559	137	generic.png
Snaaskerstbier	christmas	8.0	Brouwerij Deca	1385	183	generic.png
Snoek Bruin	high fermentation	5.5	Brouwerij Strubbe for “Mout- en Brouwhuis De Snoek”	1387	119	generic.png
Snowbuk	saison	6.0	Brouwerij Gulden Spoor	1388	127	generic.png
Boerke Bruin	brown	6.8	Brouwerij Angerik	234	287	generic.png
Vurig Bierreke	triple	11.5	Brouwerij DijkWaert	1652	356	generic.png
La Poiluchette Blonde Cuvéé du Château	high fermentation	7.5	Brouwerij Huyghe	910	271	generic.png
Sint-Gummarus Dubbel	\N	7.0	Brouwerij Sint-Jozef	1364	296	generic.png
Delirium Christmas	christmas	10.0	Brouwerij Huyghe	467	271	generic.png
Sint-Gummarus Tripel	high fermentation, triple	8.0	Brouwerij Sint-Jozef	1365	296	generic.png
Blanche de Brabant	white	5.0	Group John Martin	204	91	generic.png
Uitzet Kriekbier	fruit beer	7.5	Brouwerij Van Steenberge for Brouwerij Paeleman	1582	140	generic.png
Lupulus Blonde	high fermentation	8.5	Brasserie les 3 Fourquets	999	176	generic.png
Equinox	brown	8.0	Brasserie de la Senne	541	351	generic.png
Egotripel	triple blonde	6.5	Brouwerij Opus Magnum	526	295	generic.png
Ramée Amber	abbey, amber	7.5	Brasserie de Brunehaut	1264	349	generic.png
Straffe Toeback	high fermentation	9.5	Scheldebrouwerij	1457	52	generic.png
Brunehaut Tradition	amber	6.5	Brasserie de Brunehaut	286	349	generic.png
Bush de Noël Premium	christmas, triple	13.0	Brouwerij Dubuisson	313	74	generic.png
Bleeken Moriaen	triple	10.0	Brouwerij Van Eecke	216	219	generic.png
Mort Subite Xtreme Manzana	fruit beer	4.2	Alken-Maes (Heineken)	1075	358	generic.png
Contreras' Especial Mars	high fermentation, spring beer	6.5	Brouwerij Contreras	384	310	generic.png
Oud Kriekenbier	fruit beer	6.0	Brouwerij Strubbe	1140	2	generic.png
Oerbier	high fermentation	7.5	De Dolle Brouwers	1126	300	generic.png
Lusja	brown	7.0	Bierfirma NoordSter by Brouwerij De Vlier	1000	243	generic.png
Papegaei	high fermentation	8.0	Brouwerij Verstraete by Brouwerij Deca	1178	187	generic.png
Winterkoninck	ruby	6.5	Brouwerij De Koninck (Duvel-Moortgat)	1684	236	generic.png
St. Feuillien Brune Réserve	abbey	7.5	Brasserie St-Feuillien	1415	319	generic.png
Rosdel	amber	5.8	Brouwerij Nieuwhuys	1295	273	generic.png
Kerasus	dark red	5.5	Brouwerij Alvinne	825	63	generic.png
Vedett Extra Blond	blonde	5.2	Brouwerij Duvel Moortgat	1612	3	generic.png
Belle-Fleur	IPA	6.0	Brouwerij De Dochter van de Korenaar	143	201	generic.png
Viven Blond	blonde	6.1	De Proefbrouwerij for Beerdevelopment Viven	1635	263	generic.png
Paljas Blond	blonde	6.0	Brouwerij Anders for Brouwerij Henricus	1161	247	generic.png
Christmas Pale Ale	high fermentation, christmas	6.3	Brouwerij De Ryck	375	110	generic.png
Darinckdelver	stout	10.5	Brouwerij Alvinne	437	63	generic.png
St. Paul Double	abbey	6.9	Brasserie du Bocq for Brouwerij Sterkens	1434	207	generic.png
St. Sebastiaan Grand Cru	abbey	7.6	Brasserie du Bocq for Brouwerij Sterkens	1438	207	generic.png
Kapittel Blond	blonde	6.5	Brouwerij Van Eecke	797	219	generic.png
Viven Imperial IPA	imperial IPA	8.0	De Proefbrouwerij for Beerdevelopment Viven	1637	263	generic.png
Embrasse	high fermentation, strong dark	9.0	Brouwerij De Dochter van de Korenaar	531	201	generic.png
Carlos	dark, high fermentation	6.5	Brouwerij Contreras	332	310	generic.png
Carnavalsbier	blonde	6.1	Brouwerij De Graal for bierfirma Vacas	333	56	generic.png
Ultradélice	brown	8.0	Brasserie d'Ecaussinnes	1589	66	generic.png
Urchon	high fermentation	7.5	Brasserie des Légendes	1592	100	generic.png
t Smisje Meso	high fermentation	2.5	Brouwerij De Regenboog	1499	190	generic.png
Hougaerdse Das	high fermentation, amber	5.1	Brouwerij De Kluis (AB InBev)	749	109	generic.png
Houten Kop	special	6.5	Brouwerij Strubbe	750	2	generic.png
Serafijn Donker	brown, high fermentation	8.0	De Proefbrouwerij for Microbrewery Achilles	1347	62	generic.png
Gageleer	organic	7.5	De Proefbrouwerij	609	133	generic.png
Lamoral Degmont	high fermentation, amber blonde	8.0	Brouwerij Van Den Bossche	941	251	generic.png
Vlaamsche Leeuw Donker	brown	7.5	Brouwerij Van Steenberge for De Brouwerij van Vlaanderen	1641	315	generic.png
Vleteren Alt	ale dark	8.0	Brouwerij Deca	1646	183	generic.png
Vleteren Bruin	darke ale	8.0	Brouwerij Deca	1647	183	generic.png
Chapeau Winter Gueuze	geuze, christmas	5.6	Brouwerij De Troch	366	303	generic.png
Angélus Brune	brown	7.0	Brasserie Brootcoorens	64	78	generic.png
Chimay Rood	trappist	7.0	Abbaye Notre-Dame de Scourmont	369	272	generic.png
Augrenette	blonde	4.5	Brouwerij Augrenoise	93	235	generic.png
IM-JIN	amber	7.5	Brasserie Grain d'Orge	756	329	generic.png
Bravoure	high fermentation, smoked beer, amber	6.5	Brouwerij De Dochter van de Korenaar	262	201	generic.png
Kriek Girardin	lambic	5.0	Brouwerij Girardin	856	175	generic.png
Manneken Pils	pils	5.2	Brouwerij Lefebvre	1017	147	generic.png
Witkap Pater Stimulo	high fermentation, blonde	6.0	Brouwerij Slaghmuylder	1692	49	generic.png
Scotch Silly	high fermentation, scotch	7.8	Brasserie de Silly	1344	87	generic.png
Seefbier	high fermentation	6.5	Antwerpse Brouw Compagnie	1345	46	generic.png
Gulden Draak	high fermentation, dark	10.5	Brouwerij Van Steenberge	692	241	generic.png
Wit Goud	high fermentation	8.0	Brouwerij Hof ten Dormaal	1688	163	generic.png
Witte Pol	white	5.6	Brouwerij Inter-Pol	1694	72	generic.png
Douglas Celtic Brown	darke scotch	7.9	Scottish & Newcastle for Group John Martin	502	36	generic.png
Zonnegemse Zot	amber	7.1	De Proefbrouwerij for Oude Brouwerij van Zonnegem vzw	1725	35	generic.png
Heksemiebier	high fermentation	6.2	Microbrewery Achilles	702	16	generic.png
Kameleon Tripel	organic, triple	8.5	Brouwerij Den Hopperd	793	268	generic.png
Préaris Blond	high fermentation	6.0	De Proefbrouwerij for Vliegende Paard Brouwers	1244	336	generic.png
Kalle	triple	8.0	Brouwerij Gulden Spoor	788	127	generic.png
Hommelbier	gold, high fermentation	7.5	Brouwerij Van Eecke	734	219	generic.png
Black Damnation V (Double Black)	russian imperial stout	26.0	De Struise Brouwers by Brouwerij Deca	196	154	generic.png
Waaslander	white	5.0	Brouwerij Boelens	1657	193	generic.png
Himelein	high fermentation	6.0	Brouwerij Vissenaken	713	51	generic.png
Hoegaarden	high fermentation, white	4.9	Brouwerij De Kluis (AB InBev)	714	109	generic.png
Beernems Berenbier	blonde	7.5	Brouwerij Van Steenberge for BIVO Drinks	125	225	generic.png
La Binchoise Blonde	high fermentation, blonde	6.2	Brasserie La Binchoise	870	120	generic.png
Bon Secours Blonde	high fermentation, blonde	8.0	Brouwerij Caulier	244	238	generic.png
Belle Cies	blonde	10.0	Huisbrouwerij Den Tseut	142	330	generic.png
Vicaris Generaal	high fermentation	8.8	Brouwerij Dilewyns	1617	31	generic.png
Westvleteren Acht	trappist	8.0	Sint-Sixtusabdij van Westvleteren	1671	221	generic.png
Bierpruver Tripel	triple	9.0	Huisbrouwerij de 3 vaten	179	40	generic.png
Mystic Limoen	high fermentation, fruit beer	3.5	Brouwerij Haacht	1083	47	generic.png
Joseph	high fermentation, blonde, spelt	5.4	Brasserie de Silenrieux	776	44	generic.png
Aardmonnik	old brown	8.0	De Struise Brouwers	6	172	generic.png
Geuze Mariage Parfait	geuze	8.0	Brouwerij Boon	627	348	generic.png
Rosé de Gambrinus	fruit beer, lambic	5.5	Brasserie Cantillon	1296	170	generic.png
Bink Blond	belgian pale ale	5.5	Brouwerij Kerkom	182	200	generic.png
Blanchette de Gaume	white	5.0	Brasserie Millevertus	212	340	generic.png
St. Feuillien Triple	abbey	8.5	Brasserie St-Feuillien	1417	319	generic.png
Felix Kriek Oud Bruin	kriek	6.0	Brouwerij Verhaeghe for Brouwerij Clarysse (bierfirma)	555	86	generic.png
Oeral	india pale ale	6.0	De Dolle Brouwers	1125	300	generic.png
Martin’s Blond	high fermentation	6.0	Group John Martin	1030	91	generic.png
Oude Kriek De Cam	lambic, kriek	6.5	Geuzestekerij De Cam	1151	11	generic.png
Timmermans Framboise Lambic	fruit beer	4.0	Brouwerij Timmermans	1517	350	generic.png
Li Berwette	amber, high fermentation	8.0	Brasserie Saint-Monon for Confrérie du Busson	964	214	generic.png
Gordon Finest Zero	non alcoholic	0.0	Group John Martin	648	91	generic.png
Totentrekker	amber	5.5	De Proefbrouwerij for Buitenlust	1540	213	generic.png
Corsendonk Agnus	blonde, triple	7.5	Brouwerij du Bocq for Corsendonk nv	388	252	generic.png
Corsendonk Blond	high fermentation	6.5	Brouwerij du Bocq for Corsendonk nv	389	252	generic.png
Bink Bloesem	blonde	7.1	Brouwerij Kerkom	184	200	generic.png
IV Saison	saison	6.5	Brasserie de Jandrain-Jandrenouille	3	13	generic.png
Bioloo Blond	organic	6.4	Brouwerij Belgoobeer by Brasserie La Binchoise	187	307	generic.png
Hofdraak	brown	6.5	t Hofbrouwerijke	727	96	generic.png
Maltosa	brown, table beer	1.2	Brouwerij Haacht	1014	47	generic.png
Maneblusser	blonde	6.0	Brouwerij Het Anker	1016	161	generic.png
Mano Negra	imperial stout	10.0	Brouwerij Alvinne	1018	63	generic.png
Bock Pils	pils	5.2	Brouwerij Palm	228	302	generic.png
Vlaamsch Wit	white	4.5	Brouwerij Van Honsebrouck	1639	106	generic.png
Blanche des Honnelles	white	6.0	Brasserie de l'Abbaye des Rocs	209	226	generic.png
Blanche des Neiges	white	5.0	Brouwerij Huyghe	210	271	generic.png
Brut	blonde aperitif	8.0	Brouwerij De Vlier	298	188	generic.png
Bruynen Moriaen	dark	9.0	Brouwerij Van Eecke	299	219	generic.png
Saison de Mai	saison	8.3	Brasserie Saint-Monon	1316	42	generic.png
Tatsevoet	belgian special	6.0	Brouwerij Het Alternatief by Brouwerij Alvinne	1507	173	generic.png
Brunette	high fermentation	9.0	Brouwerij Van Steenberge for Hopduvel Gent	291	337	generic.png
Blinde Mol	blonde	6.5	Brouwerij Maenhout by Brouwerij Gulden Spoor	217	104	generic.png
Sas Pils	pils	5.0	Brouwerij Het Sas	1332	257	generic.png
Biolégère	organic	3.5	Brasserie Dupont	185	130	generic.png
Echt Kriekenbier	fruit beer	6.8	Brouwerij Verhaeghe	522	64	generic.png
t Smisje Calva Reserva	high fermentation	12.0	Brouwerij De Regenboog	1488	190	generic.png
t Gaverhopke Bruintje	high fermentation	6.8	Brouwerij 't Gaverhopke	1479	79	generic.png
Alvinne Tripel	triple	8.7	Brouwerij Alvinne	59	63	generic.png
Black	darke ale	6.3	Brasserie de Bellevaux	197	159	generic.png
Cnudde Oudenaards bruin (Kerkhofbier)	flemish old brown	5.0	Brouwerij Cnudde	380	239	generic.png
Fantôme Chocolat	high fermentation	8.0	Brasserie Fantôme	548	206	generic.png
Fantôme Spéciale Noel	high fermentation	8.0	Brasserie Fantôme	549	206	generic.png
Kessel Blond	high fermentation	7.5	Brouwerij De Vlier	834	188	generic.png
Keyte	blonde, high fermentation	7.5	Brouwerij Strubbe	835	2	generic.png
Lambinus	high fermentation, honey	8.0	De Proefbrouwerij for bierfirma Lesage	939	22	generic.png
t Smisje BBBourgondier	high fermentation	12.0	Brouwerij De Regenboog	1486	190	generic.png
t Smisje Blond	high fermentation	6.0	Brouwerij De Regenboog	1487	190	generic.png
t Smisje Catherine The Great Imperial Stout	stout	10.0	Brouwerij De Regenboog	1489	190	generic.png
t Smisje Grande Reserva	high fermentation	11.0	Brouwerij De Regenboog	1493	190	generic.png
Quintine Ambrée	high fermentation	8.5	Brasserie Ellezelloise	1259	12	generic.png
Kasteelbier Ooidonk	label beer	11.0	Brouwerij Van Honsebrouck	812	106	generic.png
s Lands Souvenirs Du Terroir	brown	11.0	Brouwerij De Landtsheer	1302	205	generic.png
Saint-Benoît Blonde	blonde, high fermentation	6.3	Brasserie du Bocq	1304	210	generic.png
Saint-Benoît Brune	dark, high fermentation	6.5	Brasserie du Bocq	1305	210	generic.png
Leffe Lente	abbey	6.5	AB InBev	948	216	generic.png
Saint-Monon Ambrée	amber	6.5	Brasserie Saint-Monon	1307	42	generic.png
Grelotte	christmas	9.0	Brasserie Grain d'Orge	665	329	generic.png
Tongerlo Prior	high fermentation, abbey	8.0	Brouwerij Haacht	1535	47	generic.png
Toria Blond	high fermentation	6.5	Brouwerij De Graal for De Hoevebrouwers	1538	116	generic.png
Verhaeghe Pils	pils	5.1	Brouwerij Verhaeghe	1615	64	generic.png
Special De Ryck	high fermentation, amber	5.5	Brouwerij De Ryck	1392	110	generic.png
West Pils	pils	5.0	Brouwerij Het Sas	1664	257	generic.png
De Graal Dubbel	dark	6.5	Brouwerij De Graal	444	34	generic.png
Lily Blue	high fermentation	7.5	Brasserie Sainte-Hélène	974	344	generic.png
Limburgse Witte	high fermentation	5.0	Brouwerij Sint-Jozef	975	296	generic.png
Limerick	blonde	8.0	De Proefbrouwerij for bierfirma Bas-bieren	976	280	generic.png
Lindemans Apple	lambic	3.5	Brouwerij Lindemans	977	233	generic.png
Paix-Dieu	abbey	10.0	Brasserie Caulier	1160	212	generic.png
Brune	brown	6.8	Brasserie de Bellevaux	284	159	generic.png
Brunehaut Terroir	white	5.0	Brasserie de Brunehaut	285	349	generic.png
Belgica IPA	IPA	7.9	Brouwerij Strubbe	134	2	generic.png
Fasso Blond	blonde	6.5	Brouwerij Vissenaken	554	51	generic.png
Black Damnation I	russian imperial stout	13.0	De Struise Brouwers by Brouwerij Deca	192	154	generic.png
Liefmans Goudenband	brown	8.0	Brouwerij Liefmans	970	20	generic.png
Liefmans Oud Bruin	old brown	5.0	Brouwerij Liefmans	971	20	generic.png
Livinus Blonde	triple	10.0	Brouwerij Van Eecke	985	219	generic.png
Bos Bier	fruit beer	9.0	Brouwerij DijkWaert	253	356	generic.png
La Botteresse de Noël	high fermentation, christmas	10.5	Brasserie la Botteresse de Sur-les-bois	879	37	generic.png
La Botteresse Blonde	high fermentation	7.5	Brasserie la Botteresse de Sur-les-bois	880	37	generic.png
Nen Bangelijke	strong blonde	8.0	Brouwerij 't Pakhuis	1098	99	generic.png
Nen Biskop	blonde	6.4	Brouwerij Danny for Stichting Marcel De Bisschop	1099	281	generic.png
La Moraipire	triple	8.5	Brasserie Millevertus	905	340	generic.png
La Namuroise	high fermentation	7.0	Les Artisans Brasseurs	906	111	generic.png
Qantelaar	quadruple	8.0	Brouwerij Maenhout for bierfirma Proefbrouwerij d'oude maalderij	1251	246	generic.png
Pikkeling	amber, high fermentation	6.2	Brouwerij Slaghmuylder commissioned by VVV De Faluintjesstreek	1216	323	generic.png
Plezir Blond	pils	5.5	Brouwerij Sint-Jozef commissioned by Zirvest Cvba	1226	262	generic.png
Plezir Brown	high fermentation	7.1	Brouwerij Sint-Jozef commissioned by Zirvest Cvba	1227	262	generic.png
Plezir D Lux Rosé	rosé	5.2	Brouwerij Sint-Jozef commissioned by Zirvest Cvba	1229	262	generic.png
Hapkin	high fermentation, blonde	8.5	Alken-Maes (Heineken)	699	358	generic.png
Hop Harvest	strong dark	8.0	Brouwerij De Ranke	735	313	generic.png
Hop Ruiter	triple	8.0	Scheldebrouwerij	736	52	generic.png
Hopus	high fermentation, gold blonde	8.3	Brouwerij Lefebvre	741	147	generic.png
Piet-Agoras	high fermentation	9.0	Brouwerij Het Alternatief by Brouwerij De Graal	1215	299	generic.png
Timmermans Warme Kriek	kriek	4.0	Brouwerij Timmermans	1526	350	generic.png
Holger	pils	5.0	Brouwerij Martens	732	284	generic.png
PMPRNL	triple, organic	8.0	Brouwerij Jessenhofke	1232	316	generic.png
Brasserie des Rocs Triple Impériale	\N	10.0	Brasserie de l'Abbaye des Rocs	260	226	generic.png
Reinaert Grand Cru	amber	9.5	De Proefbrouwerij	1272	133	generic.png
Reinaert Tripel	blonde	9.0	De Proefbrouwerij	1273	133	generic.png
Augrenoise Blonde de Noël	cloudy blonde, christmas	10.0	Brouwerij Augrenoise	95	235	generic.png
Augustijn Blond	abbey	7.5	Brouwerij Van Steenberge	96	241	generic.png
Augustijn Donker	abbey	7.0	Brouwerij Van Steenberge	97	241	generic.png
Augustijn Grand Cru	abbey, triple	9.0	Brouwerij Van Steenberge	98	241	generic.png
Authentic 621	brown	7.5	Authentique Brasserie	99	38	generic.png
Authentic Ambrée	amber	5.0	Authentique Brasserie	100	38	generic.png
Authentic Blonde	blonde	6.5	Authentique Brasserie	101	38	generic.png
Authentic Blonde de Noël	christmas	9.0	Authentique Brasserie	102	38	generic.png
Authentic Triple	triple	9.5	Authentique Brasserie	103	38	generic.png
L'Autruche Biere des Gilles	blonde cloudy	7.0	Brasserie de Silenrieux	104	44	generic.png
Averbode	abbey	7.5	Brouwerij Huyghe	105	271	generic.png
Bacchus	old brown	4.5	Brouwerij Van Honsebrouck	106	106	generic.png
Bacchus Frambozenbier	fruit beer	5.0	Brouwerij Van Honsebrouck	107	106	generic.png
Bacchus Kriekenbier	fruit beer	5.8	Brouwerij Van Honsebrouck	108	106	generic.png
Balthazar	winter	8.9	Brouwerij Alvinne	109	63	generic.png
Barbãr	blonde, honey	8.0	Brouwerij Lefebvre	110	147	generic.png
Barbãr Winter Bok	bock, honey	8.0	Brouwerij Lefebvre	111	147	generic.png
Barbe d'Or (Goudbaard)	blonde	7.5	Brouwerij Verhaeghe	112	64	generic.png
Barbe Noire (Zwartbaard)	stout	9.0	Brouwerij Verhaeghe	113	64	generic.png
Barbe Rouge (Roodbaard)	amber	8.0	Brouwerij Verhaeghe	114	64	generic.png
Bas	gold blonde	6.5	De Proefbrouwerij for bierfirma Bas-bieren	115	280	generic.png
Bastogne Pale Ale	belgian IPA	6.5	Brasserie de Bastogne	116	222	generic.png
Pater Lieven Bruin	abbey	6.5	Brouwerij Van Den Bossche	1183	251	generic.png
Viven Ale	belgian special	5.0	De Proefbrouwerij for Beerdevelopment Viven	1634	263	generic.png
Gordon 0,00	non alcoholic	0.0	Group John Martin	640	91	generic.png
Cuvée Saint-Antoine Brune	abbey, scotch	9.0	Brasserie du Flo	431	160	generic.png
Cuvée Soeur'Ise	kriekenbier	8.5	Brouwerij De Leite	433	137	generic.png
Toria Tripel	high fermentation, triple	8.7	Brouwerij De Graal for De Hoevebrouwers	1539	116	generic.png
Loterbol Blond	high fermentation	8.0	Brouwerij Loterbol	989	102	generic.png
Chapeau Framboise	fruit beer, lambic	3.5	Brouwerij De Troch	360	303	generic.png
Palm Hopper	high fermentation	6.0	Brouwerij Palm	1167	302	generic.png
Leireken Boekweit Bruin	brown, high fermentation, buckwheat, organic	6.0	Brouwerij Strubbe for Guldenboot nv	956	301	generic.png
Zwalmse Tripel	triple	8.0	De Proefbrouwerij for de gemeente Zwalm	1730	153	generic.png
Palm Dobbel	christmas	6.0	Brouwerij Palm	1165	302	generic.png
Zotte Bloare	brown	5.5	Brouwerij 't Paenhuys	1726	277	generic.png
Zennenat	high fermentation	6.0	Brouwerij Den Herberg	1711	256	generic.png
Kasteel Donker	dark	11.0	Brouwerij Van Honsebrouck	806	106	generic.png
Cuvée de Briqville	local	7.0	Brouwerij Van Steenberge	406	241	generic.png
Cuvée van de Keizer Rood	blonde special	10.0	Brouwerij Het Anker	435	161	generic.png
Ename Dubbel	abbey, high fermentation	6.5	Brouwerij Roman	536	291	generic.png
Li Berwette di Noyè	dark christmas	8.5	Brasserie Saint-Monon for Confrérie du Busson	965	214	generic.png
St. Bernardus Abt 12	high fermentation	10.5	Brouwerij St. Bernardus	1401	134	generic.png
Jan van Gent	blonde	5.5	Brouwerij Liefmans	766	20	generic.png
Gouden Carolus Classic	dark special	8.5	Brouwerij Het Anker	655	161	generic.png
Myn's Pils	pils	5.0	Brasserie de Silly	1081	87	generic.png
Belle-Vue Extra Kriek	kriek	4.3	Brouwerij Belle-Vue (AB InBev)	148	14	generic.png
Kasteel Hoppy	blonde	6.5	Brouwerij Van Honsebrouck	807	106	generic.png
Malheur Dark Brut	dark brown	12.0	Brouwerij De Landtsheer	1012	205	generic.png
Liefmans Fruitesse Rood	fruit beer	4.2	Brouwerij Liefmans	969	20	generic.png
La Botteresse aux pommes	high fermentation, fruit beer	5.4	Brasserie la Botteresse de Sur-les-bois	884	37	generic.png
Brugse Zot Blond	gold blonde	6.0	Brouwerij De Halve Maan	281	84	generic.png
Witkap Pater Dubbel	high fermentation, brown	7.0	Brouwerij Slaghmuylder	1690	49	generic.png
Wechelse Tripel	label beer	7.5	Brouwerij St. Bernardus for café Den Toerist	1663	189	generic.png
Den Alternatief	lager	5.0	Brouwerij Het Alternatief by Brouwerij Alvinne	470	173	generic.png
Slaapmutske Hop Collection ft. Kent Goldings	high fermentation, single hop	10.0	De Proefbrouwerij for Brouwerij Slaapmutske	1370	9	generic.png
Paternoster Tripel	triple	8.0	Brouwerij Anders commissioned by Paters en Prinsen	1189	339	generic.png
Sint Canarus Tripel	triple	7.5	Huisbrouwerij Sint Canarus by De Proefbrouwerij	1362	240	generic.png
Willy Kriegelbier	dark blonde	7.0	Huisbrouwerij Sint Canarus	1682	209	generic.png
Gold Pils	pils	5.0	Brouwerij Bavik	639	81	generic.png
Diabolici	triple	8.0	Group John Martin	486	91	generic.png
Dief Gold	blonde, high fermentation	8.0	Brouwerij Engilsen	487	15	generic.png
Oude Geuze Boon	geuze	6.5	Brouwerij Boon	1144	348	generic.png
Bierbuik	dark	8.0	De Verhuisbrouwerij	167	143	generic.png
Duivels Bier	dark	8.0	Brouwerij Boon	517	348	generic.png
Wolf 8	dark brown	8.5	Brouwerij Lupus	1700	184	generic.png
Edel-Brau	low alcohol	0.3	Brouwerij Strubbe	524	2	generic.png
St. Firminus Bruin	abbey	\N	Brasserie Du Bocq	1420	70	generic.png
Contrapils	pils	5.0	Brouwerij Contreras	383	310	generic.png
La Corne du Bois des Pendus Blonde	high fermentation, blonde	5.9	Brasserie d'Ebly	890	276	generic.png
Père Abbé	triple	7.3	Brasserie Du Bocq	1197	70	generic.png
Blondelle	blonde	7.0	t Hofbrouwerijke	224	96	generic.png
Ne Snoeper	triple	10.0	t Hofbrouwerijke	1094	96	generic.png
La Poirette de Fontaine	high fermentation, fruit beer	8.5	Brasserie la Botteresse de Sur-les-bois	912	37	generic.png
Kerelsbier Donker	label beer	6.4	Brouwerij Het Sas	826	257	generic.png
Harelbekenaar van de abdijhoeve	red brown, label beer	6.0	Brouwerij Van Eecke	700	219	generic.png
Arend Blond	blonde	6.5	Brouwerij De Ryck	79	110	generic.png
Arend Dubbel	dark brown	6.5	Brouwerij De Ryck	80	110	generic.png
Slag Lager	pils	5.0	Brouwerij Slaghmuylder	1375	49	generic.png
Primus	pils	5.2	Brouwerij Haacht	1248	47	generic.png
La Sambresse Blonde	high fermentation	8.0	Brouwerij Brootcoorens	924	180	generic.png
Cezarken	lager	5.5	Brouwerij Strubbe for Brouwerij Crombé	352	292	generic.png
La Pils des 3 Canaux	pils	4.5	Authentique Brasserie	909	38	generic.png
Delirium Nocturnum	dark, high fermentation	9.0	Brouwerij Huyghe	465	271	generic.png
Kapittel Pater	brown	6.0	Brouwerij Van Eecke	799	219	generic.png
Super NoAH	IPA	4.9	Brouwers Verzet in Brouwerij De Ranke	1471	223	generic.png
Jupiler Tauro	low fermentation	8.3	Brasserie Piedboeuf (AB InBev)	787	1	generic.png
Melchior Oak Aged	oak aged	11.0	Brouwerij Alvinne	1036	63	generic.png
Spelziale	ale	4.5	Brasserie Millevertus	1398	340	generic.png
Faro Boon	faro	4.0	Brouwerij Boon	550	348	generic.png
Safir	pils	5.0	AB InBev	1303	216	generic.png
Hoppa Hontas	india pale ale	6.5	Brouwerij Maenhout	738	73	generic.png
Super des Fagnes Griottes	high fermentation, kriek	4.8	Brasserie des Fagnes	1470	234	generic.png
Leffe Royale	blonde, abbey	7.5	AB InBev	950	216	generic.png
Pater Lieven Wit	abbey	8.0	Brouwerij Van Den Bossche	1185	251	generic.png
Sinpalsken Blond	high fermentation	8.5	Brouwerij De Cock by Brouwerij Van Steenberge	1357	260	generic.png
Berentemmer	brown	7.0	Brouwerij Maenhout	157	73	generic.png
Urthel Saisonnière	blonde special	6.0	Brouwerij De Koningshoeven commissioned by Brouwerij Urthel	1596	275	generic.png
Brice	blonde	7.5	Brasserie Grain d'Orge	264	329	generic.png
Belle-Vue Extra Framboise	fruit beer	2.9	Brouwerij Belle-Vue (AB InBev)	145	14	generic.png
Zwijntje	blonde (label beer)	8.0	Brouwerij Bios	1736	244	generic.png
Kerstvuur	christmas	8.0	De Proefbrouwerij for Brouwerij Pirlot	832	167	generic.png
Huardis	white	5.2	Brouwerij Nieuwhuys	751	273	generic.png
Brunehaut Bio Amber	organic	6.5	Brasserie de Brunehaut	288	349	generic.png
Brunehaut Bio Blanche	organic, white	5.0	Brasserie de Brunehaut	289	349	generic.png
Brunehaut Bio Blonde	organic	6.5	Brasserie de Brunehaut	290	349	generic.png
Fruitig Bierreke	fruit beer	8.2	Brouwerij DijkWaert	608	356	generic.png
Caulier Special Extra	high fermentation, blonde	4.3	De Proefbrouwerij for Caulier Developpement	341	259	generic.png
Ceci n'est pas un Barley Wine	barley wine	10.0	Brasserie Sainte-Hélène	342	344	generic.png
Bolivar Bruin	brown	7.5	Brouwerij Huyghe for Oxfam world shops	239	152	generic.png
Bolleville Calvados Barrel OA	oak aged	10.0	Brouwerij Alvinne	240	63	generic.png
Alfoncine	ruby	8.5	Brouwerij Strubbe for Biofresh Gavere	51	177	generic.png
Alpaïde	dark triple	10.0	Brouwerij Nieuwhuys	53	273	generic.png
Alpaïde Cuvée van de generaal	blonde, triple	8.5	Brouwerij Nieuwhuys	54	273	generic.png
Petrus Oud Bruin	old brown	5.5	Brouwerij Bavik	1204	81	generic.png
Kloefkapper	wheat	5.7	Brouwerij 't Paenhuys	840	277	generic.png
Pilaarbijter Bruin	high fermentation	6.5	Brouwerij Bavik	1219	81	generic.png
Gulden Delle	mengbier	8.5	Brouwerij De Vlier	691	188	generic.png
Troubadour Blond	blonde	6.5	De Proefbrouwerij for Brouwerij The Musketeers	1565	75	generic.png
St. Paul Speciale	abbey	5.5	Brasserie du Bocq for Brouwerij Sterkens	1435	207	generic.png
t Zwarte Gat Bier	dark blonde	6.0	Brouwerij De Regenboog	1505	190	generic.png
Bellegems Witbier	white	5.0	Brouwerij Bockor	155	24	generic.png
Abdij van Roosenberg Tripel	triple	9.0	Brouwerij Van Steenberge	30	241	generic.png
Valeir Blond	high fermentation, blonde	6.5	Brouwerij Contreras	1603	310	generic.png
Grottenbier	high fermentation	6.5	Brouwerij St-Bernardus	684	203	generic.png
Nelle van Cruysem	high fermentation, amber	6.0	Huisbrouwerij Sint Canarus	1095	209	generic.png
La Saison de Pipaix	\N	6.0	Brasserie à Vapeur	921	132	generic.png
Floris Pear	fruit beer	3.5	Brouwerij Huyghe	585	271	generic.png
Alpha	amber	6.0	Brouwerij Anders for Brussels Beer Project	55	297	generic.png
Stoeren Bonk Blond	blonde	8.0	Brouwerij Van Steenberge	1451	241	generic.png
Piedbœuf Triple	table beer	3.8	Brasserie Piedboeuf (AB InBev)	1213	1	generic.png
Hellekapelle	blonde	5.0	Brouwerij De Bie	703	220	generic.png
Quadrigenti	blonde	5.6	t Hofbrouwerijke for bierfirma Montaignu	1252	32	generic.png
De Vlier X-Mas	christmas	8.5	Brouwerij De Vlier	460	188	generic.png
Quest	blonde	9.0	Brouwerij De Graal	1253	34	generic.png
Le Pavé de l'Ours	high fermentation, belgian special	7.5	Brasserie de Silenrieux	942	44	generic.png
Kapittel Prior	brown	9.0	Brouwerij Van Eecke	800	219	generic.png
Queueu de Charrue Blonde	blonde, high fermentation	6.6	Brouwerij Verhaeghe Vichte commissioned by Brouwerij Vanuxeem	1255	254	generic.png
Mort Subite Oude Kriek	oude kriek	6.5	Alken-Maes (Heineken)	1071	358	generic.png
Kapittel Tripel Abt	triple	10.0	Brouwerij Van Eecke	801	219	generic.png
Sint-Idesbald Réserve Ten Duinen Rousse	abbey	7.0	Brouwerij Huyghe	1410	271	generic.png
Sint-Idesbald Réserve Ten Duinen Tripel	abbey, triple	9.0	Brouwerij Huyghe	1411	271	generic.png
Gauloise Red	fruit beer	8.2	Brasserie Du Bocq	616	70	generic.png
Gertrude Triple	triple	7.5	De Proefbrouwerij	621	133	generic.png
Geuze Cantillon 100% Lambic Bio	geuze	5.0	Brasserie Cantillon	622	170	generic.png
Gueuze Girardin	geuze	5.0	Brouwerij Girardin	623	175	generic.png
Gueuze Girardin gefilterd	geuze	5.0	Brouwerij Girardin	624	175	generic.png
Geuze Jacobins	geuze	5.5	Brouwerij Bockor	625	24	generic.png
Geuze Lindemans	geuze	5.5	Brouwerij Lindemans	626	233	generic.png
Abbaye de Oudkerken	abbey	6.2	Brouwerij Lefebvre	21	147	generic.png
Shark Pants	Double IPA	9.0	De Struise Brouwers by Brouwerij Deca	1354	154	generic.png
t Smisje Cuvee 2005	high fermentation	10.0	Brouwerij De Regenboog	1490	190	generic.png
Unkerzak	\N	\N	De Proefbrouwerij	1591	133	generic.png
Steenbrugge Tripel	abbey	8.7	Brouwerij Palm (previously in Brouwerij De Gouden Boom)	1442	279	generic.png
Affligem Blond	abbey, blonde	6.8	Affligem Brewery (Heineken)	42	19	generic.png
Achel 5 Bruin	trappist, brown	5.0	Achelse Kluis	32	168	generic.png
Achel 8 Blond	trappist, blonde	8.0	Achelse Kluis	33	168	generic.png
Achel 8 Bruin	trappist, brown	8.0	Achelse Kluis	34	168	generic.png
Achel Blond Extra	trappist, blonde	9.5	Achelse Kluis	35	168	generic.png
Achel Bruin Extra	trappist, brown	9.5	Achelse Kluis	36	168	generic.png
Adelardus	abbey	7.0	Brouwerij Sint-Jozef for Brouwerij Kerkom	37	335	generic.png
Adelardus Tripel	abbey, triple	9.0	Brouwerij Sint-Jozef for Brouwerij Kerkom	38	335	generic.png
Adriaen Brouwer	high fermentation, brown	5.0	Brouwerij Roman	40	291	generic.png
Adriaen Brouwer Dark Gold	high fermentation, brown	8.5	Brouwerij Roman	41	291	generic.png
Antiek Bruin	brown	8.0	Brouwerij Deca	71	183	generic.png
Uilenspiegelbier	double	7.0	Brouwerij Van Steenberge	1580	241	generic.png
Mort Subite Cassis	fruit beer	4.5	Alken-Maes (Heineken)	1063	358	generic.png
Mort Subite Kriek	fruit beer	4.5	Alken-Maes (Heineken)	1067	358	generic.png
Moinette Blonde	blonde	8.0	Brasserie Dupont	1045	130	generic.png
Mongozo Palmnut	fruit beer	7.0	Brouwerij Huyghe	1052	271	generic.png
Mongozo Premium Pilsener	pils, organic	5.0	Brouwerij Huyghe	1053	271	generic.png
Mongozo Quinua	fruit beer	5.9	Brouwerij Huyghe	1054	271	generic.png
Monk's Stout	stout	5.2	Brasserie Dupont	1055	130	generic.png
Mont-Saint-Aubert	triple	8.0	Brasserie de Brunehaut	1056	349	generic.png
Montagnarde	amber	9.0	Brasserie de l'Abbaye des Rocs	1057	226	generic.png
Montagnarde Altitude 6	blonde	6.0	Brasserie de l'Abbaye des Rocs	1058	226	generic.png
Morpheus Dark	high fermentation	10.2	Brouwerij Alvinne	1059	63	generic.png
Morpheus Tripel	high fermentation, triple	8.7	Brouwerij Alvinne	1061	63	generic.png
Morpheus Wild	flemish old brown	5.9	Brouwerij Alvinne	1062	63	generic.png
Cuvée des Trolls Triple	blonde, triple	7.0	Brouwerij Dubuisson	411	74	generic.png
Cuvée Delphine	belgian royal stout	13.0	De Struise Brouwers by Brouwerij Deca	412	154	generic.png
Cuvée d'Erpigny	quadruple, oak aged	15.0	Brouwerij Alvinne	413	63	generic.png
Cuvée du Château	strong dark	11.0	Brouwerij Van Honsebrouck	414	106	generic.png
Cuvée du Flo Ambrée	high fermentation, amber	8.5	Brasserie du Flo	415	160	generic.png
Cuvée du Flo Blonde	high fermentation, blonde	8.0	Brasserie du Flo	416	160	generic.png
Cuvée du Flo Brune	high fermentation, brown	9.0	Brasserie du Flo	417	160	generic.png
Cuvée du Flo Fruit	high fermentation, fruit beer	6.5	Brasserie du Flo	418	160	generic.png
Cuvée du Flo Miel	high fermentation, honey	8.5	Brasserie du Flo	419	160	generic.png
Cuvée du Tchesté	high fermentation	7.5	Brasserie Les 3 Fourquets commissioned by Confrérie du Tchesté de Neufchâteau	420	43	generic.png
X-Mas Beer	high fermentation, blonde	8.5	Brouwerij Contreras	1704	310	generic.png
Watneys Scotch Ale	scotch	8.0	Alken-Maes (Heineken)	1660	358	generic.png
Ambetanterik	stout	8.7	Brouwerij Het Alternatief by Brouwerij Alvinne	61	173	generic.png
Ambiorix	red brown	8.0	Brouwerij Slaghmuylder	62	49	generic.png
Angélus Blonde	blonde	7.0	Brasserie Brootcoorens	63	78	generic.png
Wittekerke Passion	white, fruit beer	5.8	Brouwerij Bavik	1696	81	generic.png
Wittekerke Rosé	white, fruit beer	4.3	Brouwerij Bavik	1697	81	generic.png
Waterloo Double 8 Dark	brown	8.5	Brasserie Du Bocq	1658	70	generic.png
Waterloo Tripel 7 Blond	blonde	7.5	Brasserie Du Bocq	1659	70	generic.png
Strandgaper	gold	6.2	De Scheldebrouwerij	1459	318	generic.png
Troubadour Magma	triple india pale ale	9.0	De Proefbrouwerij for Brouwerij The Musketeers	1567	75	generic.png
Troubadour Obscura	stout	8.2	De Proefbrouwerij for Brouwerij The Musketeers	1568	75	generic.png
Troubadour Spéciale	belgian special	5.7	De Proefbrouwerij for Brouwerij The Musketeers	1569	75	generic.png
TRPL	high fermentation, organic, triple	8.0	De Proefbrouwerij for Brouwerij Jessenhofke	1571	148	generic.png
Tsjeeses	high fermentation, blonde	10.0	De Struise Brouwers	1572	172	generic.png
Tsjeeses Reserva	high fermentation, gold	10.0	De Struise Brouwers	1573	172	generic.png
Tumulus 800	wheat	6.0	De Proefbrouwerij commissioned by De Kale Ridders	1574	151	generic.png
Tumulus Aura	wheat	5.5	De Proefbrouwerij commissioned by De Kale Ridders	1575	151	generic.png
Tuverbol	mixed fermentation	11.0	Brouwerij Loterbol	1579	102	generic.png
Basilius	amber	7.0	De Proefbrouwerij for ’t Brugs Bierinstituut	117	178	generic.png
Bavaro	blonde, low fermentation	3.6	Brouwerij Haacht	118	47	generic.png
Bavik Blond	table beer	1.5	Brouwerij Bavik	119	81	generic.png
Belgoo Bio Amber	organic	7.8	Brouwerij Belgoobeer by Brasserie La Binchoise	136	307	generic.png
\.


--
-- Name: beer_id_seq; Type: SEQUENCE SET; Schema: public;
--

SELECT pg_catalog.setval('beer_id_seq', 1736, true);


--
-- Data for Name: brewery; Type: TABLE DATA; Schema: public;
--

COPY brewery (id, name) FROM stdin;
1	Brasserie Piedboeuf (AB InBev)
2	Brouwerij Strubbe
3	Brouwerij Duvel Moortgat
4	Brouwerij Anders for GIBRIT
5	Brouwerij Strubbe for Bierfirma Den Haene
6	Brasserie St. Jean
7	Brouwerij Anders for Nonneke
8	Brouwerij du Bocq
9	De Proefbrouwerij for Brouwerij Slaapmutske
10	Microbrewery Den Triest
11	Geuzestekerij De Cam
12	Brasserie Ellezelloise
13	Brasserie de Jandrain-Jandrenouille
14	Brouwerij Belle-Vue (AB InBev)
15	Brouwerij Engilsen
16	Microbrewery Achilles
17	Brouwerij Rodenbach
18	Brasserie Dupont for Kunstencentrum Vooruit
19	Affligem Brewery (Heineken)
20	Brouwerij Liefmans
21	Brouwerij Walrave
22	De Proefbrouwerij for bierfirma Lesage
23	Brouwerij Palm for Group John Martin
24	Brouwerij Bockor
25	Brouwerij De Graal for Hopduvel Gent
26	Stadsbrouwerij Gruut
27	for bierfirma Vacas
28	De Proefbrouwerij for Het Hinkelspel
29	Brouwerij De Graal for Brouwerij De Kassei
30	Brouwerij Slagmuylder
31	Brouwerij Dilewyns
32	t Hofbrouwerijke for bierfirma Montaignu
33	De Proefbrouwerij for bierfirma BVG
34	Brouwerij De Graal
35	De Proefbrouwerij for Oude Brouwerij van Zonnegem vzw
36	Scottish & Newcastle for Group John Martin
37	Brasserie la Botteresse de Sur-les-bois
38	Authentique Brasserie
39	Brouwerij Van Steenberge for Paeleman
40	Huisbrouwerij de 3 vaten
41	Brouwerij Jessenhofke by De Proefbrouwerij
42	Brasserie Saint-Monon
43	Brasserie Les 3 Fourquets commissioned by Confrérie du Tchesté de Neufchâteau
44	Brasserie de Silenrieux
45	De Proefbrouwerij for The Musketeers
46	Antwerpse Brouw Compagnie
47	Brouwerij Haacht
48	Hanssens Artisanaal
49	Brouwerij Slaghmuylder
50	Brouwerij De Graal for Bryggja
51	Brouwerij Vissenaken
52	Scheldebrouwerij
53	De proefbrouwerij for Verstraeten H&S
54	Brouwerij De Smedt commissioned by bierfirma Fisser
55	Brouwerij De Vlier for Promaco Vision
56	Brouwerij De Graal for bierfirma Vacas
57	Gueuzerie Tilquin
58	Brouwersverzet by Brouwerij Gulden Spoor
59	Brouwerij Bavik for “Mout- en Brouwhuis De Snoek”
60	De Proefbrouwerij commissioned by Brouwerij Pirlot
61	Alken-Maes (Heineken) (previously in Brouwerij De Gouden Boom)
62	De Proefbrouwerij for Microbrewery Achilles
63	Brouwerij Alvinne
64	Brouwerij Verhaeghe
65	De Proefbrouwerij for bierfirma Slaapmutske
66	Brasserie d'Ecaussinnes
67	Brouwerij Kerkom by Brouwerij Sint-Jozef
68	Scheldebrouwerij for Hobbybrouwerij Het Nest
69	Brouwerij Wilderen
70	Brasserie Du Bocq
71	De Lion à Plume by Brasserie Sainte-Hélène
72	Brouwerij Inter-Pol
73	Brouwerij Maenhout
74	Brouwerij Dubuisson
75	De Proefbrouwerij for Brouwerij The Musketeers
76	Brouwerij Strubbe for bierfirma Den Haene
77	De Proefbrouwerij for Het Waterhuis aan de bierkant
78	Brasserie Brootcoorens
79	Brouwerij 't Gaverhopke
80	Brouwerij Anders for Brouwerij Bueckenholt
81	Brouwerij Bavik
82	De Scheldebrouwerij for Brouwerij Het Nest
83	Brasserie de Tubize
84	Brouwerij De Halve Maan
85	De Proefbrouwerij for Brouwerij De Arend (Hoboken)
86	Brouwerij Verhaeghe for Brouwerij Clarysse (bierfirma)
87	Brasserie de Silly
88	Brouwerij Strubbe for stad Lier
89	Microbrewery Achilles in De Proefbrouwerij commissioned by Paters en Prinsen
90	De Proefbrouwerij for Captain Cooker
91	Group John Martin
92	Brasserie Jean Tout Seul
93	Abbaye Notre-Dame de Saint-Rémy de Rochefort
94	Brouwerij De Graal for De Hopjutters
95	De Proefbrouwerij for De Verhuisbrouwerij
96	t Hofbrouwerijke
97	Brouwerij Westmalle
98	Haacht
99	Brouwerij 't Pakhuis
100	Brasserie des Légendes
101	Brouwerij De Graal for SLIM
102	Brouwerij Loterbol
103	Brouwerij Val-Dieu
104	Brouwerij Maenhout by Brouwerij Gulden Spoor
105	Brouwerij Smisje
106	Brouwerij Van Honsebrouck
107	Brouwerij Den Tseut
108	Brouwerij Van Steenberge for de gemeente Bierbeek en Terclavers
109	Brouwerij De Kluis (AB InBev)
110	Brouwerij De Ryck
111	Les Artisans Brasseurs
112	Brasserie Caracole
113	Brouwerij De Graal for t'Drankorgel
114	De Proefbrouwerij for Brouwerij Cluysenaer
115	Brouwerij Martens for Aldi
116	Brouwerij De Graal for De Hoevebrouwers
117	Brasserie La Botteresse de Sur-les-Bois
118	Brouwerij Bier & Karakter by Brouwerij Deca
119	Brouwerij Strubbe for “Mout- en Brouwhuis De Snoek”
120	Brasserie La Binchoise
121	‘t Hofbrouwerijke for De Verhuisbrouwerij
122	De Scheldebrouwerij for De Lelie
123	Brouwerij De Plukker
124	Brouwerij Van Eecke for Extremis
125	Brouwerij Strubbe for den Haene
126	Brouwerij Van Den Bossche for Scouts Moen 50 jaar (2011)
127	Brouwerij Gulden Spoor
128	De Proefbrouwerij for Stepaja bvba
129	Brouwerij De Leyerth
130	Brasserie Dupont
131	Brouwerij De Ranke for Brasserie de la Senne
132	Brasserie à Vapeur
133	De Proefbrouwerij
134	Brouwerij St. Bernardus
135	De Proefbrouwerij for het Zeuntcomité
136	Brasserie du Bocq for Brouwerij Corsendonk
137	Brouwerij De Leite
138	Brasserie Saint Feuillien
139	De Proefbrouwerij for Bierfirma Trappieter
140	Brouwerij Van Steenberge for Brouwerij Paeleman
141	De Proefbrouwerij for Bierfirma Vacas
142	De Proefbrouwerij for Brouwerij De Arend
143	De Verhuisbrouwerij
144	Brasserie Artisanale de Rulles
145	Brouwerij Anders for Halen Breweries
146	Brouwerij De Graal for Brouwerij De 6 Helmen
147	Brouwerij Lefebvre
148	De Proefbrouwerij for Brouwerij Jessenhofke
149	Brouwerij Van Steenberge commissioned by Brouwerij Vanuxeem
150	Brasserie du Bocq for Broeder Jacob bvba
151	De Proefbrouwerij commissioned by De Kale Ridders
152	Brouwerij Huyghe for Oxfam world shops
153	De Proefbrouwerij for de gemeente Zwalm
154	De Struise Brouwers by Brouwerij Deca
155	Brouwerij Bosteels
156	Brouwerij De Ranke for Bierwinkel Bacelle
157	De Proefbrouwerij commissioned by De Kastelse Biervereniging
158	Brouwerij Mortal's Beers
159	Brasserie de Bellevaux
160	Brasserie du Flo
161	Brouwerij Het Anker
162	Brouwerij Huyghe for Brouwerij Oud Beersel
163	Brouwerij Hof ten Dormaal
164	Microbrasserie de la Principauté
165	Abdij Notre-Dame d'Orval
166	Brasserie De Bouillon
167	De Proefbrouwerij for Brouwerij Pirlot
168	Achelse Kluis
169	Brouwerij Roman for Wieze Beer Belgium
170	Brasserie Cantillon
171	Zennebrouwerij
172	De Struise Brouwers
173	Brouwerij Het Alternatief by Brouwerij Alvinne
174	Brouwerij Den Toetëlèr
175	Brouwerij Girardin
176	Brasserie les 3 Fourquets
177	Brouwerij Strubbe for Biofresh Gavere
178	De Proefbrouwerij for ’t Brugs Bierinstituut
179	De Proefbrouwerij for Gageleer cbva-so
180	Brouwerij Brootcoorens
181	Brasserie de l'Abbaye du Val-Dieu for Radermacher Distillerie
182	Brasserie la Barbiot
183	Brouwerij Deca
184	Brouwerij Lupus
185	De Dolle Brouwers for Kaffee Kavijaks
186	Brasserie Saint-Feuillien
187	Brouwerij Verstraete by Brouwerij Deca
188	Brouwerij De Vlier
189	Brouwerij St. Bernardus for café Den Toerist
190	Brouwerij De Regenboog
191	Brouwerij Toye
192	Brouwerij Van den Bossche
193	Brouwerij Boelens
194	Huisbrouwerij Sint Canarus for De Verhuisbrouwerij
195	Geuzestekerij 3 Fonteinen
196	Brouwerij Anders for BOMBrewery
197	Brouwerij Het Anker (previously in Brouwerij Riva en Brouwerij Liefmans)
198	Brasserie des Géants
199	Brouwerij Danny
200	Brouwerij Kerkom
201	Brouwerij De Dochter van de Korenaar
202	Brasserie Oxymore
203	Brouwerij St-Bernardus
204	Brasserie La Binchoise (for Brasserie de Malonne)
205	Brouwerij De Landtsheer
206	Brasserie Fantôme
207	Brasserie du Bocq for Brouwerij Sterkens
208	Brouwerij Oud Beersel
209	Huisbrouwerij Sint Canarus
210	Brasserie du Bocq
211	Brouwerij De Graal for (T)Huisbrouwerij Odlo
212	Brasserie Caulier
213	De Proefbrouwerij for Buitenlust
214	Brasserie Saint-Monon for Confrérie du Busson
215	Huisbrouwerij 't Pakhuis
216	AB InBev
217	De Proefbrouwerij for bierfirma Half Zeven
218	’t Hofbrouwerijke for Montaigu
219	Brouwerij Van Eecke
220	Brouwerij De Bie
221	Sint-Sixtusabdij van Westvleteren
222	Brasserie de Bastogne
223	Brouwers Verzet in Brouwerij De Ranke
224	Brasserie de Bouillon
225	Brouwerij Van Steenberge for BIVO Drinks
226	Brasserie de l'Abbaye des Rocs
227	Brouwerij Het Alternatief by Brouwerij De Graal or Brouwerij Alvinne
228	Brasserie du Bocq for Corsendonk nv
229	Brouwerij Louwaege
230	De Proefbrouwerij for Verstraeten H&S
231	t Hofbrouwerijke for Brouwerij Montaigu
232	Brouwerij Den Triest en Brouwerij Anders for Brouwerij Bueckenholt
233	Brouwerij Lindemans
234	Brasserie des Fagnes
235	Brouwerij Augrenoise
236	Brouwerij De Koninck (Duvel-Moortgat)
237	Brouwerij Boon & De Lambikstoempers
238	Brouwerij Caulier
239	Brouwerij Cnudde
240	Huisbrouwerij Sint Canarus by De Proefbrouwerij
241	Brouwerij Van Steenberge
242	Brasserie Lefebvre
243	Bierfirma NoordSter by Brouwerij De Vlier
244	Brouwerij Bios
245	Brouwerij De Graal for De Verhuisbrouwerij
246	Brouwerij Maenhout for bierfirma Proefbrouwerij d'oude maalderij
247	Brouwerij Anders for Brouwerij Henricus
248	Brouwerij Hanssens
249	Brouwerij Anders for Inglorious Brew Stars
250	3 Fonteinen, Brouwerij Boon, Timmermans, Oud Beersel, Lindemans, De Troch, De Cam, Hanssens
251	Brouwerij Van Den Bossche
252	Brouwerij du Bocq for Corsendonk nv
253	Brasserie d'Achouffe (Duvel-Moortgat)
254	Brouwerij Verhaeghe Vichte commissioned by Brouwerij Vanuxeem
255	Brouwerij Lupus for (T)Huisbrouwerij Odlo
256	Brouwerij Den Herberg
257	Brouwerij Het Sas
258	Brouwerij Anders for Verenigde Brouwers
259	De Proefbrouwerij for Caulier Developpement
260	Brouwerij De Cock by Brouwerij Van Steenberge
261	Brasserie Gigi
262	Brouwerij Sint-Jozef commissioned by Zirvest Cvba
263	De Proefbrouwerij for Beerdevelopment Viven
264	Brouwerij Donum Ignis
265	Seizoensbrouwerij Vandewalle
266	Brouwerij Gulden Spoor for bierfirma Hugel
267	Brasserie La Ferme au Chêne
268	Brouwerij Den Hopperd
269	De Lion à Plume by Brasserie de Bastogne
270	Brouwerij Anders for brouwerij De Neus
271	Brouwerij Huyghe
272	Abbaye Notre-Dame de Scourmont
273	Brouwerij Nieuwhuys
274	De Proefbrouwerij for Brouwerij Troch
275	Brouwerij De Koningshoeven commissioned by Brouwerij Urthel
276	Brasserie d'Ebly
277	Brouwerij 't Paenhuys
278	De Proefbrouwerij for Zonderik Beer Company
279	Brouwerij Palm (previously in Brouwerij De Gouden Boom)
280	De Proefbrouwerij for bierfirma Bas-bieren
281	Brouwerij Danny for Stichting Marcel De Bisschop
282	Brouwerij Het Gulden Spoor
283	Brasserie des Carrières
284	Brouwerij Martens
285	Geuzestekerij 3 fonteinen
286	Brouwerij Wieze
287	Brouwerij Angerik
288	Stadsbrouwerij Aarschot
289	Dorpsbrouwerij Humulus
290	De Proefbrouwerij for Geuzestekerij 3 Fonteinen
291	Brouwerij Roman
292	Brouwerij Strubbe for Brouwerij Crombé
293	Brouwerij en stokerij Wilderen
294	Brouwerij Van Steenberge for Microbrewery Paeleman commissioned by Kwets vzw
295	Brouwerij Opus Magnum
296	Brouwerij Sint-Jozef
297	Brouwerij Anders for Brussels Beer Project
298	Huisbrouwerij Sint Canarus for JCI Deinze en Leiestreek
299	Brouwerij Het Alternatief by Brouwerij De Graal
300	De Dolle Brouwers
301	Brouwerij Strubbe for Guldenboot nv
302	Brouwerij Palm
303	Brouwerij De Troch
304	Brouwerij Kortrijk-d’Utsel
305	Brouwerij Sint-Jozef for brouwerij Kerkom
306	Brasserie Val de Sambre
307	Brouwerij Belgoobeer by Brasserie La Binchoise
308	Brasserie La Frasnoise
309	Brasserie de Cazeau
310	Brouwerij Contreras
311	Brouwerij Martens (Bocholt)
312	Kasteelbrouwerij De Dool
313	Brouwerij De Ranke
314	Brouwerij Kerkom commissioned by drankenservice Pelgrims
315	Brouwerij Van Steenberge for De Brouwerij van Vlaanderen
316	Brouwerij Jessenhofke
317	Brouwerij Riva
318	De Scheldebrouwerij
319	Brasserie St-Feuillien
320	Brouwerij Boelens commissioned by VVV De Faluintjesstreek
321	Brouwerij De Glazen Toren
322	Brouwerij Fort Lapin
323	Brouwerij Slaghmuylder commissioned by VVV De Faluintjesstreek
324	Brouwerij Verhaeghe Vichte
325	Brouwerij De Rijck
326	Brouwerij Boelens for Bier- en Wijnhandel De Neys-Asselman
327	De Proefbrouwerij for Brouwerij Druïde
328	Brouwerij Gulden Spoor for Alain Quackelbeen
329	Brasserie Grain d'Orge
330	Huisbrouwerij Den Tseut
331	Brouwerij De Graal for Traagwater
332	Brasserie de Blaugies
333	Staminee De Garre (Brouwerij Van Steenberge)
334	Brouwerij De Graal for bierfirma Ribaldus
335	Brouwerij Sint-Jozef for Brouwerij Kerkom
336	De Proefbrouwerij for Vliegende Paard Brouwers
337	Brouwerij Van Steenberge for Hopduvel Gent
338	De Proefbrouwerij for bierfirma VALOCCO
339	Brouwerij Anders commissioned by Paters en Prinsen
340	Brasserie Millevertus
341	Brasserie de Bertinchamps
342	Brouwerij Slaapmutske
343	Brouwerij De Graal for bierfirma Johannes
344	Brasserie Sainte-Hélène
345	t Hofbrouwerijke commissioned by Brouwerij Het Nest
346	Huisbrouwerij Sint-Canarus
347	Brouwerij Ter Dolen
348	Brouwerij Boon
349	Brasserie de Brunehaut
350	Brouwerij Timmermans
351	Brasserie de la Senne
352	Gageleer
353	Brouwerij Huyghe for de De Scheldebrouwerij
354	Brouwerij De Block
355	De Proefbrouwerij for de familie Neyt
356	Brouwerij DijkWaert
357	Brouwerij De Ranke for NovaBirra
358	Alken-Maes (Heineken)
359	Scheldebrouwerij for Brouwerij Het Nest
360	Brouwerij Strubbe for BioFresh
\.


--
-- Name: brewery_id_seq; Type: SEQUENCE SET; Schema: public;
--

SELECT pg_catalog.setval('brewery_id_seq', 360, true);


--
-- Name: beer_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY beer
    ADD CONSTRAINT beer_pkey PRIMARY KEY (id);


--
-- Name: brewery_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY brewery
    ADD CONSTRAINT brewery_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


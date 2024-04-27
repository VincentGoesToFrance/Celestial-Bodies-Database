--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(150) NOT NULL,
    typ character varying(50),
    durchmesser integer NOT NULL,
    entfernung integer NOT NULL,
    alternative_bezeichnung character varying(100)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: kleinkoerper; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.kleinkoerper (
    kleinkoerper_id integer NOT NULL,
    name character varying(100) NOT NULL,
    beschreibung text NOT NULL,
    deutscher_name character varying(100)
);


ALTER TABLE public.kleinkoerper OWNER TO freecodecamp;

--
-- Name: kleinkoerper_kleinkoerper_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.kleinkoerper_kleinkoerper_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kleinkoerper_kleinkoerper_id_seq OWNER TO freecodecamp;

--
-- Name: kleinkoerper_kleinkoerper_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.kleinkoerper_kleinkoerper_id_seq OWNED BY public.kleinkoerper.kleinkoerper_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    groesse integer NOT NULL,
    dichte numeric(4,3),
    durchmesser integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    drehsinn boolean,
    dichte numeric(4,3),
    monde integer NOT NULL,
    ringe boolean,
    planetentyp_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planetentyp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetentyp (
    planetentyp_id integer NOT NULL,
    name character varying(100) NOT NULL,
    bemerkung text
);


ALTER TABLE public.planetentyp OWNER TO freecodecamp;

--
-- Name: planetentyp_planetentyp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetentyp_planetentyp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetentyp_planetentyp_id_seq OWNER TO freecodecamp;

--
-- Name: planetentyp_planetentyp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetentyp_planetentyp_id_seq OWNED BY public.planetentyp.planetentyp_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    sonnenradius integer NOT NULL,
    effektive_temperatur_in_k integer,
    entfernung_in_lj integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: kleinkoerper kleinkoerper_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kleinkoerper ALTER COLUMN kleinkoerper_id SET DEFAULT nextval('public.kleinkoerper_kleinkoerper_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planetentyp planetentyp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetentyp ALTER COLUMN planetentyp_id SET DEFAULT nextval('public.planetentyp_planetentyp_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromedagalaxie', 'SBb ', 140, 2560, 'M31, NGC224');
INSERT INTO public.galaxy VALUES (2, 'Milchstraße', 'SB(rs)bc ', 100, 0, 'Galaxis');
INSERT INTO public.galaxy VALUES (3, 'Dreiecksnebel', 'SAc', 55, 2735, 'M33, NGC598, Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Andromeda VIII', '(dSph) ', 30, 2700, NULL);
INSERT INTO public.galaxy VALUES (5, 'Große Magellansche Wolke', 'Irr / SBm', 25, 165, 'GMW, ESO56-115, PGC17223');
INSERT INTO public.galaxy VALUES (6, 'Kleine Magellansche Wolke', 'Irr / SBm', 15, 195, 'KMW, NGC292, PGC3085');


--
-- Data for Name: kleinkoerper; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.kleinkoerper VALUES (1, 'Asteroid', 'Asteroiden bewegen sich um die Sonne und sind größer als Meteoroiden (Millimeter bis Meter), aber kleiner als Zwergplaneten (ca. tausend Kilometer).', 'sternähnlich');
INSERT INTO public.kleinkoerper VALUES (2, 'Komet', 'Ein Komet oder Schweifstern ist ein kleiner Himmelskörper von meist einigen Kilometern Durchmesser, der in den sonnennahen Teilen seiner Bahn eine durch Ausgasen erzeugte Koma und meist auch einen leuchtenden Schweif (Lichtspur) entwickelt.', 'Haarstern');
INSERT INTO public.kleinkoerper VALUES (3, 'Meteoroid', 'ist ein kleines Objekt des Sonnensystems auf einer Umlaufbahn um die Sonne, das kleiner als ein Asteroid ist.', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 15, 2000, 3.344, 3474);
INSERT INTO public.moon VALUES (2, 'Phobos', 16, 30, 1.887, 1548);
INSERT INTO public.moon VALUES (3, 'Deimos', 16, 30, 1.471, NULL);
INSERT INTO public.moon VALUES (4, 'Metis', 17, 100, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Adrastea', 17, 30, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', 17, 100, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'S/2009 S 1', 18, 10, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Pan', 18, 30, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Daphnis', 18, 10, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Cordelia', 19, 100, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Ophelia', 19, 100, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Bianca', 19, 100, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Naiad', 20, 100, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Thalassa', 20, 100, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Charon', 21, 1999, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Styx', 21, 30, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Namaka', 22, 30, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Hiʻiaka', 22, 30, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'S/2015 (136472) 1', 23, 30, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 23, 1999, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Merkur', 9, true, 5.430, 0, false, 1);
INSERT INTO public.planet VALUES (14, 'Venus', 9, false, 5.240, 0, false, 1);
INSERT INTO public.planet VALUES (15, 'Erde', 9, true, 5.515, 1, false, 1);
INSERT INTO public.planet VALUES (16, 'Mars', 9, true, 3.930, 2, false, 1);
INSERT INTO public.planet VALUES (17, 'Jupiter', 9, true, 1.330, 95, true, 2);
INSERT INTO public.planet VALUES (18, 'Saturn', 9, true, 0.700, 146, true, 2);
INSERT INTO public.planet VALUES (19, 'Uranus', 9, false, 1.300, 27, true, 2);
INSERT INTO public.planet VALUES (20, 'Neptun', 9, true, 1.640, 14, true, 2);
INSERT INTO public.planet VALUES (21, 'Pluto', 9, NULL, 1.860, 5, NULL, 3);
INSERT INTO public.planet VALUES (22, 'Haumea', 9, NULL, 2.570, 2, NULL, 3);
INSERT INTO public.planet VALUES (23, 'Makemake', 9, NULL, 1.700, 1, NULL, 3);
INSERT INTO public.planet VALUES (24, 'Eris', 9, NULL, 2.520, 1, NULL, 3);


--
-- Data for Name: planetentyp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetentyp VALUES (1, 'erdähnlicher Planet', 'Gesteinsplanet mit fester Oberfläche. Je nachdem ist die Definition sehr weit gefasst.');
INSERT INTO public.planetentyp VALUES (2, 'Gasplanet', 'Bezeichnung für die größeren Gasplaneten.');
INSERT INTO public.planetentyp VALUES (3, 'Zwergplanet', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (9, 'Sonne', 1, 5772, 0, 2);
INSERT INTO public.star VALUES (10, 'WOH G64', 1540, 3400, 163000, 5);
INSERT INTO public.star VALUES (11, 'HV 888 (WOH S140)', 1374, 3442, 50000, 5);
INSERT INTO public.star VALUES (12, 'SMC 18136', 1310, NULL, NULL, 6);
INSERT INTO public.star VALUES (13, 'Granatstern', 972, 3450, 3060, 2);
INSERT INTO public.star VALUES (14, 'Beteigeuze', 887, 3600, 550, 2);
INSERT INTO public.star VALUES (15, 'LGGS', 1479, NULL, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: kleinkoerper_kleinkoerper_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.kleinkoerper_kleinkoerper_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: planetentyp_planetentyp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetentyp_planetentyp_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: kleinkoerper kleinkoerper_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kleinkoerper
    ADD CONSTRAINT kleinkoerper_name_key UNIQUE (name);


--
-- Name: kleinkoerper kleinkoerper_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.kleinkoerper
    ADD CONSTRAINT kleinkoerper_pkey PRIMARY KEY (kleinkoerper_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetentyp planetentyp_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetentyp
    ADD CONSTRAINT planetentyp_name_key UNIQUE (name);


--
-- Name: planetentyp planetentyp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetentyp
    ADD CONSTRAINT planetentyp_pkey PRIMARY KEY (planetentyp_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planetentyp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planetentyp_id_fkey FOREIGN KEY (planetentyp_id) REFERENCES public.planetentyp(planetentyp_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: crafts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.crafts (
    crafts_id integer NOT NULL,
    name character varying(50),
    country character varying(50),
    launched date NOT NULL,
    manned boolean
);


ALTER TABLE public.crafts OWNER TO freecodecamp;

--
-- Name: crafts_craft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.crafts_craft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crafts_craft_id_seq OWNER TO freecodecamp;

--
-- Name: crafts_craft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.crafts_craft_id_seq OWNED BY public.crafts.crafts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(20),
    ly_from_earth integer,
    discovered date,
    discovered_by text,
    has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    discovered_by character varying(50),
    discovered date
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
    name character varying(50) NOT NULL,
    type character varying(50),
    ly_from_earth integer,
    circumference_in_mi numeric(20,2),
    has_life boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(20),
    galaxy_id integer,
    ly_from_earth numeric
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
-- Name: crafts crafts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crafts ALTER COLUMN crafts_id SET DEFAULT nextval('public.crafts_craft_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: crafts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.crafts VALUES (1, 'big joe 1', 'USA', '1959-09-09', false);
INSERT INTO public.crafts VALUES (2, 'mercury-redstone 3', 'USA', '1961-05-05', true);
INSERT INTO public.crafts VALUES (3, 'mercury-atlas 9', 'USA', '1963-05-15', true);
INSERT INTO public.crafts VALUES (4, 'sputnik 1', 'USSR', '1957-10-04', false);
INSERT INTO public.crafts VALUES (5, 'vostok 1', 'USSR', '1961-04-12', true);
INSERT INTO public.crafts VALUES (6, 'soyuz tm-13', 'USSR', '1991-10-02', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'segue 1', 'spheroidal', 75000, '2006-01-01', 'Sloan Digital Sky Survey', false);
INSERT INTO public.galaxy VALUES (4, 'sagittarius dwarf spheroidal galaxy', 'spheroid/ellip', 78000, '1994-01-01', 'Rodrigo Ibata, Mike Irwin, and Gerry Gilmore', false);
INSERT INTO public.galaxy VALUES (5, 'ursa major II dwarf', 'spheroidal', 98000, '2006-01-01', 'Sloan Digital Sky Survey', false);
INSERT INTO public.galaxy VALUES (6, 'triangulum II', 'spheroidal', 98000, '2015-01-01', 'Benjamin Laevens', false);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'spiral', 2537000, '0965-01-01', 'al-Sufi', false);
INSERT INTO public.galaxy VALUES (1, 'milky way', 'spiral', 0, '1933-04-01', 'Karl Jansky', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'phobos', 1, 'Asaph Hall', '1877-08-18');
INSERT INTO public.moon VALUES (2, 'deimos', 1, 'Asaph Hall', '1877-08-12');
INSERT INTO public.moon VALUES (3, 'metis', 10, 'S Synnott', '1979-03-04');
INSERT INTO public.moon VALUES (4, 'adrastea', 10, 'David Jewitt', '1979-07-08');
INSERT INTO public.moon VALUES (5, 'amalthea', 10, 'E Barnard', '1892-09-09');
INSERT INTO public.moon VALUES (6, 'thebe', 10, 'S Synnott', '1979-03-05');
INSERT INTO public.moon VALUES (7, 'io', 10, 'Galileo Galilei', '1610-01-08');
INSERT INTO public.moon VALUES (8, 'europa', 10, 'Galileo Galilei', '1610-01-08');
INSERT INTO public.moon VALUES (9, 'ganymede', 10, 'Galileo Galilei', '1610-01-07');
INSERT INTO public.moon VALUES (10, 'callisto', 10, 'Galileo Galilei', '1610-01-07');
INSERT INTO public.moon VALUES (11, 'methone', 11, 'Cassini Imaging Team', '2004-06-01');
INSERT INTO public.moon VALUES (12, 'pallene', 11, 'Voyager 2', '2004-06-01');
INSERT INTO public.moon VALUES (13, 'anthe', 11, 'Cassini Imaging Team', '2007-05-30');
INSERT INTO public.moon VALUES (14, 'helene', 11, 'P Laques, J Lecacheux', '1980-03-01');
INSERT INTO public.moon VALUES (15, 'polydeuces', 11, 'Cassini Imaging Team', '2004-10-24');
INSERT INTO public.moon VALUES (16, 'telesto', 11, 'Bradford Smith et al', '1980-04-08');
INSERT INTO public.moon VALUES (17, 'oberon', 11, 'William Herschel', '1787-01-11');
INSERT INTO public.moon VALUES (18, 'hyperion', 11, 'William Bond et al', '1848-09-16');
INSERT INTO public.moon VALUES (19, 'pan', 11, 'M Showalter', '1990-07-16');
INSERT INTO public.moon VALUES (20, 'daphnis', 11, 'Cassini Imaging Team', '2005-05-01');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', 'terrestrial', 0, 13263.00, true, 7);
INSERT INTO public.planet VALUES (2, 'venus', 'terrestrial', 0, 23628.00, false, 7);
INSERT INTO public.planet VALUES (3, 'mercury', 'terrestrial', 0, 9525.00, false, 7);
INSERT INTO public.planet VALUES (4, 'd', 'terrestrial', 4, 20137.00, false, 1);
INSERT INTO public.planet VALUES (5, 'b', 'terrestrial', 4, 32320.00, false, 1);
INSERT INTO public.planet VALUES (6, 'c', 'terrestrial', 4, 0.00, false, 1);
INSERT INTO public.planet VALUES (7, 'b', 'terrestrial', 6, 0.00, false, 4);
INSERT INTO public.planet VALUES (8, 'c', 'unknown', 8, 0.00, false, 6);
INSERT INTO public.planet VALUES (9, 'b', 'unknown', 8, 0.00, false, 6);
INSERT INTO public.planet VALUES (10, 'jupiter', 'jovian', 0, 272802.65, false, 7);
INSERT INTO public.planet VALUES (11, 'saturn', 'jovian', 0, 227236.93, false, 7);
INSERT INTO public.planet VALUES (12, 'earth', 'terrestrial', 0, 24861.26, true, 7);
INSERT INTO public.planet VALUES (13, 'uranus', 'jovian', 0, 99619.08, false, 7);
INSERT INTO public.planet VALUES (14, 'neptune', 'jovian', 0, 96536.29, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'proxima centauri', 'red dwarf', 1, 4.24);
INSERT INTO public.star VALUES (2, 'Rigil Kentaurus', 'yellow dwarf', 1, 4.36);
INSERT INTO public.star VALUES (3, 'Toliman', 'orange dwarf', 1, 4.36);
INSERT INTO public.star VALUES (4, 'Barnards Star', 'red dwarf', 1, 6.0);
INSERT INTO public.star VALUES (5, 'WISE 0855-0714', 'brown dwarf', 1, 7.25);
INSERT INTO public.star VALUES (6, 'wolf 359', 'red dwarf', 1, 7.90);
INSERT INTO public.star VALUES (7, 'sun', 'yellow dwarf', 1, 0.0);


--
-- Name: crafts_craft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.crafts_craft_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: crafts crafts_craft_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crafts
    ADD CONSTRAINT crafts_craft_id_key UNIQUE (crafts_id);


--
-- Name: crafts crafts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crafts
    ADD CONSTRAINT crafts_pkey PRIMARY KEY (crafts_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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


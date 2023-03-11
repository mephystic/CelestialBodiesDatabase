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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    constellation character varying(30),
    age_in_millions_of_year_light integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    dimension integer,
    lunar_day_period integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    earth_mass numeric(5,1),
    is_exoplanete boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_galaxy_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    superficial_temp_celsius integer,
    distance_from_earth integer,
    solar_mass numeric(5,1),
    star_id integer NOT NULL,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Cigar Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'NGC 2535', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Eskimo Nebula', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cygnus a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Hat Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'NGC 5890', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC972', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Aquarius Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Andromedae', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Triangulum Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Milky Way', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amaltea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Euridome', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Euporia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Tetis', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Rea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Triton', 8, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Galatea', 8, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Caronte', 26, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Marte', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Urano', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Thestias', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Janssen', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'Galileo', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Harriot', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, 'Lippershey', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (14, 'Saffar', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (15, 'Samh', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (16, 'Majriti', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (17, 'Gliese 581 b', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (18, 'Gliese 581 d', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (19, 'Teergarden b', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (20, 'Teergarden c', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (21, 'Gliese 876 b', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (22, 'Gliese 876 c', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (23, 'Gliese 876 d', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (24, 'Ross 128 b', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (25, 'Kepler-1625 b', NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (26, 'Pluton', NULL, NULL, NULL, 1);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Rocoso', 2);
INSERT INTO public.planet_type VALUES (2, 'Blue Marble', 3);
INSERT INTO public.planet_type VALUES (3, 'Joviano', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', NULL, NULL, NULL, 1, 11);
INSERT INTO public.star VALUES ('Titawin', NULL, NULL, NULL, 2, 9);
INSERT INTO public.star VALUES ('Copernicus', NULL, NULL, NULL, 3, 2);
INSERT INTO public.star VALUES ('Wolf 562', NULL, NULL, NULL, 4, 6);
INSERT INTO public.star VALUES ('Polux', NULL, NULL, NULL, 5, 3);
INSERT INTO public.star VALUES ('Teegarden', NULL, NULL, NULL, 6, 7);
INSERT INTO public.star VALUES ('Gliese 876', NULL, NULL, NULL, 7, 8);
INSERT INTO public.star VALUES ('Ross 128', NULL, NULL, NULL, 8, 5);
INSERT INTO public.star VALUES ('Deltotron', NULL, NULL, NULL, 9, 10);
INSERT INTO public.star VALUES ('Megrez', NULL, NULL, NULL, 10, 1);
INSERT INTO public.star VALUES ('Kepler 1625', NULL, NULL, NULL, 11, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 25, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 26, true);


--
-- Name: planet_type_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_galaxy_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet_type planet_type_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

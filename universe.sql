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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    description text,
    distance_from_earth numeric(20,2),
    unique_nullable_column text
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
    name character varying(30),
    age_in_millions_of_years integer,
    is_spherical boolean,
    description text,
    distance_from_earth numeric(20,2),
    planet_id integer NOT NULL,
    unique_nullable_column text
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
    name character varying(30),
    age_in_millions_of_years integer,
    is_spherical boolean,
    description text,
    distance_from_earth numeric(20,2),
    star_id integer NOT NULL,
    unique_nullable_column text
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
    name character varying(30) NOT NULL,
    spectral_type character varying(30) NOT NULL,
    distance_from_earth numeric(20,2),
    galaxy_id integer NOT NULL,
    unique_nullable_column text
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(1000,1),
    is_infinite boolean NOT NULL,
    has_banged boolean NOT NULL,
    is_spherical boolean NOT NULL,
    unique_nullable_column text
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (2, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (3, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (4, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (5, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (6, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (7, '1', 2, true, 'none', 3.00, NULL);
INSERT INTO public.galaxy VALUES (8, '1', 2, true, 'none', 3.00, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (2, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (3, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (4, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (5, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (6, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (7, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (8, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (9, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (10, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (11, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (12, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (13, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (14, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (15, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (16, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (17, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (18, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (19, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (20, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (21, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (22, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (23, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (24, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (25, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (26, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (27, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (28, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (29, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (30, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (31, 'name', 2, true, 'desription', 2.00, 1, NULL);
INSERT INTO public.moon VALUES (32, 'name', 2, true, 'desription', 2.00, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (2, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (3, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (4, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (5, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (6, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (7, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (8, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (9, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (10, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (11, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (12, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (13, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (14, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (15, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (16, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (17, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (18, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (19, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (20, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (21, 'name', 2, true, 'description', 3.00, 1, NULL);
INSERT INTO public.planet VALUES (22, 'name', 2, true, 'description', 3.00, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'name', 'spectral_type', 2.00, 1, NULL);
INSERT INTO public.star VALUES (2, 'name', 'spectral_type', 2.00, 1, NULL);
INSERT INTO public.star VALUES (3, 'name', 'spectral_type', 2.00, 1, NULL);
INSERT INTO public.star VALUES (4, 'name', 'spectral_type', 2.00, 1, NULL);
INSERT INTO public.star VALUES (5, 'name', 'spectral_type', 2.00, 1, NULL);
INSERT INTO public.star VALUES (6, 'name', 'spectral_type', 2.00, 2, NULL);
INSERT INTO public.star VALUES (7, 'name', 'spectral_type', 2.00, 2, NULL);
INSERT INTO public.star VALUES (8, 'name', 'spectral_type', 2.00, 2, NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'name', 1.0, true, true, true, NULL);
INSERT INTO public.universe VALUES (2, 'name2', 1.0, true, true, true, NULL);
INSERT INTO public.universe VALUES (3, 'name3', 1.0, true, true, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_nullable_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_nullable_column_key UNIQUE (unique_nullable_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_nullable_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_nullable_column_key UNIQUE (unique_nullable_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_nullable_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_nullable_column_key UNIQUE (unique_nullable_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_nullable_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_nullable_column_key UNIQUE (unique_nullable_column);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_unique_nullable_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_unique_nullable_column_key UNIQUE (unique_nullable_column);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


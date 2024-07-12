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
    name character varying(20) NOT NULL,
    area integer,
    age numeric,
    material text,
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    area integer,
    age numeric,
    material text,
    has_life boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    area integer,
    age numeric,
    material text,
    has_life boolean
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    area integer,
    age numeric,
    material text,
    has_life boolean
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', 500, 1500.75, 'solid', true);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', 500, 1500.75, 'solid', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (5, 'moon5', 5, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (6, 'moon6', 6, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (8, 'moon8', 8, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (9, 'moon9', 9, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (11, 'moon11', 11, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (12, 'moon12', 12, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (13, 'moon13', 13, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (14, 'moon14', 14, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (15, 'moon15', 15, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (16, 'moon16', 16, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (17, 'moon17', 17, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (18, 'moon18', 18, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (19, 'moon19', 19, 500, 1500.75, 'solid', true);
INSERT INTO public.moon VALUES (20, 'moon20', 20, 500, 1500.75, 'solid', true);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'more_info1', 'description1');
INSERT INTO public.more_info VALUES (2, 2, 'more_info2', 'description2');
INSERT INTO public.more_info VALUES (3, 3, 'more_info3', 'description3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (2, 'planet2', 2, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (3, 'planet3', 3, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (4, 'planet4', 4, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (5, 'planet5', 5, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (6, 'planet6', 6, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (7, 'planet7', 7, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (8, 'planet8', 8, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (9, 'planet9', 9, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (10, 'planet10', 10, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (11, 'planet11', 11, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (12, 'planet12', 12, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (13, 'planet13', 13, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (14, 'planet14', 14, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (15, 'planet15', 15, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (16, 'planet16', 16, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (17, 'planet17', 17, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (18, 'planet18', 18, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (19, 'planet19', 19, 500, 1500.75, 'solid', true);
INSERT INTO public.planet VALUES (20, 'planet20', 20, 500, 1500.75, 'solid', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (2, 'star2', 2, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (3, 'star3', 3, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (4, 'star4', 4, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (5, 'star5', 5, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (6, 'star6', 6, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (7, 'star7', 7, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (8, 'star8', 8, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (9, 'star9', 9, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (10, 'star10', 10, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (11, 'star11', 11, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (12, 'star12', 12, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (13, 'star13', 13, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (14, 'star14', 14, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (15, 'star15', 15, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (16, 'star16', 16, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (17, 'star17', 17, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (18, 'star18', 18, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (19, 'star19', 19, 500, 1500.75, 'solid', true);
INSERT INTO public.star VALUES (20, 'star20', 20, 500, 1500.75, 'solid', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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


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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    planet_id integer
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (4, '1', 2);
INSERT INTO public.earth VALUES (5, '2', 3);
INSERT INTO public.earth VALUES (6, '3', 55);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', 'galaxy 1 + 14', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 'galaxy 2 + 14', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 'galaxy 3 + 14', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 'galaxy 4 + 14', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 'galaxy 4 + 14', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 'galaxy 4 + 14', NULL, false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (6, 'mooan1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moona2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'moona3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'moon4a', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'moon5a', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (11, 'mooxan1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'mooxna2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'moonax3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'moon4xa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'moon5xa', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'mooxawn1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'mooxwna2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'moonwax3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'moon 4xa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'moon5xxa', NULL, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet terre', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (2, 'planet tedrre', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'planedet tedrre', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (4, 'planedet tedrrde', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (5, 'planedet tedrrcvde', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planedet tedrrccdsvde', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planedet  sdtedrrccdsvde', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, 'planedetzsa  sdtedrrccdsvde', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (9, 'planedetzsa  sdtedcdsrrccdsvde', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (10, 'planedetzsa  sdtedcdsrrccdsvdcdse', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'planedetzsa  sdtedcdsrrccdsvdcdsce', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'planedetzsa  sdtedcdsrrccdsvdcdssce', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (13, 'planedetzsa  sdtedcdsrrccdsvdcdsscce', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (14, 'planedetzsa  sdtedcdsrrccdsvdcdssccce', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (16, 'planedetzsa  sdtedcdsrrccdsvdcdsstrccce', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (17, 'planey2', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (18, 'planey6', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'star 2', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'star 3', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'star 4', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'star 6', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star 5', NULL, NULL, NULL, NULL, NULL, 2);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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


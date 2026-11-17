--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    size_in_mil_km2 numeric(12,1),
    description text,
    has_wormhole boolean,
    systems integer,
    planets integer
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
    diameter_in_mk2 numeric(4,1),
    is_cheese boolean
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
    star_id integer,
    is_habitable boolean,
    diameter_in_mk2 numeric(4,1)
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
    planets integer NOT NULL,
    galaxy_id integer,
    diameter_in_mk2 numeric(4,1)
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
-- Name: what_for; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.what_for (
    what_for_id integer NOT NULL,
    name character varying(50) NOT NULL,
    bruh boolean
);


ALTER TABLE public.what_for OWNER TO freecodecamp;

--
-- Name: what_for_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.what_for_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.what_for_id_seq OWNER TO freecodecamp;

--
-- Name: what_for_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.what_for_id_seq OWNED BY public.what_for.what_for_id;


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
-- Name: what_for what_for_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for ALTER COLUMN what_for_id SET DEFAULT nextval('public.what_for_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 98756.5, NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 15.2, 'Nearest large galaxy to the Milky Way', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 3.0, 'A spiral galaxy in the Local Group', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 6.0, 'A grand-design spiral galaxy', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 4.5, 'A bright galaxy with a prominent central bulge', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 1.4, 'A satellite galaxy of the Milky Way', false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Triton', 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 7, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 7, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 8, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 8, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 9, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 9, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 10, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 10, false, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima b', 11, true, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima c', 11, false, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-442b', 12, true, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-442c', 12, false, NULL);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1d', 13, true, NULL);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 13, true, NULL);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1f', 14, true, NULL);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1g', 14, false, NULL);
INSERT INTO public.planet VALUES (17, '55 Cancri b', 15, false, NULL);
INSERT INTO public.planet VALUES (18, '55 Cancri e', 15, false, NULL);
INSERT INTO public.planet VALUES (19, 'HD 209458 b', 16, false, NULL);
INSERT INTO public.planet VALUES (20, 'HD 209458 c', 16, false, NULL);
INSERT INTO public.planet VALUES (21, 'Gliese 581b', 17, false, NULL);
INSERT INTO public.planet VALUES (22, 'Gliese 581g', 17, true, NULL);
INSERT INTO public.planet VALUES (23, 'Kepler-186b', 18, false, NULL);
INSERT INTO public.planet VALUES (24, 'Kepler-186f', 18, true, NULL);
INSERT INTO public.planet VALUES (25, 'Tau Ceti e', 19, true, NULL);
INSERT INTO public.planet VALUES (26, 'Tau Ceti f', 19, true, NULL);
INSERT INTO public.planet VALUES (27, 'LHS 1140 b', 20, true, NULL);
INSERT INTO public.planet VALUES (28, 'LHS 1140 c', 20, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', 8, 1, NULL);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', 3, 3, NULL);
INSERT INTO public.star VALUES (9, 'Sirius', 0, 4, NULL);
INSERT INTO public.star VALUES (10, 'Betelgeuse', 0, 5, NULL);
INSERT INTO public.star VALUES (11, 'Vega', 1, 6, NULL);
INSERT INTO public.star VALUES (12, 'Kepler-90', 8, 7, NULL);
INSERT INTO public.star VALUES (13, 'Arcturus', 0, 1, NULL);
INSERT INTO public.star VALUES (14, 'Aldebaran', 1, 3, NULL);
INSERT INTO public.star VALUES (15, 'Antares', 0, 4, NULL);
INSERT INTO public.star VALUES (16, 'Polaris', 0, 5, NULL);
INSERT INTO public.star VALUES (17, 'Altair', 0, 6, NULL);
INSERT INTO public.star VALUES (18, 'Deneb', 0, 7, NULL);
INSERT INTO public.star VALUES (19, 'Spica', 0, 1, NULL);
INSERT INTO public.star VALUES (20, 'Tau Ceti', 4, 3, NULL);


--
-- Data for Name: what_for; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.what_for VALUES (1, 'hi', NULL);
INSERT INTO public.what_for VALUES (2, 'bye', NULL);
INSERT INTO public.what_for VALUES (3, 'idk', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: what_for_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.what_for_id_seq', 3, true);


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
-- Name: what_for what_for_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for
    ADD CONSTRAINT what_for_name_key UNIQUE (name);


--
-- Name: what_for what_for_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_for
    ADD CONSTRAINT what_for_pkey PRIMARY KEY (what_for_id);


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


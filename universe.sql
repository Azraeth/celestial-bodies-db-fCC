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
    name character varying(100) NOT NULL,
    galaxy_type_id integer,
    distance_from_earth_mly integer,
    has_supermassive_black_hole boolean,
    is_colliding boolean,
    estimated_celestial_bodies bigint,
    description text
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: luminosity_class; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.luminosity_class (
    luminosity_class_id integer NOT NULL,
    name character varying(5) NOT NULL,
    description text
);


ALTER TABLE public.luminosity_class OWNER TO freecodecamp;

--
-- Name: luminosity_class_luminosity_class_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.luminosity_class_luminosity_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.luminosity_class_luminosity_class_id_seq OWNER TO freecodecamp;

--
-- Name: luminosity_class_luminosity_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.luminosity_class_luminosity_class_id_seq OWNED BY public.luminosity_class.luminosity_class_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    moon_type_id integer,
    name character varying(100) NOT NULL,
    is_spherical boolean,
    has_tidal_locking boolean
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
-- Name: moon_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_type (
    moon_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.moon_type OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_type_moon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_type_moon_type_id_seq OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_type_moon_type_id_seq OWNED BY public.moon_type.moon_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_system_id integer,
    planet_type_id integer,
    name character varying(100) NOT NULL,
    planet_mass double precision,
    has_atmosphere boolean,
    is_habitable boolean,
    star_id integer NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_system_id integer,
    star_type_id integer,
    luminosity_class_id integer,
    name character varying(100) NOT NULL,
    is_primary boolean,
    solar_mass double precision,
    surface_temperature_kelvin integer,
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
-- Name: star_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_system (
    star_system_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    description text,
    distance_from_galaxy_center numeric(10,2)
);


ALTER TABLE public.star_system OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_system_star_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_system_star_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_system_star_system_id_seq OWNED BY public.star_system.star_system_id;


--
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(100) NOT NULL,
    spectral_classification character varying(2),
    description text,
    CONSTRAINT star_type_spectral_classification_check CHECK (((spectral_classification)::text = ANY ((ARRAY['O'::character varying, 'B'::character varying, 'A'::character varying, 'F'::character varying, 'G'::character varying, 'K'::character varying, 'M'::character varying, 'L'::character varying, 'T'::character varying, 'Y'::character varying, 'C'::character varying, 'S'::character varying, 'W'::character varying, 'D'::character varying, 'DA'::character varying, 'DB'::character varying, 'DC'::character varying, 'DO'::character varying, 'DZ'::character varying])::text[])))
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: luminosity_class luminosity_class_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_class ALTER COLUMN luminosity_class_id SET DEFAULT nextval('public.luminosity_class_luminosity_class_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_type moon_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type ALTER COLUMN moon_type_id SET DEFAULT nextval('public.moon_type_moon_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_system star_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system ALTER COLUMN star_system_id SET DEFAULT nextval('public.star_system_star_system_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 0, true, true, 100000000000, 'Our home barred spiral galaxy, currently interacting with dwarf galaxies.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 2, true, true, 1000000000000, 'The nearest major galaxy, on a collision course with the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 2, 53, true, false, 1000000000000, 'A supergiant elliptical galaxy home to the first imaged black hole.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 3, 31, true, false, 800000000000, 'A lenticular galaxy known for its bright nucleus and large central bulge.');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 4, 0, false, true, 30000000000, 'A satellite dwarf irregular galaxy of the Milky Way.');
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 1, 3, false, true, 40000000000, 'The third-largest member of the Local Group, bound to Andromeda.');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 1, 23, true, true, 100000000000, 'A grand-design spiral galaxy beautifully interacting with a dwarf companion.');


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Galaxies with a flat, rotating disk and a central concentration of stars.');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'Spherical or ovoid galaxies containing older, low-mass stars.');
INSERT INTO public.galaxy_type VALUES (3, 'Lenticular', 'Intermediate between elliptical and spiral, with a disk but no spiral arms.');
INSERT INTO public.galaxy_type VALUES (4, 'Irregular', 'Galaxies without a distinct regular shape, often due to gravitational interactions.');


--
-- Data for Name: luminosity_class; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.luminosity_class VALUES (1, 'I', 'Supergiants (often subdivided into Ia and Ib). Extremely massive and luminous stars.');
INSERT INTO public.luminosity_class VALUES (2, 'II', 'Bright giants. Intermediate between giants and supergiants.');
INSERT INTO public.luminosity_class VALUES (3, 'III', 'Normal giants. Stars that have left the main sequence (e.g., red giants).');
INSERT INTO public.luminosity_class VALUES (4, 'IV', 'Subgiants. Stars that are beginning to exhaust their core hydrogen.');
INSERT INTO public.luminosity_class VALUES (5, 'V', 'Main sequence. Stars in their stable hydrogen-fusing phase (like the Sun).');
INSERT INTO public.luminosity_class VALUES (6, 'VI', 'Subdwarfs. Stars less luminous than the main sequence, often metal-poor.');
INSERT INTO public.luminosity_class VALUES (7, 'VII', 'White dwarfs. Dense, hot stellar remnants that no longer undergo nuclear fusion.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 1, 'Moon', true, true);
INSERT INTO public.moon VALUES (2, 4, 5, 'Phobos', false, true);
INSERT INTO public.moon VALUES (3, 4, 5, 'Deimos', false, true);
INSERT INTO public.moon VALUES (4, 5, 3, 'Io', true, true);
INSERT INTO public.moon VALUES (5, 5, 4, 'Europa', true, true);
INSERT INTO public.moon VALUES (6, 5, 1, 'Ganymede', true, true);
INSERT INTO public.moon VALUES (7, 5, 1, 'Callisto', true, true);
INSERT INTO public.moon VALUES (8, 5, 2, 'Amalthea', false, true);
INSERT INTO public.moon VALUES (9, 5, 2, 'Himalia', false, false);
INSERT INTO public.moon VALUES (10, 6, 1, 'Mimas', true, true);
INSERT INTO public.moon VALUES (11, 6, 4, 'Enceladus', true, true);
INSERT INTO public.moon VALUES (12, 6, 1, 'Tethys', true, true);
INSERT INTO public.moon VALUES (13, 6, 1, 'Dione', true, true);
INSERT INTO public.moon VALUES (14, 6, 1, 'Rhea', true, true);
INSERT INTO public.moon VALUES (15, 6, 4, 'Titan', true, true);
INSERT INTO public.moon VALUES (16, 6, 1, 'Iapetus', true, true);
INSERT INTO public.moon VALUES (17, 6, 2, 'Phoebe', true, false);
INSERT INTO public.moon VALUES (18, 7, 1, 'Titania', true, true);
INSERT INTO public.moon VALUES (19, 7, 1, 'Oberon', true, true);
INSERT INTO public.moon VALUES (20, 7, 1, 'Umbriel', true, true);
INSERT INTO public.moon VALUES (21, 7, 1, 'Miranda', true, true);
INSERT INTO public.moon VALUES (22, 8, 4, 'Triton', true, true);


--
-- Data for Name: moon_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_type VALUES (1, 'Regular', 'Large, spherical satellites with stable, circular orbits.');
INSERT INTO public.moon_type VALUES (2, 'Irregular', 'Smaller bodies with eccentric or highly inclined orbits.');
INSERT INTO public.moon_type VALUES (3, 'Volcanic', 'Moons characterized by active geological volcanism.');
INSERT INTO public.moon_type VALUES (4, 'Oceanic', 'Moons with a subsurface liquid ocean beneath an icy crust.');
INSERT INTO public.moon_type VALUES (5, 'Captured Asteroid', 'Asteroids captured by a planets gravity.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Mercury', 0.055, false, false, 1);
INSERT INTO public.planet VALUES (2, 1, 1, 'Venus', 0.815, true, false, 1);
INSERT INTO public.planet VALUES (3, 1, 1, 'Earth', 1, true, true, 1);
INSERT INTO public.planet VALUES (4, 1, 1, 'Mars', 0.107, true, false, 1);
INSERT INTO public.planet VALUES (5, 1, 2, 'Jupiter', 317.8, true, false, 1);
INSERT INTO public.planet VALUES (6, 1, 2, 'Saturn', 95.16, true, false, 1);
INSERT INTO public.planet VALUES (7, 1, 3, 'Uranus', 14.54, true, false, 1);
INSERT INTO public.planet VALUES (8, 1, 3, 'Neptune', 17.15, true, false, 1);
INSERT INTO public.planet VALUES (9, 2, 1, 'Proxima Centauri b', 1.27, true, true, 4);
INSERT INTO public.planet VALUES (10, 3, 1, 'TRAPPIST-1d', 0.388, true, true, 5);
INSERT INTO public.planet VALUES (11, 3, 6, 'TRAPPIST-1e', 0.692, true, true, 5);
INSERT INTO public.planet VALUES (12, 5, 5, 'Kepler-90h', 300, true, false, 8);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Composed primarily of silicate rocks or metals.');
INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Massive planet composed mostly of hydrogen and helium.');
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Composed mostly of volatiles like water, ammonia, and methane.');
INSERT INTO public.planet_type VALUES (4, 'Super-Earth', 'More massive than Earth, but lighter than ice giants.');
INSERT INTO public.planet_type VALUES (5, 'Hot Jupiter', 'Gas giants that orbit extremely close to their parent stars.');
INSERT INTO public.planet_type VALUES (6, 'Ocean World', 'Planets harboring a substantial amount of water as a surface ocean.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 5, 5, 'Sun', true, 1, 5778, 1);
INSERT INTO public.star VALUES (2, 2, 5, 5, 'Alpha Centauri A', true, 1.1, 5790, 1);
INSERT INTO public.star VALUES (3, 2, 6, 5, 'Alpha Centauri B', false, 0.9, 5260, 1);
INSERT INTO public.star VALUES (4, 2, 7, 5, 'Proxima Centauri', false, 0.12, 3042, 1);
INSERT INTO public.star VALUES (5, 3, 7, 5, 'TRAPPIST-1', true, 0.089, 2566, 1);
INSERT INTO public.star VALUES (6, 4, 3, 5, 'Sirius A', true, 2.02, 9940, 1);
INSERT INTO public.star VALUES (7, 4, 14, 7, 'Sirius B', false, 1.02, 25200, 1);
INSERT INTO public.star VALUES (8, 5, 5, 5, 'Kepler-90', true, 1.2, 6080, 1);


--
-- Data for Name: star_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_system VALUES (1, 1, 'Solar System', 'The gravitationally bound system comprising the Sun and its planetary system.', 26000.00);
INSERT INTO public.star_system VALUES (2, 1, 'Alpha Centauri', 'The closest star system to the Solar System.', 26004.30);
INSERT INTO public.star_system VALUES (3, 1, 'TRAPPIST-1', 'An ultra-cool red dwarf system with a remarkable seven terrestrial planets.', 26039.00);
INSERT INTO public.star_system VALUES (4, 1, 'Sirius System', 'A binary star system containing the brightest star in Earths night sky.', 25991.40);
INSERT INTO public.star_system VALUES (5, 1, 'Kepler-90', 'A system notable for having eight planets, similar to our Solar System.', 28800.00);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'Blue Supergiant', 'O', 'Extremely luminous, hot, and massive stars.');
INSERT INTO public.star_type VALUES (2, 'Blue-White Main Sequence', 'B', 'Very luminous and blue stars.');
INSERT INTO public.star_type VALUES (3, 'White Main Sequence', 'A', 'White stars, typically young and fast-rotating.');
INSERT INTO public.star_type VALUES (4, 'Yellow-White Dwarf', 'F', 'Slightly larger and hotter than the Sun.');
INSERT INTO public.star_type VALUES (5, 'Yellow Dwarf', 'G', 'Main-sequence stars like our Sun.');
INSERT INTO public.star_type VALUES (6, 'Orange Dwarf', 'K', 'Cooler and less massive than the Sun, excellent for exoplanet habitability.');
INSERT INTO public.star_type VALUES (7, 'Red Dwarf', 'M', 'The most common type of star, small and relatively cool.');
INSERT INTO public.star_type VALUES (8, 'L-Type Brown Dwarf', 'L', 'Very cool red dwarfs or large brown dwarfs.');
INSERT INTO public.star_type VALUES (9, 'Methane Brown Dwarf', 'T', 'Extremely cool objects with methane in their spectrum.');
INSERT INTO public.star_type VALUES (10, 'Y-Type Brown Dwarf', 'Y', 'The coolest known brown dwarfs, with temperatures akin to a household oven.');
INSERT INTO public.star_type VALUES (11, 'Carbon Star', 'C', 'Giant stars where carbon is more abundant than oxygen.');
INSERT INTO public.star_type VALUES (12, 'S-Type Star', 'S', 'Similar to M-type but with zirconium oxide bands.');
INSERT INTO public.star_type VALUES (13, 'Wolf-Rayet Star', 'W', 'Extremely hot massive stars rapidly losing their atmosphere.');
INSERT INTO public.star_type VALUES (14, 'White Dwarf (Hydrogen)', 'DA', 'White dwarf with a hydrogen-rich atmosphere.');
INSERT INTO public.star_type VALUES (15, 'White Dwarf (Helium)', 'DB', 'White dwarf with a helium-rich atmosphere.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


--
-- Name: luminosity_class_luminosity_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.luminosity_class_luminosity_class_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_type_moon_type_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_system_star_system_id_seq', 5, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 15, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: luminosity_class luminosity_class_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_class
    ADD CONSTRAINT luminosity_class_name_key UNIQUE (name);


--
-- Name: luminosity_class luminosity_class_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_class
    ADD CONSTRAINT luminosity_class_pkey PRIMARY KEY (luminosity_class_id);


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
-- Name: moon_type moon_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_name_key UNIQUE (name);


--
-- Name: moon_type moon_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_pkey PRIMARY KEY (moon_type_id);


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
-- Name: star_system star_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_name_key UNIQUE (name);


--
-- Name: star_system star_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_pkey PRIMARY KEY (star_system_id);


--
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_moon_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_type_id_fkey FOREIGN KEY (moon_type_id) REFERENCES public.moon_type(moon_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_luminosity_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_luminosity_class_id_fkey FOREIGN KEY (luminosity_class_id) REFERENCES public.luminosity_class(luminosity_class_id);


--
-- Name: star star_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- Name: star star_star_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_id_fkey FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- Name: star_system star_system_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


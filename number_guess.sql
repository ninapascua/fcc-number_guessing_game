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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 462, 25);
INSERT INTO public.games VALUES (2, 536, 25);
INSERT INTO public.games VALUES (3, 998, 26);
INSERT INTO public.games VALUES (4, 855, 26);
INSERT INTO public.games VALUES (5, 988, 25);
INSERT INTO public.games VALUES (6, 328, 25);
INSERT INTO public.games VALUES (7, 772, 25);
INSERT INTO public.games VALUES (8, 711, 27);
INSERT INTO public.games VALUES (9, 323, 27);
INSERT INTO public.games VALUES (10, 304, 28);
INSERT INTO public.games VALUES (11, 716, 28);
INSERT INTO public.games VALUES (12, 222, 27);
INSERT INTO public.games VALUES (13, 823, 27);
INSERT INTO public.games VALUES (14, 11, 27);
INSERT INTO public.games VALUES (15, 512, 29);
INSERT INTO public.games VALUES (16, 676, 29);
INSERT INTO public.games VALUES (17, 26, 30);
INSERT INTO public.games VALUES (18, 770, 30);
INSERT INTO public.games VALUES (19, 884, 29);
INSERT INTO public.games VALUES (20, 878, 29);
INSERT INTO public.games VALUES (21, 574, 29);
INSERT INTO public.games VALUES (22, 146, 31);
INSERT INTO public.games VALUES (23, 80, 31);
INSERT INTO public.games VALUES (24, 5, 32);
INSERT INTO public.games VALUES (25, 46, 32);
INSERT INTO public.games VALUES (26, 648, 31);
INSERT INTO public.games VALUES (27, 776, 31);
INSERT INTO public.games VALUES (28, 577, 31);
INSERT INTO public.games VALUES (29, 208, 33);
INSERT INTO public.games VALUES (30, 794, 33);
INSERT INTO public.games VALUES (31, 573, 34);
INSERT INTO public.games VALUES (32, 19, 34);
INSERT INTO public.games VALUES (33, 21, 33);
INSERT INTO public.games VALUES (34, 959, 33);
INSERT INTO public.games VALUES (35, 886, 33);
INSERT INTO public.games VALUES (36, 311, 35);
INSERT INTO public.games VALUES (37, 358, 35);
INSERT INTO public.games VALUES (38, 30, 36);
INSERT INTO public.games VALUES (39, 137, 36);
INSERT INTO public.games VALUES (40, 182, 35);
INSERT INTO public.games VALUES (41, 762, 35);
INSERT INTO public.games VALUES (42, 238, 35);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1738855605705');
INSERT INTO public.users VALUES (3, 'user_1738855605704');
INSERT INTO public.users VALUES (8, 'nins');
INSERT INTO public.users VALUES (10, 'user_1738855877087');
INSERT INTO public.users VALUES (12, 'user_1738855877086');
INSERT INTO public.users VALUES (17, 'user_1738856019002');
INSERT INTO public.users VALUES (19, 'user_1738856019001');
INSERT INTO public.users VALUES (24, 'nina');
INSERT INTO public.users VALUES (25, 'user_1738856174095');
INSERT INTO public.users VALUES (26, 'user_1738856174094');
INSERT INTO public.users VALUES (27, 'user_1738856393161');
INSERT INTO public.users VALUES (28, 'user_1738856393160');
INSERT INTO public.users VALUES (29, 'user_1738856492128');
INSERT INTO public.users VALUES (30, 'user_1738856492127');
INSERT INTO public.users VALUES (31, 'user_1738856539478');
INSERT INTO public.users VALUES (32, 'user_1738856539477');
INSERT INTO public.users VALUES (33, 'user_1738856644340');
INSERT INTO public.users VALUES (34, 'user_1738856644339');
INSERT INTO public.users VALUES (35, 'user_1738856695836');
INSERT INTO public.users VALUES (36, 'user_1738856695835');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (177, 2018, 'Final', 4, 2, 525, 526);
INSERT INTO public.games VALUES (178, 2018, 'Third Place', 2, 0, 527, 528);
INSERT INTO public.games VALUES (179, 2018, 'Semi-Final', 2, 1, 526, 528);
INSERT INTO public.games VALUES (180, 2018, 'Semi-Final', 1, 0, 525, 527);
INSERT INTO public.games VALUES (181, 2018, 'Quarter-Final', 3, 2, 526, 529);
INSERT INTO public.games VALUES (182, 2018, 'Quarter-Final', 2, 0, 528, 530);
INSERT INTO public.games VALUES (183, 2018, 'Quarter-Final', 2, 1, 527, 531);
INSERT INTO public.games VALUES (184, 2018, 'Quarter-Final', 2, 0, 525, 532);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 2, 1, 528, 533);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 1, 0, 530, 534);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 3, 2, 527, 535);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 2, 0, 531, 536);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 2, 1, 526, 537);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 2, 1, 529, 538);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 2, 1, 532, 539);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 4, 3, 525, 540);
INSERT INTO public.games VALUES (193, 2014, 'Final', 1, 0, 541, 540);
INSERT INTO public.games VALUES (194, 2014, 'Third Place', 3, 0, 542, 531);
INSERT INTO public.games VALUES (195, 2014, 'Semi-Final', 1, 0, 540, 542);
INSERT INTO public.games VALUES (196, 2014, 'Semi-Final', 7, 1, 541, 531);
INSERT INTO public.games VALUES (197, 2014, 'Quarter-Final', 1, 0, 542, 543);
INSERT INTO public.games VALUES (198, 2014, 'Quarter-Final', 1, 0, 540, 527);
INSERT INTO public.games VALUES (199, 2014, 'Quarter-Final', 2, 1, 531, 533);
INSERT INTO public.games VALUES (200, 2014, 'Quarter-Final', 1, 0, 541, 525);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 2, 1, 531, 544);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 2, 0, 533, 532);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 2, 0, 525, 545);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 2, 1, 541, 546);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 2, 1, 542, 536);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 2, 1, 543, 547);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 1, 0, 540, 534);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 2, 1, 527, 548);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (525, 'France');
INSERT INTO public.teams VALUES (526, 'Croatia');
INSERT INTO public.teams VALUES (527, 'Belgium');
INSERT INTO public.teams VALUES (528, 'England');
INSERT INTO public.teams VALUES (529, 'Russia');
INSERT INTO public.teams VALUES (530, 'Sweden');
INSERT INTO public.teams VALUES (531, 'Brazil');
INSERT INTO public.teams VALUES (532, 'Uruguay');
INSERT INTO public.teams VALUES (533, 'Colombia');
INSERT INTO public.teams VALUES (534, 'Switzerland');
INSERT INTO public.teams VALUES (535, 'Japan');
INSERT INTO public.teams VALUES (536, 'Mexico');
INSERT INTO public.teams VALUES (537, 'Denmark');
INSERT INTO public.teams VALUES (538, 'Spain');
INSERT INTO public.teams VALUES (539, 'Portugal');
INSERT INTO public.teams VALUES (540, 'Argentina');
INSERT INTO public.teams VALUES (541, 'Germany');
INSERT INTO public.teams VALUES (542, 'Netherlands');
INSERT INTO public.teams VALUES (543, 'Costa Rica');
INSERT INTO public.teams VALUES (544, 'Chile');
INSERT INTO public.teams VALUES (545, 'Nigeria');
INSERT INTO public.teams VALUES (546, 'Algeria');
INSERT INTO public.teams VALUES (547, 'Greece');
INSERT INTO public.teams VALUES (548, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 208, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 548, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

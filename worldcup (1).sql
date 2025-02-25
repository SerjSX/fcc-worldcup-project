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
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (407, 2018, 'Final', 313, 315, 4, 2);
INSERT INTO public.games VALUES (408, 2018, 'Third Place', 314, 317, 2, 0);
INSERT INTO public.games VALUES (409, 2018, 'Semi-Final', 315, 317, 2, 1);
INSERT INTO public.games VALUES (410, 2018, 'Semi-Final', 313, 314, 1, 0);
INSERT INTO public.games VALUES (411, 2018, 'Quarter-Final', 315, 316, 3, 2);
INSERT INTO public.games VALUES (412, 2018, 'Quarter-Final', 317, 321, 2, 0);
INSERT INTO public.games VALUES (413, 2018, 'Quarter-Final', 314, 318, 2, 1);
INSERT INTO public.games VALUES (414, 2018, 'Quarter-Final', 313, 319, 2, 0);
INSERT INTO public.games VALUES (415, 2018, 'Eighth-Final', 317, 320, 2, 1);
INSERT INTO public.games VALUES (416, 2018, 'Eighth-Final', 321, 335, 1, 0);
INSERT INTO public.games VALUES (417, 2018, 'Eighth-Final', 314, 322, 3, 2);
INSERT INTO public.games VALUES (418, 2018, 'Eighth-Final', 318, 323, 2, 0);
INSERT INTO public.games VALUES (419, 2018, 'Eighth-Final', 315, 324, 2, 1);
INSERT INTO public.games VALUES (420, 2018, 'Eighth-Final', 316, 325, 2, 1);
INSERT INTO public.games VALUES (421, 2018, 'Eighth-Final', 319, 326, 2, 1);
INSERT INTO public.games VALUES (422, 2018, 'Eighth-Final', 313, 327, 4, 3);
INSERT INTO public.games VALUES (423, 2014, 'Final', 328, 327, 1, 0);
INSERT INTO public.games VALUES (424, 2014, 'Third Place', 329, 318, 3, 0);
INSERT INTO public.games VALUES (425, 2014, 'Semi-Final', 327, 329, 1, 0);
INSERT INTO public.games VALUES (426, 2014, 'Semi-Final', 328, 318, 7, 1);
INSERT INTO public.games VALUES (427, 2014, 'Quarter-Final', 329, 330, 1, 0);
INSERT INTO public.games VALUES (428, 2014, 'Quarter-Final', 327, 314, 1, 0);
INSERT INTO public.games VALUES (429, 2014, 'Quarter-Final', 318, 320, 2, 1);
INSERT INTO public.games VALUES (430, 2014, 'Quarter-Final', 328, 313, 1, 0);
INSERT INTO public.games VALUES (431, 2014, 'Eighth-Final', 318, 331, 2, 1);
INSERT INTO public.games VALUES (432, 2014, 'Eighth-Final', 320, 319, 2, 0);
INSERT INTO public.games VALUES (433, 2014, 'Eighth-Final', 313, 332, 2, 0);
INSERT INTO public.games VALUES (434, 2014, 'Eighth-Final', 328, 333, 2, 1);
INSERT INTO public.games VALUES (435, 2014, 'Eighth-Final', 329, 323, 2, 1);
INSERT INTO public.games VALUES (436, 2014, 'Eighth-Final', 330, 334, 2, 1);
INSERT INTO public.games VALUES (437, 2014, 'Eighth-Final', 327, 335, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Eighth-Final', 314, 336, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (313, 'France');
INSERT INTO public.teams VALUES (314, 'Belgium');
INSERT INTO public.teams VALUES (315, 'Croatia');
INSERT INTO public.teams VALUES (316, 'Russia');
INSERT INTO public.teams VALUES (317, 'England');
INSERT INTO public.teams VALUES (318, 'Brazil');
INSERT INTO public.teams VALUES (319, 'Uruguay');
INSERT INTO public.teams VALUES (320, 'Colombia');
INSERT INTO public.teams VALUES (321, 'Sweden');
INSERT INTO public.teams VALUES (322, 'Japan');
INSERT INTO public.teams VALUES (323, 'Mexico');
INSERT INTO public.teams VALUES (324, 'Denmark');
INSERT INTO public.teams VALUES (325, 'Spain');
INSERT INTO public.teams VALUES (326, 'Portugal');
INSERT INTO public.teams VALUES (327, 'Argentina');
INSERT INTO public.teams VALUES (328, 'Germany');
INSERT INTO public.teams VALUES (329, 'Netherlands');
INSERT INTO public.teams VALUES (330, 'Costa Rica');
INSERT INTO public.teams VALUES (331, 'Chile');
INSERT INTO public.teams VALUES (332, 'Nigeria');
INSERT INTO public.teams VALUES (333, 'Algeria');
INSERT INTO public.teams VALUES (334, 'Greece');
INSERT INTO public.teams VALUES (335, 'Switzerland');
INSERT INTO public.teams VALUES (336, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 438, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 336, true);


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


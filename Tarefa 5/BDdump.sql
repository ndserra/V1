--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-03-25 00:26:48

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

--
-- TOC entry 3308 (class 0 OID 16402)
-- Dependencies: 212
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carros (id, modelo, cor) FROM stdin;
1	Renegade	Vermelha
2	Fusca	Amarelo
3	Fusca	Azul
4	Versa	Cinza
5	Sandero Stepway	Prata
6	Montana	Vermelho
7	Compass	Branco
8	Tracker	Preto
9	Uno	vermelho
\.


-- Completed on 2022-03-25 00:26:49

--
-- PostgreSQL database dump complete
--


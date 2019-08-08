--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: divisions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.divisions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.divisions OWNER TO "Guest";

--
-- Name: divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisions_id_seq OWNER TO "Guest";

--
-- Name: divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;


--
-- Name: employee_projects; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.employee_projects (
    id bigint NOT NULL,
    project_id bigint,
    employee_id bigint
);


ALTER TABLE public.employee_projects OWNER TO "Guest";

--
-- Name: employee_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.employee_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_projects_id_seq OWNER TO "Guest";

--
-- Name: employee_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.employee_projects_id_seq OWNED BY public.employee_projects.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    name character varying,
    "position" character varying,
    division_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO "Guest";

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO "Guest";

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO "Guest";

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO "Guest";

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: divisions id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);


--
-- Name: employee_projects id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employee_projects ALTER COLUMN id SET DEFAULT nextval('public.employee_projects_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-07 16:24:34.925944	2019-08-07 16:24:34.925944
\.


--
-- Data for Name: divisions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.divisions (id, name, created_at, updated_at) FROM stdin;
19	Hr	2019-08-08 20:51:16.934618	2019-08-08 20:51:16.934618
\.


--
-- Data for Name: employee_projects; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.employee_projects (id, project_id, employee_id) FROM stdin;
1	28	25
2	29	25
3	30	25
4	31	25
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.employees (id, name, "position", division_id, created_at, updated_at) FROM stdin;
25	Mike		19	2019-08-08 20:51:25.308622	2019-08-08 20:51:25.308622
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.projects (id, name, description, created_at, updated_at) FROM stdin;
1	nose picking	hecka boogs	2019-08-08 20:18:55.885085	2019-08-08 20:18:55.885085
2	nose picking	hecka boogs	2019-08-08 20:22:21.760882	2019-08-08 20:22:21.760882
3	nose picking	yep\r\n	2019-08-08 20:23:23.981179	2019-08-08 20:23:23.981179
4	nose picking	yep\r\n	2019-08-08 20:26:04.860345	2019-08-08 20:26:04.860345
5	nose picking	yep\r\n	2019-08-08 20:29:27.080811	2019-08-08 20:29:27.080811
6	nose picking	yep\r\n	2019-08-08 20:33:22.387237	2019-08-08 20:33:22.387237
7	nose picking	yep\r\n	2019-08-08 20:36:34.996963	2019-08-08 20:36:34.996963
8	ewqewq		2019-08-08 20:45:16.020373	2019-08-08 20:45:16.020373
9	Noneya	BIZZZNESSS	2019-08-08 20:51:41.244714	2019-08-08 20:51:41.244714
10	Noneya	BIZZZNESSS	2019-08-08 20:52:42.188647	2019-08-08 20:52:42.188647
11	Noneya	BIZZZNESSS	2019-08-08 20:53:41.042772	2019-08-08 20:53:41.042772
12	nose picking	fart	2019-08-08 21:15:22.125394	2019-08-08 21:15:22.125394
13	nose picking	fart	2019-08-08 21:16:45.035764	2019-08-08 21:16:45.035764
14	nose picking	fart	2019-08-08 21:17:31.747906	2019-08-08 21:17:31.747906
15	nose picking	fart	2019-08-08 21:20:11.530723	2019-08-08 21:20:11.530723
16	nose picking	fart	2019-08-08 21:20:55.604261	2019-08-08 21:20:55.604261
17	nose picking	fart	2019-08-08 21:21:57.300168	2019-08-08 21:21:57.300168
18	nose picking	fart	2019-08-08 21:23:44.412193	2019-08-08 21:23:44.412193
19	nose picking	fart	2019-08-08 21:24:23.604751	2019-08-08 21:24:23.604751
20	nose picking	fart	2019-08-08 21:24:45.203813	2019-08-08 21:24:45.203813
21	nose picking	dog	2019-08-08 21:27:16.260587	2019-08-08 21:27:16.260587
22	nose picking	fart	2019-08-08 21:31:06.102151	2019-08-08 21:31:06.102151
23	nose picking	fart	2019-08-08 21:31:29.467871	2019-08-08 21:31:29.467871
24	nose picking	fart	2019-08-08 21:32:54.123592	2019-08-08 21:32:54.123592
25	zcv	zxcv	2019-08-08 21:37:55.395793	2019-08-08 21:37:55.395793
26	nose picking	sdf	2019-08-08 21:46:49.103237	2019-08-08 21:46:49.103237
27	nose picking	sdf	2019-08-08 21:50:58.183705	2019-08-08 21:50:58.183705
28	nose picking	asdf	2019-08-08 21:53:14.1893	2019-08-08 21:53:14.1893
29	nose picking	asdf	2019-08-08 21:54:39.154065	2019-08-08 21:54:39.154065
30	asdf	asdf	2019-08-08 21:54:45.951082	2019-08-08 21:54:45.951082
31	nose picking	dfsfdfs	2019-08-08 21:55:25.470676	2019-08-08 21:55:25.470676
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190807162045
20190807164233
20190807164655
20190808170824
20190808170917
\.


--
-- Name: divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.divisions_id_seq', 19, true);


--
-- Name: employee_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.employee_projects_id_seq', 4, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.employees_id_seq', 25, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.projects_id_seq', 31, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: divisions divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);


--
-- Name: employee_projects employee_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employee_projects
    ADD CONSTRAINT employee_projects_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_employee_projects_on_employee_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_employee_projects_on_employee_id ON public.employee_projects USING btree (employee_id);


--
-- Name: index_employee_projects_on_project_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_employee_projects_on_project_id ON public.employee_projects USING btree (project_id);


--
-- Name: employees fk_rails_550e0790c5; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_550e0790c5 FOREIGN KEY (division_id) REFERENCES public.divisions(id);


--
-- PostgreSQL database dump complete
--


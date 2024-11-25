--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10
-- Dumped by pg_dump version 14.12

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
-- Name: about_about; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.about_about (
    id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    icon character varying(30) NOT NULL
);


--
-- Name: about_about_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.about_about_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: about_about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.about_about_id_seq OWNED BY public.about_about.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contact_contact; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_contact (
    id bigint NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL,
    phone character varying(20) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);


--
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contact_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: footer_footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_footer (
    id bigint NOT NULL,
    copyright character varying(200) NOT NULL,
    image_author_name character varying(100),
    image_author_link character varying(250),
    image_website_name character varying(100),
    image_website_link character varying(250)
);


--
-- Name: footer_footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.footer_footer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.footer_footer_id_seq OWNED BY public.footer_footer.id;


--
-- Name: hero_hero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hero_hero (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    subtitle character varying(300) NOT NULL,
    description character varying(500) NOT NULL,
    image character varying(100) NOT NULL
);


--
-- Name: hero_hero_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hero_hero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hero_hero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hero_hero_id_seq OWNED BY public.hero_hero.id;


--
-- Name: projects_project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_project (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    link character varying(250) NOT NULL,
    image character varying(100) NOT NULL
);


--
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects_project.id;


--
-- Name: projects_project_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_project_tags (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


--
-- Name: projects_project_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_project_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_project_tags_id_seq OWNED BY public.projects_project_tags.id;


--
-- Name: projects_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_tag (
    id bigint NOT NULL,
    name character varying(30) NOT NULL
);


--
-- Name: projects_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_tag_id_seq OWNED BY public.projects_tag.id;


--
-- Name: technologies_technology; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.technologies_technology (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(100) NOT NULL
);


--
-- Name: technologies_technology_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.technologies_technology_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: technologies_technology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.technologies_technology_id_seq OWNED BY public.technologies_technology.id;


--
-- Name: about_about id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_about_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: contact_contact id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: footer_footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_footer ALTER COLUMN id SET DEFAULT nextval('public.footer_footer_id_seq'::regclass);


--
-- Name: hero_hero id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hero_hero ALTER COLUMN id SET DEFAULT nextval('public.hero_hero_id_seq'::regclass);


--
-- Name: projects_project id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project ALTER COLUMN id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);


--
-- Name: projects_project_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project_tags ALTER COLUMN id SET DEFAULT nextval('public.projects_project_tags_id_seq'::regclass);


--
-- Name: projects_tag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_tag ALTER COLUMN id SET DEFAULT nextval('public.projects_tag_id_seq'::regclass);


--
-- Name: technologies_technology id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.technologies_technology ALTER COLUMN id SET DEFAULT nextval('public.technologies_technology_id_seq'::regclass);


--
-- Data for Name: about_about; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.about_about (id, title, description, icon) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add About	7	add_about
26	Can change About	7	change_about
27	Can delete About	7	delete_about
28	Can view About	7	view_about
29	Can add tag	8	add_tag
30	Can change tag	8	change_tag
31	Can delete tag	8	delete_tag
32	Can view tag	8	view_tag
33	Can add project	9	add_project
34	Can change project	9	change_project
35	Can delete project	9	delete_project
36	Can view project	9	view_project
37	Can add Technology	10	add_technology
38	Can change Technology	10	change_technology
39	Can delete Technology	10	delete_technology
40	Can view Technology	10	view_technology
41	Can add Contact	11	add_contact
42	Can change Contact	11	change_contact
43	Can delete Contact	11	delete_contact
44	Can view Contact	11	view_contact
45	Can add Hero	12	add_hero
46	Can change Hero	12	change_hero
47	Can delete Hero	12	delete_hero
48	Can view Hero	12	view_hero
49	Can add Footer	13	add_footer
50	Can change Footer	13	change_footer
51	Can delete Footer	13	delete_footer
52	Can view Footer	13	view_footer
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$cNMOypyvasYIuwfTFC31Jj$C8AB4cr47LdQh+wtmM7u711Et7qMONtrx5fg77m6DwA=	2024-05-03 10:53:52.469666+00	t	heidless			rob.lockhart@yahoo.co.uk	t	t	2024-05-02 15:00:43.962733+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contact_contact; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_contact (id, address, email, phone, latitude, longitude) FROM stdin;
1	Tottenham, North London	test@test.com	123456678	51.581268	-0.076490
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-05-02 15:07:57.783074+00	1	heidless portfolio sample apps	1	[{"added": {}}]	12	1
2	2024-05-02 15:08:01.284498+00	2	heidless portfolio sample apps	1	[{"added": {}}]	12	1
3	2024-05-02 22:05:24.218348+00	1	react	1	[{"added": {}}]	8	1
4	2024-05-02 22:05:29.825519+00	1	Audio Player	1	[{"added": {}}]	9	1
5	2024-05-02 22:09:29.160991+00	2	Flappy Bird	1	[{"added": {}}]	9	1
6	2024-05-02 22:11:08.039309+00	3	Route Finder	1	[{"added": {}}]	9	1
7	2024-05-02 22:14:46.70929+00	4	Flight Widget	1	[{"added": {}}]	9	1
8	2024-05-02 22:20:56.619704+00	5	GitHub Finder	1	[{"added": {}}]	9	1
9	2024-05-02 22:23:00.329648+00	6	mimescape	1	[{"added": {}}]	9	1
10	2024-05-03 09:15:39.50882+00	2	heidless portfolio sample apps	3		12	1
11	2024-05-03 09:17:46.891904+00	1	Rob's Portfolio Site Example Apps	2	[{"changed": {"fields": ["Title", "Subtitle", "Description"]}}]	12	1
12	2024-05-03 09:20:39.935965+00	1	Rob's Portfolio Site ---	2	[{"changed": {"fields": ["Subtitle", "Description"]}}]	12	1
13	2024-05-03 09:43:55.477948+00	1	test@test.com	1	[{"added": {}}]	11	1
14	2024-05-03 09:46:31.179373+00	1	Rob's Portfolio Site ---	2	[{"changed": {"fields": ["Description"]}}]	12	1
15	2024-05-03 09:47:13.629482+00	1	Rob's Portfolio Site ---	2	[{"changed": {"fields": ["Image"]}}]	12	1
16	2024-05-03 10:59:55.531306+00	1	test	1	[{"added": {}}]	10	1
17	2024-05-03 11:00:30.881551+00	2	python	1	[{"added": {}}]	10	1
18	2024-05-03 11:01:49.529688+00	2	python	3		10	1
19	2024-05-03 11:01:49.535337+00	1	test	3		10	1
20	2024-05-03 11:03:30.328542+00	3	python	1	[{"added": {}}]	10	1
21	2024-05-03 11:06:28.689874+00	4	p1	1	[{"added": {}}]	10	1
22	2024-05-03 11:30:54.494351+00	4	p1	3		10	1
23	2024-05-03 11:31:10.582101+00	3	python	3		10	1
24	2024-05-03 12:05:04.844213+00	5	python	1	[{"added": {}}]	10	1
25	2024-05-03 12:13:35.6214+00	5	python	3		10	1
26	2024-05-03 12:14:32.23955+00	6	test	1	[{"added": {}}]	10	1
27	2024-05-03 13:15:00.466609+00	7	python	1	[{"added": {}}]	10	1
28	2024-05-03 13:53:58.163568+00	8	ubuntu	1	[{"added": {}}]	10	1
29	2024-05-03 14:07:56.416591+00	6	test	3		10	1
30	2024-05-03 16:47:19.06339+00	3	Route Finder	3		9	1
31	2024-05-03 16:55:21.135194+00	7	svg test	1	[{"added": {}}]	9	1
32	2024-05-03 17:31:22.990176+00	9	ruby on rails	1	[{"added": {}}]	10	1
33	2024-05-03 17:31:48.051385+00	10	ruby	1	[{"added": {}}]	10	1
34	2024-05-03 17:32:15.281777+00	11	react	1	[{"added": {}}]	10	1
35	2024-05-03 17:32:40.561058+00	12	google cloud	1	[{"added": {}}]	10	1
36	2024-05-03 17:32:47.408039+00	12	google cloud	2	[]	10	1
37	2024-05-03 17:33:10.673749+00	13	astro	1	[{"added": {}}]	10	1
38	2024-05-03 17:33:42.562187+00	14	docker	1	[{"added": {}}]	10	1
39	2024-05-03 17:34:18.366184+00	15	postgres	1	[{"added": {}}]	10	1
40	2024-05-03 17:54:10.426174+00	2	test@test.com	1	[{"added": {}}]	11	1
41	2024-05-03 17:54:42.856906+00	2	test@test.com	3		11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	about	about
8	projects	tag
9	projects	project
10	technologies	technology
11	contact	contact
12	hero	hero
13	footer	footer
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	about	0001_initial	2024-05-02 15:00:06.24226+00
2	contenttypes	0001_initial	2024-05-02 15:00:06.346897+00
3	auth	0001_initial	2024-05-02 15:00:06.870159+00
4	admin	0001_initial	2024-05-02 15:00:07.033322+00
5	admin	0002_logentry_remove_auto_add	2024-05-02 15:00:07.085772+00
6	admin	0003_logentry_add_action_flag_choices	2024-05-02 15:00:07.146005+00
7	contenttypes	0002_remove_content_type_name	2024-05-02 15:00:07.260285+00
8	auth	0002_alter_permission_name_max_length	2024-05-02 15:00:07.352087+00
9	auth	0003_alter_user_email_max_length	2024-05-02 15:00:07.441966+00
10	auth	0004_alter_user_username_opts	2024-05-02 15:00:07.498814+00
11	auth	0005_alter_user_last_login_null	2024-05-02 15:00:07.570377+00
12	auth	0006_require_contenttypes_0002	2024-05-02 15:00:07.625522+00
13	auth	0007_alter_validators_add_error_messages	2024-05-02 15:00:07.681994+00
14	auth	0008_alter_user_username_max_length	2024-05-02 15:00:07.759547+00
15	auth	0009_alter_user_last_name_max_length	2024-05-02 15:00:07.830243+00
16	auth	0010_alter_group_name_max_length	2024-05-02 15:00:07.904872+00
17	auth	0011_update_proxy_permissions	2024-05-02 15:00:07.965523+00
18	auth	0012_alter_user_first_name_max_length	2024-05-02 15:00:08.068512+00
19	contact	0001_initial	2024-05-02 15:00:08.141865+00
20	footer	0001_initial	2024-05-02 15:00:08.221788+00
21	hero	0001_initial	2024-05-02 15:00:08.300757+00
22	projects	0001_initial	2024-05-02 15:00:08.510402+00
23	sessions	0001_initial	2024-05-02 15:00:08.624815+00
24	technologies	0001_initial	2024-05-02 15:00:08.683178+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
6gakz7vimpwppi46566z3cg7orthwvhm	.eJxVjDsOwjAQBe_iGlkxu_5R0ucM1tpr4wBypDipEHeHSCmgfTPzXiLQttaw9byEicVFKHH63SKlR2474Du12yzT3NZlinJX5EG7HGfOz-vh_h1U6vVb2-I0kVVosCAb61EXODM44oRRJQeaojcxgxtQZU7RMw4ejFdglQPx_gDbuDdS:1s2Y0Q:DeRFIhiTXK6Zy8y6EAC_uOmG3fVeO6U5a3Rds8MuyN4	2024-05-16 15:05:54.921983+00
bq95ixkrsoqurq64zjnxlqgj1o8ewzgi	.eJxVjDsOwjAQBe_iGlkxu_5R0ucM1tpr4wBypDipEHeHSCmgfTPzXiLQttaw9byEicVFKHH63SKlR2474Du12yzT3NZlinJX5EG7HGfOz-vh_h1U6vVb2-I0kVVosCAb61EXODM44oRRJQeaojcxgxtQZU7RMw4ejFdglQPx_gDbuDdS:1s2ozo:-AkiZOKmBvUs4U8RPunbBbiu-Z2WNV-MWwRMpQ1ithg	2024-05-17 09:14:24.444349+00
gmnh75850xazjepi46r1hxdfjzpjq0b5	.eJxVjDsOwjAQBe_iGlkxu_5R0ucM1tpr4wBypDipEHeHSCmgfTPzXiLQttaw9byEicVFKHH63SKlR2474Du12yzT3NZlinJX5EG7HGfOz-vh_h1U6vVb2-I0kVVosCAb61EXODM44oRRJQeaojcxgxtQZU7RMw4ejFdglQPx_gDbuDdS:1s2qY4:zVoCfjyviLdnAacDLqyv845wjI2tvN2O4pj083fe5Dg	2024-05-17 10:53:52.485291+00
\.


--
-- Data for Name: footer_footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_footer (id, copyright, image_author_name, image_author_link, image_website_name, image_website_link) FROM stdin;
\.


--
-- Data for Name: hero_hero; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hero_hero (id, title, subtitle, description, image) FROM stdin;
1	Rob's Portfolio Site	---	Spectrum of Apps covering multiple languages & deployment platforms. Include Apps developed in Ruby on Rails, Python & React. Postgres backend. Google Cloud deployment	images/pfolio_bg.png
\.


--
-- Data for Name: projects_project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_project (id, name, description, link, image) FROM stdin;
1	Audio Player	React: My music	https://audio-player-one.vercel.app/	images/audio-app-0.png
2	Flappy Bird	Game	https://flappy-bird-nextjs-six.vercel.app/	images/flappy-bird-0.png
4	Flight Widget	Flight Announcement Board	https://flight-widget-vanilla-javascript.vercel.app/	images/flight-ticker-0.png
5	GitHub Finder	Find a repository	https://github-finder-app-snowy-beta.vercel.app/	images/cat-bg.jpg
6	mimescape	wordpress site	https://mimeworks.com/	images/pantymimej_jpg.jpg
7	svg test	svg image	#	images/v-img.jpg
\.


--
-- Data for Name: projects_project_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_project_tags (id, project_id, tag_id) FROM stdin;
1	1	1
2	2	1
4	4	1
5	5	1
6	6	1
7	7	1
\.


--
-- Data for Name: projects_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_tag (id, name) FROM stdin;
1	react
\.


--
-- Data for Name: technologies_technology; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.technologies_technology (id, name, icon) FROM stdin;
7	python	icons/Python.svg
8	ubuntu	icons/Ubuntu.svg
9	ruby on rails	icons/Ruby_on_Rails.svg
10	ruby	icons/Ruby.svg
11	react	icons/React.svg
12	google cloud	icons/Google_Cloud.svg
13	astro	icons/Astro.svg
14	docker	icons/Docker.svg
15	postgres	icons/PostgresSQL.svg
\.


--
-- Name: about_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.about_about_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 41, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: footer_footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_footer_id_seq', 1, false);


--
-- Name: hero_hero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hero_hero_id_seq', 2, true);


--
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 7, true);


--
-- Name: projects_project_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_project_tags_id_seq', 7, true);


--
-- Name: projects_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_tag_id_seq', 1, true);


--
-- Name: technologies_technology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.technologies_technology_id_seq', 15, true);


--
-- Name: about_about about_about_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_about_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contact_contact contact_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: footer_footer footer_footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_footer
    ADD CONSTRAINT footer_footer_pkey PRIMARY KEY (id);


--
-- Name: hero_hero hero_hero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hero_hero
    ADD CONSTRAINT hero_hero_pkey PRIMARY KEY (id);


--
-- Name: projects_project projects_project_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project
    ADD CONSTRAINT projects_project_pkey PRIMARY KEY (id);


--
-- Name: projects_project_tags projects_project_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_pkey PRIMARY KEY (id);


--
-- Name: projects_project_tags projects_project_tags_project_id_tag_id_5891719a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_project_id_tag_id_5891719a_uniq UNIQUE (project_id, tag_id);


--
-- Name: projects_tag projects_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_tag
    ADD CONSTRAINT projects_tag_pkey PRIMARY KEY (id);


--
-- Name: technologies_technology technologies_technology_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.technologies_technology
    ADD CONSTRAINT technologies_technology_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: projects_project_tags_project_id_9bbfa17b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_project_tags_project_id_9bbfa17b ON public.projects_project_tags USING btree (project_id);


--
-- Name: projects_project_tags_tag_id_c949773d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_project_tags_tag_id_c949773d ON public.projects_project_tags USING btree (tag_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_project_tags projects_project_tag_project_id_9bbfa17b_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tag_project_id_9bbfa17b_fk_projects_ FOREIGN KEY (project_id) REFERENCES public.projects_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_project_tags projects_project_tags_tag_id_c949773d_fk_projects_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_tag_id_c949773d_fk_projects_tag_id FOREIGN KEY (tag_id) REFERENCES public.projects_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM cloudsqladmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cloudsqlsuperuser;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: FUNCTION pg_replication_origin_advance(text, pg_lsn); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_create(text); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_drop(text); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_oid(text); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_progress(text, boolean); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_session_is_setup(); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_session_progress(boolean); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_session_reset(); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_session_setup(text); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_xact_reset(); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO cloudsqlsuperuser;


--
-- Name: FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn); Type: ACL; Schema: pg_catalog; Owner: -
--

GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO cloudsqlsuperuser;


--
-- PostgreSQL database dump complete
--


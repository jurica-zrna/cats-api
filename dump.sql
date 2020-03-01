--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

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
-- Name: CatBreeds; Type: TABLE; Schema: public; Owner: userTDK
--

CREATE TABLE public."CatBreeds" (
    "Id" bigint NOT NULL,
    "Name" text,
    "Geography" text,
    "Origin" text,
    "Body" text,
    "Coat" text,
    "Pattern" text,
    "ImageUrl" text
);


ALTER TABLE public."CatBreeds" OWNER TO "userTDK";

--
-- Name: CatBreeds_Id_seq; Type: SEQUENCE; Schema: public; Owner: userTDK
--

ALTER TABLE public."CatBreeds" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."CatBreeds_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: userTDK
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO "userTDK";

--
-- Data for Name: CatBreeds; Type: TABLE DATA; Schema: public; Owner: userTDK
--

COPY public."CatBreeds" ("Id", "Name", "Geography", "Origin", "Body", "Coat", "Pattern", "ImageUrl") FROM stdin;
172	Abyssinian	Asia	Natural	Moderate	Short	Ticked	\N
173	Aegean	Greece	Natural	Moderate	Semi-long	Bicolored or tricolored	\N
174	American Bobtail	United States	Mutation	Moderate	Short and long	All	\N
175	American Curl	United States	Mutation	Moderate	Short and long	All	\N
176	American Shorthair	United States	Natural	Moderate	Short	All but colorpoint	\N
177	American Wirehair	United States	Mutation	Moderate	Rex	All but colorpoint	\N
178	Aphrodite Giant	Cyprus	Natural	Lean and muscular	All	All but cinammon and chocolate	\N
179	Arabian Mau	Arabian Peninsula	Natural	Moderate and Muscular	Short	Orange	\N
180	Asian cat	Developed in the United Kingdom (foundation stock from Asia)	Natural	Moderate	Short	Evenly solid	\N
181	Asian Semi-longhair	United Kingdom	Crossbreed of Burmese and the domestic longhair	Cobby	Semi-long	Evenly solid	\N
182	Australian Mist	Australia	Crossbreed of Abyssinian and Burmese	Moderate	Short	Spotted or tabby	\N
183	Balinese	Developed in the United States (foundation stock from Thailand)	Variety of the Siamese cat	Oriental	Long	Colorpoint	\N
184	Bambino	United States	Crossbreed of Munchkin and Sphynx	Dwarf	Hairless or downy	All	\N
185	Bengal	Developed in the United States (foundation stock from Asia)	Hybrid of Abyssinian and Egyptian Mau × leopard cat (Prionailurus bengalensis)	Large	Short	Spotted, marbled, or rosetted	\N
186	Birman	Developed in France (foundation stock from Burma)	Crossbreed of the original Birman with Siamese and Persian	Cobby	Semi-long	Colorpoint with white feet	\N
187	Bombay	Developed in the United States (some foundation stock from Burma and Thailand)	Crossbreed of American Shorthair and Burmese	Moderate	Short	Solid black	\N
188	Brazilian Shorthair	Brazil	Natural	Moderate	Short	All	\N
189	British Longhair	United Kingdom	Natural	Cobby	Medium	All	\N
190	British Shorthair	United Kingdom (England)	Natural	Cobby	Short	All	\N
191	Burmese	Burma (Myanmar)	Natural	Moderate	Short	Solid	\N
192	Burmilla	United Kingdom (England)	Crossbreed of Burmese and Chinchilla Persian	Semi-Cobby	Short/long	Solid, in Shaded Silver and Silver Tipped patterns	\N
193	California Spangled	United States	Crossbreed of Abyssinian, American Shorthair and British Shorthair	Moderate	Short	Spotted	\N
194	Chantilly-Tiffany	United States	Natural	Cobby	Long	Solid, ticked, spotted and blotched tabby	\N
195	Chartreux	France	Natural	Cobby	Short	Solid blue	\N
196	Chausie	France	Hybrid of Abyssinian× jungle cat (Felis chaus)	Moderate	Short	Ticked	\N
197	Colourpoint Shorthair	England	Crossbreed of Abyssinian, Siamese and the domestic shorthair	Oriental	Short	Colorpoint	\N
198	Cornish Rex	United Kingdom (England)	Mutation	Moderate	Rex	All	\N
199	Cymric or Manx Longhair; Longhaired Manx		Mutation of the original Manx	Semi-Cobby	Long	All but colorpoint	\N
200	Cyprus	Cyprus	Natural	Lean and muscular	All	All but colorpoint and mink	\N
201	Devon Rex	United Kingdom (England)	Mutation	Oriental	Rex	All	\N
202	Donskoy or Don Sphynx	Russia	Mutation	Oriental	Hairless	Solid	\N
203	Dragon Li or Chinese Li Hua	China	Natural	Moderate	Short	Striped tabby	\N
204	Dwelf		Crossbreed of American Curl, Munchkin and Sphinx	Dwarf	Hairless	All	\N
205	Egyptian Mau	Egypt	Natural	Moderate and muscular	Short	Spotted	\N
206	European Shorthair	Continental Europe	Natural	Moderate	Short	All but chocolate, lilac, cinnamon, fawn, amber, ticked, or colorpoint	\N
207	Exotic Shorthair	United States	Crossbreed of American Shorthair and Persian	Cobby	Short	All	\N
208	Foldex	Canada	Crossbreed of Exotic Shorthair and Scottish Fold	Cobby	Short	All	\N
209	German Rex	Germany	Mutation	Moderate	Rex	All	\N
210	Havana Brown	United Kingdom (England)	Crossbreed of Siamese and black short-haired cats, both chocolate color	Moderate, Oriental	Short	Solid brown	\N
211	Highlander	United States	Crossbreed/hybrid of Desert Lynx and Jungle Curl	Moderate	Short/long	All	\N
212	Himalayan or Colorpoint Persian		Crossbreed of Persian and Siamese	Cobby	Long	Colorpoint	\N
213	Japanese Bobtail	Japan	Natural, mutation	Moderate	Short/long	All but colorpoint and ticked	\N
214	Khao Manee	Thailand	Natural	Moderate	Short	Solid white	\N
215	Korat	Thailand	Natural	Muscular, Moderate	Short	Solid blue	\N
216	Korean Bobtail	Korea	Natural, mutation	Moderate	Short/long	Colorprint	\N
217	Korn Ja	Thailand	Natural	Small	Short	Solid black	\N
218	Kurilian Bobtail or Kuril Islands Bobtail	Eastern Russia and Japan	Natural, mutation	Semi-cobby	Short/long	All but colorpoint	\N
219	LaPerm	United States	Mutation	Moderate	Rex	All	\N
220	Lykoi	United States	Mutation	Moderate	Partly hairless	Ticked	\N
221	Maine Coon	United States	Natural	Large	Long	All but colorpoint and ticked	\N
222	Manx	United Kingdom (Isle of Man)	Natural, mutation	Moderate	Short/long	All but colorpoint	\N
223	Mekong Bobtail	Russia	Mutation	Moderate	Short	Colorpoint	\N
224	Minskin	United States	Crossbreed of Munchkin and Sphynx	Dwarf cat	Short/hairless	All	\N
225	Napoleon		Crossbreed of Persian and Munchkin	Dwarf	Short/long	Varied	\N
226	Munchkin	United States	Mutation	Dwarf	Short/long	All	\N
227	Nebelung	United States		Cobby	Semi-long	Solid blue	\N
228	Norwegian Forest Cat	Norway	Natural	Cobby	Long	Traditional, sepia, or mink	\N
229	Ocicat	United States	Crossbreed of Abyssinian, American Shorthair and Siamese	Large	Short	Spotted	\N
230	Ojos Azules	United States	Crossbreed	Moderate	Short	All	\N
231	Oregon Rex	United States	Mutation		Rex		\N
232	Oriental Bicolor	Developed in the United States and United Kingdom, later in Continental Europe; foundation stock ultimately from Thailand	Variety of the Oriental Shorthair	Oriental	Short	Bicolor	\N
233	Persian (modern)	Developed in the United States and Europe (foundation stock from Greater Iran)	Mutation, from the traditional Persian	Cobby	Long	All	\N
234	Persian (traditional)	Greater Iran	Natural, but some crossing with Turkish Angora	Cobby	Long	All	\N
235	Peterbald	Russia	Crossbreed of Donskoy, Oriental Shorthair and Siamese. Before, it was between the Balinese and Javanese	Oriental	Hairless/flocked, velour, brush, or straight coat	All	\N
236	Pixie-bob	United States	Mutation (falsely claimed to be a bobcat hybrid early on)	Medium	Short	Spotted	\N
237	Ragamuffin, or Liebling (obsolete)	United States	Crossbreed of Ragdoll with limited out-crossing to Himalayan, Persian, other long-haired cats	Cobby	Long	All	\N
238	Ragdoll	United States	Behavioural Mutation in a crossbreed, presumed Persian or Turkish Angora and Birman or Burmese	Cobby	Long	Colorpoint, mitted, or bicolor	\N
239	Raas	Indonesia	Natural		Short		\N
240	Russian Blue	Russia	Natural	Moderate, Oriental	Short	Solid blue	\N
241	Russian White, Black, and Tabby	Developed in Australia (foundation stock from Russia)	Crossbreeds of Russian Blue and short-haired cats, from Siberia, Russia	Moderate	Short	Solid white, solid black and tabby	\N
242	Sam sawet	Thailand	Variety of the Thai cat	Moderate	Short	Solid	\N
243	Savannah	United States	Hybrid of Domestic cat × serval (Leptailurus serval)	Large	Short	Spotted	\N
244	Scottish Fold	United Kingdom (Scotland)	Mutation of the bones and cartilage	Cobby	Short/long	All	\N
245	Selkirk Rex	United States	Mutation, crossbreed of American Shorthair, Persian, Himalayan, Exotic Shorthair and British Shorthair	Moderate	Rex (Short/long)	All	\N
246	Serengeti	United States	Crossbreed of Bengal and Oriental Shorthair	Oriental	Short	Spotted	\N
247	Serrade Petit	France	Natural	Semi-Cobby	Short	Tabby	\N
248	Siamese (modern) (for traditional, see Thai below)	Developed in the United States and Europe (foundation stock from Thailand)	Mutation of the Thai cat	Oriental	Short	Colorpoint	\N
249	Siberian or Siberian Forest Cat; Neva Masquerade (colorpoint variety)	Russia, Ukraine	Natural	Semi-cobby	Semi-long	All	\N
250	Singapura	Developed in the United States (foundation stock from Singapore Island	Crossbreed of Burmese and Abyssinian, and a variety of the Australian Mist	Small	Short	Ticked	\N
251	Snowshoe	United States	Crossbreed of American Shorthair and Siamese	Moderate	Short	Colorpoint with white feet	\N
252	Sokoke	Kenya	Natural	Moderate	Short	Ticked tabby	\N
253	Somali	United States, Canada	Mutation	Cobby	Long	Ticked	\N
254	Sphynx	Canada, Europe	Mutation	Oriental	Hairless	All	\N
255	Suphalak	Thailand	Natural	Moderate	Short	Solid	\N
256	Thai Lilac	Thailand	Variety of the Korat	Moderate and muscular	Short	Solid lilac	\N
257	Tonkinese	Canada, United States	Crossbreed of Burmese and Siamese	Oriental, Moderate	Short	Colorpoint, mink, or solid	\N
258	Toyger	United States	Crossbreed/hybrid of Bengal and the Domestic Shorthair	Moderate	Short	Striped	\N
259	Turkish Angora	Turkey	Natural	Semi-Cobby	Semi-long	All but colorpoint	\N
260	Turkish Van	Developed in the United Kingdom (foundation stock from Turkey)	Natural	Semi-Cobby	Semi-long	Van pattern	\N
261	Ukrainian Levkoy	Ukraine	Crossbred of Donskoy and Scottish Fold	Moderate	Hairless	Grey	\N
262	Wila Krungthep	Thailand	Mutation	Oriental	Short	Solid brown	\N
263	York Chocolate	United States (New York)	Natural	Semi-Cobby	Long	Solid brown	\N
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: userTDK
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20200229200644_initial	3.1.2
\.


--
-- Name: CatBreeds_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: userTDK
--

SELECT pg_catalog.setval('public."CatBreeds_Id_seq"', 263, true);


--
-- Name: CatBreeds PK_CatBreeds; Type: CONSTRAINT; Schema: public; Owner: userTDK
--

ALTER TABLE ONLY public."CatBreeds"
    ADD CONSTRAINT "PK_CatBreeds" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: userTDK
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- PostgreSQL database dump complete
--


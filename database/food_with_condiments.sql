
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 15.2

-- Started on 2023-07-11 21:07:51 CEST

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: minhpham
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 24764)
-- Name: condiment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condiment (
    condiment_id integer NOT NULL,
    condiment_code character varying(255),
    display_name character varying(255),
    condiment_portion_size character varying(255),
    condiment_portion_code integer,
    condiment_calories double precision,
    condiment_nutrition_id integer NOT NULL
);


ALTER TABLE public.condiment OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24763)
-- Name: condiment_condiment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.condiment ALTER COLUMN condiment_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.condiment_condiment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 24810)
-- Name: condiment_condiment_nutrition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.condiment ALTER COLUMN condiment_nutrition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.condiment_condiment_nutrition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 24785)
-- Name: condiment_nutrition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condiment_nutrition (
    condiment_nutrition_id integer NOT NULL,
    condiment_code character varying(255),
    condiment_grains double precision,
    condiment_whole_grains double precision,
    condiment_vegetables double precision,
    condiment_dkgreen double precision,
    condiment_orange double precision,
    condiment_starchy_vegetables double precision,
    condiment_other_vegetables double precision,
    condiment_fruits double precision,
    condiment_milk double precision,
    condiment_meat double precision,
    condiment_soy double precision,
    condiment_drybeans_peas double precision,
    condiment_oils double precision,
    condiment_solid_fats double precision,
    condiment_added_sugars double precision,
    condiment_alcohol double precision,
    condiment_saturated_fats double precision
);


ALTER TABLE public.condiment_nutrition OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24784)
-- Name: condiment_nutrition_condiment_nutrition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.condiment_nutrition ALTER COLUMN condiment_nutrition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.condiment_nutrition_condiment_nutrition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 24755)
-- Name: food_with_condiments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food_with_condiments (
    survey_food_code character varying(255) NOT NULL,
    display_name character varying(255),
    cond_1_code integer,
    cond_1_name character varying(100),
    cond_2_code integer,
    cond_2_name character varying(100),
    cond_3_code integer,
    cond_3_name character varying(100),
    cond_4_code integer,
    cond_4_name character varying(100),
    cond_5_code integer,
    cond_5_name character varying(100)
);


ALTER TABLE public.food_with_condiments OWNER TO postgres;

--
-- TOC entry 3611 (class 0 OID 24764)
-- Dependencies: 211
-- Data for Name: condiment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condiment (condiment_id, condiment_code, display_name, condiment_portion_size, condiment_portion_code, condiment_calories, condiment_nutrition_id) FROM stdin;
1	11111000	Whole milk	1/2  cup	10205	73.2	1
2	11111000	Whole milk	2 Tablespoons	30000	18.3	2
3	11112210	1% milk (low fat)	1/2  cup	10205	51.24	3
4	11112210	1% milk (low fat)	2 Tablespoons	30000	12.81	4
5	11113000	Fat free milk (skim)	1/2  cup	10205	41.65	5
6	11113000	Fat free milk (skim)	2 Tablespoons	30000	10.4125	6
7	11320000	Soymilk, plain (calcium fortified)	1/2  cup	10205	49	7
8	12110100	Light cream (coffee or table cream)	2 Tbsp	30000	58.5	8
9	12120100	Half & Half	2 Tbsp	30000	39.26	9
10	12140000	Whipped cream (sweetened)	1/4 cup	10205	103.53	10
11	12210200	Coffee Mate creamer (liquid)	2 Tbsp	30000	40.8	11
12	12210250	Coffee Mate Lite creamer (liquid)	2 Tbsp	30000	20.7	12
13	12310100	Sour cream	2 Tbsp	60597	61.525	13
14	14104010	Cheese (cheddar, Swiss)	1 slice (1 oz)	61937	114.2505	14
15	14109030	Low fat cheddar or Swiss	1 slice (1 oz)	61937	50	15
16	14301010	Cream cheese (regular)	1 Tbsp	21000	50.605	16
17	14303010	Low fat cream cheese	1 Tbsp	21000	34.65	17
18	14420100	Cheese spread or dip	2 Tablespoons	10205	88.45	18
19	27111410	Chili con carne (with beans)	1/4 cup	10205	66.04	19
20	28500000	Chicken gravy	1/4 cup	10205	47.005	20
21	28500000	Turkey gravy	1/4 cup	10205	47.005	21
22	28500040	Beef gravy	1/4 cup	10205	30.8725	22
23	41205070	Hummus	2 Tbsp	21000	53.1	23
24	56205010	White rice, no fat added	1/2  cup	10043	101.91	24
25	56205110	Brown rice, no fat added	1/2  cup	10043	107.25	25
26	58150110	Fried rice (plain)	1/2  cup	10205	125.33	26
27	61204010	Lemon juice	1 Tbsp	30000	3.8125	27
28	63101120	Applesauce (unsweetened)	1/4 cup	10149	26.23	28
29	63409010	Guacamole	1/4 cup	10205	91.4525	29
30	64401000	Vinegar	1 Tbsp	1025	2.016	30
31	74101000	Tomato (raw)	1 slice	61400	3.6	31
32	74303000	Ketchup (catsup)	1 Tbsp	30000	14.25	32
33	74402100	Salsa	1 Tbsp	21000	4.48	33
34	74406010	Barbeque sauce	2 Tablespoons	10205	23.4375	34
35	74406100	Steak sauce (A-1)	1 Tbsp	21000	9.76	35
36	74406500	Cocktail sauce	2 Tablespoons	10205	27.3	36
37	75113000	Lettuce	1 leaf	61362	0.8	37
38	75230010	Sauerkraut (no fat added)	1/4 cup	10205	6.745	38
39	75503020	Pickle relish	2 tsp	61579	13	39
40	75506010	Mustard	1 tsp	22000	3.3	40
41	81101000	Butter	1 tsp	61632	35.85	41
42	81102020	Tub margraine	1 tsp	21000	33.55176	42
43	81104010	Reduced calorie spread (margarine type)	1 tsp	61631	17.25	43
44	81302050	Tartar sauce	1 Tbsp	21000	74.304	44
45	81302060	Horseradish sauce	1 Tbsp	21000	29.26	45
46	82101000	Vegetable oil	1 tsp	21000	40	46
47	83101000	Blue cheese dressing	1 Tbsp	21000	77.112	47
48	83104000	French dressing	1 Tbsp	21000	71.292	48
49	83106000	Italian dressing (oil and vinegar)	1 Tbsp	21000	42.777	49
50	83107000	Mayonnaise (regular)	1 Tbsp	21000	98.946	50
51	83110000	Miracle whip salad dressing	1 Tbsp	21000	57.33	51
52	83112500	Creamy dressing (ranch)	1 Tbsp	21000	71.442	52
53	83200100	Low-calorie salad dressing	1 Tbsp	21000	23.814	53
54	83203250	Fat-free mayonnaise-type dressing	1 Tbsp	21000	13.44	54
55	83204000	Low calorie mayonnaise	1 Tbsp	21000	36.192	55
56	91101010	White sugar (granulated or lump)	1 tsp	22000	16.254	56
57	91101020	Powdered sugar (confectioner's sugar)	1 tsp	22000	9.725	57
58	91102010	Brown sugar	1 tsp	22000	17.342	58
59	91300010	Syrup (regular)	1 Tbsp	21000	53	59
60	91302010	Honey	1 Tbsp	21000	63.84	60
61	91361010	Sweet and sour sauce	1 Tbsp	21000	14.1	61
62	91401000	Jelly (all flavors)	1 Tbsp	21000	50.54	62
63	91406500	All-fruit preserves	1 Tbsp	21000	36.6	63
\.


--
-- TOC entry 3613 (class 0 OID 24785)
-- Dependencies: 213
-- Data for Name: condiment_nutrition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condiment_nutrition (condiment_nutrition_id, condiment_code, condiment_grains, condiment_whole_grains, condiment_vegetables, condiment_dkgreen, condiment_orange, condiment_starchy_vegetables, condiment_other_vegetables, condiment_fruits, condiment_milk, condiment_meat, condiment_soy, condiment_drybeans_peas, condiment_oils, condiment_solid_fats, condiment_added_sugars, condiment_alcohol, condiment_saturated_fats) FROM stdin;
1	11111000	0	0	0	0	0	0	0	0	0.5002	0	0	0	0	34.78464	0	0	2.2692
2	11111000	0	0	0	0	0	0	0	0	0.12505	0	0	0	0	8.69616	0	0	0.5673
3	11112210	0	0	0	0	0	0	0	0	0.5002	0	0	0	0	9.75024	0	0	0.7686
4	11112210	0	0	0	0	0	0	0	0	0.12505	0	0	0	0	2.43756	0	0	0.19215
5	11113000	0	0	0	0	0	0	0	0	0.4998	0	0	0	0	0	0	0	0.147
6	11113000	0	0	0	0	0	0	0	0	0.12495	0	0	0	0	0	0	0	0.03675
7	11320000	0	0	0	0	0	0	0	0	0	0	0.4998	0	0.27386	0	0	0	0.25725
8	12110100	0	0	0	0	0	0	0	0	0	0	0	0	0	52.137	0	0	3.606
9	12120100	0	0	0	0	0	0	0	0	0	0	0	0	0	31.257	0	0	2.16232
10	12140000	0	0	0	0	0	0	0	0	0	0	0	0	0	93.20378	6.69242	0	6.44385
11	12210200	0	0	0	0	0	0	0	0	0	0	0	0	0	26.919	13.22425	0	0.582
12	12210250	0	0	0	0	0	0	0	0	0	0	0	0	0	9.45	10.57648	0	0.27
13	12310100	0	0	0	0	0	0	0	0	0	0	0	0	0	54.234	0	0	3.75188
14	14104010	0	0	0	0	0	0	0	0	0.66679	0	0	0	0	83.35751	0	0	5.97902
15	14109030	0	0	0	0	0	0	0	0	0.9999	0	0	0	0	11.21384	0	0	0.925
16	14301010	0	0	0	0	0	0	0	0	0	0	0	0	0	45.50535	0	0	3.18565
17	14303010	0	0	0	0	0	0	0	0	0	0	0	0	0	23.76	0	0	1.6635
18	14420100	0	0	0	0	0	0	0	0	0.53802	0	0	0	0	57.39795	3.62887	0	4.06565
19	27111410	0	0	0.17526	0	0	0	0.17526	0	0	0.43434	0	0.07176	0	12.64729	1.06309	0	0.99695
20	28500000	0.30048	0	0.00179	0	0	0	0.00179	0	0.00416	0.08032	0.00476	0	0.02367	27.3587	0.08704	0	0.83895
21	28500000	0.30048	0	0.00179	0	0	0	0.00179	0	0.00416	0.08032	0.00476	0	0.02367	27.3587	0.08704	0	0.83895
22	28500040	0.37164	0	0.00117	0	0	0	0.00117	0	0.00058	0.09436	0.00641	0	0.02019	8.61343	0.00947	0	0.66988
23	41205070	0	0	0.0021	0	0	0	0.0021	0.0123	0	0.0999	0	0.1446	0.39227	0	0	0	0.336
24	56205010	1.00014	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0553
25	56205110	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.16575
26	58150110	0.68309	0	0.16517	0	0	0.04233	0.12284	0	0	0.17098	0	0	0.7767	3.60801	0	0	0.7553
27	61204010	0	0	0	0	0	0	0	0.06253	0	0	0	0	0	0	0	0	0
28	63101120	0	0	0	0	0	0	0	0.2501	0	0	0	0	0	0	0	0	0.0061
29	63409010	0	0	0.00291	0	0	0	0.00291	0.25	0	0	0	0	0	0	0	0	1.20577
30	64401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
31	74101000	0	0	0.1112	0	0	0	0.1112	0	0	0	0	0	0	0	0	0	0.008
32	74303000	0	0	0.0849	0	0	0	0.0849	0	0	0	0	0	0	0	9.49884	0	0.012
33	74402100	0	0	0.10608	0	0	0	0.10608	0	0	0	0	0	0	0	0	0	0.0048
34	74406010	0.0875	0	0.00625	0	0	0	0.00625	0	0	0	0	0	0.00069	0	5.19112	0	0.08438
35	74406100	0	0	0.04864	0	0	0	0.04864	0.00688	0	0	0	0	0.00021	0	3.07136	0	0.0064
36	74406500	0	0	0.125	0	0	0	0.125	0.01297	0	0	0	0	0	0	15.65827	0	0.02389
37	75113000	0	0	0.07272	0	0	0	0.07272	0	0	0	0	0	0	0	0	0	0.0008
38	75230010	0	0	0.24992	0	0	0	0.24992	0	0	0	0	0	0	0	0	0	0.0142
39	75503020	0	0	0.0408	0	0	0	0.0408	0	0	0	0	0	0	0	1.31657	0	0.006
40	75506010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.008
41	81101000	0	0	0	0	0	0	0	0	0	0	0	0	0	35.85	0	0	2.5685
42	81102020	0	0	0	0	0	0	0	0	0	0	0	0	0.83723	0	0	0	0.60777
43	81104010	0	0	0	0	0	0	0	0	0	0	0	0	0.43111	0	0	0	0.385
44	81302050	0.01771	0	0.00734	0	0	0	0.00734	0	0	0.01541	0	0	1.59626	0.54043	1.45116	0	1.1088
45	81302060	0	0	0.00056	0	0	0	0.00056	0	0	0	0	0	0	25.6788	0	0	1.7766
46	82101000	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0.57
47	83101000	0	0	0	0	0	0	0	0	0.03106	0.03519	0	0	1.56036	7.87506	1.28571	0	1.5147
48	83104000	0	0	0.00406	0	0	0	0.00406	0	0	0	0	0	1.5522	0	8.38784	0	0.8814
49	83106000	0	0	0	0	0	0	0	0	0	0	0	0	0.92617	0	4.33665	0	0.65709
50	83107000	0	0	0	0	0	0	0	0	0	0.02346	0	0	2.3713	0.53033	0.00673	0	1.63944
51	83110000	0.03793	0	0	0	0	0	0	0	0	0.00956	0	0	1.05647	0.62975	2.9365	0	0.7203
52	83112500	0	0	0.00191	0	0	0	0.00191	0	0	0	0	0	1.6497	2.80079	2.30093	0	1.12455
53	83200100	0	0	0.00875	0	0	0	0.00875	0	0.00065	0.00081	0	0	0.3524	0.16767	4.98982	0	0.1296
54	83203250	0.0752	0	0	0	0	0	0	0	0	0	0	0	0	3.88368	6.20253	0	0.096
55	83204000	0.10015	0	0	0	0	0	0	0.00078	0	0.00203	0	0	0.65277	0.19796	3.42056	0	0.5148
56	91101010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16.254	0	0
57	91101020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	9.48177	0	0.0005
58	91102010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	17.14365	0	0
59	91300010	0	0	0	0	0	0	0	0	0	0	0	0	0.00444	0	49.47393	0	0.004
60	91302010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	63.84	0	0
61	91361010	0.0657	0	0	0	0	0	0	0	0	0	0	0	0	0	10.0913	0	0.00015
62	91401000	0	0	0	0	0	0	0	0.02432	0	0	0	0	0	0	27.46698	0	0.0019
63	91406500	0	0	0	0	0	0	0	0.0753	0	0	0	0	0	0	0	0	0.012
\.


--
-- TOC entry 3609 (class 0 OID 24755)
-- Dependencies: 209
-- Data for Name: food_with_condiments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food_with_condiments (survey_food_code, display_name, cond_1_code, cond_1_name, cond_2_code, cond_2_name, cond_3_code, cond_3_name, cond_4_code, cond_4_name, cond_5_code, cond_5_name) FROM stdin;
51208000	100% Whole Wheat Bagel	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	14301010	Cream cheese (regular)	14303010	Low fat cream cheese
58100100	Beef burrito (no beans):	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104740	Chicken & cheese quesadilla:	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
23559	Ground beef (95% lean)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	74406100	Steak sauce (A-1)	\N	\N
23564	Ground beef (90% lean)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	74406100	Steak sauce (A-1)	\N	\N
21101120	Beef steak, grilled or broiled (eat lean & fat)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21101130	Beef steak, grilled or broiled (eat lean only)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21102120	Beef steak, fried (eat lean & fat)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21102130	Beef steak, fried (eat lean only)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21103120	Beef steak, breaded and fried (eat lean & fat)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21103130	Beef steak, breaded and fried (eat lean only)	74303000	Ketchup (catsup)	74406100	Steak sauce (A-1)	81101000	Butter	81102020	Tub margarine	28500040	Beef gravy
21401110	Roast beef (eat lean & fat)	81302060	Horseradish sauce	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	\N	\N
21401120	Roast beef (eat lean only)	81302060	Horseradish sauce	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	\N	\N
21501000	Ground beef (75% lean, regular)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	74406100	Steak sauce (A-1)	\N	\N
21501200	Ground beef (80% lean)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	74406100	Steak sauce (A-1)	\N	\N
21501300	Ground beef (85% lean)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	28500040	Beef gravy	74406100	Steak sauce (A-1)	\N	\N
24107010	Fried chicken, boneless and battered (skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24122110	Baked or roasted chicken breast (skin eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24122120	Baked or roasted chicken breast (skin not eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24124120	Fried chicken breast (no coating, skin not eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24127110	Fried chicken breast (battered, skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24127150	Fried chicken breast (skinless, battered)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24132210	Baked or roasted chicken dark meat quarter (skin eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24132220	Baked or roasted chicken dark meat quarter (skin not eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24142220	Baked or roasted chicken drumstick (skin not eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24147210	Fried chicken drumstick (battered, skin eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24152220	Baked or roasted chicken thigh (skin not eaten)	74303000	Ketchup (catsup)	28500000	Chicken gravy	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
24154210	Fried Chicken thigh (no coating, skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24154220	Fried Chicken thigh (no coating, skin not eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24157210	Fried chicken thigh (battered, skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24164110	Fried chicken wing (no coating, skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24167110	Fried chicken wing (battered, skin eaten)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24198700	Chicken patty, fillet or tenders (breaded)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	28500000	Chicken gravy	91361010	Sweet and sour sauce
24198740	CHICKEN NUGGETS	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	83112500	Creamy dressing (ranch)	74303000	Ketchup (catsup)	91361010	Sweet and sour sauce
24201120	Roasted turkey (white meat)	28500000	Turkey gravy	75506010	Mustard	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	83203250	Fat-free mayonnaise-type dressing
24201320	Roasted turkey (white & dark meat)	28500000	Turkey gravy	75506010	Mustard	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	83203250	Fat-free mayonnaise-type dressing
25210230	Low fat hot dog	75506010	Mustard	75230010	Sauerkraut, no fat added	74303000	Ketchup (catsup)	75503020	Pickle relish	27111410	Chili con carne (with beans)
25210280	HOT DOG	75506010	Mustard	75230010	Sauerkraut, no fat added	74303000	Ketchup (catsup)	75503020	Pickle relish	27111410	Chili con carne (with beans)
25220350	BRATWURST	75506010	Mustard	75230010	Sauerkraut, no fat added	74303000	Ketchup (catsup)	75503020	Pickle relish	27111410	Chili con carne (with beans)
26100120	baked fish	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26100150	Fried fish (breaded or battered)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26100230	Baked FISH STICK or FILLET (BREADED or BATTERED)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26100240	Fried FISH STICK or FILLET (BREADED or BATTERED)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26107120	BAKED OR BROILED catfish	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26107150	Fried CATFISH (breaded or BATTERED)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26109120	BAKED OR BROILED cod	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26109150	Fried COD (breaded or battered)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26115120	baked or broiled FLOUNDER	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26127120	baked or broiled PERCH	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26137120	baked or broiled SALMON	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26151120	baked or broiled TROUT	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26153120	baked or broiled TUNA	81302050	Tartar sauce	74402100	Salsa	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26155180	canned TUNA (in oil)	83107000	Mayonnaise, regular	83110000	Miracle whip salad dressing	83203250	Fat-free mayonnaise-type dressing	75503020	Pickle relish	\N	\N
26155190	canned TUNA (in water)	83107000	Mayonnaise, regular	83110000	Miracle whip salad dressing	83203250	Fat-free mayonnaise-type dressing	75503020	Pickle relish	\N	\N
26157140	Fried WHITING (FLOURED OR BREADED)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	81101000	Butter	81102020	Tub margarine
26213140	Fried calamari (fried squid)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	74406500	Cocktail sauce	83112500	Creamy dressing (ranch)
26303150	Fried clams (breaded)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	74406500	Cocktail sauce	83112500	Creamy dressing (ranch)
26303160	Steamed CLAMS (oysters, mussels)	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	\N	\N
26309160	Steamed or boiled CRAYFISH	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	\N	\N
26311160	Steamed or boiled LOBSTER	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	\N	\N
26315150	Fried oysters (breaded or battered)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	74406500	Cocktail sauce	83112500	Creamy dressing (ranch)
26317120	Baked or broiled SCALLOPS	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	81302050	Tartar sauce
26317140	Fried scallops (floured or breaded)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	74406500	Cocktail sauce	83112500	Creamy dressing (ranch)
26319120	Baked, broiled, or sauteed SHRIMP	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	81302050	Tartar sauce
26319130	Steamed or boiled SHRIMP	81101000	Butter	81102020	Tub margarine	61204010	Lemon juice	74406500	Cocktail sauce	81302050	Tartar sauce
26319140	Fried SHRIMP (BREADED OR BATTERED)	81302050	Tartar sauce	74303000	Ketchup (catsup)	61204010	Lemon juice	74406500	Cocktail sauce	83112500	Creamy dressing (ranch)
27115100	Teriyaki steak with sauce	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27120060	Sweet & sour pork	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27145000	Chicken teriyaki	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27146050	Buffalo wing (chicken wing & sauce)	83101000	Blue cheese dressing	83112500	Creamy dressing (ranch)	74406010	Barbeque sauce	83200100	Low-calorie salad dressing	91361010	Sweet and sour sauce
27146100	Sweet & sour chicken	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27146350	Lemon chicken	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27445110	Stir-fried chicken and vegetables	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27445150	General Tso chicken	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27445220	Kung Pao chicken	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27450410	Stir-fried shrimp and vegetables	56205010	White rice, no fat added	56205110	Brown rice, no fat added	58150110	Fried rice (plain)	\N	\N	\N	\N
27460490	Chef salad (no dressing)	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
27510210	Cheeseburger, plain on bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510240	Quarter pound cheeseburger on bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510300	Double cheeseburger on double decker bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510360	Bacon cheeseburger on bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510500	HAMBURGER, PLAIN ON BUN	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510530	Quarter pound hamburger on bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27510540	Double hamburger on bun	74303000	Ketchup (catsup)	75506010	Mustard	83107000	Mayonnaise, regular	75113000	Lettuce	74101000	Raw tomatoes
27513010	ROAST BEEF SANDWICH	81302060	Horseradish sauce	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	74303000	Ketchup (catsup)	74406010	Barbeque sauce
27515010	Steak sandwich on roll	81302060	Horseradish sauce	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	74303000	Ketchup (catsup)	74406010	Barbeque sauce
27515070	Philly cheese steak (with fried peppers and onions, on roll)	74303000	Ketchup (catsup)	74406010	Barbeque sauce	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	\N	\N
27520130	Club sandwich (chicken, bacon, tomato and lettuce)	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	\N	\N	\N	\N	\N	\N
27520300	Ham sandwich with mayo	75113000	Lettuce	74101000	Raw tomatoes	75506010	Mustard	\N	\N	\N	\N
27540110	CHICKEN SANDWICH with mayo	75113000	Lettuce	74101000	Raw tomatoes	\N	\N	\N	\N	\N	\N
27540140	FRIED CHICKEN FILLET SANDWICH	75113000	Lettuce	74101000	Raw tomatoes	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	\N	\N
27550000	Fried FISH SANDWICH with tartar sauce	75113000	Lettuce	74101000	Raw tomatoes	\N	\N	\N	\N	\N	\N
27560300	CORN DOG (hot dog with cornbread coating)	74303000	Ketchup (catsup)	75506010	Mustard	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)	\N	\N	\N	\N
27560350	PIG IN A BLANKET (HOT DOG WRAPPED IN DOUGH)	74303000	Ketchup (catsup)	75506010	Mustard	74406010	Barbeque sauce	\N	\N	\N	\N
31103000	hard or soft boiled egg	81101000	Butter	81102020	Tub margarine	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise	\N	\N
31105000	fried egg	74303000	Ketchup (catsup)	74402100	Salsa	\N	\N	\N	\N	\N	\N
32104950	scrambed egg or omelet (cooked without fat)	74303000	Ketchup (catsup)	74402100	Salsa	\N	\N	\N	\N	\N	\N
32105000	srambled egg or omelet (cooked with fat)	74303000	Ketchup (catsup)	74402100	Salsa	\N	\N	\N	\N	\N	\N
51101000	White bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51107010	French bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	64401000	Vinegar
51109100	Pita bread (white)	41205070	Hummus	14301010	Cream cheese (regular)	14303010	Low fat cream cheese	82101000	Vegetable oil	\N	\N
51111010	cheese bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
51113010	Cinnamon bread or toast	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51122000	Reduced-calorie, high-fiber bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51129010	raisin bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51133010	sourdough bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	91406500	Jam preserves, marmalades
51150000	white roll	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51157000	submarine roll	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
51160110	frosted sweet roll or cinnamon bun	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
51166000	CROISSANT	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51180010	BAGEL (plain)	81101000	Butter	81102020	Tub margarine	14301010	Cream cheese (regular)	91406500	Jam preserves, marmalades	14303010	Low fat cream cheese
51180030	Raisin bagel	81101000	Butter	81102020	Tub margarine	14301010	Cream cheese (regular)	91406500	Jam preserves, marmalades	14303010	Low fat cream cheese
51186010	ENGLISH muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51186100	English muffin with raisins	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51187000	MELBA TOAST	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51201010	100% WHOLE WHEAT bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51201150	Pita bread (100%  WHOLE WHEAT)	82101000	Vegetable oil	41205070	Hummus	14301010	Cream cheese (regular)	14303010	Low fat cream cheese	\N	\N
51202000	Whole wheat English muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51301010	WHEAT OR CRACKED WHEAT bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51301700	wheat Bagel (part whole wheat)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	14301010	Cream cheese (regular)	14303010	Low fat cream cheese
51303010	English muffin (cracked wheat, part  WHOLE WHEAT)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51320530	wheat Roll (part WHOLE WHEAT)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51401010	Rye bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51601020	multigrain bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
51602010	Reduced calori, high fiber multigrain bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52102040	Refrigerated biscuit (canned dough)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91302010	Honey
52103000	biscuit (baking powder or buttermilk)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91302010	Honey
52206010	cornbread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52302010	fruit muffin (blueberry, banana, etc.)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52302100	fat free fruit muffin (blueberry, banana, etc.)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52302500	chocolate chip muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52304010	Bran muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52304040	lowfat bran and fruit muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52306010	Plain Muffin	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52405010	fruit bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
52407000	zucchini bread	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91401000	Jelly, all flavors	91406500	Jam preserves, marmalades
55101000	Pancakes	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55103000	Blueberry pancakes	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55105200	Whole wheat pancakes	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55201000	Waffle	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55202000	Bran, multigrain, or wheat waffle	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55211050	Lowfat waffle	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	63101120	Applesauce (unsweetened)
55301000	French toast	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	91101020	Powdered sugar (confectioner's sugar)
55301050	FRENCH TOAST STICKS	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	91300010	Syrup	91101020	Powdered sugar (confectioner's sugar)
56101010	Spaghetti, macaroni, or pasta (plain)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
56133000	Whole wheat spaghetti or pasta (plain)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
56201010	Grits (hominy), no fat added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
56201020	Grits (hominy) with butter added  (??)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
56203010	Oatmeal (plain)	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
56203030	Oatmeal (instant, flavored)	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
56205010	White rice	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
56205110	brown rice	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
56205210	wild rice	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
56205420	White rice cooked with butter or oil (??)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
56207010	cream of wheat	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57101000	ALL-BRAN CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57104000	APPLE JACKS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57117000	CAP'N CRUNCH CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57123000	CHEERIOS	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57124000	CHEX CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57125000	CINNAMON TOAST CRUNCH CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57128000	COCOA PUFFS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57135000	CORN FLAKES	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57206700	Fiber One cereal	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57207000	BRAN FLAKES CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57213000	FROOT LOOPS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57214000	FROSTED MINI-WHEATS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57223000	FRUITY PEBBLES CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57224000	GOLDEN GRAHAMS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57228000	granola	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57229000	lowfat granola	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57230000	grape-nuts cereal	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57237100	HONEY BUNCHES OF OATS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57238000	Honeycomb cereal	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57241000	HONEY NUT CHEERIOS	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57243000	HONEY SMACKS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57301500	KASHI, PUFFED	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57303100	KIX CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57304100	LIFE CEREAL (PLAIN & CINNAMON)	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57305100	LUCKY CHARMS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57330000	RAISIN BRAN CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57336000	RICE CHEX CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57339000	RICE KRISPIES CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57344000	SPECIAL K CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57347000	CORN POPS CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57349000	FROSTED FLAKES	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57406100	TOTAL CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57407100	TRIX CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57417000	SHREDDED WHEAT	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
57418000	WHEATIES CEREAL	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	11320000	Soymilk, plain (calcium fortified)	91101010	White sugar (granulated or lump)
58100110	Beef and bean burrito	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100130	Beef and cheese burrito (no beans)	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100140	Beef, bean, and cheese burrito	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100310	Bean burrito	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100320	Bean and cheese burrito	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100530	Beef and cheese enchilada	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100600	Chicken enchilada	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100710	Bean enchilada	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58100800	Cheese enchilada	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58101300	Beef taco with cheese and lettuce	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58101320	Beef taco (cheese, lettuce, tomato, salsa)	12310100	Sour cream	63409010	Guacamole	\N	\N	\N	\N	\N	\N
58101400	Beef soft taco	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58101450	Chicken soft taco	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58101720	Bean taco (cheese, lettuce, tomato, salsa)	12310100	Sour cream	63409010	Guacamole	\N	\N	\N	\N	\N	\N
58101910	Taco salad with beef, cheese, corn chips	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58103110	Tamale (with meat or chicken)	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104100	Cheese nachos	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104180	Beef and bean nachos	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104250	Chicken nachos	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104510	Beef chimachanga	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104530	Chicken chimichanga	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104710	Cheese quesadilla	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104730	Meat and cheese quesadilla	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58104810	Taquitoes	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58105000	Chicken fajitas with veggies & guacamole	12310100	Sour cream	74402100	Salsa	\N	\N	\N	\N	\N	\N
58105050	Beef fajitas with veggies	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	\N	\N	\N	\N
58200100	Wrap sandwich (meat, vegetables, rice)	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	14104010	Cheese (cheddar, Swiss, etc.)	14109030	Lowfat cheese (cheddar, Swiss, etc.)
58200200	Wrap sandwich (vegetables, rice)	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	14104010	Cheese (cheddar, Swiss, etc.)	14109030	Lowfat cheese (cheddar, Swiss, etc.)
61101010	Grapefruit (raw)	91101010	White sugar (granulated or lump)	91102010	brown sugar	\N	\N	\N	\N	\N	\N
71101000	WHITE POTATO, BAKED, PEEL NOT EATEN	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	12310100	Sour cream	83112500	Creamy dressing (ranch)
71101110	WHITE POT,BAKED,PEEL EATEN,FAT NOT ADDED IN COOKING	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	12310100	Sour cream	83112500	Creamy dressing (ranch)
71103010	Boiled potatoes (no butter or oil added)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
71103020	Boiled potatoes (butter or oil added)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	\N	\N	\N	\N
71104010	WHITE POTATO, ROASTED, FAT NOT ADDED	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	74303000	Ketchup (catsup)	\N	\N
71401020	French fries, oven-baked	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
71401030	French fries, deep fried	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing
71403000	Home fries	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	83112500	Creamy dressing (ranch)	74402100	Salsa	83200100	Low-calorie salad dressing
71405020	Hash browns	74303000	Ketchup (catsup)	83107000	Mayonnaise, regular	83112500	Creamy dressing (ranch)	74402100	Salsa	83200100	Low-calorie salad dressing
71411000	Potato skin with cheese & bacon	12310100	Sour cream	83112500	Creamy dressing (ranch)	\N	\N	\N	\N	\N	\N
71501010	Mashed potatoes (made with milk, no butter)	28500000	Chicken gravy	28500040	Beef gravy	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)
71501020	Mashed potatoes (made with milk and butter)	28500000	Chicken gravy	28500040	Beef gravy	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)
71501030	Mashed potatoes (made with butter)	28500000	Chicken gravy	28500040	Beef gravy	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)
71505000	Tator tots	74303000	Ketchup (catsup)	83112500	Creamy dressing (ranch)	83107000	Mayonnaise, regular	83200100	Low-calorie salad dressing	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)
71701000	Potato pancake (latke)	12310100	Sour cream	63101120	Applesauce (unsweetened)	\N	\N	\N	\N	\N	\N
71930100	Cassava	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
72116000	Romaine lettuce	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
72118211	Greens, cooked without fat	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	64401000	Vinegar	\N	\N
72125100	Raw spinach	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
72125212	Spinach (no butter or oil added)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	64401000	Vinegar	12110100	Light cream (coffee or table cream)
72201100	Raw broccoli	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
72201211	Broccoli (no butter or oil added)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)	\N	\N
73101010	Raw carrots	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
73102211	Carrots (no butter or oil added)	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
73111212	Peas and carrots	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
73303010	Baked winter squash	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	91102010	brown sugar
73403010	Baked sweetpotato	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	91102010	brown sugar
73409000	Mashed sweetpotato	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	91102010	brown sugar
75105000	Raw cabbage	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise
75107000	Raw cauliflower	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75109000	Raw celery	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75111000	Cucumber	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	12310100	Sour cream	64401000	Vinegar
75113000	Lettuce	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75114000	Mixed salad greens	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75115000	Raw mushrooms	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75122100	Raw sweet pepper (bell pepper)	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75143000	Tossed salad (lettuce and vegetables)	83112500	Creamy dressing (ranch)	83106000	Italian dressing (oil and vinegar)	83200100	Low-calorie salad dressing	83101000	Blue cheese dressing	83104000	French dressing
75201011	Artichoke, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	83107000	Mayonnaise, regular	83204000	Low calorie mayonnaise
75202011	Asparagus, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	83107000	Mayonnaise, regular	82101000	Vegetable oil
75204011	Green lima beans, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75205023	Green beans, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75207011	Cooked bean sprouts, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75208011	Beets, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75209012	Brussel sprouts, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75211020	Cooked cabbage	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75214011	Cooked cauliflower	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)
75216171	Yellow or white corn, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75217010	Eggplant, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75219011	Cooked mushrooms, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75220011	Okra, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75221011	Cooked onions, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75223011	Blackeye peas, no fat added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75224021	Green peas, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75226010	Cooked sweet peppers, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75230010	Sauerkraut, no fat added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75231011	Snowpeas, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75233011	Zucchini or summer squash, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75234011	Turnip, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	\N	\N
75311012	Mixed vegetables, no butter or oil added	81101000	Butter	81102020	Tub margarine	81104010	Reduced calorie spread (margarine type)	82101000	Vegetable oil	14420100	Cheese spread or dip (Velveeta, Cheez Wiz)
75414030	Fried mushrooms	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing	\N	\N	\N	\N	\N	\N
75414500	Fried okra	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing	\N	\N	\N	\N	\N	\N
75415020	Onion rings	74303000	Ketchup (catsup)	74406010	Barbeque sauce	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing	\N	\N
75418010	Breaded fried summer squash	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing	\N	\N	\N	\N	\N	\N
75440170	Breaded fried vegetable sticks	83112500	Creamy dressing (ranch)	83200100	Low-calorie salad dressing	91361010	Sweet and sour sauce	\N	\N	\N	\N
75440200	Vegetable tempura	91361010	Sweet and sour sauce	\N	\N	\N	\N	\N	\N	\N	\N
77300000	Wrap sandwich (vegetables only)	12310100	Sour cream	63409010	Guacamole	74402100	Salsa	14104010	Cheese (cheddar, Swiss, etc.)	14109030	Lowfat cheese (cheddar, Swiss, etc.)
92101000	Coffee	91101010	White sugar (granulated or lump)	12120100	Half & Half	12210200	Coffee Mate creamer (liquid)	12210250	Coffee Mate Lite creamer (liquid)	11112210	1% milk (low fat)
92101900	Latte	91101010	White sugar (granulated or lump)	12140000	Whipped cream, sweetened	\N	\N	\N	\N	\N	\N
92161000	Cappuccino	91101010	White sugar (granulated or lump)	12140000	Whipped cream, sweetened	\N	\N	\N	\N	\N	\N
92302000	Tea (unsweetened)	91101010	White sugar (granulated or lump)	11111000	Whole milk	11112210	1% milk (low fat)	11113000	Fat free milk (skim)	61204010	Lemon juice
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 210
-- Name: condiment_condiment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condiment_condiment_id_seq', 1, false);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 214
-- Name: condiment_condiment_nutrition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condiment_condiment_nutrition_id_seq', 63, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 212
-- Name: condiment_nutrition_condiment_nutrition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condiment_nutrition_condiment_nutrition_id_seq', 1, false);


--
-- TOC entry 3468 (class 2606 OID 24789)
-- Name: condiment_nutrition condiment_nutrition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condiment_nutrition
    ADD CONSTRAINT condiment_nutrition_pkey PRIMARY KEY (condiment_nutrition_id);


--
-- TOC entry 3465 (class 2606 OID 24770)
-- Name: condiment condiment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condiment
    ADD CONSTRAINT condiment_pkey PRIMARY KEY (condiment_id);


--
-- TOC entry 3463 (class 2606 OID 24761)
-- Name: food_with_condiments food_with_condiments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_with_condiments
    ADD CONSTRAINT food_with_condiments_pkey PRIMARY KEY (survey_food_code);


--
-- TOC entry 3466 (class 1259 OID 24823)
-- Name: fki_condiment_nutriton_id_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_condiment_nutriton_id_fkey ON public.condiment USING btree (condiment_nutrition_id);


--
-- TOC entry 3469 (class 2606 OID 24818)
-- Name: condiment condiment_nutriton_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condiment
    ADD CONSTRAINT condiment_nutriton_id_fkey FOREIGN KEY (condiment_nutrition_id) REFERENCES public.condiment_nutrition(condiment_nutrition_id);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: minhpham
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-07-11 21:07:51 CEST

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 15.2

-- Started on 2023-07-11 21:07:36 CEST

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


ALTER SCHEMA public OWNER TO minhpham;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 24738)
-- Name: food; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food (
    food_id integer NOT NULL,
    food_code integer,
    display_name character varying(255),
    portion_default double precision,
    portion_amount double precision,
    portion_display_name character varying(255),
    factor double precision,
    increment double precision,
    multiplier double precision,
    calories double precision,
    saturated_fats double precision,
    food_nutrition_id integer NOT NULL
);


ALTER TABLE public.food OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24737)
-- Name: food_food_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.food ALTER COLUMN food_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.food_food_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 24797)
-- Name: food_food_nutrition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.food ALTER COLUMN food_nutrition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.food_food_nutrition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 24745)
-- Name: food_nutrition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food_nutrition (
    food_id integer,
    food_code integer,
    grains double precision,
    whole_grains double precision,
    vegetables double precision,
    orange_vegetables double precision,
    drkgreen_vegetables double precision,
    starchy_vegetables double precision,
    other_vegetables double precision,
    fruits double precision,
    milk double precision,
    meats double precision,
    soy double precision,
    drybeans_peas double precision,
    oils double precision,
    solid_fats double precision,
    added_sugars double precision,
    alcohol double precision,
    food_nutrition_id integer NOT NULL
);


ALTER TABLE public.food_nutrition OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24790)
-- Name: food_nutrition_food_nutrition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.food_nutrition ALTER COLUMN food_nutrition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.food_nutrition_food_nutrition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3605 (class 0 OID 24738)
-- Dependencies: 210
-- Data for Name: food; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food (food_id, food_code, display_name, portion_default, portion_amount, portion_display_name, factor, increment, multiplier, calories, saturated_fats, food_nutrition_id) FROM stdin;
1	12350000	Sour cream dip	1	0.25	cup	0.25	0.25	1	133.65	7.36898	1
2	13110100	Ice cream, regular	1	1	cup	1	0.25	0.25	267.33	9.0307	2
3	13110120	Ice cream, rich	1	1	cup	1	0.25	0.25	368.52	15.2884	3
4	13110200	Soft serve ice cream	1	1	cup	1	0.25	0.25	347.73	11.7467	4
5	13120100	Ice cream bar, chocolate covered	1	1	bar (bar = 3 fl oz)	1	0.5	0.5	169.12	9.5872	5
6	13120100	Ice cream bar, chocolate covered	2	1	Klondike Krispy bar	1	0.5	0.5	277.84	15.7504	6
7	13120500	Ice cream sandwich	1	1	sandwich	1	0.5	0.5	143.37	3.2332	7
8	13130300	Light ice cream	1	1	cup	1	0.25	0.25	216.15	3.3929	8
9	13130600	Light soft serve ice cream	1	1	cup	1	0.25	0.25	220.5	2.8525	9
10	13135000	Light ice cream sandwich	1	1	sandwich	1	0.5	0.5	129.6	1.368	10
11	13140100	Light ice cream bar	1	1	bar (bar = 3 fl oz)	1	0.5	0.5	153.44	7.728	11
12	13140900	Light fudgesicle	1	1	sicle (sicle = 2.5 fl oz)	1	0.5	0.5	121.91	2.0367	12
13	13150000	Sherbet	1	1	cup	1	0.25	0.25	277.92	2.2388	13
14	13150000	Sherbet	2	1	push up	1	0.5	0.5	95.04	0.7656	14
15	13160150	Low fat, low sugar ice milk	1	1	cup	1	0.25	0.25	152.64	0.8928	15
16	14104010	Cheese (cheddar, Swiss)	2	0.25	cup shredded	0.25	0.25	1	113.8475	5.95793	16
17	14104010	Cheese (cheddar, Swiss)	2	1	cubic inch	1	0.5	0.5	68.51	3.5853	17
18	14104400	Feta or goat cheese	1	0.25	cup crumbled	0.25	0.25	1	99	5.60625	18
19	14104400	Feta or goat cheese	2	1	wedge (wedge=1.3 oz)	1	0.5	0.5	100.32	5.681	19
20	14107030	Mozzarella cheese (part skim)	1	1	slice (slice = 1 oz)	1	0.5	0.5	85.617	3.59194	20
21	14109030	Low fat cheddar or Swiss	2	0.25	cup, shredded	0.25	0.25	1	48	0.892	21
22	14109030	Low fat cheddar or Swiss	2	1	cubic inch	1	0.5	0.5	27	0.496	22
23	14201010	Cottage cheese, creamed	1	0.5	cup	0.5	0.25	0.5	108.15	2.9925	23
24	14201500	Ricotta cheese	1	0.25	cup	0.25	0.25	1	95.94	4.06515	24
25	14204010	Lowfat cottage cheese	1	0.5	cup	0.5	0.25	0.5	81.36	0.7345	25
26	14301010	Cream cheese (regular)	1	1	Tablespoon	1	0.5	0.5	50.605	3.18565	26
27	14301010	Cream cheese (regular)	2	1	Tablespoon, whipped	1	0.5	0.5	34.9	2.197	27
28	14301010	Cream cheese (regular)	2	1	individual container	1	0.5	0.5	98.9415	6.2285	28
29	14303010	Low fat cream cheese	1	1	Tablespoon	1	0.5	0.5	34.65	1.6635	29
30	14303010	Low fat cream cheese	2	1	Tablespoon, whipped	1	0.5	0.5	23.1	1.109	30
31	14410200	American cheese (processed)	1	1	slice (slice = 3/4 oz)	1	0.5	0.5	70.56	3.2697	31
32	14410200	American cheese (processed)	2	0.25	cup shredded	0.25	0.25	1	94.92	4.39853	32
33	14410200	American cheese (processed)	2	1	cubic inch	1	0.5	0.5	58.8	2.72475	33
34	14410350	Fat-free American cheese	1	1	slice (slice = 3/4 oz)	1	0.5	0.5	31.08	0.105	34
35	14410350	Fat-free American cheese	2	0.25	cup shredded	0.25	0.25	1	41.81	0.14125	35
36	14410350	Fat-free American cheese	2	1	cubic inch	1	0.5	0.5	23.976	0.081	36
37	14420100	Cheese spread or dip	2	1	slice Velveeta	1	0.5	0.5	100.24333	4.60774	37
38	14420100	Cheese spread or dip	1	4	Tablespoons	0.25	1	0.25	176.9	8.1313	38
39	14620100	Cream cheese dip	1	2	Tablespoons	2	1	0.5	106.2	5.67	39
40	14650100	Cheese sauce	1	0.25	cup	0.25	0.25	1	109.35	3.65107	40
41	14650150	Cheese sauce, low fat	1	0.25	cup	0.25	0.25	1	79.5825	1.69493	41
42	14650160	Alfredo sauce	1	0.25	cup	0.25	0.25	1	249.075	15.65527	42
43	14660200	Fried cheese sticks	1	3	pieces or 4 sticks	3	1	0.33333	502.92	16.3548	43
44	21101120	Grilled steak (eat lean & fat)	1	1	medium steak	1	0.5	0.5	516.12	11.9544	44
45	21101120	Grilled steak (eat lean & fat)	2	1	large steak	1	0.5	0.5	688.16	15.9392	45
46	21101120	Grilled steak (eat lean & fat)	2	1	small steak	1	0.5	0.5	387.09	8.9658	46
47	21101120	Grilled steak (eat lean & fat)	2	4	ounces cooked, no bone	4	1	0.25	232.76	5.3912	47
48	21101130	Grilled steak (eat lean only)	1	1	medium steak	1	0.5	0.5	307.32	4.7268	48
49	21101130	Grilled steak (eat lean only)	2	1	large steak	1	0.5	0.5	411.73	6.3327	49
50	21101130	Grilled steak (eat lean only)	2	1	small steak	1	0.5	0.5	230.49	3.5451	50
51	21101130	Grilled steak (eat lean only)	2	4	ounces cooked, no bone	4	1	0.25	181.24	2.7876	51
52	21102120	Fried steak (eat lean & fat)	1	1	medium steak	1	0.5	0.5	587.52	12.9744	52
53	21102120	Fried steak (eat lean & fat)	2	1	large steak	1	0.5	0.5	783.36	17.2992	53
54	21102120	Fried steak (eat lean & fat)	2	1	small steak	1	0.5	0.5	440.64	9.7308	54
55	21102120	Fried steak (eat lean & fat)	2	4	ounces cooked, no bone	4	1	0.25	264.96	5.8512	55
56	21102130	Fried steak (eat lean only)	1	1	medium steak	1	0.5	0.5	358.8	4.8204	56
57	21102130	Fried steak (eat lean only)	2	1	large steak	1	0.5	0.5	480.7	6.4581	57
58	21102130	Fried steak (eat lean only)	2	1	small steak	1	0.5	0.5	269.1	3.6153	58
59	21102130	Fried steak (eat lean only)	2	4	ounces cooked, no bone	4	1	0.25	211.6	2.8428	59
60	21103120	Breaded fried steak (eat lean & fat)	1	1	medium steak	1	0.5	0.5	801.9	16.1109	60
61	21103120	Breaded fried steak (eat lean & fat)	2	1	large steak	1	0.5	0.5	1069.2	21.4812	61
62	21103120	Breaded fried steak (eat lean & fat)	2	1	small steak	1	0.5	0.5	600.6	12.0666	62
63	21103120	Breaded fried steak (eat lean & fat)	2	4	ounces cooked, no bone	4	1	0.25	374.22	7.51842	63
64	21103130	Breaded fried steak (eat lean only)	1	1	medium steak	1	0.5	0.5	515.22	6.9564	64
65	21103130	Breaded fried steak (eat lean only)	2	1	large steak	1	0.5	0.5	686.96	9.2752	65
66	21103130	Breaded fried steak (eat lean only)	2	1	small steak	1	0.5	0.5	387.8	5.236	66
67	21103130	Breaded fried steak (eat lean only)	2	4	ounces cooked, no bone	4	1	0.25	299.16	4.0392	67
68	21304220	BBQ short ribs with sauce	1	1	medium rib	1	1	1	107.61	2.4378	68
69	21304220	BBQ short ribs with sauce	2	1	large rib	1	1	1	147.7	3.346	69
70	21304220	BBQ short ribs with sauce	2	1	small rib	1	1	1	46.42	1.0516	70
71	21401110	Roast beef (eat lean & fat)	1	1	medium slice	1	0.5	0.5	111.72	2.8728	71
72	21401110	Roast beef (eat lean & fat)	2	1	thick slice	1	0.5	0.5	167.58	4.3092	72
73	21401110	Roast beef (eat lean & fat)	2	1	thin slice	1	1	1	55.86	1.4364	73
74	21401110	Roast beef (eat lean & fat)	2	4	ounces after cooking	4	1	0.25	301.644	7.75656	74
75	21401120	Roast beef (eat lean only)	1	1	medium slice	1	0.5	0.5	82.74	1.3608	75
76	21401120	Roast beef (eat lean only)	2	1	thick slice	1	0.5	0.5	124.11	2.0412	76
77	21401120	Roast beef (eat lean only)	2	1	thin slice	1	1	1	41.37	0.6804	77
78	21401120	Roast beef (eat lean only)	2	4	ounces after cooking	4	1	0.25	223.398	3.67416	78
79	21417120	Beef brisket	1	1	medium slice, 1/4  thick	1	0.5	0.5	96.6	1.7346	79
80	21417120	Beef brisket	2	1	thick slice	1	0.5	0.5	144.9	2.6019	80
81	21417120	Beef brisket	2	1	thin slice	1	1	1	48.3	0.8673	81
82	21417120	Beef brisket	2	4	ounces after cooking	4	1	0.25	211.6	3.7996	82
83	21501000	Ground beef (75% lean, regular)	1	1	medium patty (4 per pound)	1	0.5	0.5	234.6	6.137	83
84	21501000	Ground beef (75% lean, regular)	2	1	ounce after cooking	1	1	1	77.28	2.0216	84
85	21501000	Ground beef (75% lean, regular)	2	1	ounce raw (cooked yield)	1	1	1	57.96	1.5162	85
86	21501000	Ground beef (75% lean, regular)	2	1	large patty (3 per pound)	1	0.5	0.5	311.88	8.1586	86
87	21501000	Ground beef (75% lean, regular)	2	1	medium meatball	1	1	1	77.28	2.0216	87
88	21501000	Ground beef (75% lean, regular)	2	1	small patty (5 per pound)	1	0.5	0.5	187.68	4.9096	88
89	21501200	Ground beef (80% lean)	1	1	medium patty (4 per pound)	1	0.5	0.5	236.72	5.8872	89
90	13160410	Low fat ice cream	1	1	cup	1	0.25	0.25	228.79	0.822	90
91	13210250	Diet pudding (instant or canned)	1	0.5	cup (4 fl oz)	0.5	0.25	0.5	105.3	0.754	91
92	13210280	Pudding (instant or canned)	1	0.5	cup (4 fl oz)	0.5	0.25	0.5	133.11	1.34415	92
93	13220220	Pudding, no sugar added	1	0.5	cup (4 fl oz)	0.5	0.25	0.5	81.25	1.1525	93
94	13411000	White sauce (cream sauce)	1	0.25	cup	0.25	0.25	1	90.625	1.7125	94
95	13412000	Milk gravy	1	0.25	cup	0.25	0.25	1	88.125	2.775	95
96	14104010	Cheese (cheddar, Swiss)	1	1	slice (slice = 1 oz)	1	0.5	0.5	114.2505	5.97902	96
97	14640100	Grilled cheese sandwich	1	1	sandwich	1	0.5	0.5	290	5.978	97
98	7258	Turkey lunch meat, fat free	1	1	ounce	0.5	1	1	28.56	0.06552	98
99	92101000	Coffee	2	1	fast food (16 fl oz order)	1	0.5	0.5	14.2	0	99
100	92101900	Latte	1	1	medium (14 fl oz order)	1	0.5	0.5	142.8	3.3048	100
101	92101900	Latte	2	1	cup	1	0.5	0.5	71.4	1.6524	101
102	92101900	Latte	2	1	large (17 fl oz order)	1	0.5	0.5	169.75	3.9285	102
103	92101900	Latte	2	1	small (11 fl oz order)	1	0.5	0.5	107.1	2.4786	103
104	92161000	Cappuccino	1	1	medium (17 fl oz order)	1	0.5	0.5	160.38	4.5684	104
105	92161000	Cappuccino	2	1	large (20 fl oz order)	1	0.5	0.5	190.74	5.4332	105
106	92161000	Cappuccino	2	1	mug (8 fl oz order)	1	0.5	0.5	79.2	2.256	106
107	92161000	Cappuccino	2	1	small (13 fl oz order)	1	0.5	0.5	120.45	3.431	107
108	7259	Turkey breast lunch meat, fat free	1	1	ounce	1	1	1	23.52	0.0574	108
109	16126	Tofu, firm	1	0.25	cup	0.25	0.25	1	44.1	0.54369	109
110	16126	Tofu, firm	2	0.25	block (3 oz)	1	0.25	1	56.7	0.69903	110
111	16129	Fried tofu	1	0.25	cup	0.25	0.25	1	168.02	1.80916	111
112	16129	Fried tofu	2	1	piece	1	1	1	35.23	0.37934	112
113	23559	Ground beef (95% lean)	1	1	medium patty (4 per pound)	1	0.5	0.5	167.28	2.75196	113
114	23559	Ground beef (95% lean)	2	1	ounce after cooking	1	1	1	45.92	0.75544	114
115	23559	Ground beef (95% lean)	2	1	ounce raw (cooked yield)	1	1	1	42.64	0.70148	115
116	23559	Ground beef (95% lean)	2	1	large patty (3 per pound)	1	0.5	0.5	219.76	3.61532	116
117	23559	Ground beef (95% lean)	2	1	medium meatball	1	1	1	45.92	0.75544	117
118	23559	Ground beef (95% lean)	2	1	small patty (5 per pound)	1	0.5	0.5	132.84	2.18538	118
119	23564	Ground beef (90% lean)	1	1	medium patty (4 per pound)	1	0.5	0.5	201.96	4.17582	119
120	23564	Ground beef (90% lean)	2	1	ounce after cooking	1	1	1	57.12	1.18104	120
121	23564	Ground beef (90% lean)	2	1	ounce raw (cooked yield)	1	1	1	51	1.0545	121
122	23564	Ground beef (90% lean)	2	1	large patty (3 per pound)	1	0.5	0.5	267.24	5.52558	122
123	23564	Ground beef (90% lean)	2	1	medium meatball	1	1	1	57.12	1.18104	123
124	23564	Ground beef (90% lean)	2	1	small patty (5 per pound)	1	0.5	0.5	161.16	3.33222	124
125	11111000	Whole milk	1	1	cup	1	0.25	0.25	146.4	4.5384	125
126	11111000	Whole milk	2	8	fluid ounces	8	1	0.125	146.4	4.5384	126
127	11112110	2% milk (reduced fat)	1	1	cup	1	0.25	0.25	122	3.0744	127
128	11112110	2% milk (reduced fat)	2	8	fluid ounces	8	1	0.125	122	3.0744	128
129	11112210	1% milk (low fat)	1	1	cup	1	0.25	0.25	102.48	1.5372	129
130	11112210	1% milk (low fat)	2	8	fluid ounces	8	1	0.125	102.48	1.5372	130
131	11113000	Fat free milk (skim)	1	1	cup	1	0.25	0.25	83.3	0.294	131
132	11113000	Fat free milk (skim)	2	8	fluid ounces	8	1	0.125	83.232	0.29376	132
133	11114300	Low lactose lowfat (1%) milk	1	1	cup	1	0.25	0.25	102.48	1.5372	133
134	11114300	Low lactose lowfat (1%) milk	2	8	fluid ounces	8	1	0.125	102.48	1.5372	134
135	11114320	Low lactose fat free (skim) milk	1	1	cup	1	0.25	0.25	83.3	0.294	135
136	11114320	Low lactose fat free (skim) milk	2	8	fluid ounces	8	1	0.125	83.232	0.29376	136
137	11114330	Low lactose reduced fat (2%) milk	1	1	cup	1	0.25	0.25	122	3.0744	137
138	11114330	Low lactose reduced fat (2%) milk	2	8	fluid ounces	8	1	0.125	122	3.0744	138
139	11114350	Low lactose whole milk	1	1	cup	1	0.25	0.25	146.4	4.5384	139
140	11114350	Low lactose whole milk	2	8	fluid ounces	8	1	0.125	146.4	4.5384	140
141	11115000	Buttermilk	1	1	cup	1	0.25	0.25	98	1.3475	141
142	11115000	Buttermilk	2	8	fluid ounces	8	1	0.125	97.92	1.3464	142
143	11121300	Nonfat dry milk, reconstituted	1	1	cup	1	0.25	0.25	80.85	0.1078	143
144	11121300	Nonfat dry milk, reconstituted	2	8	fluid ounces	8	1	0.125	80.784	0.10771	144
145	11220000	Sweetened condensed milk	1	0.25	cup	0.25	0.25	1	245.565	4.19985	145
146	11320000	Soymilk	1	1	cup	1	0.25	0.25	98	0.5145	146
147	11320000	Soymilk	2	8	fluid ounces	8	1	0.125	98	0.51408	147
148	11321000	Flavored soymilk	1	1	cup	1	0.25	0.25	117.6	0.504	148
149	11411100	Plain yogurt, whole milk	1	1	8 oz container	1	0.25	0.25	138.47	4.767	149
150	11411300	Plain yogurt, fat free	1	1	8 oz container	1	0.25	0.25	127.12	0.2724	150
151	11421000	Flavored yogurt, whole milk	1	1	8 oz container	1	0.25	0.25	229.27	4.54	151
152	11422000	Flavored yogurt, low fat	1	1	8 oz container	1	0.25	0.25	192.95	1.8387	152
153	11424000	Flavored yogurt, fat-free sugar-free	1	1	8 oz container	1	0.25	0.25	97.61	0.2724	153
154	11431000	Fruit yogurt, whole milk	1	1	6 oz container	1	0.25	0.25	202.3	3.468	154
155	11432000	Fruit yogurt, low fat	1	1	6 oz container	1	0.25	0.25	173.4	1.19	155
156	11433500	Fruit yogurt, fat-free sugar-free	1	1	6 oz container	1	0.25	0.25	86.7	0.153	156
157	11460150	Frozen yogurt, low fat	1	1	cup	1	0.25	0.25	214	1.88	157
158	11460400	Frozen yogurt, low fat sugar free	1	1	cup	1	0.25	0.25	199.02	0.9486	158
159	11460440	Frozen yogurt, whole milk	1	1	cup	1	0.25	0.25	220.98	4.0542	159
160	11511100	Chocolate milk, whole milk	1	1	cup (1 school carton)	1	0.25	0.25	207.5	5.25	160
161	11511200	Chocolate milk, 2% (reduced fat)	1	1	cup (1 school carton)	1	0.25	0.25	175	2.825	161
162	11511300	Chocolate milk, fat free (skim)	1	1	cup (1 school carton)	1	0.25	0.25	140	0.575	162
163	11511400	Chocolate milk, 1% (low fat)	1	1	cup (1 school carton)	1	0.25	0.25	157.5	1.55	163
164	11514100	Instant cocoa (with water)	1	1	packet dry mix with water	1	0.25	0.25	113.3	0.6798	164
165	11514300	Instant cocoa, diet (with water)	1	1	packet dry mix with water	1	0.25	0.25	57.13	0.2561	165
166	11526000	Malted milk (Ovaltine)	1	1	cup	1	0.25	0.25	173.9	2.9845	166
167	11541110	Milk shake (whole milk)	1	1	milkshake (10 fl oz)	1	0.25	0.25	393.37	8.3202	167
168	11541500	Milk shake, low fat	1	1	small shake (12 fl oz)	1	0.25	0.25	198.64	0.9741	168
169	11541500	Milk shake, low fat	2	1	large shake (22 fl oz)	1	0.25	0.25	364	1.785	169
170	11541500	Milk shake, low fat	2	1	medium shake (16 fl oz)	1	0.25	0.25	264.16	1.2954	170
171	11553000	fruit smoothie made with milk	1	1	commercial smoothie (20 fl oz)	1	0.25	0.25	495.88	4.78676	171
172	11553000	fruit smoothie made with milk	2	1	cup	1	0.25	0.25	197.96	1.91092	172
173	11560000	Chocolate flavored drink	1	1	bottle (9 fl oz)	1	0.25	0.25	128.78	0.8494	173
174	11560000	Chocolate flavored drink	2	1	drink box	1	0.25	0.25	114.68	0.7564	174
175	11623000	Meal replacement drink (Slim Fast)	1	1	cup	1	0.25	0.25	173.6	0.6448	175
176	11812000	Dry milk powder, low fat	1	0.25	cup	0.25	0.25	1	109.8	0.411	176
177	11830970	Meal replacement powder (Slim Fast)	1	1	tablespoon	1	1	1	48.6	0.027	177
178	11830970	Meal replacement powder (Slim Fast)	2	1	scoop/dip	1	1	1	106.92	0.0594	178
179	12110100	Light cream	1	2	Tablespoons (1 fl oz)	1	1	0.5	58.5	3.606	179
180	12120100	Half & Half	1	2	Tablespoons (1 fl oz)	1	1	0.5	39.26	2.16232	180
181	12120100	Half & Half	2	1	individual container	1	1	1	19.5	1.074	181
182	12140000	Whipped cream, sweetened	1	0.25	cup	0.25	0.25	1	103.53	6.44385	182
183	12210200	Coffee Mate (liquid)	1	2	Tablespoons (1 fl oz)	1	1	0.5	40.8	0.582	183
184	12210250	Coffee Mate Lite (liquid)	1	2	Tablespoons (1 fl oz)	1	1	0.5	20.7	0.27	184
185	12210400	Coffee Mate (powder)	1	1	packet	1	1	1	16.38	0.9756	185
186	12310100	Sour cream	2	1	individual container	1	0.5	0.5	64.2	3.915	186
187	12310350	Sour cream, low fat or light	1	2	Tablespoons	2	1	0.5	43.52	2.112	187
188	21501200	Ground beef (80% lean)	2	1	ounce after cooking	1	1	1	75.32	1.8732	188
189	21501200	Ground beef (80% lean)	2	1	ounce raw (cooked yield)	1	1	1	59.18	1.4718	189
190	21501200	Ground beef (80% lean)	2	1	large patty (3 per pound)	1	0.5	0.5	317.42	7.8942	190
191	21501200	Ground beef (80% lean)	2	1	medium meatball	1	1	1	75.32	1.8732	191
192	21501200	Ground beef (80% lean)	2	1	small patty (5 per pound)	1	0.5	0.5	190.99	4.7499	192
193	21501300	Ground beef (85% lean)	1	1	medium patty (4 per pound)	1	0.5	0.5	238.08	5.5776	193
194	21501300	Ground beef (85% lean)	2	1	ounce after cooking	1	1	1	69.44	1.6268	194
195	21501300	Ground beef (85% lean)	2	1	ounce raw (cooked yield)	1	1	1	59.52	1.3944	195
196	21501300	Ground beef (85% lean)	2	1	large patty (3 per pound)	1	0.5	0.5	317.44	7.4368	196
197	21501300	Ground beef (85% lean)	2	1	medium meatball	1	1	1	69.44	1.6268	197
198	21501300	Ground beef (85% lean)	2	1	small patty (5 per pound)	1	0.5	0.5	190.96	4.4737	198
199	21602100	Beef jerky	1	1	piece (Slim Jim)	1	0.5	0.5	39.36	1.0416	199
200	21602100	Beef jerky	2	0.25	cup, pieces	0.25	0.25	1	92.25	2.44125	200
201	21603000	Pastrami (beef)	1	1	slice (slice = 1 oz)	1	1	1	97.72	2.9176	201
202	22101110	Grilled pork chop (eat lean & fat)	1	1	medium	1	0.5	0.5	216	4.662	202
203	22101110	Grilled pork chop (eat lean & fat)	2	1	large	1	0.5	0.5	314.4	6.7858	203
204	22101110	Grilled pork chop (eat lean & fat)	2	1	small or thin cut	1	0.5	0.5	117.6	2.5382	204
205	22101110	Grilled pork chop (eat lean & fat)	2	4	ounces after cooking	4	1	0.25	272.16	5.87412	205
206	22101120	Grilled pork chop (eat lean only)	1	1	medium	1	0.5	0.5	174.72	3.0324	206
207	22101120	Grilled pork chop (eat lean only)	2	1	large	1	0.5	0.5	268.32	4.6569	207
208	22101120	Grilled pork chop (eat lean only)	2	1	small or thin cut	1	0.5	0.5	95.68	1.6606	208
209	22101120	Grilled pork chop (eat lean only)	2	4	ounces after cooking	4	1	0.25	235.872	4.09374	209
210	22101210	Fried pork chop (eat lean & fat)	1	1	medium	1	0.5	0.5	225.99	5.508	210
211	22101210	Fried pork chop (eat lean & fat)	2	1	large	1	0.5	0.5	326.43	7.956	211
212	22101210	Fried pork chop (eat lean & fat)	2	1	small or thin cut	1	0.5	0.5	122.76	2.992	212
213	22101210	Fried pork chop (eat lean & fat)	2	4	ounces after cooking	4	1	0.25	316.386	7.7112	213
214	92302000	Tea (unsweetened)	1	1	teacup (cup = 6 fl oz)	1	0.5	0.5	1.78	0.00356	214
215	92302000	Tea (unsweetened)	2	1	mug (mug = 8 fl oz)	1	0.5	0.5	2.37	0.00474	215
216	92302000	Tea (unsweetened)	2	12	fluid ounces	\N	2	0.1667	3.56	0.00474	216
217	92410320	Soft drink, diet	2	1	small (drink = 16 fl oz)	1	0.5	0.5	4.73	0	217
218	92410320	Soft drink, diet	2	1	medium (drink = 22 fl oz)	1	0.5	0.5	6.5	0	218
219	92410320	Soft drink, diet	2	1	large (drink = 32 fl oz)	1	0.5	0.5	9.46	0	219
220	92410320	Soft drink, diet	2	1	extra large (drink = 44 fl oz)	1	0.5	0.5	13.01	0	220
221	92510610	Fruit drink (punch, ade, or cooler)	1	1	cup	1	0.5	0.5	119.04	0	221
222	92510610	Fruit drink (punch, ade, or cooler)	2	1	Capri Sun container	1	0.5	0.5	100.32	0	222
223	92510610	Fruit drink (punch, ade, or cooler)	2	1	drink box (box - 8 fl oz)	1	0.5	0.5	125.76	0	223
224	92510610	Fruit drink (punch, ade, or cooler)	2	1	fun size (box = 4 fl oz)	1	0.5	0.5	62.88	0	224
225	92510610	Fruit drink (punch, ade, or cooler)	2	1	Fruitopia bottle	1	0.5	0.5	238.08	0	225
226	92511010	Lemonade	1	1	cup	1	0.5	0.5	99.2	0.01736	226
227	92511010	Lemonade	2	1	Snapple bottle	1	0.5	0.5	198.4	0.03472	227
228	92520410	Crystal Lite (low-calorie fruit drink)	1	1	cup	1	0.5	0.5	45.6	0	228
229	92530510	Cranberry juice cocktail	1	1	cup	1	0.5	0.5	144.21	0.0253	229
230	92560000	Gatorade or Powerade (sports drink)	1	1	cup	1	0.5	0.5	60	0	230
231	92570100	Pedialyte	1	1	cup	1	0.5	0.5	25	0	231
232	93101000	Beer or ale	1	1	can	1	0.5	0.5	147.6	0	232
233	93101000	Beer or ale	2	0.5	small pitcher	0.5	0.25	0.5	196.8	0	233
234	93102000	Lite beer	1	1	can	1	0.5	0.5	100.8	0	234
235	93102000	Lite beer	2	0.5	small pitcher	0.5	0.25	0.5	134.4	0	235
236	93201000	Cordial or liqueur	1	1	cordial glass	1	0.5	0.5	70.8	0.012	236
237	93201000	Cordial or liqueur	2	1	fluid ounce	1	0.5	0.5	106.2	0.018	237
238	93301030	Bloody Mary	1	1	cocktail	4.6	0.5	0.5	114.54	0.0138	238
239	93301030	Bloody Mary	2	8	fluid ounces (no ice)	8	1	0.125	199.2	0.024	239
240	93301060	Gin & tonic	1	1	cocktail	7	0.5	0.5	159.6	0.0042	240
241	93301060	Gin & tonic	2	8	fluid ounces (no ice)	8	1	0.125	182.4	0.0048	241
242	93301090	Manhattan	1	1	cocktail	2.1	0.5	0.5	138.243	0	242
243	93301090	Manhattan	2	4	fluid ounces (no ice)	4	1	0.25	263.32	0	243
244	93301100	Margarita	1	1	cocktail (incl. frozen)	6.3	0.5	0.5	425.754	0.03906	244
245	93301100	Margarita	2	4	fluid ounces (no ice)	4	1	0.25	270.32	0.0248	245
246	93301110	Martini	1	1	cocktail	2	0.5	0.5	129.92	0	246
247	93301110	Martini	2	4	fluid ounces (no ice)	4	1	0.25	259.84	0	247
248	93301190	Rum & coke	1	1	cocktail	12	0.5	0.5	273.6	0.0144	248
249	93301190	Rum & coke	2	8	fluid ounces (no ice)	8	1	0.125	182.4	0.0096	249
250	93301200	Pina colada	1	1	cocktail	8	0.5	0.5	417.6	3.96	250
251	93301200	Pina colada	2	8	fluid ounces (no ice)	8	1	0.125	417.6	3.96	251
252	93301450	Liqueur with cream	1	2	fluid ounces	2	1	0.5	203.394	6.00852	252
253	93401000	Table wine (all)	1	1	standard wine glass	5	0.5	0.5	113.575	0	253
254	93401000	Table wine (all)	2	0.5	carafe	0.5	0.25	0.5	189.42	0	254
255	93401000	Table wine (all)	2	0.5	bottle	1	0.25	0.5	284.9	0	255
256	93401000	Table wine (all)	2	1	small wine glass	1	0.5	0.5	79.31	0	256
257	93402000	Dessert wine (all)	1	1	small wine glass	1	0.5	0.5	164.8	0	257
258	93402000	Dessert wine (all)	2	4	fluid ounces	4	1	0.25	188.8	0	258
259	93404000	Wine cooler	1	1	drink (drink = 7 fl oz)	1	0.5	0.5	111.3	0.0063	259
260	93404000	Wine cooler	2	8	fluid ounces (no ice)	8	1	0.125	127.2	0.0072	260
261	93404500	Sangria	1	1	drink (drink = 8 fl oz)	1	0.5	0.5	164.16	0.0114	261
262	93404500	Sangria	2	8	fluid ounces (no ice)	8	1	0.125	167.04	0.0116	262
263	93501000	Brandy or cognac	1	2	fluid ounces	2	1	0.5	128.436	0	263
264	93502000	Whiskey (bourbon, scotch, rye)	1	1	jigger (jigger = 1.5 oz)	1	0.5	0.5	105	0	264
265	93502000	Whiskey (bourbon, scotch, rye)	2	2	fluid ounces	2	1	0.5	140	0	265
266	93503000	Gin	1	1	jigger (jigger = 1.5 oz)	1	0.5	0.5	110.46	0	266
267	93503000	Gin	2	2	fluid ounces	2	1	0.5	147.28	0	267
268	93504000	Rum	1	1	jigger (jigger = 1.5 oz)	1	0.5	0.5	97.02	0	268
269	93504000	Rum	2	2	fluid ounces	2	1	0.5	128.436	0	269
270	93505000	Vodka or tequila	1	1	jigger (jigger = 1.5 oz)	1	0.5	0.5	97.02	0	270
271	93505000	Vodka or tequila	2	2	fluid ounces	2	1	0.5	128.436	0	271
272	94000000	Water	1	1	cup	1	0.5	0.5	0	0	272
273	94000000	Water	2	2	fluid ounces	2	1	0.5	0	0	273
274	94210100	Fitness Water (Propel)	1	1	cup (8 fl oz)	1	0.5	0.5	11.85	0	274
275	94210100	Fitness Water (Propel)	2	1	bottle (16.9 fl oz)	1	0.25	0.25	25	0	275
276	94210100	Fitness Water (Propel)	2	1	sports bottle (23.7 fl oz)	1	0.25	0.25	35.1	0	276
277	11411100	Plain yogurt, whole milk	2	1	ounce	0.125	1	1	17.30875	0.59588	277
278	11411300	Plain yogurt, fat free	2	1	ounce	0.125	1	1	15.89	0.03405	278
279	11421000	Flavored yogurt, whole milk	2	1	ounce	0.125	1	1	28.65875	0.5675	279
280	11422000	Flavored yogurt, low fat	2	1	ounce	0.125	1	1	24.11875	0.22984	280
281	11424000	Flavored yogurt, fat-free sugar-free	2	1	ounce	0.125	1	1	12.20125	0.03405	281
282	11431000	Fruit yogurt, whole milk	2	1	ounce	0.1667	1	1	33.71667	0.578	282
283	11432000	Fruit yogurt, low fat	2	1	ounce	0.1667	1	1	28.9	0.19833	283
284	11433500	Fruit yogurt, fat-free sugar-free	2	1	ounce	0.1667	1	1	14.45	0.0255	284
285	42110000	Mixed nuts	2	1	ounce	0.2	0.25	0.25	175	2.49636	285
286	43103000	Sesame seeds	2	1	Tablespoon	0.0625	0.5	0.5	53	0.63	286
287	43104000	Flax seed	2	1	Tablespoon	0.0625	0.5	0.5	45	0.29	287
288	54338000	Wheat cracker	2	4	Wheatsworth crackers	4	2	0.5	56	0.62	288
289	54338000	Wheat cracker	2	4	Whole Wheat Club Crackers	4	2	0.5	68	0.724	289
290	54338000	Wheat cracker	2	0.25	cup	0.25	0.25	1	53.25	0.583	290
291	56207110	Bulgur, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	56	0.028	291
292	56207150	Couscous, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	87	0.023	292
293	62125100	Raisins	2	1	Tablespoon	0.0625	0.5	0.5	27	0.00544	293
294	72116000	Romaine lettuce	2	1	medium leaf	1	1	1	2	0.007	294
295	82101000	Vegetable oil (canola, corn, olive, etc)	2	1	Teaspoon	0.333	0.5	0.5	40	0.56893	295
296	12210410	Coffee Mate Lite  (powder)	1	1	packet	1	1	1	12.93	0.114	296
297	12220200	Cool Whip	1	0.25	cup	0.25	0.25	1	59.625	4.08375	297
298	12220250	Lowfat Cool Whip	1	0.25	cup	0.25	0.25	1	41.25	2.11313	298
299	12310100	Sour cream	1	2	Tablespoons	0.125	1	0.5	61.525	3.75188	299
300	14107030	Mozzarella cheese (part skim)	2	0.25	cup shredded	0.25	0.25	1	85.315	3.57928	300
301	14107030	Mozzarella cheese (part skim)	2	1	cubic inch	1	0.5	0.5	53.152	2.22992	301
302	14107030	Mozzarella cheese (part skim)	2	1	string cheese stick	1	0.5	0.5	84.56	3.5476	302
303	14108010	Parmesan or Romano cheese	1	1	tablespoon	1	0.5	0.5	21.55	0.865	303
304	14109030	Low fat cheddar or Swiss	1	1	slice (slice = 1 oz)	1	0.5	0.5	50	0.925	304
305	91501010	Jello	2	0.5	cup	0.5	0.25	0.5	74.4	0	305
306	91501020	Jello with fruit	1	0.5	cup	0.5	0.25	0.5	78	0.024	306
307	91511010	Sugar-free Jello (diet)	1	1	snack-size package (3.5 oz)	1	0.5	0.5	3.96	0	307
308	91511010	Sugar-free Jello (diet)	2	0.5	cup	0.5	0.25	0.5	4.8	0	308
309	91511020	Sugar-free Jello with fruit (diet)	1	0.5	cup	0.5	0.25	0.5	39.6	0.036	309
310	91601000	Fruit ice (Italian fruit ice)	1	0.5	cup	0.5	0.25	0.5	123.52	0	310
311	91705010	Milk chocolate bar or candy (plain)	2	1	Big Block bar (2.2 oz)	1	0.25	0.25	331.7	8.835	311
312	91705010	Milk chocolate bar or candy (plain)	2	1	solid egg	1	1	1	29.425	0.78375	312
313	91705010	Milk chocolate bar or candy (plain)	2	1	miniature bar (.5 oz)	1	1	1	74.9	1.995	313
314	91705010	Milk chocolate bar or candy (plain)	2	1	hollow piece (4.6 oz)	1	0.25	0.25	706.2	18.81	314
315	91705020	Krackel or Crunch Bar	1	1	bar (1.2 oz)	1	0.5	0.5	168.64	5.4026	315
316	91705020	Krackel or Crunch Bar	2	1	Big Block bar (2.2 oz)	1	0.25	0.25	307.52	9.8518	316
317	91705020	Krackel or Crunch Bar	2	1	solid egg	1	1	1	34.72	1.1123	317
318	91705020	Krackel or Crunch Bar	2	1	miniature bar (.5 oz)	1	1	1	69.44	2.2246	318
319	91705050	Milk chocolate fruit & nut bar	1	1	bar (1.2 oz)	1	0.5	0.5	150.48	4.0557	319
320	91705050	Milk chocolate fruit & nut bar	2	0.25	large (6 oz) bar	0.25	0.25	1	193.8	5.22325	320
321	91705050	Milk chocolate fruit & nut bar	2	1	piece	1	1	1	50.16	1.3519	321
322	91705060	Milk chocolate bar with almonds	1	1	bar (1.45 oz)	1	0.5	0.5	215.66	6.9618	322
323	91705060	Milk chocolate bar with almonds	2	1	Big Block bar (2.2 oz)	1	0.25	0.25	326.12	10.5276	323
324	91705060	Milk chocolate bar with almonds	2	1	miniature bar (.5 oz)	1	1	1	73.64	2.3772	324
325	91705200	Chocolate chips	1	0.25	cup	0.25	0.25	1	201.18	7.455	325
326	91705200	Chocolate chips	2	20	morsels	20	5	0.25	47.9	1.775	326
327	91705300	Dark chocolate candy bar	1	1	bar (1.45 oz)	1	0.25	0.25	207.05	8.2328	327
328	91705300	Dark chocolate candy bar	2	0.25	large bar (4 oz)	0.25	0.25	1	142.6625	5.6726	328
329	91705300	Dark chocolate candy bar	2	1	bar (2.2 oz)	1	0.25	0.25	313.1	12.4496	329
330	91706000	Coconut candy, chocolate-covered	1	1	bar (1.75 oz)	1	0.5	0.5	243	10.29	330
331	91706000	Coconut candy, chocolate-covered	2	1	fun size bar	1	1	1	97.2	4.116	331
332	91706000	Coconut candy, chocolate-covered	2	1	small egg (1 oz)	1	1	1	136.08	5.7624	332
333	91707010	Chocolate-covered candy	1	1	butter cream	1	1	1	73.2	1.092	333
334	91707010	Chocolate-covered candy	2	1	cherry	1	1	1	51.24	0.7644	334
335	91707010	Chocolate-covered candy	2	1	Cadbury egg (1 oz)	1	1	1	106.14	1.5834	335
336	91707010	Chocolate-covered candy	2	1	large York pattie	1	0.5	0.5	153.72	2.2932	336
337	91707010	Chocolate-covered candy	2	1	piece (0.6 oz)	1	1	1	62.22	0.9282	337
338	91707010	Chocolate-covered candy	2	1	small York pattie	1	1	1	51.972	0.77532	338
339	91708030	Fruit roll-up (fruit snack chews)	1	1	pouch (1 oz)	1	0.5	0.5	103.88	0.182	339
340	91708030	Fruit roll-up (fruit snack chews)	2	1	3-foot roll	1	0.25	0.25	77.91	0.1365	340
341	91715100	Snickers candy bar	1	1	bar (2 oz)	1	0.5	0.5	273.03	5.1243	341
342	91715100	Snickers candy bar	2	1	king size bar (4 oz)	1	0.25	0.25	541.27	10.1587	342
343	91715100	Snickers candy bar	2	1	miniature bar (.3 oz)	1	1	1	43.11	0.8091	343
344	91718100	Butterfinger candy bar	1	1	bar (2.2 oz)	1	0.5	0.5	290.36	6.2464	344
345	91718100	Butterfinger candy bar	2	0.25	cup Butterfinger BB's	0.25	0.25	1	207.06	4.4544	345
346	91718100	Butterfinger candy bar	2	1	king size bar (4 oz)	1	0.25	0.25	514.08	11.0592	346
347	91718100	Butterfinger candy bar	2	1	fun size bar (0.6 oz)	1	1	1	99.96	2.1504	347
348	91723000	Marshmallows	1	1	regular	1	1	1	22.896	0.00432	348
349	91723000	Marshmallows	2	0.25	cup of miniatures	0.25	0.25	1	36.57	0.0069	349
350	91723000	Marshmallows	2	1	Peep chicken or bunny	1	1	1	25.44	0.0048	350
351	91726130	Milky Way candy bar	1	1	bar (1.9 oz)	1	0.5	0.5	228.42	4.2066	351
352	91726130	Milky Way candy bar	2	1	king size bar (3.6 oz)	1	0.25	0.25	431.46	7.9458	352
353	91726130	Milky Way candy bar	2	1	miniature bar (0.3 oz)	1	1	1	35.955	0.66215	353
354	91731010	M&M's candies with peanuts	1	1	package (1.67 oz)	1	0.25	0.25	242.52	4.8551	354
355	91731010	M&M's candies with peanuts	2	0.25	cup	0.25	0.25	1	219.3	4.39025	355
356	91731010	M&M's candies with peanuts	2	1	fun size package (0.7 oz)	1	0.5	0.5	123.84	2.4792	356
357	91733000	Peanut brittle	1	1	medium piece (0.3 oz)	1	1	1	43.56	0.3726	357
358	91733000	Peanut brittle	2	1	small piece (0.2 oz)	1	1	1	21.78	0.1863	358
359	91733000	Peanut brittle	2	1	large piece (0.5 oz)	1	1	1	62.92	0.5382	359
360	91734100	Peanut butter cups (Reese's)	1	1	package (2 cups, 1.6 oz)	1	0.5	0.5	231.75	4.8285	360
361	91734100	Peanut butter cups (Reese's)	2	1	miniature cup	1	1	1	36.05	0.7511	361
362	91734400	Fast Break candy bar (Reese's)	1	1	regular size bar	1	0.25	0.25	282.15	4.58052	362
363	91745020	Hard candy	2	1	roll (0.9 oz, 12 pieces)	1	0.25	0.25	102.44	0	363
364	91745020	Hard candy	1	1	ball	1	1	1	31.52	0	364
365	91745020	Hard candy	2	1	candy cane	1	1	1	59.1	0	365
366	91745020	Hard candy	2	1	fun size package	1	1	1	31.52	0	366
367	91745020	Hard candy	2	1	lollipop	1	1	1	82.74	0	367
368	91745020	Hard candy	2	1	mint	1	1	1	20.094	0	368
369	91746100	M&M's plain chocolate candies	1	1	package (1.7 oz)	1	0.25	0.25	236.16	6.2784	369
370	91746100	M&M's plain chocolate candies	2	0.25	cup (66 pieces)	1	0.25	1	255.84	6.8016	370
371	91746100	M&M's plain chocolate candies	2	1	fun size package (0.7 oz)	1	0.5	0.5	103.32	2.7468	371
372	91750000	Taffy	1	1	piece	1	1	1	37.318	0.20492	372
373	91750000	Taffy	2	1	package (8 pieces)	1	0.5	0.5	162.77	0.8938	373
374	91770020	Dietetic hard candy	1	1	Sweet'n Low candy	1	1	1	14.25	0	374
375	91770020	Dietetic hard candy	2	0.25	cup hard candy	0.5	0.25	1	185.625	0	375
376	91770020	Dietetic hard candy	2	1	lollipop (.5 oz)	1	1	1	52.5	0	376
377	91770020	Dietetic hard candy	2	1	cough drop	1	1	1	3.75	0	377
378	91770030	Dietetic chocolate-covered candy	1	1	section candy bar	1	1	1	40.25	1.5337	378
379	91770030	Dietetic chocolate-covered candy	2	0.25	cup TV Mix	0.25	0.25	1	267.375	10.18815	379
380	91770030	Dietetic chocolate-covered candy	2	0.25	cup covered raisins	0.25	0.25	1	273.125	10.40725	380
381	91770030	Dietetic chocolate-covered candy	2	1	piece Peanut Butter Cups	1	1	1	46	1.7528	381
382	91770030	Dietetic chocolate-covered candy	2	1	section chocolate wafers	1	1	1	28.75	1.0955	382
383	91770030	Dietetic chocolate-covered candy	2	1	section Crunch Bar	1	1	1	34.5	1.3146	383
384	91801000	Chewing gum (made with sugar)	1	1	piece	1	1	1	9.88	0.0016	384
385	91801000	Chewing gum (made with sugar)	2	0.25	6-foot long tape	0.25	0.25	1	37.05	0.006	385
386	91801000	Chewing gum (made with sugar)	2	1	gum ball	1	1	1	4.94	0.0008	386
387	91802000	Chewing gum (sugar-free)	1	1	piece	1	1	1	5.36	0.0012	387
388	92101000	Coffee	1	1	coffee cup (cup = 6 fl oz)	1	0.5	0.5	7.08	0	388
389	92101000	Coffee	2	1	mug ( mug = 8 fl oz)	1	0.5	0.5	9.48	0	389
390	92305040	Tea (sweetened)	2	1	teacup (cup = 6 fl oz)	1	0.5	0.5	52.5	0	390
391	92305040	Tea (sweetened)	2	1	mug (mug = 8 fl oz)	1	0.5	0.5	70	0	391
392	92305040	Tea (sweetened)	1	12	fluid ounces	\N	2	0.1667	105	0	392
393	92410110	Tonic water (quinine water)	1	1	can	1	0.5	0.5	124.44	0	393
394	92410110	Tonic water (quinine water)	2	1	cup	8	0.5	0.5	82.96	0	394
395	92410210	Club soda (seltzer)	1	1	can	1	0.5	0.5	0	0	395
396	92410210	Club soda (seltzer)	2	1	cup	8	0.5	0.5	0	0	396
397	92410310	Soft drink, regular	1	1	can	1	0.5	0.5	154.98	0	397
398	92410310	Soft drink, regular	2	1	bottle ( bottle = 16 fl oz)	1	0.5	0.5	206.64	0	398
399	92410310	Soft drink, regular	2	1	small (drink = 16 fl oz)	1	0.5	0.5	206.64	0	399
400	92410310	Soft drink, regular	2	1	medium (drink = 22 fl oz)	1	0.5	0.5	283.92	0	400
401	92410310	Soft drink, regular	2	1	large (drink = 32 fl oz)	1	0.5	0.5	413.28	0	401
402	92410310	Soft drink, regular	2	1	extra large (drink = 44 fl oz)	1	0.5	0.5	568.26	0	402
403	92410320	Soft drink, diet	1	1	can	1	0.5	0.5	3.55	0	403
404	92410320	Soft drink, diet	2	1	bottle ( bottle = 16 fl oz)	1	0.5	0.5	4.73	0	404
405	82101000	Vegetable oil (canola, corn, olive, etc)	1	1	Tablespoon	1	0.5	0.5	120.224	1.7068	405
406	82101000	Vegetable oil (canola, corn, olive, etc)	2	0.25	cup	0.25	0.25	1	481.78	6.83975	406
407	83101000	Blue cheese dressing	1	1	Tablespoon	1	0.5	0.5	77.112	1.5147	407
408	83104000	French dressing	1	1	Tablespoon	1	0.5	0.5	71.292	0.8814	408
409	83104000	French dressing	2	1	packet	1	0.5	0.5	201.08	2.486	409
410	83106000	Italian dressing (oil & vinegar)	1	1	Tablespoon	1	0.5	0.5	42.777	0.65709	410
411	83106000	Italian dressing (oil & vinegar)	2	0.25	cup	0.25	0.25	1	170.9625	2.62613	411
412	83106000	Italian dressing (oil & vinegar)	2	1	packet (1.6 oz)	1	0.5	0.5	128.04	1.9668	412
413	83107000	Mayonnaise, regular	1	1	Tablespoon	1	0.5	0.5	98.946	1.63944	413
414	83107000	Mayonnaise, regular	2	0.25	cup	0.25	0.25	1	394.35	6.534	414
415	83107000	Mayonnaise, regular	2	1	packet	1	0.5	0.5	86.04	1.4256	415
416	83110000	Miracle whip salad dressing	1	1	Tablespoon	1	0.5	0.5	57.33	0.7203	416
417	83110000	Miracle whip salad dressing	2	0.25	cup	0.25	0.25	1	229.125	2.87875	417
418	83110000	Miracle whip salad dressing	2	1	packet	1	0.5	0.5	46.8	0.588	418
419	83112500	Creamy dressing (ranch)	1	1	Tablespoon	1	0.5	0.5	71.442	1.12455	419
420	83112500	Creamy dressing (ranch)	2	0.25	cup	0.25	0.25	1	285.525	4.49437	420
421	83112500	Creamy dressing (ranch)	2	1	packet	1	0.5	0.5	213.84	3.366	421
422	83113000	Sweet & sour dressing	1	1	Tablespoon	1	0.5	0.5	2.34	0	422
423	83113000	Sweet & sour dressing	2	0.25	cup	0.25	0.25	1	9.375	0	423
424	83114000	Thousand island dressing	1	1	Tablespoon	1	0.5	0.5	57.72	0.79404	424
425	83114000	Thousand island dressing	2	1	packet	1	0.5	0.5	162.8	2.2396	425
426	83200100	Low-calorie salad dressing	1	1	Tablespoon	1	0.5	0.5	23.814	0.1296	426
427	83200100	Low-calorie salad dressing	2	0.25	cup	0.25	0.25	1	95.55	0.52	427
428	83204000	Low-calorie mayonnaise	2	0.25	cup	0.25	0.25	1	145	2.0625	428
429	83205500	Fat-free Italian dressing	1	1	Tablespoon	1	0.5	0.5	6.58	0.0406	429
430	83205500	Fat-free Italian dressing	2	1	packet	1	0.5	0.5	20.68	0.1276	430
431	83207100	Fat-free thousand island dressing	1	1	Tablespoon	1	0.5	0.5	21.12	0.032	431
432	83207100	Fat-free thousand island dressing	2	1	packet	1	0.5	0.5	58.08	0.088	432
433	83210200	Fat-free ranch dressing	1	1	Tablespoon	1	0.5	0.5	17.655	0.08085	433
434	83210200	Fat-free ranch dressing	2	1	packet	1	0.5	0.5	47.08	0.2156	434
435	91101010	White sugar (granulated or lump)	1	1	teaspoon	1	0.5	0.5	16.254	0	435
436	91101010	White sugar (granulated or lump)	2	0.25	cup	0.25	0.25	1	193.5	0	436
437	91101010	White sugar (granulated or lump)	2	1	lump (2 cubes)	1	0.5	0.5	19.35	0	437
438	91101010	White sugar (granulated or lump)	2	1	individual packet	1	1	1	23.22	0	438
439	91101020	Powdered sugar (confectioner's sugar)	1	1	teaspoon	1	1	1	9.725	0.0005	439
440	91101020	Powdered sugar (confectioner's sugar)	2	0.25	cup	0.25	0.25	1	116.7	0.006	440
441	91102010	Brown sugar	1	1	teaspoon, packed	1	1	1	17.342	0	441
442	91200000	Calorie-free sweetener	1	1	individual packet	1	1	1	1.408	8e-05	442
443	91200000	Calorie-free sweetener	2	1	teaspoon	1	1	1	7.04	0.0004	443
444	91301080	Chocolate sauce (thin type)	1	1	Tablespoon	1	0.5	0.5	52.452	0.09776	444
445	91301080	Chocolate sauce (thin type)	2	0.25	cup	0.25	0.25	1	209.25	0.39	445
446	91301250	Syrup (all types)	1	1	Tablespoon	1	0.5	0.5	53	0.004	446
447	91301250	Syrup (all types)	2	1	packet	1	0.5	0.5	156.35	0.0118	447
448	91302010	Honey	1	1	Tablespoon	1	0.5	0.5	63.84	0	448
449	91304010	Butterscotch sauce	1	1	Tablespoon	1	0.5	0.5	62.964	0.39856	449
450	91304010	Butterscotch sauce	2	0.25	cup	0.25	0.25	1	252.45	1.598	450
451	91304020	Fudge sauce (thick type)	1	1	Tablespoon	1	0.5	0.5	72.66	1.1844	451
452	91304020	Fudge sauce (thick type)	2	0.25	cup	0.25	0.25	1	294.1	4.794	452
453	91304030	Fruit topping	1	1	Tablespoon	1	0.5	0.5	53.848	0.00212	453
454	91304030	Fruit topping	2	0.25	cup	0.25	0.25	1	215.9	0.0085	454
455	91304040	Marshmallow topping	1	1	Tablespoon	1	0.5	0.5	19.964	0.00372	455
456	91304040	Marshmallow topping	2	0.25	cup	0.25	0.25	1	79.695	0.01485	456
457	91304060	Nut topping (wet)	1	1	Tablespoon	1	0.5	0.5	89.6	0.392	457
458	91304060	Nut topping (wet)	2	0.25	cup	0.25	0.25	1	367.36	1.6072	458
459	91304090	Nutella (chocolate hazelnut spread)	1	1	Tablespoon	1	0.5	0.5	83.855	0.83545	459
460	91305010	Chocolate icing	1	1	Tablespoon	1	0.5	0.5	67.252	0.39388	460
461	91305010	Chocolate icing	2	0.25	cup	0.25	0.25	1	268.8125	1.57438	461
462	91305020	White icing	1	1	Tablespoon	1	0.5	0.5	80.396	0.40397	462
463	91305020	White icing	2	0.25	cup	0.25	0.25	1	322.19	1.61893	463
464	91351010	Dietetic syrup	1	1	Tablespoon	1	0.5	0.5	6	0	464
465	91351010	Dietetic syrup	2	0.25	cup	0.25	0.25	1	24	0	465
466	91351020	Dietetic topping	1	1	Tablespoon	1	0.5	0.5	8.236	0.12212	466
467	91351020	Dietetic topping	2	0.25	cup	0.25	0.25	1	32.915	0.48805	467
468	91361010	Sweet and sour sauce (Vietnamese Sauce)	1	2	Tablespoons	2	1	0.5	28.2	0.0003	468
469	91361010	Sweet and sour sauce (Vietnamese Sauce)	2	1	fast food container	1	0.5	0.5	31.02	0.00033	469
470	91361040	Vanilla or rum dessert sauce	1	0.25	cup	0.25	0.25	1	95.04	0.9306	470
471	91361040	Vanilla or rum dessert sauce	2	1	Tablespoon	1	0.5	0.5	23.76	0.23265	471
472	91361050	Duck sauce	1	1	packet	1	1	1	22.325	0.42275	472
473	91361050	Duck sauce	2	0.25	cup	0.25	0.25	1	170.375	3.22625	473
474	91361050	Duck sauce	2	1	Tablespoon	1	0.5	0.5	42.3	0.801	474
475	91401000	Jelly	1	1	Tablespoon	1	0.5	0.5	50.54	0.0019	475
476	91401000	Jelly	2	1	packet	1	1	1	37.24	0.0014	476
477	91402000	Jam or preserves	1	1	Tablespoon	1	0.5	0.5	54.6	0.0021	477
478	91402000	Jam or preserves	2	1	packet	1	1	1	36.4	0.0014	478
479	91405000	Dietetic jelly (low cal sweetener)	1	1	Tablespoon	1	0.5	0.5	24.816	0.00376	479
480	91406500	All-fruit preserves (no added sugar)	1	1	Tablespoon	1	0.5	0.5	36.6	0.012	480
481	91406600	Jam or preserves (low sugar)	1	1	Tablespoon	1	0.5	0.5	25.702	0.00127	481
482	91501010	Jello	1	1	snack-size package (3.5 oz)	1	0.5	0.5	61.38	0	482
483	91611000	Popsicle	1	1	single stick	1	0.5	0.5	63.36	0	483
484	91611000	Popsicle	2	1	Kool Pop	1	0.5	0.5	23.76	0	484
485	91611000	Popsicle	2	1	double stick	1	0.5	0.5	92.16	0	485
486	91611000	Popsicle	2	1	Fla-Vor-Ice	1	0.5	0.5	30.96	0	486
487	91611100	Sugar-free popsicle (diet)	1	1	single stick	1	0.5	0.5	16.72	0.0176	487
488	91611100	Sugar-free popsicle (diet)	2	1	double stick	1	0.5	0.5	24.32	0.0256	488
489	91621000	Slurpee or snow cone	1	1	medium (16 fl oz)	1	0.5	0.5	423.68	0	489
490	91621000	Slurpee or snow cone	2	1	cup	1	0.5	0.5	212.48	0	490
491	91621000	Slurpee or snow cone	2	1	large (22 fl oz)	1	0.5	0.5	578.56	0	491
492	91621000	Slurpee or snow cone	2	1	small (10 fl oz)	1	0.5	0.5	355.84	0	492
493	91701010	Chocolate-covered almonds	1	1	almond	1	1	1	17.01	0.2097	493
494	91701010	Chocolate-covered almonds	2	0.25	cup	0.25	0.25	1	240.975	2.97075	494
495	91703010	Tootsie roll	1	1	roll	1	0.5	0.5	139.3	0.427	495
496	91703010	Tootsie roll	2	1	midgee roll	1	1	1	25.87	0.0793	496
497	91703010	Tootsie roll	2	1	large roll	1	0.5	0.5	254.72	0.7808	497
498	91703020	Caramel candy	1	1	piece	1	1	1	26.74	0.4606	498
499	91703020	Caramel candy	2	1	sucker (2 oz)	1	0.5	0.5	225.38	3.8822	499
500	91703200	Twix cookie bars	1	1	regular package	1	0.25	0.25	289.42	5.162	500
501	91703200	Twix cookie bars	2	1	king size package	1	0.25	0.25	474.05	8.455	501
502	91703200	Twix cookie bars	2	1	fun size bar	1	1	1	79.84	1.424	502
503	91705010	Milk chocolate bar or candy (plain)	1	1	bar (1.4 oz)	1	0.5	0.5	214	5.7	503
504	91705010	Milk chocolate bar or candy (plain)	2	0.25	cup chocolate chips	0.25	0.25	1	224.7	5.985	504
505	75216171	Yellow corn (corn on the cob)	2	1	medium ear	1	0.5	0.5	107	0.19	505
506	75216171	Yellow corn (corn on the cob)	2	1	baby ear	1	1	1	8.56	0.0152	506
507	75216171	Yellow corn (corn on the cob)	2	1	small ear	1	0.5	0.5	92.02	0.1634	507
508	75217010	Cooked eggplant	1	0.5	cup, diced	0.5	0.25	0.5	35	0.0384	508
509	75217010	Cooked eggplant	2	1	slice	1	1	1	18.9	0.0216	509
510	75219011	Cooked mushrooms	1	0.5	cup	0.5	0.25	0.5	21.84	0.0468	510
511	75219011	Cooked mushrooms	2	1	large cap	1	1	1	4.48	0.0096	511
512	75219011	Cooked mushrooms	2	10	slices	1	5	0.5	11.2	0.024	512
513	75340010	Vegetable combo (Asian style)	1	0.5	cup	0.5	0.25	0.5	23.495	0.0235	513
514	75340160	Vegetable-pasta combo with cream sauce	1	0.5	cup	0.5	0.25	0.5	84.24	1.0206	514
515	75340160	Vegetable-pasta combo with cream sauce	2	1	frozen package	1	0.25	0.25	279.76	3.3894	515
516	75340200	Tofu and vegetables (Monk's food)	1	0.5	cup	0.5	0.25	0.5	83.66	0.28764	516
517	75410500	Chiles rellenos	1	1	chili	1	0.5	0.5	364.65	12.4982	517
518	75411010	Corn pudding (scalloped corn)	1	0.5	cup	0.5	0.25	0.5	128.4	1.4552	518
519	75411020	Corn fritter	1	1	fritter	1	1	1	131.95	1.575	519
520	75411020	Corn fritter	2	0.5	cup	0.5	0.25	0.5	201.695	2.4075	520
521	75412060	Eggplant Parmesan	1	1	cup	1	0.25	0.25	316.8	9.0288	521
522	75412060	Eggplant Parmesan	2	1	slice eggplant	1	1	1	70.4	2.0064	522
523	75414020	Stuffed mushrooms (bread, meat & cheese)	1	1	stuffed cap	1	1	1	67.44	0.996	523
524	75414020	Stuffed mushrooms (bread, meat & cheese)	2	0.5	cup	0.5	0.25	0.5	266.95	3.9425	524
525	75414030	Breaded fried mushrooms	1	0.5	cup	0.5	0.25	0.5	148.07	1.4874	525
526	75414030	Breaded fried mushrooms	2	1	medium	1	1	1	30.94	0.3108	526
527	75414030	Breaded fried mushrooms	2	1	small	1	1	1	17.68	0.1776	527
528	75414500	Fried okra	1	0.5	cup	0.5	0.25	0.5	86.94	0.828	528
529	75414500	Fried okra	2	1	pod	1	1	1	14.175	0.135	529
530	75415020	Onion rings	1	1	fast food order	1	0.25	0.25	157.38	1.419	530
531	75415020	Onion rings	2	0.5	cup	0.5	0.25	0.5	43.92	0.396	531
532	75415020	Onion rings	2	5	medium rings	0.5	1	0.2	54.9	0.495	532
533	75416500	Pea salad	1	0.5	cup	0.5	0.25	0.5	250.38	3.3705	533
534	75418010	Breaded fried summer squash	1	0.5	cup	0.5	0.25	0.5	184.8	1.848	534
535	75440170	Breaded fried vegetable sticks	1	1	stick	1	1	1	28.7	0.1694	535
536	75440200	Vegetable tempura	1	1	piece	1	1	1	11.27	0.1407	536
537	75440200	Vegetable tempura	2	0.5	cup	0.5	0.25	0.5	50.715	0.63315	537
538	75460700	Vegetable-pasta combo	1	0.5	cup	0.5	0.25	0.5	52.745	0.04795	538
539	75500210	Pickled beets	1	0.25	cup	0.25	0.25	1	26.6175	0.00845	539
540	75501010	Corn relish	1	0.25	cup	0.25	0.25	1	50.8375	0.04839	540
541	75502520	Kim chee (made from cabbage)	1	0.25	cup	0.25	0.25	1	7.875	0.01125	541
542	75503010	Dill pickle	1	1	spear	1	1	1	5.4	0.015	542
543	75503010	Dill pickle	2	1	large	1	0.25	0.25	24.3	0.0675	543
544	75503010	Dill pickle	2	1	medium	1	0.5	0.5	11.7	0.0325	544
545	75503010	Dill pickle	2	1	baby dill	1	1	1	5.04	0.014	545
546	75503010	Dill pickle	2	5	slices	5	1	0.2	5.4	0.015	546
547	75503020	Pickle relish	1	1	packet (2 teaspoons)	1	1	1	13	0.006	547
548	75503020	Pickle relish	2	0.25	cup	0.25	0.25	1	79.625	0.03675	548
549	75503040	Sweet pickle (gherkin)	1	5	slices	5	1	0.2	35.1	0.021	549
550	75503040	Sweet pickle (gherkin)	2	1	gherkin	1	1	1	7.02	0.0042	550
551	75503090	Horseradish	1	1	Tablespoon	1	0.5	0.5	7.2	0.0135	551
552	75506010	Mustard	1	1	teaspoon	1	1	1	3.3	0.008	552
553	75506010	Mustard	2	1	packet	1	1	1	3.3	0.008	553
554	75510010	Green olives	1	5	small	0.5	1	0.2	21.025	0.29435	554
555	75510010	Green olives	2	0.25	cup	0.25	0.25	1	53.2875	0.74603	555
556	75510010	Green olives	2	5	large	0.5	1	0.2	28.275	0.39585	556
557	75510020	Black olives	1	5	small	0.5	1	0.2	17.85	0.2142	557
558	75510020	Black olives	2	0.25	cup	0.25	0.25	1	38.5875	0.46305	558
559	75510020	Black olives	2	5	large	0.5	1	0.2	24.15	0.2898	559
560	75511010	Tabasco sauce (hot sauce)	1	1	packet	1	1	1	1.86	0.00093	560
561	75511010	Tabasco sauce (hot sauce)	2	10	drops	1	5	0.5	0.16	8e-05	561
562	75607010	Cream of mushroom soup (made with milk)	1	1	cup	1	0.5	0.5	190.96	4.0424	562
563	75608100	French onion soup	1	1	cup	1	0.5	0.5	57.84	0.2651	563
564	75649010	Vegetable soup	1	1	cup	1	0.5	0.5	81.94	0.4338	564
565	75651010	Minestrone soup	1	1	cup	1	0.5	0.5	84.35	0.5302	565
566	75651070	Vegetable rice soup	1	1	cup	1	0.5	0.5	106.04	0.2651	566
567	75651020	Vegetable beef soup (canned)	1	1	cup	\N	0.5	0.5	78	0.854	567
568	75652010	Vegetable beef soup (homemade)	1	1	cup	1	0.5	0.5	228.95	4.4344	568
569	75657000	Vegetable broth	1	1	cup	1	0.5	0.5	16.8	0	569
570	77300000	Wrap sandwich (vegetables only)	1	1	wrap	1	0.25	0.25	472.29	7.88424	570
571	81101000	Butter	1	1	pat (1 teaspoon)	1	1	1	35.85	2.5685	571
572	81101000	Butter	2	0.25	stick	0.25	0.25	1	202.5525	14.51203	572
573	81101000	Butter	2	1	Tablespoon	1	0.5	0.5	101.814	7.29454	573
574	81101010	Whipped butter	1	1	pat (1 teaspoon)	1	1	1	27.246	1.91862	574
575	81101010	Whipped butter	2	1	Tablespoon	1	0.5	0.5	67.398	4.74606	575
576	81101500	Light butter	1	1	pat (1 teaspoon)	1	1	1	24.95	1.716	576
577	81101500	Light butter	2	0.25	stick	0.25	0.25	1	140.9675	9.6954	577
578	81101500	Light butter	2	1	Tablespoon	1	0.5	0.5	70.858	4.87344	578
579	81102010	Stick margarine	1	1	pat (1 teaspoon)	1	1	1	35.25	0.7395	579
580	81102010	Stick margarine	2	0.25	stick	0.25	0.25	1	199.1625	4.17818	580
581	81102010	Stick margarine	2	1	Tablespoon	1	0.5	0.5	100.11	2.10018	581
582	81102020	Tub margarine	1	1	teaspoon	0.33	1	1	33.55176	0.60777	582
583	81103080	Tub spread (margarine type)	1	1	teaspoon	0.33	1	1	25.05789	0.45727	583
584	81104010	Reduced-calorie spread (margarine type)	1	1	pat (1 teaspoon)	1	1	1	17.25	0.385	584
585	81104010	Reduced-calorie spread (margarine type)	2	1	Tablespoon	1	0.5	0.5	50.025	1.1165	585
586	81104100	Fat-free spread (margarine type)	1	1	teaspoon	0.33	1	1	2.11992	0.10262	586
587	81201000	Bacon grease (or meat drippings)	1	1	Tablespoon	1	0.5	0.5	107.648	4.55296	587
588	81201000	Bacon grease (or meat drippings)	2	0.25	cup	0.25	0.25	1	431.0125	18.22963	588
589	81203100	Vegetable shortening	1	1	teaspoon	0.33	1	1	37.34016	0.84776	589
590	81203100	Vegetable shortening	2	0.25	cup	0.25	0.25	1	453.05	10.28588	590
591	81301020	Lemon-butter sauce	1	1	Tablespoon	1	0.5	0.5	106.784	7.50044	591
592	81301020	Lemon-butter sauce	2	0.25	cup	0.25	0.25	1	428.64	30.1074	592
593	81302010	Hollandaise sauce	1	1	Tablespoon	1	0.5	0.5	67.137	4.19244	593
594	81302010	Hollandaise sauce	2	0.25	cup	0.25	0.25	1	267.9225	16.7307	594
595	81302050	Tartar sauce	1	1	Tablespoon	1	0.5	0.5	74.304	1.1088	595
596	81302050	Tartar sauce	2	0.25	cup	0.25	0.25	1	296.7	4.4275	596
597	81302060	Horseradish sauce	1	1	Tablespoon	1	0.5	0.5	29.26	1.7766	597
598	81302060	Horseradish sauce	2	0.25	cup	0.25	0.25	1	117.04	7.1064	598
599	81302070	Pesto sauce	1	1	Tablespoon	1	0.5	0.5	82.44133	1.31806	599
600	81302070	Pesto sauce	2	0.25	cup	0.25	0.25	1	329.76533	5.27223	600
601	83200100	Low-calorie salad dressing	2	1	packet	1	0.5	0.5	64.68	0.352	601
602	83203250	Fat-free mayonnaise-type dressing	1	1	Tablespoon	1	0.5	0.5	13.44	0.096	602
603	83203250	Fat-free mayonnaise-type dressing	2	0.25	cup	0.25	0.25	1	53.76	0.384	603
604	83204000	Low-calorie mayonnaise	1	1	Tablespoon	1	0.5	0.5	36.192	0.5148	604
605	74101000	Raw tomatoes	2	1	wedge (1/4 of medium tomato)	1	1	1	5.58	0.0124	605
606	74201001	Cooked tomatoes	1	0.5	cup	0.5	0.25	0.5	21.6	0.012	606
607	74204013	Stewed tomatoes	1	0.5	cup	0.5	0.25	0.5	33.15	0.03825	607
608	74205011	Fried green tomatoes	1	3	slices	3	1	0.33333	211.68	3.43656	608
609	74205011	Fried green tomatoes	2	0.5	cup	0.5	0.25	0.5	176.4	2.8638	609
610	74205011	Fried green tomatoes	2	1	medium tomato	1	0.25	0.25	197.96	3.21382	610
611	74206000	Dried tomatoes	1	1	piece	1	1	1	5.16	0.0086	611
612	74206000	Dried tomatoes	2	0.25	cup	0.25	0.25	1	34.83	0.05805	612
613	74301100	Tomato juice	1	1	cup	1	0.5	0.5	41.31	0.0243	613
614	74303000	V-8 juice (tomato-vegetable juice)	1	1	cup	1	0.5	0.5	43.56	0.0242	614
615	74401010	Ketchup (catsup)	1	1	Tablespoon	0.5	0.5	0.5	14.25	0.012	615
616	74402100	Salsa	1	0.25	cup	0.25	0.25	1	17.36	0.0186	616
617	74402100	Salsa	2	1	Tablespoon	1	1	1	4.48	0.0048	617
618	74402250	Enchilada sauce	1	0.25	cup	0.25	0.25	1	79.375	4.16875	618
619	74402350	Green tomato-chile sauce	1	0.25	cup	0.25	0.25	1	45.51	0.85485	619
620	74402350	Green tomato-chile sauce	2	1	Tablespoon	1	1	1	11.1	0.2085	620
621	74403010	Tomato sauce	1	0.5	cup	0.5	0.25	0.5	39.2	0.03675	621
622	74404010	Spaghetti sauce (meatless)	1	0.5	cup	0.5	0.25	0.5	71.25	0.3625	622
623	74404060	Spaghetti sauce, fat-free (meatless)	1	0.5	cup	0.5	0.25	0.5	51.25	0.1625	623
624	74406010	Barbeque sauce	1	1	fast-food container	1	0.5	0.5	24	0.0864	624
625	74406010	Barbeque sauce	2	4	Tablespoons	0.25	1	0.25	46.875	0.16875	625
626	75105000	Raw cabbage	1	0.5	cup chopped	0.5	0.25	0.5	13.795	0.01335	626
627	75105000	Raw cabbage	2	0.5	cup shredded	0.5	0.25	0.5	10.85	0.0105	627
628	75105000	Raw cabbage	2	1	leaf	1	1	1	7.13	0.0069	628
629	75107000	Raw cauliflower	1	0.5	cup	0.5	0.25	0.5	12.5	0.015	629
630	75107000	Raw cauliflower	2	1	floweret	1	1	1	3.25	0.0039	630
631	75109000	Raw celery	1	0.5	cup diced	0.5	0.25	0.5	8.4	0.024	631
632	75109000	Raw celery	2	0.5	cup sticks	0.5	0.25	0.5	8.68	0.0248	632
633	75109000	Raw celery	2	5	sticks or strips (4 long)	1	1	0.2	2.8	0.0016	633
634	75109500	Chives	1	1	Tablespoon	1	0.5	0.5	0.9	0.0045	634
635	75109550	Cilantro	1	0.25	cup	0.25	0.25	1	0.92	0.0004	635
636	75109550	Cilantro	2	1	sprig	1	1	1	0.253	0.00011	636
637	75111000	Cucumber	1	0.5	cup sliced	0.5	0.25	0.5	7.14	0.00595	637
638	75111000	Cucumber	2	1	slice	1	1	1	0.84	0.0007	638
639	75111000	Cucumber	2	1	stick or strip (4 long)	1	1	1	1.08	0.0009	639
640	75111500	Garlic	1	1	clove	1	0.5	0.5	4.47	0.0027	640
641	75113000	Lettuce	1	1	cup, chopped or shredded	1	0.25	0.25	5.5	0.0055	641
642	75113000	Lettuce	2	1	medium leaf	1	1	1	0.8	0.0008	642
643	75114000	Mixed salad greens	1	1	cup, chopped or shredded	1	0.25	0.25	8.8	0.0165	643
644	75115000	Raw mushrooms	1	0.5	cup pieces or slices	0.5	0.25	0.5	7.7	0.0175	644
645	75115000	Raw mushrooms	2	1	medium	1	1	1	3.96	0.009	645
646	75115000	Raw mushrooms	2	1	slice	1	1	1	1.32	0.003	646
647	75117020	Raw onion	1	1	slice (1/8 thick)	1	1	1	5.88	0.0042	647
648	75117020	Raw onion	2	0.25	cup	0.25	0.25	1	16.8	0.012	648
649	75119000	Parsley	1	5	springs	0.5	1	0.2	0.18	0.00065	649
650	75121000	Raw hot pepper (jalapeno)	1	1	pepper	1	0.5	0.5	18.9	0.027	650
651	75121000	Raw hot pepper (jalapeno)	2	0.25	cup	0.25	0.25	1	15.75	0.0225	651
652	75122100	Raw sweet pepper (bell pepper)	1	1	slice or ring	1	1	1	2	0.006	652
653	75122100	Raw sweet pepper (bell pepper)	2	0.25	cup chopped	0.25	0.25	1	7.45	0.02235	653
654	75122100	Raw sweet pepper (bell pepper)	2	0.5	cup sliced	0.5	0.25	0.5	9.2	0.0276	654
655	75122100	Raw sweet pepper (bell pepper)	2	1	medium	1	0.5	0.5	23.8	0.0714	655
656	75125000	Radish	1	1	slice	1	1	1	0.16	0.0003	656
657	75125000	Radish	2	0.25	cup slices	0.25	0.25	1	4.64	0.0087	657
658	75125000	Radish	2	1	medium	1	1	1	0.72	0.00135	658
659	75141000	Coleslaw	1	0.5	cup	0.5	0.25	0.5	134.32	1.794	659
660	75141000	Coleslaw	2	1	fast-food order	1	0.5	0.5	131.4	1.755	660
661	75143000	Tossed salad (lettuce and vegetables)	1	1	cup	1	0.25	0.25	11.68	0.0146	661
662	75201011	Artichoke	1	0.5	cup hearts	0.5	0.25	0.5	42	0.0336	662
663	75201011	Artichoke	2	1	medium globe	1	0.25	0.25	60	0.048	663
664	75201011	Artichoke	2	1	heart	1	1	1	13.5	0.0108	664
665	75202011	Cooked asparagus	1	5	medium spears	5	1	0.2	16.5	0.0525	665
666	75202011	Cooked asparagus	2	0.5	cup	0.5	0.25	0.5	19.8	0.063	666
667	75202011	Cooked asparagus	2	5	small or thin spears	5	1	0.2	12.1	0.0385	667
668	75202011	Cooked asparagus	2	5	large or thick spears	5	1	0.2	20.9	0.0665	668
669	75204011	Cooked green lima beans	1	0.5	cup	0.5	0.25	0.5	103.7	0.0595	669
670	75205023	Cooked green beans	1	0.5	cup	0.5	0.25	0.5	13.5	0.0135	670
671	75207011	Cooked bean sprouts	1	0.5	cup	0.5	0.25	0.5	29.14	0.1736	671
672	75208011	Cooked beets	1	0.5	cup slices	0.5	0.25	0.5	37.4	0.0255	672
673	75208011	Cooked beets	2	0.5	cup diced	0.5	0.25	0.5	34.54	0.02355	673
674	75208011	Cooked beets	2	0.5	cup whole	0.5	0.25	0.5	35.86	0.02445	674
675	75209012	Cooked Brussels sprouts	1	0.5	cup	0.5	0.25	0.5	32.55	0.062	675
676	75209012	Cooked Brussels sprouts	2	1	sprout	1	1	1	8.82	0.0168	676
677	75211020	Cooked cabbage	1	0.5	cup	0.5	0.25	0.5	16.5	0.0375	677
678	75214011	Cooked cauliflower	1	0.5	cup flowerets	0.5	0.25	0.5	16.56	0.0432	678
679	75214011	Cooked cauliflower	2	0.5	cup pieces	0.5	0.25	0.5	14.375	0.0375	679
680	75214011	Cooked cauliflower	2	1	floweret	1	1	1	5.06	0.0132	680
681	75216153	Cream style corn	1	0.5	cup	0.5	0.25	0.5	92.16	0.0896	681
682	75216171	Yellow corn (corn on the cob)	1	0.5	cup	0.5	0.25	0.5	87.74	0.1558	682
683	75216171	Yellow corn (corn on the cob)	2	1	large ear	1	0.5	0.5	121.98	0.2166	683
684	75220011	Boiled or steamed okra	1	0.5	cup	0.5	0.25	0.5	17.6	0.032	684
685	75220011	Boiled or steamed okra	2	5	pods	5	1	0.2	11.66	0.0212	685
686	75221011	Cooked onions	1	0.5	cup	0.5	0.25	0.5	46.2	0.0315	686
687	75221011	Cooked onions	2	1	slice	1	1	1	5.28	0.0036	687
688	75223011	Blackeye peas	1	0.5	cup	0.5	0.25	0.5	79.2	0.07425	688
689	75224021	Cooked green peas	1	0.5	cup	0.5	0.25	0.5	66.4	0.032	689
690	75226010	Cooked sweet peppers	1	0.5	cup	0.5	0.25	0.5	19.04	0.0204	690
691	75226101	Cooked hot peppers	1	1	pepper	1	0.5	0.5	18.06	0.0086	691
692	75226101	Cooked hot peppers	2	1	Tablespoon	1	1	1	3.57	0.0017	692
693	75230010	Sauerkraut	1	0.5	cup	0.5	0.25	0.5	13.49	0.0284	693
694	75231011	Cooked snowpeas	1	0.5	cup	0.5	0.25	0.5	33.6	0.032	694
695	75233011	Zucchini or summer squash	1	0.5	cup	0.5	0.25	0.5	18	0.054	695
696	75234011	Cooked turnip	1	0.5	cup pieces	0.5	0.25	0.5	17.05	0.00775	696
697	75234011	Cooked turnip	2	0.5	cup mashed	0.5	0.25	0.5	25.3	0.0115	697
698	75235000	Water chestnut	1	0.5	cup	0.5	0.25	0.5	39.5	0.0158	698
699	75236500	Vegemite	1	1	teaspoon	1	1	1	9.48	0	699
700	75301110	Succotash (lima beans and corn)	1	0.5	cup	0.5	0.25	0.5	88.32	0.16224	700
701	75302080	Bean salad (green, yellow, kidney beans)	1	0.5	cup	0.5	0.25	0.5	57	0.36	701
702	75307000	Sauteed green peppers & onions	1	0.5	cup	0.5	0.25	0.5	39.6	0.3024	702
703	75311012	Cooked mixed vegetables	1	0.5	cup	0.5	0.25	0.5	59.15	0.0273	703
704	75317000	Stew vegetables	1	0.5	cup	0.5	0.25	0.5	57.75	0.4455	704
705	71103010	Boiled potatoes	2	8	ounces raw	8	1	0.125	156.4	0.0552	705
706	71104010	Roasted potatoes	1	1	medium (2 per pound, raw)	1	0.25	0.25	179.47	0.0655	706
707	71104010	Roasted potatoes	2	0.5	cup	0.5	0.25	0.5	83.57	0.0305	707
708	71104010	Roasted potatoes	2	1	large (13 ounces, raw)	1	0.25	0.25	310.99	0.1135	708
709	71104010	Roasted potatoes	2	1	small (6 ounces, raw)	1	0.5	0.5	143.85	0.0525	709
710	71104010	Roasted potatoes	2	4	ounces raw	4	1	0.25	93.16	0.034	710
711	71201010	Potato chips, regular (all flavors)	1	1	cup	1	0.5	0.5	107.2	2.192	711
712	71201010	Potato chips, regular (all flavors)	2	1	single serving bag (1 oz)	1	0.5	0.5	150.08	3.0688	712
713	71201010	Potato chips, regular (all flavors)	2	1	grab-size bag (1.8 oz)	1	0.5	0.5	268	5.48	713
714	71401030	French fries, deep-fried	1	1	medium fast food order	1	0.25	0.25	456.94	5.2528	714
715	71401030	French fries, deep-fried	2	1	cup	1	0.5	0.5	194.37	2.2344	715
716	71401030	French fries, deep-fried	2	1	cup curly fries	1	0.5	0.5	276.21	3.1752	716
717	71401030	French fries, deep-fried	2	1	large fast food order	1	0.25	0.25	539	6.8	717
718	71401030	French fries, deep-fried	2	1	small fast food order	1	0.25	0.25	289.85	3.332	718
719	71401030	French fries, deep-fried	2	10	steak cut/dinner fries	1	5	0.5	300.08	3.4496	719
720	71401030	French fries, deep-fried	2	10	strips (2 to 3-1/2)	1	5	0.5	170.5	1.96	720
721	71403000	Home fries	1	0.5	cup	0.5	0.25	0.5	179.45	1.1931	721
722	71405020	Hash browns	1	0.5	cup	0.5	0.25	0.5	157.325	3.2335	722
723	71405020	Hash browns	2	1	patty (2.3 oz)	1	0.5	0.5	143.22	2.9436	723
724	71411000	Potato skin with cheese & bacon	1	1	order (10 halves)	1	0.25	0.25	1667.4	30.87	724
725	71411000	Potato skin with cheese & bacon	2	1	large skin	1	0.5	0.5	277.9	5.145	725
726	71411000	Potato skin with cheese & bacon	2	1	medium skin	1	0.5	0.5	166.74	3.087	726
727	71411000	Potato skin with cheese & bacon	2	1	small skin	1	0.5	0.5	138.95	2.5725	727
728	71501010	Mashed potatoes (with milk, no butter)	1	0.5	cup	0.5	0.25	0.5	85.05	0.1785	728
729	71501020	Mashed potatoes (with milk and butter)	1	0.5	cup	0.5	0.25	0.5	109.2	0.7245	729
730	71501030	Mashed potatoes (with butter)	1	0.5	cup	0.5	0.25	0.5	115.5	0.651	730
731	71505000	Tator tots	1	0.5	cup	0.5	0.25	0.5	142.08	3.2576	731
732	71505000	Tator tots	2	1	tater tot	1	1	1	17.538	0.40211	732
733	71508010	Stuffed baked potato (with sour cream)	1	0.5	medium potato	0.5	0.25	0.5	158.12	4.13	733
734	71508010	Stuffed baked potato (with sour cream)	2	0.5	large potato	0.5	0.25	0.5	273.36	7.14	734
735	71508010	Stuffed baked potato (with sour cream)	2	0.5	small potato	0.5	0.25	0.5	125.96	3.29	735
736	71508020	Stuffed baked potato (with cheese)	1	0.5	potato (frozen)	1	0.25	0.5	194.6	3.374	736
737	71508020	Stuffed baked potato (with cheese)	2	0.5	large potato	0.5	0.25	0.5	248.81	4.3139	737
738	71508020	Stuffed baked potato (with cheese)	2	0.5	medium potato	0.5	0.25	0.5	143.865	2.49435	738
739	71508020	Stuffed baked potato (with cheese)	2	0.5	small potato	0.5	0.25	0.5	114.675	1.98825	739
740	71601010	Potato salad with egg	1	0.5	cup	0.5	0.25	0.5	131.24	1.1966	740
741	71603010	Potato salad	1	0.5	cup	0.5	0.25	0.5	129.31	0.97465	741
742	71701000	Potato pancake (latke)	1	1	large pancake	1	0.5	0.5	69.93	0.8177	742
743	71701000	Potato pancake (latke)	2	1	small pancake	1	1	1	41.58	0.4862	743
744	71702000	Potato pudding	1	0.5	cup	0.5	0.25	0.5	143.64	3.53856	744
745	71801010	Cream of potato soup	1	1	cup	1	0.5	0.5	136.4	2.7032	745
746	71801010	Cream of potato soup	2	1	can, ready to eat (13 oz)	0.5	0.5	0.5	101.475	2.01105	746
747	71851010	Plantain soup	1	1	cup	1	0.5	0.5	98	0.5586	747
748	71900100	Plantain (boiled or baked)	1	0.5	medium plantain	0.5	0.25	0.5	136.88	0.0826	748
749	71900100	Plantain (boiled or baked)	2	0.5	cup	0.5	0.25	0.5	110.2	0.0665	749
750	71905110	Fried plantain	1	0.5	medium plantain	0.5	0.25	0.5	249.48	1.7523	750
751	71930100	Cassava	1	1	piece	1	1	1	32.2	0.014	751
752	71930100	Cassava	1	0.5	cup, diced	0.5	0.25	0.5	106.26	0.0462	752
753	71930200	Cassava bread	1	1	piece (6 across)	1	0.5	0.5	299	0.131	753
754	71931010	Cassava with creole sauce	1	1	portion	1	1	1	308.2	1.127	754
755	71962010	Taro (cocoyam), boiled	1	0.5	cup, pieces	0.5	0.25	0.5	106	0.038	755
756	72116000	Romaine lettuce	1	1	cup	1	0.25	0.25	7.6	0.02	756
757	72116140	Caesar salad with dressing	1	1	cup	1	0.25	0.25	168.48	2.5812	757
758	72118211	Greens, cooked without fat	1	0.5	cup	0.5	0.25	0.5	18.25	0.0365	758
759	72118221	Greens, cooked with fat	1	0.5	cup	0.5	0.25	0.5	33.975	0.3624	759
760	72125100	Raw spinach	1	1	cup	1	0.25	0.25	6.9	0.018	760
761	72125212	Cooked spinach	1	0.5	cup	0.5	0.25	0.5	30.4	0.0855	761
762	72125232	Creamed spinach	1	0.5	cup	0.5	0.25	0.5	78	1.18	762
763	72201100	Raw broccoli	1	0.5	cup flowerets	0.5	0.25	0.5	12.07	0.0142	763
764	72201100	Raw broccoli	2	0.5	cup chopped	0.5	0.25	0.5	14.96	0.0176	764
765	72201100	Raw broccoli	2	1	floweret	1	1	1	3.74	0.0044	765
766	72201211	Cooked broccoli	1	0.5	cup flowerets	0.5	0.25	0.5	16.975	0.0388	766
767	72201211	Cooked broccoli	2	0.5	cup chopped	0.5	0.25	0.5	32.2	0.0736	767
768	72201211	Cooked broccoli	2	1	floweret	1	1	1	3.5	0.008	768
769	72201230	Broccoli with cheese sauce	1	0.5	cup	0.5	0.25	0.5	120.84	3.6252	769
770	72201230	Broccoli with cheese sauce	2	1	stalk	1	1	1	50.88	1.5264	770
771	72202020	Broccoli-rice casserole	1	0.5	cup	0.5	0.25	0.5	143.64	2.85	771
772	72302000	Cream of broccoli soup	1	1	cup	1	0.5	0.5	206.19	3.7446	772
773	72302100	Broccoli cheese soup	1	1	cup	1	0.5	0.5	164.91	3.3699	773
774	73101010	Raw carrots	1	0.5	cup strips or slices	0.5	0.25	0.5	25.01	0.0183	774
775	73101010	Raw carrots	2	0.5	cup grated	0.5	0.25	0.5	22.55	0.0165	775
776	73101010	Raw carrots	2	1	baby carrot	1	1	1	4.1	0.003	776
777	73101110	Carrot salad	1	0.5	cup	0.5	0.25	0.5	208.25	2.23125	777
778	73102211	Cooked carrots	1	0.5	cup slices	0.5	0.25	0.5	27.3	0.0312	778
779	73102211	Cooked carrots	2	0.5	cup baby carrots	0.5	0.25	0.5	26.075	0.0298	779
780	73102241	Glazed carrots	1	0.5	cup	0.5	0.25	0.5	100.625	1.0787	780
781	73102241	Glazed carrots	2	0.5	cup baby carrots	0.5	0.25	0.5	106.875	1.1457	781
782	73105010	Carrot juice	1	1	cup	1	0.5	0.5	94.4	0.0708	782
783	73111212	Peas and carrots	1	0.5	cup	0.5	0.25	0.5	38.4	0.064	783
784	73303010	Baked winter squash	1	0.5	cup	0.5	0.25	0.5	37.925	0.123	784
785	73303010	Baked winter squash	2	0.5	acorn squash	0.5	0.25	0.5	58	0.19	785
786	73403010	Baked sweet potato	1	1	medium (5 long)	1	0.25	0.25	101.46	0.0342	786
787	73403010	Baked sweet potato	2	1	large	1	0.25	0.25	160.2	0.054	787
788	73403010	Baked sweet potato	2	1	small	1	0.5	0.5	53.4	0.018	788
789	73406000	Candied sweet potato	1	0.5	cup	0.5	0.25	0.5	146.02	0.6468	789
790	73409000	Mashed sweet potato	1	0.5	cup	0.5	0.25	0.5	107.445	0.72865	790
791	74101000	Raw tomatoes	1	1	medium whole (2-3/5 across)	1	0.25	0.25	22.14	0.0492	791
792	74101000	Raw tomatoes	2	0.5	cup, chopped or sliced	0.5	0.25	0.5	16.2	0.036	792
793	74101000	Raw tomatoes	2	1	large whole (3 across)	1	0.25	0.25	32.76	0.0728	793
794	74101000	Raw tomatoes	2	1	small whole (2-2/5 across)	1	0.5	0.5	16.38	0.0364	794
795	74101000	Raw tomatoes	2	1	cherry tomato	1	1	1	3.06	0.0068	795
796	74101000	Raw tomatoes	2	1	medium slice (1/4 thick)	1	1	1	3.6	0.008	796
797	74406010	Barbeque sauce	2	1	packet	1	1	1	6.975	0.02511	797
798	74406100	Steak sauce (A-1)	1	1	Tablespoon	1	0.5	0.5	9.76	0.0064	798
799	74406100	Steak sauce (A-1)	2	0.25	cup	0.25	0.25	1	38.125	0.025	799
800	74406500	Cocktail sauce	1	4	Tablespoons	0.25	1	0.25	54.6	0.04778	800
801	74506000	Tomato cucumber salad, with oil & vinegar	1	0.5	cup	0.5	0.25	0.5	92.22	0.99375	801
802	74601010	Cream of tomato soup	1	1	cup	1	0.5	0.5	146.32	1.8352	802
803	74602010	Tomato soup (made with water)	1	1	cup	1	0.25	0.25	85.4	0.3416	803
804	75101000	Raw bean sprouts	1	0.5	cup	0.5	0.25	0.5	15.6	0.026	804
805	63131010	Nectarine (raw)	1	1	nectarine	1	0.5	0.5	59.84	0.0408	805
806	63131010	Nectarine (raw)	2	0.5	cup, sliced	0.5	0.25	0.5	30.36	0.0207	806
807	63131010	Nectarine (raw)	2	1	slice	1	1	1	4.972	0.00339	807
808	63133010	Papaya (raw)	1	0.5	medium	0.5	0.25	0.5	59.28	0.0608	808
809	63133010	Papaya (raw)	2	0.5	cup, cubes	0.5	0.25	0.5	27.3	0.028	809
810	63133010	Papaya (raw)	2	0.5	small	0.5	0.25	0.5	29.64	0.0304	810
811	63135010	Peach (raw)	1	1	medium (4 per lb)	1	0.5	0.5	38.22	0.0196	811
812	63135010	Peach (raw)	2	0.5	cup, diced	0.5	0.25	0.5	36.075	0.0185	812
813	63135010	Peach (raw)	2	1	large (2-1/2 per lb)	1	0.5	0.5	61.23	0.0314	813
814	63135010	Peach (raw)	2	1	small (5 per lb)	1	0.5	0.5	30.81	0.0158	814
815	63135010	Peach (raw)	2	1	slice	1	1	1	3.12	0.0016	815
816	63135140	Peach (canned in light syrup)	1	1	half with liquid	1	1	1	52.92	0.00294	816
817	63135140	Peach (canned in light syrup)	2	0.5	cup	0.5	0.25	0.5	67.77	0.00377	817
818	63135140	Peach (canned in light syrup)	2	1	snack size (4 oz)	1	0.5	0.5	61.02	0.00339	818
819	63137010	Pear (raw)	1	1	medium (2-1/2 per lb)	1	0.5	0.5	96.28	0.0166	819
820	63137010	Pear (raw)	2	0.5	cup, sliced or cubed	0.5	0.25	0.5	47.85	0.00825	820
821	63137010	Pear (raw)	2	1	large (2 per lb)	1	0.5	0.5	121.22	0.0209	821
822	63137010	Pear (raw)	2	1	small (3 per lb)	1	0.5	0.5	80.62	0.0139	822
823	63137010	Pear (raw)	2	1	slice	1	1	1	8.12	0.0014	823
824	63137140	Pear (canned in light syrup)	1	1	half with liquid	1	1	1	43.32	0.00152	824
825	63137140	Pear (canned in light syrup)	2	0.5	cup	0.5	0.25	0.5	70.965	0.00249	825
826	63137140	Pear (canned in light syrup)	2	1	snack size (4 oz)	1	0.5	0.5	64.41	0.00226	826
827	63139010	Persimmons (raw)	1	1	persimmon	1	0.5	0.5	117.6	0.0336	827
828	63141010	Pineapple (raw)	1	0.5	cup, diced	0.5	0.25	0.5	37.2	0.00775	828
829	63141010	Pineapple (raw)	2	1	slice	1	0.5	0.5	40.32	0.0084	829
830	63141140	Pineapple (canned in light syrup)	1	0.5	cup, chunks or crushed	0.5	0.25	0.5	65.52	0.0126	830
831	63141140	Pineapple (canned in light syrup)	2	1	slice or ring	1	1	1	24.96	0.0048	831
832	63143010	Plum (raw)	1	1	plum	1	0.5	0.5	30.36	0.0132	832
833	63145010	Pomegranate (raw)	1	0.5	pomegranate	0.5	0.25	0.5	52.36	0.0308	833
834	63149010	Watermelon (raw)	1	0.5	cup, diced	0.5	0.25	0.5	22.8	0.0152	834
835	63149010	Watermelon (raw)	2	1	small wedge	1	0.5	0.5	21.3	0.0142	835
836	63149010	Watermelon (raw)	2	1	medium wedge	1	0.5	0.5	85.8	0.0572	836
837	63149010	Watermelon (raw)	2	1	large wedge	1	0.5	0.5	171.6	0.1144	837
838	63203010	Blueberries (raw)	1	0.5	cup	0.5	0.25	0.5	41.325	0.02175	838
839	63207110	Cranberry sauce	1	0.25	cup	0.25	0.25	1	104.5675	0.00693	839
840	63207110	Cranberry sauce	2	1	slice sauce	1	0.5	0.5	86.07	0.0057	840
841	63219020	Raspberries (raw)	1	0.5	cup	0.5	0.25	0.5	31.98	0.0123	841
842	63223020	Strawberries (raw)	1	0.5	cup, whole	0.5	0.25	0.5	23.04	0.0072	842
843	63223020	Strawberries (raw)	2	0.5	cup, pureed	0.5	0.25	0.5	37.12	0.0116	843
844	63223020	Strawberries (raw)	2	0.5	cup, sliced	0.5	0.25	0.5	26.56	0.0083	844
845	63223020	Strawberries (raw)	2	1	large	1	1	1	5.76	0.0018	845
846	63223020	Strawberries (raw)	2	1	medium	1	1	1	3.84	0.0012	846
847	63223020	Strawberries (raw)	2	1	small	1	1	1	2.24	0.0007	847
848	63223130	Strawberries (cooked or canned in syrup)	1	0.5	cup	0.5	0.25	0.5	116.84	0.0127	848
849	63301010	Ambrosia	1	0.5	cup	0.5	0.25	0.5	50	1.5	849
850	63311000	Fruit salad (no dressing)	1	0.5	cup	0.5	0.25	0.5	48.125	0.02625	850
851	63311130	Fruit cocktail (canned in heavy syrup)	1	1	snack size package (4 oz)	1	0.5	0.5	82.49	0.0113	851
852	63311130	Fruit cocktail (canned in heavy syrup)	2	0.5	cup	0.5	0.25	0.5	90.52	0.0124	852
853	63311140	Fruit cocktail (canned in light syrup)	1	1	snack size package (4 oz)	1	0.5	0.5	64.41	0.0113	853
854	63311140	Fruit cocktail (canned in light syrup)	2	0.5	cup	0.5	0.25	0.5	68.97	0.0121	854
855	63401010	Waldorf salad (apple salad in dressing)	1	0.5	cup	0.5	0.25	0.5	121.245	1.37685	855
856	63409010	Guacamole	1	0.25	cup	0.25	0.25	1	91.4525	1.20577	856
857	63415100	Fruit soup	1	1	cup	1	0.5	0.5	176.66	0.02178	857
858	63420110	Frozen fruit juice bar	1	1	bar	1	0.5	0.5	60.68	0	858
859	63420200	Low-calorie frozen fruit juice bar	1	1	bar	1	0.5	0.5	23.76	0.0108	859
860	63430100	Sorbet (made with fruit)	1	0.5	cup	0.5	0.25	0.5	82	0	860
861	64100110	100% Fruit juice blend (Juicy Juice)	1	1	cup	1	0.5	0.5	132.5	0.05	861
862	64100110	100% Fruit juice blend (Juicy Juice)	2	1	drink box (8 fl oz)	1	0.5	0.5	139.92	0.0528	862
863	64100110	100% Fruit juice blend (Juicy Juice)	2	1	small box (4 fl oz)	1	0.5	0.5	69.96	0.0264	863
864	64101010	Apple cider	1	1	cup	1	0.5	0.5	116.56	0.0496	864
865	64104010	Apple juice (100% juice)	1	1	cup	1	0.5	0.5	116.56	0.0496	865
866	64104010	Apple juice (100% juice)	2	1	bottle (10 fl oz)	1	0.5	0.5	145.7	0.062	866
867	64104010	Apple juice (100% juice)	2	1	drink box (8 fl oz)	1	0.5	0.5	123.14	0.0524	867
868	64105400	Cranberry juice (100% juice)	1	1	cup	1	0.5	0.5	116.38	0.0253	868
869	64116020	Grape juice (100% juice)	1	1	cup	1	0.5	0.5	154.33	0.0759	869
870	64124020	Pineapple juice (100% juice)	1	1	cup	1	0.5	0.5	140	0.025	870
871	64132020	Prune juice (100% juice)	1	1	cup	1	0.5	0.5	181.76	0.00768	871
872	64134000	fruit smoothie (no milk)	1	1	commercial smoothie (20 fl oz)	1	0.25	0.25	326.12	0.1578	872
873	64134000	fruit smoothie (no milk)	2	1	cup	1	0.25	0.25	130.2	0.063	873
874	64205010	Peach nectar	1	1	cup	1	0.5	0.5	134.46	0.00498	874
875	64401000	Vinegar	1	1	Tablespoon	0.06	1	1	2.016	0	875
876	71101000	Baked potato, plain (don't eat peel)	1	1	medium (2 per pound, raw)	1	0.25	0.25	120.52	0.0393	876
877	71101000	Baked potato, plain (don't eat peel)	2	1	large (13 ounces, raw)	1	0.25	0.25	208.84	0.0681	877
878	71101000	Baked potato, plain (don't eat peel)	2	1	small (6 ounces, raw)	1	0.5	0.5	96.6	0.0315	878
879	71101000	Baked potato, plain (don't eat peel)	2	8	ounces raw	8	1	0.125	132.48	0.0432	879
880	71101110	Baked potato, plain (eat peel)	1	1	medium (2 per pound, raw)	1	0.25	0.25	159.16	0.0692	880
881	71101110	Baked potato, plain (eat peel)	2	1	large (13 ounces, raw)	1	0.25	0.25	169.28	0.0736	881
882	71101110	Baked potato, plain (eat peel)	2	1	small (6 ounces, raw)	1	0.5	0.5	126.96	0.0552	882
883	71101110	Baked potato, plain (eat peel)	2	8	ounces raw	8	1	0.125	169.28	0.0736	883
884	71103010	Boiled potatoes	1	1	medium (2 per pound, raw)	1	0.25	0.25	141.95	0.0501	884
885	71103010	Boiled potatoes	2	1	large (13 ounces, raw)	1	0.25	0.25	156.4	0.0552	885
886	71103010	Boiled potatoes	2	1	small (6 ounces, raw)	1	0.5	0.5	106.25	0.0375	886
887	71201010	Potato chips, regular (all flavors)	2	10	chips	10	2	0.1	96.48	1.9728	887
888	71201050	Reduced fat potato chips (all flavors)	1	1	cup	1	0.5	0.5	94.2	0.832	888
889	71201050	Reduced fat potato chips (all flavors)	2	10	chips	10	2	0.1	80.07	0.7072	889
890	71201100	Pringles potato chips	1	1	cup, stacked (20 chips)	1	0.25	0.25	239.94	4.0635	890
891	71201100	Pringles potato chips	2	1	one-inch stack (14 chips)	1	0.25	0.25	156.24	2.646	891
892	71201100	Pringles potato chips	2	10	chips	10	2	0.1	111.6	1.89	892
893	71201250	Baked Pringles potato chips	1	1	cup, loose	1	0.25	0.25	131.32	0.7364	893
894	71201250	Baked Pringles potato chips	2	1	single serving bag (1.1 oz)	1	0.5	0.5	150.08	0.8416	894
895	71201250	Baked Pringles potato chips	2	10	chips	1	2	0.1	107.87	0.6049	895
896	71205000	Potato sticks	1	0.5	cup	0.5	0.25	0.5	99.18	1.6872	896
897	71205000	Potato sticks	2	1	single serving bag (1 oz)	1	0.5	0.5	146.16	2.4864	897
898	71205000	Potato sticks	2	10	sticks	1	5	0.5	15.66	0.2664	898
899	71301020	Au gratin potatoes	1	0.5	cup	0.5	0.25	0.5	153.72	2.9158	899
900	71305010	Scalloped potatoes	1	0.5	cup	0.5	0.25	0.5	108.48	0.8927	900
901	71401020	French fries, oven-baked	1	1	cup	1	0.25	0.25	113.43	0.7125	901
902	71401020	French fries, oven-baked	2	1	cup curly fries	1	0.25	0.25	161.19	1.0125	902
903	71401020	French fries, oven-baked	2	10	steak cut/dinner fries	1	5	0.5	175.12	1.1	903
904	71401020	French fries, oven-baked	2	10	strips (2 to 3-1/2)	1	5	0.5	99.5	0.625	904
905	58134310	Seafood stuffed shells with tomato sauce	1	3	jumbo shells	3	1	0.33333	306.27	1.30725	905
906	58134620	Cheese tortellini with tomato sauce	1	1	cup	1	0.25	0.25	332.5	6.05	906
907	58134660	Cheese tortellini with cream sauce	1	1	cup	1	0.25	0.25	390	7.7375	907
908	58134680	Cheese tortellini, no sauce	1	1	cup	1	0.25	0.25	354	4.1535	908
909	58134680	Cheese tortellini, no sauce	2	10	tortellini	10	2	0.1	113.28	1.32912	909
910	58136120	Lo mein (meatless)	1	1	cup	1	0.5	0.5	234	1	910
911	58136130	Shrimp lo mein	1	1	cup	1	0.5	0.5	236	1.18	911
912	58145110	Macaroni and cheese (homemade type)	1	0.5	cup	0.5	0.25	0.5	236.925	4.7628	912
913	58145114	Macaroni and cheese (from dry mix)	1	0.5	cup	0.5	0.25	0.5	197.685	2.3302	913
914	58145130	Macaroni and cheese with beef	1	0.5	cup	0.5	0.25	0.5	167.67	3.80295	914
915	58148110	Macaroni salad	1	0.5	cup	0.5	0.25	0.5	169.92	1.40715	915
916	58148120	Macaroni salad with egg	1	0.5	cup	0.5	0.25	0.5	178.77	1.9824	916
917	58148500	Pasta salad with vegetables	1	0.5	cup	0.5	0.25	0.5	116.82	0.7611	917
918	58148550	Pasta salad with meat and vegetables	1	0.5	cup	0.5	0.25	0.5	147.795	1.93815	918
919	58149110	Noodle pudding	1	0.5	cup	0.5	0.25	0.5	148.32	1.1052	919
920	58200200	Wrap sandwich (vegetables, rice)	1	1	wrap	1	0.25	0.25	674.68	8.41128	920
921	58403010	Chicken noodle soup	1	1	cup	1	0.5	0.5	74.71	0.5784	921
922	58404010	Chicken rice soup	1	1	cup	1	0.5	0.5	60.25	0.4338	922
923	58404500	Matzo ball soup	1	1	cup	1	0.5	0.5	118.09	1.31586	923
924	58407030	Ramen noodle soup	1	0.5	package, prepared	0.5	0.25	0.5	170.43	2.8652	924
925	58407030	Ramen noodle soup	2	1	cup	1	0.5	0.5	160.77	2.7028	925
926	58408010	Won ton soup	1	1	cup	1	0.5	0.5	183.16	2.2654	926
927	58421080	Tortilla soup	1	1	cup	1	0.5	0.5	237.6	4.2	927
928	61101010	Grapefruit (raw)	1	0.5	medium (4 across)	1	0.25	0.5	40.96	0.0128	928
929	61101010	Grapefruit (raw)	2	0.5	cup	0.5	0.25	0.5	36.8	0.0115	929
930	61101010	Grapefruit (raw)	2	0.5	large (4-1/2 across)	1	0.25	0.5	53.12	0.0166	930
931	61101010	Grapefruit (raw)	2	0.5	small (3-1/2 across)	1	0.25	0.5	32	0.01	931
932	61101230	Grapefruit (canned, light syrup)	1	0.5	cup	0.5	0.25	0.5	76.2	0.0127	932
933	61119010	Orange (raw)	1	1	medium (2-5/8 across)	1	0.5	0.5	61.57	0.0131	933
934	61119010	Orange (raw)	2	0.5	cup, sections	0.5	0.25	0.5	42.3	0.009	934
935	61119010	Orange (raw)	2	1	large (3 across)	1	0.5	0.5	86.48	0.0184	935
936	61119010	Orange (raw)	2	1	small (2-3/8 across)	1	0.5	0.5	45.12	0.0096	936
937	61119010	Orange (raw)	2	1	section or slice	1	1	1	7.99	0.0017	937
938	61122330	Mandarin oranges (light syrup)	1	0.5	cup	0.5	0.25	0.5	76.86	0.0126	938
939	61125010	Tangerine (raw)	1	1	medium (2-3/8 across)	1	0.5	0.5	36.96	0.0168	939
940	61125010	Tangerine (raw)	2	0.5	cup, sections	0.5	0.25	0.5	42.9	0.0195	940
941	61125010	Tangerine (raw)	2	1	clementine	1	0.5	0.5	33	0.015	941
942	61201020	Grapefruit juice (unsweetened)	1	1	cup	1	0.5	0.5	93.86	0.0247	942
943	61204010	Lemon juice	1	1	Tablespoon	0.5	1	1	3.8125	0	943
944	61204010	Lemon juice	2	1	lemon, juiced	1	1	1	11.75	0	944
945	61210220	Orange juice (100% juice)	1	1	cup	1	0.5	0.5	104.58	0.0498	945
946	61210220	Orange juice (100% juice)	2	1	drink box (8 fl oz)	1	0.5	0.5	110.46	0.0526	946
947	61210220	Orange juice (100% juice)	2	1	small box (4 oz)	1	0.5	0.5	52.08	0.0248	947
948	61210220	Orange juice (100% juice)	2	1	McDonald's carton	1	0.5	0.5	75.6	0.036	948
949	61210220	Orange juice (100% juice)	2	1	bottle (16 fl oz)	1	0.5	0.5	209.16	0.0996	949
950	61210230	Orange juice (sweetened)	1	1	cup	1	0.5	0.5	130	0.025	950
951	62101000	Dried fruit (apricot, apple, etc.)	1	0.25	cup	0.25	0.25	1	85.68	0.0204	951
952	62101300	Apple chips	1	10	chips	1	2	0.1	101.2	0.34848	952
953	62107200	Banana chips	1	0.25	cup	0.25	0.25	1	66.06	0.8748	953
954	62113100	Fig (dried)	1	1	fig	1	1	1	47.31	0.0266	954
955	62113100	Fig (dried)	2	0.25	cup	0.25	0.25	1	123.8775	0.06965	955
956	62122100	Prunes	1	0.5	cup pitted	0.5	0.25	0.5	204	0.0765	956
957	62122100	Prunes	2	1	prune	1	1	1	20.16	0.00756	957
958	62125100	Raisins	1	1	miniature box (1/2 oz)	1	0.5	0.5	41.86	0.0084	958
959	62125100	Raisins	2	0.25	cup	0.25	0.25	1	108.3875	0.02175	959
960	62125100	Raisins	2	1	small box (1 1/2 oz)	1	0.5	0.5	128.57	0.0258	960
961	63101000	Apple (raw)	1	1	medium  (about 3 per lb)	1	0.5	0.5	71.76	0.0414	961
962	63101000	Apple (raw)	2	1	cup, quartered or chopped	1	0.25	0.25	65	0.0375	962
963	63101000	Apple (raw)	2	1	large (about 2 per lb)	1	0.5	0.5	110.24	0.0636	963
964	63101000	Apple (raw)	2	1	small  (about 4 per lb)	1	0.5	0.5	55.12	0.0318	964
965	63101000	Apple (raw)	2	1	slice	1	1	1	8.84	0.0051	965
966	63101120	Applesauce (unsweetened)	1	0.5	cup	0.5	0.25	0.5	52.46	0.0122	966
967	63101120	Applesauce (unsweetened)	2	1	snack size package (4 oz)	1	0.5	0.5	48.59	0.0113	967
968	63101130	Applesauce (sweetened)	1	0.5	cup	0.5	0.25	0.5	96.9	0.03825	968
969	63101130	Applesauce (sweetened)	2	1	snack size package (4 oz)	1	0.5	0.5	85.88	0.0339	969
970	63101330	Baked apple (sweetened)	1	1	apple	1	0.5	0.5	162.45	0.0342	970
971	63103010	Apricot (raw)	1	1	apricot	1	0.5	0.5	16.8	0.0105	971
972	63103010	Apricot (raw)	2	0.5	cup, halves	0.5	0.25	0.5	37.2	0.02325	972
973	63103150	Apricot (canned, light syrup)	1	1	apricot half	1	1	1	14.94	0.0018	973
974	63103150	Apricot (canned, light syrup)	2	0.5	cup, halves	0.5	0.25	0.5	90.885	0.01095	974
975	63105010	Avocado	1	0.25	cup, cubes	0.25	0.25	1	60	0.79875	975
976	63105010	Avocado	2	0.25	cup, mashed	0.25	0.25	1	92	1.22475	976
977	63105010	Avocado	2	0.5	California avocado (black)	0.5	0.25	0.5	138.4	1.84245	977
978	63105010	Avocado	2	0.5	Florida avocado (green)	0.5	0.25	0.5	243.2	3.2376	978
979	63107010	Banana	1	1	medium (7 - 8 long)	1	0.5	0.5	105.02	0.1298	979
980	63107010	Banana	2	0.5	cup, sliced	0.5	0.25	0.5	66.75	0.0825	980
981	63107010	Banana	2	1	small (6 - 7 long)	1	0.5	0.5	89.89	0.1111	981
982	63107010	Banana	2	1	large (8 - 9 long)	1	0.5	0.5	121.04	0.1496	982
983	63109010	Cantaloupe	1	0.5	cup, balls	0.5	0.25	0.5	30.09	0.04425	983
984	63109010	Cantaloupe	2	1	large wedge	1	0.5	0.5	34.68	0.051	984
985	63109010	Cantaloupe	2	1	medium wedge	1	0.5	0.5	23.46	0.0345	985
986	63109010	Cantaloupe	2	1	small wedge	1	0.5	0.5	18.7	0.0275	986
987	63111010	Maraschino cherries	1	1	cherry	1	1	1	7.095	0.00172	987
988	63111010	Maraschino cherries	2	0.25	cup	0.25	0.25	1	66.4125	0.0161	988
989	63115010	Sweet cherries (raw)	1	0.5	cup cherries with pits	0.5	0.25	0.5	36.855	0.0234	989
990	63115010	Sweet cherries (raw)	2	0.5	cup pitted cherries	0.5	0.25	0.5	45.675	0.029	990
991	63115010	Sweet cherries (raw)	2	10	cherries	10	2	0.1	42.84	0.0272	991
992	63123000	Grapes (raw)	1	0.5	cup	0.5	0.25	0.5	55.2	0.04	992
993	63123000	Grapes (raw)	2	10	grapes	10	2	0.1	34.5	0.025	993
994	63125010	Guava (raw)	1	1	guava	1	0.5	0.5	45.9	0.153	994
995	63125010	Guava (raw)	2	0.5	cup	0.5	0.25	0.5	42.075	0.14025	995
996	63126500	Kiwifruit (raw)	1	1	fruit	1	0.5	0.5	46.36	0.0228	996
997	63126500	Kiwifruit (raw)	2	0.5	cup	0.5	0.25	0.5	53.985	0.02655	997
998	63126500	Kiwifruit (raw)	2	1	slice	1	1	1	4.27	0.0021	998
999	63127010	Honeydew melon (raw)	1	1	medium wedge	1	0.5	0.5	45	0.05	999
1000	63127010	Honeydew melon (raw)	2	0.5	cup balls	0.5	0.25	0.5	31.86	0.0354	1000
1001	63127010	Honeydew melon (raw)	2	1	small wedge	1	0.5	0.5	22.32	0.0248	1001
1002	63127010	Honeydew melon (raw)	2	1	large wedge	1	0.5	0.5	90	0.1	1002
1003	63129010	Mango (raw)	1	0.5	cup, sliced	0.5	0.25	0.5	53.625	0.05775	1003
1004	63129010	Mango (raw)	2	0.5	mango	0.5	0.25	0.5	67.275	0.07245	1004
1005	58100310	Bean burrito	1	1	medium burrito	1	0.5	0.5	295.36	2.1442	1005
1006	58100320	Bean and cheese burrito	1	1	Taco Bell burrito	1	0.5	0.5	518.76	12.1572	1006
1007	58100320	Bean and cheese burrito	2	1	medium burrito	1	0.5	0.5	372.04	8.7188	1007
1008	58100530	Beef and cheese enchilada	1	1	enchilada	1	0.5	0.5	213.15	5.0715	1008
1009	58100600	Chicken enchilada	1	1	enchilada	1	0.5	0.5	202.86	1.3356	1009
1010	58100710	Bean enchilada	1	1	enchilada	1	0.5	0.5	179.36	1.2154	1010
1011	58100800	Cheese enchilada	1	1	enchilada	1	0.5	0.5	226.44	7.0992	1011
1012	58101300	Beef taco with cheese and lettuce	1	1	taco or tostada	1	0.5	0.5	219.96	3.939	1012
1013	58101320	Beef taco (cheese, lettuce, tomato, salsa)	1	1	taco or tostada	1	0.5	0.5	172.64	3.8014	1013
1014	58104740	Chicken & cheese quesadilla	1	1	quesadilla	1	0.25	0.25	563.04	14.60776	1014
1015	58104810	Taquitoes	1	1	taquito	1	0.5	0.5	190.8	2.9592	1015
1016	58105000	Chicken fajitas with veggies & guacamole	1	1	fajita	1	0.5	0.5	361.26	2.5868	1016
1017	58105000	Chicken fajitas with veggies & guacamole	2	1	McDonald's fajita	1	0.5	0.5	132.84	0.9512	1017
1018	58105050	Beef fajitas with veggies	1	1	fajita	1	0.5	0.5	396.94	5.8426	1018
1019	58106220	Cheese pizza, thin crust	1	1	slice (1/8 med pizza)	1	1	1	163.8	2.8035	1019
1020	58106220	Cheese pizza, thin crust	2	0.25	large pizza	0.25	0.25	1	510.9	8.74425	1020
1021	58106220	Cheese pizza, thin crust	2	0.25	medium pizza	0.25	0.25	1	326.95	5.59587	1021
1022	58106220	Cheese pizza, thin crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	255.45	4.37213	1022
1023	58106220	Cheese pizza, thin crust	2	1	small pizza (8 across)	1	0.5	0.5	478.4	8.188	1023
1024	58106230	Cheese pizza, thick crust	1	1	slice (1/8 med pizza)	1	1	1	203.06	2.6128	1024
1025	58106230	Cheese pizza, thick crust	2	0.25	large pizza	0.25	0.25	1	634.205	8.1604	1025
1026	58106230	Cheese pizza, thick crust	2	0.25	medium pizza	0.25	0.25	1	405.405	5.2164	1026
1027	58106230	Cheese pizza, thick crust	2	0.5	French bread pizza	0.5	0.25	0.5	210.21	2.7048	1027
1028	58106230	Cheese pizza, thick crust	2	1	Bagel Bite	1	1	1	62.92	0.8096	1028
1029	58106230	Cheese pizza, thick crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	317.1025	4.0802	1029
1030	58106230	Cheese pizza, thick crust	2	1	small pizza (8 across)	1	0.5	0.5	709.28	9.1264	1030
1031	58106320	Vegetable pizza, thin crust	1	1	slice (1/8 med pizza)	1	1	1	149.1	2.457	1031
1032	58106320	Vegetable pizza, thin crust	2	0.25	large pizza	0.25	0.25	1	465.405	7.66935	1032
1033	58106320	Vegetable pizza, thin crust	2	0.25	medium pizza	0.25	0.25	1	298.2	4.914	1033
1034	58106320	Vegetable pizza, thin crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	232.7025	3.83468	1034
1035	58106320	Vegetable pizza, thin crust	2	1	small pizza (8 across)	1	0.5	0.5	451.56	7.4412	1035
1036	58106330	Vegetable pizza, thick crust	1	1	slice (1/8 med pizza)	1	1	1	192.66	2.4258	1036
1037	58106330	Vegetable pizza, thick crust	2	0.25	large pizza	0.25	0.25	1	602.0625	7.58063	1037
1038	58106330	Vegetable pizza, thick crust	2	0.25	medium pizza	0.25	0.25	1	385.32	4.8516	1038
1039	58106330	Vegetable pizza, thick crust	2	0.5	French bread pizza	0.5	0.25	0.5	216.125	2.72125	1039
1040	58106330	Vegetable pizza, thick crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	301.03125	3.79031	1040
1041	58106330	Vegetable pizza, thick crust	2	1	small pizza (8 across)	1	0.5	0.5	681.72	8.5836	1041
1042	58106520	Meat pizza, thin crust	1	1	slice (1/8 med pizza)	1	1	1	208.03	4.2813	1042
1043	58106520	Meat pizza, thin crust	2	0.25	large pizza	0.25	0.25	1	649.7275	13.37153	1043
1044	58106520	Meat pizza, thin crust	2	0.25	medium pizza	0.25	0.25	1	415.3275	8.54753	1044
1045	58106520	Meat pizza, thin crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	324.86375	6.68576	1045
1046	58106520	Meat pizza, thin crust	2	1	small pizza (8 across)	1	0.5	0.5	559.63	11.5173	1046
1047	58106530	Meat pizza, thick crust	1	1	slice (1/8 med pizza)	1	1	1	243.32	3.8552	1047
1048	58106530	Meat pizza, thick crust	2	0.25	large pizza	0.25	0.25	1	759.22	12.0292	1048
1049	58106530	Meat pizza, thick crust	2	0.25	medium pizza	0.25	0.25	1	485.87	7.6982	1049
1050	58106530	Meat pizza, thick crust	2	0.5	French bread pizza	0.5	0.25	0.5	244.86	3.8796	1050
1051	58106530	Meat pizza, thick crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	379.61	6.0146	1051
1052	58106530	Meat pizza, thick crust	2	1	small pizza (8 across)	1	0.5	0.5	785.4	12.444	1052
1053	58106720	Meat & veggie pizza, thin crust	1	1	slice (1/8 med pizza)	1	1	1	192.76	3.8315	1053
1054	58106720	Meat & veggie pizza, thin crust	2	0.25	large pizza	0.25	0.25	1	601.46	11.95525	1054
1055	58106720	Meat & veggie pizza, thin crust	2	0.25	medium pizza	0.25	0.25	1	384.91	7.65088	1055
1056	58106720	Meat & veggie pizza, thin crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	300.73	5.97763	1056
1057	58106720	Meat & veggie pizza, thin crust	2	1	small pizza (8 across)	1	0.5	0.5	570.96	11.349	1057
1058	58106730	Meat & veggie pizza, thick crust	1	1	slice (1/8 med pizza)	1	1	1	233.16	3.6192	1058
1059	58106730	Meat & veggie pizza, thick crust	2	0.25	large pizza	0.25	0.25	1	727.62	11.2944	1059
1060	58106730	Meat & veggie pizza, thick crust	2	0.25	medium pizza	0.25	0.25	1	465.65	7.228	1060
1061	58106730	Meat & veggie pizza, thick crust	2	0.5	French bread pizza	0.5	0.25	0.5	234.5	3.64	1061
1062	58106730	Meat & veggie pizza, thick crust	2	1	big slice (1/8 lg pizza)	0.125	1	1	363.81	5.6472	1062
1063	58106730	Meat & veggie pizza, thick crust	2	1	small pizza (8 across)	1	0.5	0.5	798.64	12.3968	1063
1064	58108010	Meat & cheese calzone or stromboli	1	0.5	calzone or stromboli	0.5	0.25	0.5	737.76	13.3984	1064
1065	58108050	Pizza rolls or bites	1	1	miniature roll	1	1	1	42	0.7826	1065
1066	58110110	Egg roll with vegetables	1	1	egg roll	1	0.5	0.5	100.48	1.2288	1066
1067	58110110	Egg roll with vegetables	2	1	miniature egg roll	1	1	1	20.41	0.2496	1067
1068	58110130	Egg roll with meat	1	1	egg roll	1	0.5	0.5	112.64	1.44	1068
1069	58110130	Egg roll with meat	2	1	miniature egg roll	1	1	1	22.88	0.2925	1069
1070	58111110	Fried wonton	1	1	wonton	1	1	1	53.96	0.8208	1070
1071	58111110	Fried wonton	2	1	pot sticker	1	1	1	85.2	1.296	1071
1072	58112510	Steamed dumpling, meat filled	1	1	dumpling	1	1	1	41.44	0.2701	1072
1073	58125110	Quiche (with meat, poultry or fish)	1	1	piece (1/8 of 9 quiche)	1	1	1	568.32	20.1792	1073
1074	58125110	Quiche (with meat, poultry or fish)	2	1	individual quiche	1	0.5	0.5	334.48	11.8763	1074
1075	58125120	Spinach quiche	1	1	piece (1/8 of 9 quiche)	1	1	1	341.77	12.0549	1075
1076	58125120	Spinach quiche	2	1	individual quiche	1	0.5	0.5	270.07	9.5259	1076
1077	58126130	Meat and cheese turnover (Hot Pockets)	1	1	turnover	1	0.5	0.5	358.08	6.576	1077
1078	58127330	Sausage, egg, and cheese croissant	1	1	croissant	1	0.5	0.5	539.01	17.0448	1078
1079	58130010	Meat lasagna	1	1	piece (about 2-1/2 x 4)	1	0.5	0.5	321.36	6.3036	1079
1080	58130010	Meat lasagna	2	1	cup	1	0.5	0.5	390	7.65	1080
1081	58130320	Spinach lasagna (vegetarian)	1	1	piece (about 2-1/2 x 4)	1	0.5	0.5	279.21	4.9259	1081
1082	58130320	Spinach lasagna (vegetarian)	2	1	cup	1	0.5	0.5	307.5	5.425	1082
1083	58131323	Meat ravioli with tomato sauce	1	0.5	cup	0.5	0.25	0.5	104.165	0.7279	1083
1084	58131323	Meat ravioli with tomato sauce	2	0.5	can (15 oz)	0.5	0.25	0.5	176.375	1.2325	1084
1085	58131323	Meat ravioli with tomato sauce	2	1	piece	1	1	1	27.39	0.1914	1085
1086	58131510	Cheese ravioli (no sauce)	1	0.5	cup	0.5	0.25	0.5	185.2	4.896	1086
1087	58131510	Cheese ravioli (no sauce)	2	1	piece	1	1	1	34.725	0.918	1087
1088	58132110	Spaghetti with tomato sauce (meatless)	1	1	cup	1	0.5	0.5	250.48	0.4712	1088
1089	58132310	Spaghetti with meat sauce	1	1	cup	1	0.5	0.5	349.68	3.7944	1089
1090	58133120	Cheese manicotti with tomato sauce	1	2	manicotti	2	0.5	0.25	457.6	11.2112	1090
1091	58133120	Cheese manicotti with tomato sauce	2	1	cup	1	0.25	0.25	376	9.212	1091
1092	58150110	Fried rice (plain)	1	0.5	cup	0.5	0.25	0.5	125.33	0.7553	1092
1093	58150310	Chicken or pork fried rice	1	0.5	cup	0.5	0.25	0.5	166.32	1.1088	1093
1094	58150510	Shrimp fried rice	1	0.5	cup	0.5	0.25	0.5	161.37	0.9801	1094
1095	58151130	Nigiri sushi (with fish and veggies)	1	1	piece	1	1	1	36.4	0.0234	1095
1096	58151130	Nigiri sushi (with fish and veggies)	2	0.25	cup	0.25	0.25	1	58.1	0.03735	1096
1097	58151140	Maki sushi (rolled sushi with veggies)	1	1	piece	1	1	1	30.42	0.0156	1097
1098	58151140	Maki sushi (rolled sushi with veggies)	2	0.25	cup	0.25	0.25	1	48.555	0.0249	1098
1099	58160110	Rice and beans	1	0.5	cup	0.5	0.25	0.5	195.98	1.0277	1099
1100	58161300	Rice with tomato sauce	1	0.5	cup	0.5	0.25	0.5	126.36	0.30375	1100
1101	58162110	Stuffed pepper (with rice and meat)	1	0.5	pepper with filling	1	0.25	0.5	208.6	4.6786	1101
1102	58163410	Spanish rice	1	0.5	cup	0.5	0.25	0.5	105.705	0.25515	1102
1103	58163610	Rice with vegetables	1	0.5	cup	0.5	0.25	0.5	139.05	0.9476	1103
1104	58200100	Wrap sandwich (meat, vegetables, rice)	1	1	wrap	1	0.25	0.25	818.37	8.85052	1104
1105	57305100	Lucky Charms cereal	2	1	single serving box	1	0.5	0.5	110.2	0.232	1105
1106	57330000	Raisin bran cereal	1	1	cup	1	0.25	0.25	194.59	0.3355	1106
1107	57330000	Raisin bran cereal	2	1	single serving box	1	0.5	0.5	124.41	0.2145	1107
1108	57336000	Rice Chex cereal	1	1	cup	1	0.25	0.25	124.41	0.132	1108
1109	57339000	Rice Krispies cereal	1	1	cup	1	0.25	0.25	93.6	0.0962	1109
1110	57339000	Rice Krispies cereal	2	1	single serving box	1	0.5	0.5	90	0.0925	1110
1111	57344000	Special K cereal	1	1	cup	1	0.25	0.25	117.49	0.1085	1111
1112	57344000	Special K cereal	2	1	single serving box	1	0.5	0.5	79.59	0.0735	1112
1113	57347000	Corn Pops cereal	1	1	cup	1	0.25	0.25	117.8	0.0713	1113
1114	57347000	Corn Pops cereal	2	1	single serving box	1	0.5	0.5	106.4	0.0644	1114
1115	57349000	Frosted Flakes cereal	1	1	cup	1	0.25	0.25	150.47	0.0697	1115
1116	57349000	Frosted Flakes cereal	2	1	single serving box	1	0.5	0.5	117.44	0.0544	1116
1117	57406100	Total cereal	1	1	cup	1	0.25	0.25	106.92	0.1749	1117
1118	57406100	Total cereal	2	1	single serving box	1	0.5	0.5	91.854	0.15026	1118
1119	57407100	Trix cereal	1	1	cup	1	0.25	0.25	117.3	0.18	1119
1120	57407100	Trix cereal	2	1	single serving box	1	0.5	0.5	105.57	0.162	1120
1121	57417000	Shredded wheat cereal	1	1	cup spoon size biscuits	1	0.5	0.5	170	0.16	1121
1122	57417000	Shredded wheat cereal	2	1	rectangular biscuit	1	0.5	0.5	81.6	0.0768	1122
1123	57418000	Wheaties cereal	1	1	cup	1	0.25	0.25	106.5	0.18	1123
1124	57601100	Wheat bran, unprocessed	1	0.25	cup	0.25	0.25	1	31.32	0.09135	1124
1125	58100100	Beef burrito (no beans)	1	1	small burrito	1	0.5	0.5	296.64	4.6848	1125
1126	58100110	Beef and bean burrito	1	1	medium burrito	1	0.5	0.5	330.86	4.1038	1126
1127	58100130	Beef and cheese burrito (no beans)	1	1	Taco Bell burrito	1	0.5	0.5	689.04	21.5028	1127
1128	58100130	Beef and cheese burrito (no beans)	2	1	medium burrito	1	0.5	0.5	494.16	15.4212	1128
1129	58100140	Beef, bean, and cheese burrito	1	1	Taco Bell burrito	1	0.5	0.5	670.65	17.799	1129
1130	58100140	Beef, bean, and cheese burrito	2	1	medium burrito	1	0.5	0.5	615.42	16.3332	1130
1131	58100140	Beef, bean, and cheese burrito	2	1	Taco Bell Big Beef	1	0.5	0.5	765.33	20.3118	1131
1132	58101320	Beef taco (cheese, lettuce, tomato, salsa)	2	1	Taco Bell Grande	1	0.5	0.5	339.04	7.4654	1132
1133	58101400	Beef soft taco	1	1	taco	1	0.5	0.5	262.2	4.7012	1133
1134	58101450	Chicken soft taco	1	1	taco	1	0.5	0.5	250.88	2.8544	1134
1135	58101720	Bean taco (cheese, lettuce, tomato, salsa)	1	1	taco or tostada	1	0.5	0.5	143.44	2.244	1135
1136	58101910	Taco salad with beef, cheese, corn chips	1	1	salad (fast food order)	1	0.5	0.5	366.56	7.7256	1136
1137	58101910	Taco salad with beef, cheese, corn chips	2	1	cup	1	0.5	0.5	192.76	4.0626	1137
1138	58103110	Tamale (with meat or chicken)	1	1	tamale	1	0.5	0.5	133	2.583	1138
1139	58104100	Cheese nachos	1	1	Taco Bell order	1	0.25	0.25	471.7	14.9672	1139
1140	58104100	Cheese nachos	2	1	cup	1	0.25	0.25	258.1	8.1896	1140
1141	58104180	Beef and bean nachos	1	1	Nachos Supreme	1	0.25	0.25	566.28	11.7018	1141
1142	58104180	Beef and bean nachos	2	1	cup	1	0.25	0.25	251.68	5.2008	1142
1143	58104250	Chicken nachos	1	1	order	1	0.25	0.25	543.32	13.066	1143
1144	58104250	Chicken nachos	2	1	cup	1	0.25	0.25	251.43	6.0465	1144
1145	58104510	Beef chimachanga	1	1	chimichanga	1	0.5	0.5	337.48	7.5402	1145
1146	58104530	Chicken chimichanga	1	1	chimichanga	1	0.5	0.5	558.15	11.4741	1146
1147	58104530	Chicken chimichanga	2	1	order (4 mini pieces)	1	0.25	0.25	631.35	12.9789	1147
1148	58104710	Cheese quesadilla	1	1	quesadilla	1	0.25	0.25	498.42	13.774	1148
1149	58104730	Meat and cheese quesadilla	1	1	quesadilla	1	0.25	0.25	605.36	16.1736	1149
1150	22101220	Fried pork chop (eat lean only)	1	1	medium	1	0.5	0.5	153	2.7608	1150
1151	22101220	Fried pork chop (eat lean only)	2	1	large	1	0.5	0.5	220.5	3.9788	1151
1152	22101220	Fried pork chop (eat lean only)	2	1	small or thin cut	1	0.5	0.5	83.25	1.5022	1152
1153	22101220	Fried pork chop (eat lean only)	2	4	ounces after cooking	4	1	0.25	234	4.2224	1153
1154	22101310	Breaded pork chop (eat lean & fat)	1	1	medium	1	0.5	0.5	304.32	5.424	1154
1155	22101310	Breaded pork chop (eat lean & fat)	2	1	large	1	0.5	0.5	440.63	7.8535	1155
1156	22101310	Breaded pork chop (eat lean & fat)	2	1	small or thin cut	1	0.5	0.5	164.84	2.938	1156
1157	22101310	Breaded pork chop (eat lean & fat)	2	4	ounces after cooking	4	1	0.25	359.478	6.4071	1157
1158	22101320	Breaded pork chop (eat lean only)	1	1	medium	1	0.5	0.5	226.4	3.048	1158
1159	22101320	Breaded pork chop (eat lean only)	2	1	large	1	0.5	0.5	331.11	4.4577	1159
1160	22101320	Breaded pork chop (eat lean only)	2	1	small or thin cut	1	0.5	0.5	124.52	1.6764	1160
1161	22101320	Breaded pork chop (eat lean only)	2	4	ounces after cooking	4	1	0.25	339.6	4.572	1161
1162	22210400	Roast pork tenderloin	1	4	ounces after cooking	4	1	0.25	195.048	2.40408	1162
1163	22311020	Smoked ham (lean)	1	1	medium slice	1	0.5	0.5	65.94	0.7728	1163
1164	22311020	Smoked ham (lean)	2	1	thick slice	1	0.5	0.5	98.91	1.1592	1164
1165	22311020	Smoked ham (lean)	2	1	thin slice	1	1	1	32.97	0.3864	1165
1166	22311020	Smoked ham (lean)	2	4	ounces, boneless	4	1	0.25	178.038	2.08656	1166
1167	22401020	Roast pork (lean)	1	1	medium slice	1	0.5	0.5	87.36	1.4658	1167
1168	22401020	Roast pork (lean)	2	1	thick slice	1	0.5	0.5	131.04	2.1987	1168
1169	22401020	Roast pork (lean)	2	1	thin slice	1	1	1	43.68	0.7329	1169
1170	22401020	Roast pork (lean)	2	4	ounces, boneless	4	1	0.25	235.872	3.95766	1170
1171	22501010	Canadian bacon	1	1	slice	1	0.5	0.5	42.55	0.6532	1171
1172	22501010	Canadian bacon	2	1	ounce	1	0.5	0.5	51.8	0.7952	1172
1173	22601000	Bacon	1	1	medium slice, cooked	1	1	1	43.28	1.0992	1173
1174	22601000	Bacon	2	1	thick slice, cooked	1	1	1	64.92	1.6488	1174
1175	22601000	Bacon	2	1	thin slice, cooked	1	1	1	27.05	0.687	1175
1176	22701010	Pork spareribs (eat lean & fat)	1	1	large cut (3 ribs)	1	0.5	0.5	533.25	14.9445	1176
1177	22701010	Pork spareribs (eat lean & fat)	2	1	large rib	1	1	1	177.75	4.9815	1177
1178	22701010	Pork spareribs (eat lean & fat)	2	1	medium rib	1	1	1	138.25	3.8745	1178
1179	22701010	Pork spareribs (eat lean & fat)	2	1	small rib	1	1	1	98.75	2.7675	1179
1180	22701020	Pork spareribs (eat lean only)	1	1	large cut (3 ribs)	1	0.5	0.5	205	3.65	1180
1181	22701020	Pork spareribs (eat lean only)	2	1	large rib	1	1	1	67.65	1.2045	1181
1182	22701020	Pork spareribs (eat lean only)	2	1	medium rib	1	1	1	53.3	0.949	1182
1183	22701020	Pork spareribs (eat lean only)	2	1	small rib	1	1	1	36.9	0.657	1183
1184	22701040	BBQ spareribs & sauce (eat lean & fat)	1	1	medium rib	1	1	1	124	3.224	1184
1185	22701040	BBQ spareribs & sauce (eat lean & fat)	2	1	large rib	1	1	1	161.2	4.1912	1185
1186	22701040	BBQ spareribs & sauce (eat lean & fat)	2	1	small rib	1	1	1	89.9	2.3374	1186
1187	22701050	BBQ spareribs & sauce (eat lean only)	1	1	medium rib	1	1	1	66.3	1.212	1187
1188	22701050	BBQ spareribs & sauce (eat lean only)	2	1	large rib	1	1	1	83.98	1.5352	1188
1189	22701050	BBQ spareribs & sauce (eat lean only)	2	1	small rib	1	1	1	46.41	0.8484	1189
1190	22709010	Fried pork rinds	1	1	cup, pieces	1	0.25	0.25	174.4	3.6384	1190
1191	22709010	Fried pork rinds	2	1	bag (2 oz)	1	0.25	0.25	310.65	6.4809	1191
1192	23101020	Lamb chop	1	1	large chop	1	0.5	0.5	223.6	4.004	1192
1193	23101020	Lamb chop	2	1	medium chop	1	0.5	0.5	167.7	3.003	1193
1194	23101020	Lamb chop	2	1	small chop	1	0.5	0.5	111.8	2.002	1194
1195	23101020	Lamb chop	2	4	ounces after cooking	4	1	0.25	243.81	4.3659	1195
1196	23203110	Broiled veal chop	1	1	medium	1	0.5	0.5	230.05	5.58112	1196
1197	23203110	Broiled veal chop	2	1	large	1	0.5	0.5	292.4	7.09376	1197
1198	23203110	Broiled veal chop	2	4	ounces after cooking	4	1	0.25	197.8	4.79872	1198
1199	23205030	Veal cutlet or steak, fried	1	1	cutlet	1	0.5	0.5	139.37	0.9779	1199
1200	23205030	Veal cutlet or steak, fried	2	4	ounces after cooking	4	1	0.25	205.254	1.44018	1200
1201	23210020	Roasted veal	1	1	medium slice	1	0.5	0.5	96.6	1.79004	1201
1202	23210020	Roasted veal	2	1	thick slice	1	0.5	0.5	144.9	2.68506	1202
1203	23210020	Roasted veal	2	1	thin slice	1	1	1	48.3	0.89502	1203
1204	23210020	Roasted veal	2	4	ounces, boneless	4	1	0.25	260.82	4.83311	1204
1205	23321100	Roasted venison	1	4	ounces after cooking	4	1	0.25	215.46	2.19996	1205
1206	24107010	Battered fried chicken (eat skin)	1	1	medium piece	1	0.5	0.5	249.4	3.7066	1206
1207	24107010	Battered fried chicken (eat skin)	2	1	large piece	1	0.5	0.5	406	6.034	1207
1208	24107010	Battered fried chicken (eat skin)	2	1	small piece	1	1	1	142.1	2.1119	1208
1209	24107010	Battered fried chicken (eat skin)	2	4	ounces after cooking	4	1	0.25	328.86	4.88754	1209
1210	24122110	Baked chicken breast (eat skin)	1	1	medium breast	1	0.5	0.5	191.1	2.1266	1210
1211	24122110	Baked chicken breast (eat skin)	2	1	white meat quarter	1	0.5	0.5	302.25	3.3635	1211
1212	24122110	Baked chicken breast (eat skin)	2	1	large breast	1	0.5	0.5	216.45	2.4087	1212
1213	24122110	Baked chicken breast (eat skin)	2	1	small breast	1	0.5	0.5	163.8	1.8228	1213
1214	24122110	Baked chicken breast (eat skin)	2	4	ounces after cooking	4	1	0.25	221.13	2.46078	1214
1215	24122120	Baked chicken breast (no skin)	1	1	medium breast	1	0.5	0.5	141.04	0.86	1215
1216	24122120	Baked chicken breast (no skin)	2	1	white meat quarter	1	0.5	0.5	206.64	1.26	1216
1217	24122120	Baked chicken breast (no skin)	2	1	large breast	1	0.5	0.5	160.72	0.98	1217
1218	24122120	Baked chicken breast (no skin)	2	1	small breast	1	0.5	0.5	123	0.75	1218
1219	24122120	Baked chicken breast (no skin)	2	4	ounces boneless, cooked	4	1	0.25	170.56	1.04	1219
1220	24124120	Fried chicken breast (no skin)	1	1	medium breast	1	0.5	0.5	158.24	0.903	1220
1221	24124120	Fried chicken breast (no skin)	2	1	large breast	1	0.5	0.5	180.32	1.029	1221
1222	24124120	Fried chicken breast (no skin)	2	1	small breast	1	0.5	0.5	138	0.7875	1222
1223	24124120	Fried chicken breast (no skin)	2	4	ounces, cooked, skinned	4	1	0.25	191.36	1.092	1223
1224	24127110	Battered fried chicken breast	1	1	medium breast	1	0.5	0.5	365.4	4.256	1224
1225	24127110	Battered fried chicken breast	2	1	large breast	1	0.5	0.5	412.38	4.8032	1225
1226	24127110	Battered fried chicken breast	2	1	small breast	1	0.5	0.5	313.2	3.648	1226
1227	24127110	Battered fried chicken breast	2	4	ounces after cooking	4	1	0.25	295.974	3.44736	1227
1228	24127150	Battered fried chicken breast, no skin	1	1	medium breast	1	0.5	0.5	252.72	2.2356	1228
1229	24127150	Battered fried chicken breast, no skin	2	1	large breast	1	0.5	0.5	283.14	2.5047	1229
1230	24127150	Battered fried chicken breast, no skin	2	1	small breast	1	0.5	0.5	215.28	1.9044	1230
1231	24127150	Battered fried chicken breast, no skin	2	4	ounces after cooking	4	1	0.25	265.356	2.34738	1231
1232	24132210	Baked chicken dark meat (eat skin)	1	1	medium dark meat quarter	1	0.5	0.5	262.2	4.1952	1232
1233	24132210	Baked chicken dark meat (eat skin)	2	1	large dark meat quarter	1	0.5	0.5	342.7	5.4832	1233
1234	24132210	Baked chicken dark meat (eat skin)	2	1	small dark meat quarter	1	0.5	0.5	216.2	3.4592	1234
1235	24132220	Baked chicken dark meat (no skin)	1	1	medium dark meat quarter	1	0.5	0.5	179.55	2.1565	1235
1236	24132220	Baked chicken dark meat (no skin)	2	1	large dark meat quarter	1	0.5	0.5	241.92	2.9056	1236
1237	24132220	Baked chicken dark meat (no skin)	2	1	small dark meat quarter	1	0.5	0.5	153.09	1.8387	1237
1238	24142220	Baked chicken drumstick (no skin)	1	1	medium drumstick	1	0.5	0.5	75.24	0.6424	1238
1239	24142220	Baked chicken drumstick (no skin)	2	1	large drumstick	1	0.5	0.5	99.18	0.8468	1239
1240	24142220	Baked chicken drumstick (no skin)	2	1	small drumstick	1	0.5	0.5	58.14	0.4964	1240
1241	24147210	Fried chicken drumstick (battered)	1	1	medium drumstick	1	0.5	0.5	194.4	2.5776	1241
1242	24147210	Fried chicken drumstick (battered)	2	1	large drumstick	1	0.5	0.5	253.8	3.3652	1242
1243	24147210	Fried chicken drumstick (battered)	2	1	small drumstick	1	0.5	0.5	148.5	1.969	1243
1244	24152220	Baked chicken thigh (no skin)	1	1	medium thigh	1	0.5	0.5	107.64	1.56	1244
1245	24152220	Baked chicken thigh (no skin)	2	1	large thigh	1	0.5	0.5	144.9	2.1	1245
1246	24152220	Baked chicken thigh (no skin)	2	1	small thigh	1	0.5	0.5	95.22	1.38	1246
1247	24154210	Fried chicken thigh (eat skin)	1	1	medium thigh	1	0.5	0.5	158.1	2.6102	1247
1248	24154210	Fried chicken thigh (eat skin)	2	1	large thigh	1	0.5	0.5	214.2	3.5364	1248
1249	24154210	Fried chicken thigh (eat skin)	2	1	small thigh	1	0.5	0.5	140.25	2.3155	1249
1250	24154220	Fried chicken thigh (no skin)	1	1	medium thigh	1	0.5	0.5	111.28	1.2532	1250
1251	24154220	Fried chicken thigh (no skin)	2	1	large thigh	1	0.5	0.5	149.8	1.687	1251
1252	24154220	Fried chicken thigh (no skin)	2	1	small thigh	1	0.5	0.5	98.44	1.1086	1252
1253	24157210	Fried chicken thigh (battered)	1	1	medium thigh	1	0.5	0.5	239.08	3.6464	1253
1254	24157210	Fried chicken thigh (battered)	2	1	large thigh	1	0.5	0.5	325.26	4.9608	1254
1255	24157210	Fried chicken thigh (battered)	2	1	small thigh	1	0.5	0.5	211.28	3.2224	1255
1256	24164110	Fried chicken wing (no coating)	1	1	medium wing	1	1	1	101.76	1.8304	1256
1257	24164110	Fried chicken wing (no coating)	2	1	mini drumette	1	1	1	47.7	0.858	1257
1258	24164110	Fried chicken wing (no coating)	2	1	large wing	1	1	1	136.74	2.4596	1258
1259	24164110	Fried chicken wing (no coating)	2	1	small wing	1	1	1	89.04	1.6016	1259
1260	24167110	Fried chicken wing (battered)	1	1	medium wing	1	1	1	159.74	2.5725	1260
1261	24167110	Fried chicken wing (battered)	2	1	mini drumette	1	1	1	61.94	0.9975	1261
1262	24167110	Fried chicken wing (battered)	2	1	large wing	1	1	1	208.64	3.36	1262
1263	24167110	Fried chicken wing (battered)	2	1	small wing	1	1	1	136.92	2.205	1263
1264	24198700	Chicken patty or fillet (breaded)	1	1	patty	1	0.5	0.5	225.72	3.05672	1264
1265	24198700	Chicken patty or fillet (breaded)	2	1	fillet	1	0.5	0.5	299.97	4.06222	1265
1266	24198700	Chicken patty or fillet (breaded)	2	1	medium tender	1	1	1	47.52	0.64352	1266
1267	24198700	Chicken patty or fillet (breaded)	2	1	chicken strip	1	0.5	0.5	261.36	3.53936	1267
1268	24198740	Chicken nuggets	1	1	fast food order-6 nuggets	1	0.5	0.5	216.72	3.1608	1268
1269	24198740	Chicken nuggets	2	1	nugget	1	1	1	54.18	0.7902	1269
1270	24201120	Roasted turkey (white meat)	1	1	medium slice	1	0.5	0.5	43.68	0.2856	1270
1271	24201120	Roasted turkey (white meat)	2	1	thin slice	1	0.5	0.5	21.84	0.1428	1271
1272	24201120	Roasted turkey (white meat)	2	4	ounces after cooking	4	1	0.25	174.72	1.1424	1272
1273	24201320	Roasted turkey (white & dark meat)	1	1	medium slice	1	0.5	0.5	47.32	0.4564	1273
1274	24201320	Roasted turkey (white & dark meat)	2	1	thin slice	1	0.5	0.5	23.66	0.2282	1274
1275	24201320	Roasted turkey (white & dark meat)	2	4	ounces after cooking	4	1	0.25	189.28	1.8256	1275
1276	24207000	Ground turkey	1	1	medium patty (4 per pound)	1	0.5	0.5	139.8	2.016	1276
1277	24207000	Ground turkey	2	0.5	cup after cooking	0.5	0.25	0.5	147.955	2.1336	1277
1278	24207000	Ground turkey	2	1	large patty (3 per pound)	1	0.5	0.5	186.4	2.688	1278
1279	24207000	Ground turkey	2	1	small patty (5 per pound)	1	0.5	0.5	111.84	1.6128	1279
1280	24207000	Ground turkey	2	4	ounces after cooking	4	1	0.25	260.96	3.7632	1280
1281	24208500	Turkey bacon	1	1	medium slice, cooked	1	0.5	0.5	42.02	0.9119	1281
1282	24301010	Roasted duck	1	1	breast	1	0.5	0.5	255.36	7.3188	1282
1283	24301010	Roasted duck	2	1	drumstick and thigh	1	0.5	0.5	184.8	5.2965	1283
1284	24301010	Roasted duck	2	1	duck half	1	0.25	0.25	1283.52	36.7866	1284
1285	24401010	Roasted Cornish game hen	1	1	breast	1	1	1	284.9	5.522	1285
1286	24401010	Roasted Cornish game hen	2	1	hen	1	0.25	0.25	792.54	15.3612	1286
1287	25110140	Fried beef liver	1	1	slice	1	0.5	0.5	147.9	1.2495	1287
1288	25110450	Fried chicken liver	2	1	cup	1	0.25	0.25	372.4	4.718	1288
1289	25110450	Fried chicken liver	1	1	liver	1	1	1	58.52	0.7414	1289
1290	25112200	Chicken liver pate	1	1	slice	1	0.5	0.5	56.9835	1.134	1290
1291	25210230	Low fat hot dog	1	1	hot dog	1	0.5	0.5	92.34	2.2116	1291
1292	25210280	Hot dog (frankfurter)	1	1	hot dog	1	0.5	0.5	174.99	5.3523	1292
1293	25220350	Bratwurst	1	1	brat	1	0.5	0.5	281.35	8.602	1293
1294	25220400	Bologna	1	1	medium slice	1	0.5	0.5	85.96	2.8588	1294
1295	25220500	Low fat bologna	1	1	medium slice	1	0.5	0.5	64.4	2.0468	1295
1296	25221250	Pepperoni	1	1	slice	1	1	1	25.63	0.88495	1296
1297	25221250	Pepperoni	2	0.25	cup, sliced	0.25	0.25	1	118.83	4.10295	1297
1298	25221310	Polish sausage	1	0.5	cup, sliced	0.5	0.25	0.5	234.05	7.48205	1298
1299	25221310	Polish sausage	2	0.5	10 long sausage	0.5	0.25	0.5	351.85	11.24785	1299
1300	25221470	Breakfast sausage (brown & serve)	1	1	patty	1	0.5	0.5	106.92	3.4992	1300
1301	25221470	Breakfast sausage (brown & serve)	2	1	link	1	0.5	0.5	51.48	1.6848	1301
1302	25221850	Turkey sausage	1	1	medium slice (slice=1 oz)	1	0.5	0.5	58.52	1.2208	1302
1303	25221910	Vienna sausage	1	1	sausage	1	1	1	44.64	1.4848	1303
1304	25221910	Vienna sausage	2	1	can	1	0.25	0.25	315.27	10.4864	1304
1305	25230210	Deli ham (regular)	1	1	slice	1	1	1	45.36	0.756	1305
1306	25230210	Deli ham (regular)	2	0.5	cup	0.5	0.25	0.5	119.07	1.9845	1306
1307	25230210	Deli ham (regular)	2	1	shaved slice	1	1	1	27.54	0.459	1307
1308	25230230	Deli ham (extra lean)	1	1	slice	1	1	1	36.68	0.4536	1308
1309	25230310	Deli chicken or turkey loaf	1	1	slice	1	1	1	42.525	0.56984	1309
1310	25230900	Deli sliced turkey or chicken breast	1	1	slice	1	1	1	29.484	0.13608	1310
1311	25230900	Deli sliced turkey or chicken breast	2	0.5	cup, shaved slices	0.5	0.25	0.5	42.12	0.1944	1311
1312	25231110	Deli sliced roast beef	1	1	slice	1	1	1	50.1795	0.46778	1312
1313	25231110	Deli sliced roast beef	2	0.5	cup	0.5	0.25	0.5	123.9	1.155	1313
1314	25240110	Chicken salad spread	1	0.5	cup	0.5	0.25	0.5	208	3.588	1314
1315	25240220	Ham salad spread	1	0.5	cup	0.5	0.25	0.5	273.24	6.4009	1315
1316	26100120	Baked fish	1	1	fillet	1	0.5	0.5	142.38	0.7571	1316
1317	26100120	Baked fish	2	4	ounces after cooking	4	1	0.25	142.884	0.75978	1317
1318	26100150	Fried fish (breaded or battered)	1	1	fillet	1	0.5	0.5	266.66	3.082	1318
1319	26100150	Fried fish (breaded or battered)	2	4	ounces after cooking	4	1	0.25	225.666	2.6082	1319
1320	26100230	Baked battered fish fillet	1	1	patty or fillet	1	0.5	0.5	155.04	1.7955	1320
1321	26100230	Baked battered fish fillet	2	1	stick	1	1	1	46.24	0.5355	1321
1322	26100230	Baked battered fish fillet	2	2	ounces after cooking	2	1	0.5	154.224	1.78605	1322
1323	26100240	Fried breaded fish fillet	1	1	patty or fillet	1	0.5	0.5	125.97	1.2939	1323
1324	26100240	Fried breaded fish fillet	2	1	stick	1	1	1	37.57	0.3859	1324
1325	26100240	Fried breaded fish fillet	2	2	ounces after cooking	2	1	0.5	125.307	1.28709	1325
1326	26101110	Anchovy	1	1	2-ounce can, drained	1	0.25	0.25	94.5	0.99	1326
1327	26101110	Anchovy	2	2	ounces	2	0.5	0.25	119.07	1.2474	1327
1328	26107120	Baked or broiled catfish	1	1	fillet	1	0.5	0.5	115.92	1.638	1328
1329	26107120	Baked or broiled catfish	2	0.5	medium catfish	0.5	0.25	0.5	300.84	4.251	1329
1330	26107120	Baked or broiled catfish	2	4	ounces after cooking	4	1	0.25	208.656	2.9484	1330
1331	26107150	Fried catfish (breaded or battered)	1	1	fillet	1	0.5	0.5	182.25	2.7375	1331
1572	41810250	Meatless bacon bits	1	1	Tablespoon	1	0.5	0.5	33.32	0.2835	1332
1332	26107150	Fried catfish (breaded or battered)	2	0.5	medium catfish	0.5	0.25	0.5	473.85	7.1175	1333
1333	26107150	Fried catfish (breaded or battered)	2	4	ounces after cooking	4	1	0.25	275.562	4.1391	1334
1334	26109120	Baked or broiled cod	1	1	fillet	1	0.5	0.5	113.46	0.5859	1335
1335	26109120	Baked or broiled cod	2	4	ounces after cooking	4	1	0.25	138.348	0.71442	1336
1336	26109150	Fried cod (breaded or battered)	1	1	fillet	1	0.5	0.5	190.3	1.738	1337
1337	26109150	Fried cod (breaded or battered)	2	4	ounces after cooking	4	1	0.25	196.182	1.79172	1338
1338	26115120	Baked or broiled flounder	1	1	fillet	1	0.5	0.5	172.9	1.118	1339
1339	26115120	Baked or broiled flounder	2	4	ounces after cooking	4	1	0.25	150.822	0.97524	1340
1340	26127120	Baked or broiled perch	1	1	fillet	1	0.5	0.5	127.68	0.7104	1341
1341	26127120	Baked or broiled perch	2	4	ounces after cooking	4	1	0.25	150.822	0.83916	1342
1342	26137120	Baked or broiled salmon	1	1	steak	1	0.5	0.5	242.82	1.8602	1343
1343	26137120	Baked or broiled salmon	2	0.5	medium fillet	0.5	0.25	0.5	235.98	1.8078	1344
1344	26137120	Baked or broiled salmon	2	4	ounces after cooking	4	1	0.25	193.914	1.48554	1345
1345	26137190	Smoked salmon (lox)	1	1	slice or piece	1	1	1	23.4	0.186	1346
1346	26137190	Smoked salmon (lox)	2	1	ounce	1	0.5	0.5	33.1695	0.26366	1347
1347	26151120	Baked or broiled trout	1	1	medium trout	1	0.5	0.5	306.44	3.8142	1348
1348	26151120	Baked or broiled trout	2	4	ounces after cooking	4	1	0.25	213.192	2.65356	1349
1349	26153120	Baked or broiled tuna	1	1	steak	1	0.5	0.5	227.97	1.2069	1350
1350	26153120	Baked or broiled tuna	2	4	ounces after cooking	4	1	0.25	173.502	0.91854	1351
1351	26155180	Canned tuna (in oil)	1	0.5	can, drained	0.5	0.25	0.5	158.4	1.224	1352
1352	26155180	Canned tuna (in oil)	2	2	ounces	2	1	0.5	112.266	0.86751	1353
1353	26155190	Canned tuna (in water)	1	0.5	can, drained	0.5	0.25	0.5	96.86	0.19205	1354
1354	26155190	Canned tuna (in water)	2	2	ounces	2	1	0.5	65.772	0.13041	1355
1355	26157140	Fried whiting (floured or breaded)	1	1	fillet	1	0.5	0.5	190.53	2.0619	1356
1356	26157140	Fried whiting (floured or breaded)	2	4	ounces after cooking	4	1	0.25	248.346	2.68758	1357
1357	26213140	Fried calamari (fried squid)	1	0.25	cup	0.25	0.25	1	73.875	0.6975	1358
1358	26303150	Fried clams (battered)	1	0.5	cup (1 cup=8 medium clams)	0.5	0.25	0.5	111.18	1.2138	1359
1359	26303160	Steamed clams (oysters, mussels)	1	0.5	cup (1 cup=12 medium clams)	0.5	0.25	0.5	69	0.0825	1360
1360	26303160	Steamed clams (oysters, mussels)	2	1	quart, in shell	1	0.25	0.25	172.04	0.2057	1361
1361	26305160	Steamed crab (hard shell)	1	1	medium blue crab	1	1	1	48.48	0.1056	1362
1362	26305160	Steamed crab (hard shell)	2	1	Pacific crab	1	0.5	0.5	114.13	0.2486	1363
1363	26305160	Steamed crab (hard shell)	2	1	king crab leg	1	0.5	0.5	120.19	0.2618	1364
1364	26305160	Steamed crab (hard shell)	2	1	snow crab	1	1	1	54.54	0.1188	1365
1365	26309160	Steamed or boiled crayfish	1	0.5	cup, cooked	0.5	0.25	0.5	56.7	0.119	1366
1366	26309160	Steamed or boiled crayfish	2	2	ounces after cooking	2	1	0.5	45.36	0.0952	1367
1367	26311160	Steamed or boiled lobster	1	1	medium lobster tail	1	0.5	0.5	142.59	0.147	1368
1368	26311160	Steamed or boiled lobster	2	0.5	medium lobster	0.5	0.25	0.5	143.075	0.1475	1369
1369	26311160	Steamed or boiled lobster	2	4	ounces after cooking	4	1	0.25	109.998	0.1134	1370
1370	26315150	Fried oysters (breaded or battered)	1	1	large oyster	1	1	1	55.38	0.7696	1371
1371	26315150	Fried oysters (breaded or battered)	2	1	small oyster	1	1	1	17.04	0.2368	1372
1372	26315150	Fried oysters (breaded or battered)	2	4	ounces after cooking	4	1	0.25	241.542	3.35664	1373
1373	26317120	Baked or broiled scallops	1	0.5	cup, cooked	0.5	0.25	0.5	124.74	0.61425	1374
1374	26317120	Baked or broiled scallops	2	1	scallop	1	1	1	17.16	0.0845	1375
1375	26317120	Baked or broiled scallops	2	4	ounces after cooking	4	1	0.25	149.688	0.7371	1376
1376	26317140	Fried scallops (floured or breaded)	1	0.5	cup, cooked	0.5	0.25	0.5	145.39	1.4807	1377
1377	26317140	Fried scallops (floured or breaded)	2	1	scallop (0.6 oz)	1	1	1	34.72	0.3536	1378
1378	26317140	Fried scallops (floured or breaded)	2	4	ounces after cooking	4	1	0.25	246.078	2.50614	1379
1379	26319120	Baked, broiled, or sauteed shrimp	1	0.5	cup, cooked	0.5	0.25	0.5	111.65	0.68875	1380
1380	26319120	Baked, broiled, or sauteed shrimp	2	1	jumbo shrimp	1	1	1	15.40003	0.095	1381
1381	26319120	Baked, broiled, or sauteed shrimp	2	4	ounces after cooking	4	1	0.25	172.48	1.064	1382
1382	26319120	Baked, broiled, or sauteed shrimp	2	10	medium shrimp	10	2	0.2	77	0.475	1383
1383	26319120	Baked, broiled, or sauteed shrimp	2	10	small shrimp	10	2	0.2	61.6	0.38	1384
1384	26319130	Steamed or boiled shrimp	1	4	ounces after cooking	4	1	0.25	154.56	0.4816	1385
1385	26319130	Steamed or boiled shrimp	2	0.5	cup, cooked	0.5	0.25	0.5	100.05	0.31175	1386
1386	26319130	Steamed or boiled shrimp	2	1	jumbo shrimp	1	1	1	13.80003	0.043	1387
1387	26319130	Steamed or boiled shrimp	2	10	medium shrimp	10	2	0.2	69	0.215	1388
1388	26319130	Steamed or boiled shrimp	2	10	small shrimp	10	2	0.2	55.2	0.172	1389
1389	26319140	Fried shrimp (breaded or battered)	1	4	ounces after cooking	4	1	0.25	274.4	2.9008	1390
1390	26319140	Fried shrimp (breaded or battered)	2	0.5	cup, cooked	0.5	0.25	0.5	158.025	1.67055	1391
1391	26319140	Fried shrimp (breaded or battered)	2	1	extra large shrimp	1	1	1	61.2255	0.64724	1392
1392	26319140	Fried shrimp (breaded or battered)	2	10	medium shrimp	10	2	0.2	269.5	2.849	1393
1393	26319140	Fried shrimp (breaded or battered)	2	10	small shrimp	10	2	0.2	147	1.554	1394
1394	27111050	Spaghetti sauce (with meat)	1	0.5	cup	0.5	0.25	0.5	140.685	2.07915	1395
1395	27111410	Chili con carne (with beans)	1	0.5	cup	0.5	0.25	0.5	132.08	1.9939	1396
1396	27111500	Beef sloppy joe (no bun)	1	0.5	cup	0.5	0.25	0.5	185.74	3.5391	1397
1397	27112010	Salisbury steak with gravy	1	1	steak with gravy	1	0.5	0.5	218.01	4.773	1398
1398	27115100	Teriyaki steak with sauce	1	0.5	cup	0.5	0.25	0.5	226.92	2.806	1399
1399	27116100	Beef curry	1	0.5	cup	0.5	0.25	0.5	215.94	3.3748	1400
1400	27116200	Beef with BBQ sauce	1	0.5	cup	0.5	0.25	0.5	228.81	3.95815	1401
1401	27116200	Beef with BBQ sauce	2	1	slice with sauce	1	1	1	100.92	1.7458	1402
1402	27120030	Pork or ham with BBQ sauce	1	0.5	cup	0.5	0.25	0.5	236.7	4.1554	1403
1403	27120030	Pork or ham with BBQ sauce	2	1	slice with sauce	1	1	1	104.4	1.8328	1404
1404	27120060	Sweet & sour pork	1	0.5	cup	0.5	0.25	0.5	115.26	1.0622	1405
1405	27120120	Sausage gravy	1	0.5	cup	0.5	0.25	0.5	187.2	4.2	1406
1406	27141000	Chicken cacciatore	1	1	breast with sauce	1	0.5	0.5	382	5.18	1407
1407	27141000	Chicken cacciatore	2	0.5	cup	0.5	0.25	0.5	233.02	3.1598	1408
1408	27141000	Chicken cacciatore	2	1	thigh with sauce	1	0.5	0.5	238.75	3.2375	1409
1409	27145000	Chicken teriyaki	1	1	breast with sauce	1	0.5	0.5	190.72	0.9344	1410
1410	27145000	Chicken teriyaki	2	0.5	cup	0.5	0.25	0.5	181.78	0.8906	1411
1411	27145000	Chicken teriyaki	2	1	thigh with sauce	1	0.5	0.5	113.24	0.5548	1412
1412	27146000	Chicken with BBQ sauce	1	1	breast with sauce	1	0.5	0.5	233.7	3.0873	1413
1413	27146000	Chicken with BBQ sauce	2	0.5	cup	0.5	0.25	0.5	249.85	3.30065	1414
1414	27146000	Chicken with BBQ sauce	2	1	thigh with sauce	1	0.5	0.5	140.6	1.8574	1415
1415	27146050	Buffalo wing (chicken wing & sauce)	1	1	wing drumette with sauce	1	1	1	73.44	1.3488	1416
1416	27146100	Sweet & sour chicken	1	1	breast with sauce	1	0.5	0.5	356	1.64	1417
1417	27146100	Sweet & sour chicken	2	0.5	cup	0.5	0.25	0.5	112.14	0.5166	1418
1418	27146100	Sweet & sour chicken	2	1	thigh with sauce	1	0.5	0.5	222.5	1.025	1419
1419	27146150	Chicken curry	1	1	breast with sauce	1	0.5	0.5	248	2.7	1420
1420	27146150	Chicken curry	2	0.5	cup	0.5	0.25	0.5	146.32	1.593	1421
1421	27146150	Chicken curry	2	1	thigh with sauce	1	0.5	0.5	155	1.6875	1422
1422	27146250	Chicken cordon bleu	1	1	roll (breast,ham, sauce)	1	0.5	0.5	501.51	15.4804	1423
1423	27146300	Chicken Parmigiana	1	1	patty, sauce and cheese	1	0.5	0.5	323.96	5.2598	1424
1424	27146300	Chicken Parmigiana	2	1	breast, sauce and cheese	1	0.5	0.5	283.02	4.5951	1425
1425	27146300	Chicken Parmigiana	2	1	thigh with sauce	1	0.5	0.5	188.68	3.0634	1426
1426	27146350	Lemon chicken	1	0.5	cup	0.5	0.25	0.5	335.16	4.725	1427
1427	27211400	Corned beef hash	1	0.5	cup	0.5	0.25	0.5	180.4	4.752	1428
1428	27212100	Beef, tomato sauce & noodles	1	1	cup	1	0.25	0.25	276.39	2.3406	1429
1429	27212350	Beef stroganoff with noodles	1	1	cup	1	0.25	0.25	343.04	7.3472	1430
1430	27214100	Meatloaf or meatball, no sauce	1	1	medium slice	1	0.5	0.5	220.32	4.30488	1431
1431	27214100	Meatloaf or meatball, no sauce	2	1	large meatball	1	1	1	85.68	1.67412	1432
1432	27214100	Meatloaf or meatball, no sauce	2	1	medium meatball	1	1	1	57.12	1.11608	1433
1433	27214100	Meatloaf or meatball, no sauce	2	4	ounces after cooking	4	1	0.25	231.336	4.52012	1434
1434	27214110	Meatloaf or meatballs & tomato sauce	1	1	medium slice	1	0.5	0.5	239.75	4.6443	1435
1435	27214110	Meatloaf or meatballs & tomato sauce	2	1	large meatball	1	1	1	92.75	1.7967	1436
1436	27214110	Meatloaf or meatballs & tomato sauce	2	1	medium meatball	1	1	1	63	1.2204	1437
1437	27214110	Meatloaf or meatballs & tomato sauce	2	4	ounces after cooking	4	1	0.25	198.45	3.84426	1438
1438	27243300	Chicken and rice with cream sauce	1	0.5	cup	0.5	0.25	0.5	177.32	1.8724	1439
1439	27243500	Chicken and rice with tomato sauce	1	0.5	cup	0.5	0.25	0.5	113.46	0.3172	1440
1440	27246100	Chicken and dumplings	1	0.5	cup	0.5	0.25	0.5	184.22	2.5254	1441
1441	27250040	Crab cake	1	1	cake	1	0.5	0.5	105.84	0.9639	1442
1442	27250060	Gefilte fish	1	1	piece	1	1	1	76.84	0.48212	1443
1443	27250060	Gefilte fish	2	0.5	cup	0.5	0.25	0.5	128.255	0.80472	1444
1444	27250060	Gefilte fish	2	5	balls	1	1	0.2	46.33	0.29069	1445
1445	27250520	Imitation crabmeat	1	0.5	cup	0.5	0.25	0.5	71.82	0.0567	1446
1446	27250610	Tuna noodle casserole	1	1	cup	1	0.25	0.25	423.36	4.2112	1447
1447	27311410	Beef stew, potatoes & vegetables	1	1	cup	1	0.25	0.25	199.08	1.386	1448
1448	27313150	Stir-fried beef, veggies & noodles	1	1	cup	1	0.25	0.25	223.51	1.3237	1449
1449	27313220	Beef, veggies & noodles (tomato sauce)	1	1	cup	1	0.25	0.25	231.57	1.4691	1450
1450	27315250	Stuffed cabbage rolls (beef & rice)	1	1	roll	1	0.5	0.5	117.42	1.9673	1451
1451	27320070	Pork, veggies and noodles (tomato sauce)	1	1	cup	1	0.25	0.25	408.36	7.1961	1452
1452	27320320	Stir-fried pork, vegetables & rice	1	1	cup	1	0.25	0.25	245.21	2.7125	1453
1453	27320500	Sweet & sour pork on rice	1	1	cup	1	0.25	0.25	268.4	1.6104	1454
1454	27343480	Chicken, veggies & noodles (cream sauce)	1	1	cup	1	0.25	0.25	250.88	2.3744	1455
1455	27343910	Chicken chow mein with noodles	1	1	cup	1	0.25	0.25	275	2.398	1456
1456	27345310	Stir-fried chicken & veggies on rice	1	1	cup	1	0.25	0.25	234.36	2.8861	1457
1457	27347100	Chicken or turkey pot pie	1	1	8-ounce pie (4-5 across)	1	0.25	0.25	488.05	8.7849	1458
1458	27347100	Chicken or turkey pot pie	2	1	cup	1	0.25	0.25	541.8	9.7524	1459
1459	27347100	Chicken or turkey pot pie	2	1	16-ounce pie (Hungry Man)	1	0.25	0.25	976.1	17.5698	1460
1460	27363000	Gumbo (with rice, New Orleans type)	1	1	cup	1	0.25	0.25	192.76	1.6104	1461
1461	27363100	Jambalaya (with meat & rice)	1	1	cup	1	0.25	0.25	392.84	6.1732	1462
1462	27420080	Greens with ham or pork	1	0.5	cup	0.5	0.25	0.5	38.88	0.576	1463
1463	27445110	Stir-fried chicken and vegetables	1	0.5	cup	0.5	0.25	0.5	89.91	0.8505	1464
1464	27445150	General Tso chicken	1	0.5	cup	0.5	0.25	0.5	148.19	2.0002	1465
1465	27445220	Kung Pao chicken	1	0.5	cup	0.5	0.25	0.5	217.08	2.592	1466
1466	27446200	Chicken salad (with celery, mayo)	1	0.5	cup	0.5	0.25	0.5	208.39	2.821	1467
1467	27450060	Tuna salad (with celery, mayo)	1	0.5	cup	0.5	0.25	0.5	191.36	1.7992	1468
1468	27450080	Seafood salad (with tomatoes, dressing)	1	0.5	cup	0.5	0.25	0.5	163.28	1.5808	1469
1469	27450100	Tuna egg salad (with celery, mayo)	1	0.5	cup	0.5	0.25	0.5	203.84	2.2776	1470
1470	27450410	Stir-fried shrimp and vegetables	1	0.5	cup	0.5	0.25	0.5	79.38	0.5184	1471
1471	27460490	Chef salad, no dressing	1	1	cup	1	0.5	0.5	71.44	1.9228	1472
1472	27460490	Chef salad, no dressing	2	1	fast food order	1	0.5	0.5	253.8	6.831	1473
1473	27460710	Chopped chicken liver	1	0.25	cup	0.25	0.25	1	117.52	2.78148	1474
1474	27460750	Liver and onions	1	1	slice with onions	1	0.5	0.5	177.32	1.3156	1475
1475	27510210	Cheeseburger, plain on bun	1	1	cheeseburger	1	0.5	0.5	316.72	6.0776	1476
1476	27510240	Quarter pound cheeseburger on bun	1	1	quarter pound burger	1	0.5	0.5	552	12.8064	1477
1477	27510300	Double cheeseburger on double deck bun	1	1	double cheeseburger	1	0.5	0.5	620.48	11.648	1478
1478	27510300	Double cheeseburger on double deck bun	2	1	Big Mac	1	0.5	0.5	595.55	11.18	1479
1479	27510360	Bacon cheeseburger on bun	1	1	cheeseburger	1	0.5	0.5	745.92	14.7168	1480
1480	27510500	Hamburger, plain on bun	1	1	small hamburger on bun	1	0.5	0.5	269.7	3.9432	1481
1481	27510530	Quarter pound hamburger on bun	1	1	quarter pounder	1	0.5	0.5	458.64	8.6268	1482
1482	27510540	Double hamburger on bun	1	1	double hamburger	1	0.5	0.5	383.76	6.9044	1483
1483	27510700	Meatball Sub	1	1	6 sub	1	0.25	0.25	611.04	11.0952	1484
1484	27513010	Roast beef sandwich	1	1	sandwich	1	0.5	0.5	368.97	5.5272	1485
1485	27515010	Steak sandwich on roll	1	1	sandwich	1	0.5	0.5	343.64	4.828	1486
1486	27515070	Philly cheese steak (pepper, onion, roll)	1	1	submarine	1	0.25	0.25	485.52	7.6908	1487
1487	27520130	Club sandwich (chicken, bacon, tomato)	1	1	sandwich	1	0.5	0.5	546.12	5.3874	1488
1488	27520130	Club sandwich (chicken, bacon, tomato)	2	1	6 sub	1	0.5	0.5	548.34	5.4093	1489
1489	27520300	Ham sandwich with mayo	1	1	sandwich	1	0.5	0.5	271.04	2.8112	1490
1490	27540110	Chicken sandwich with mayo	1	1	sandwich	1	0.5	0.5	265.44	1.6576	1491
1491	27540110	Chicken sandwich with mayo	2	1	6 sub	1	0.5	0.5	559.32	3.4928	1492
1492	27540140	Fried chicken fillet sandwich	1	1	sandwich	1	0.5	0.5	322.56	3.213	1493
1493	27550000	Fried fish sandwich with tartar sauce	1	1	regular sandwich	1	0.5	0.5	373.65	3.1161	1494
1494	27550000	Fried fish sandwich with tartar sauce	2	1	large sandwich	1	0.5	0.5	675.75	5.6355	1495
1495	27560300	Corn dog (hot dog, cornbread coating)	1	1	corn dog	1	0.5	0.5	279.84	6.4944	1496
1496	27560350	Pig in a blanket (hot dog in dough)	1	1	pig in a blanket	1	0.5	0.5	275.4	6.4855	1497
1497	27560350	Pig in a blanket (hot dog in dough)	2	1	cocktail-size	1	1	1	64.8	1.526	1498
1498	27560650	Sausage biscuit	1	1	regular biscuit	1	0.5	0.5	437.92	12.8464	1499
1499	27560650	Sausage biscuit	2	1	small biscuit	1	0.5	0.5	222.87	6.5379	1500
1500	28110270	Beef sirloin frozen meal	1	1	regular meal	1	0.5	0.5	274.56	4.4304	1501
1501	28110310	Salisbury steak frozen meal	1	1	regular meal	1	0.5	0.5	461.76	13.0416	1502
1502	28141010	Fried chicken frozen meal	1	1	large meal (16 oz)	1	0.5	0.5	1024.92	12.168	1503
1503	28141200	Chicken Teriyaki frozen meal	1	1	regular meal	1	0.5	0.5	360.68	4.402	1504
1504	28141250	Chicken with rice diet frozen meal	1	1	regular meal	1	0.5	0.5	272.33	1.7352	1505
1505	28143080	Chicken fettuccine diet frozen meal	1	1	regular meal	1	0.5	0.5	265.1	1.0845	1506
1506	28145210	Turkey with dressing frozen meal	1	1	regular meal	1	0.5	0.5	483.6	6.1152	1507
1507	28154010	Shrimp with pasta diet frozen meal	1	1	regular meal	1	0.5	0.5	290.16	1.6848	1508
1508	28310110	Beef broth or consomme	1	1	cup	1	0.5	0.5	16.8	0.264	1509
1509	28311010	Pepperpot soup or menudo soup	1	1	cup	1	0.5	0.5	103.63	2.0485	1510
1510	28315100	Chunky beef vegetable soup	1	1	cup	1	0.5	0.5	170.4	2.544	1511
1511	28315140	Mexican beef vegetable soup	1	1	cup	1	0.5	0.5	143.4	2.1032	1512
1512	28315150	Pozole	1	1	cup	1	0.5	0.5	195.16	2.1182	1513
1513	28340310	Chicken gumbo soup	1	1	cup	1	0.5	0.5	56.12	0.3172	1514
1514	28340550	Sweet & sour soup	1	1	cup	1	0.5	0.5	73.2	0.244	1515
1515	28340660	Chicken vegetable soup	1	1	cup	1	0.5	0.5	136.23	1.0038	1516
1516	28340670	Mexican chicken vegetable soup with rice	1	1	cup	1	0.5	0.5	181.5	0.8954	1517
1517	28340750	Hot & sour soup	1	1	cup	1	0.5	0.5	161.04	2.684	1518
1518	28345130	Cream of chicken soup (with water)	1	1	cup	1	0.5	0.5	117.12	2.074	1519
1519	28355120	New England clam chowder	1	1	cup	1	0.5	0.5	148.8	1.86	1520
1520	28355250	Lobster bisque	1	1	cup	1	0.5	0.5	248	3.968	1521
1521	28500000	Chicken gravy	1	0.25	cup	0.25	0.25	1	47.005	0.83895	1522
1522	28500040	Beef gravy	1	0.25	cup	0.25	0.25	1	30.8725	0.66988	1523
1523	28500100	Mushroom gravy	1	0.25	cup	0.25	0.25	1	16.065	0.11305	1524
1524	28522000	Mole poblana sauce	1	0.25	cup	0.25	0.25	1	78.175	1.30512	1525
1525	31103000	Hard or soft boiled egg	1	1	large egg	1	0.5	0.5	77	1.625	1526
1526	31103000	Hard or soft boiled egg	2	1	slice	1	1	1	7.7	0.1625	1527
1527	31105000	Fried egg	1	1	large egg	1	0.5	0.5	89.24	1.8768	1528
1528	31109010	Egg white	1	1	egg white	1	0.5	0.5	17.16	0	1529
1529	31109010	Egg white	2	0.25	cup	0.25	0.25	1	21.19	0	1530
1530	32102000	Deviled egg	1	0.5	egg	1	0.5	1	62.31	1.2307	1531
1531	32103000	Egg salad	1	0.5	cup	0.5	0.25	0.5	352.98	6.3936	1532
1532	32103000	Egg salad	2	1	large egg	1	0.5	0.5	235.32	4.2624	1533
1533	32104950	Scrambled egg (cooked without fat)	1	1	large egg	1	0.5	0.5	78	1.674	1534
1534	32104950	Scrambled egg (cooked without fat)	2	0.5	cup	0.5	0.25	0.5	134.55	2.88765	1535
1535	32105000	Scrambled egg (cooked with fat)	1	1	large egg	1	0.5	0.5	93.62	1.9964	1536
1536	32105000	Scrambled egg (cooked with fat)	2	0.5	cup	0.5	0.25	0.5	161.57	3.4454	1537
1537	32202010	Egg, cheese & ham on English muffin	1	1	McMuffin	1	0.5	0.5	311.85	5.4405	1538
1538	32202030	Egg, cheese & sausage on English muffin	1	1	regular sandwich	1	0.5	0.5	457.92	11.1777	1539
1539	32202030	Egg, cheese & sausage on English muffin	2	1	small sandwich	1	0.5	0.5	241.92	5.9052	1540
1540	32202060	Egg & sausage on biscuit	1	1	biscuit	1	0.5	0.5	565.25	14.56	1541
1541	32202070	Egg, cheese & bacon on biscuit	1	1	biscuit	1	0.5	0.5	437.58	7.1451	1542
1542	32300100	Egg drop soup	1	1	cup	1	0.5	0.5	73.2	1.1468	1543
1543	33201010	Egg Beaters	1	0.5	cup	0.5	0.25	0.5	60	0	1544
1544	33201010	Egg Beaters	2	0.25	cup, raw (equals 1 egg)	0.25	0.25	1	30	0	1545
1545	41101010	Dry beans, cooked with fat	1	0.5	cup	0.5	0.25	0.5	164.7	2.619	1546
1546	41101020	Dry beans, cooked without fat	1	0.5	cup	0.5	0.25	0.5	110.25	0.07	1547
1547	41201020	Baked beans	1	0.5	cup	0.5	0.25	0.5	118.11	0.1524	1548
1548	41205010	Refried beans	1	0.5	cup	0.5	0.25	0.5	182.16	1.7457	1549
1549	41205070	Hummus	1	1	Tablespoon	1	1	1	26.55	0.168	1550
1550	41205070	Hummus	2	0.25	cup	0.25	0.25	1	108.855	0.6888	1551
1551	41208030	Pork & beans	1	0.5	cup	0.5	0.25	0.5	123.97	0.506	1552
1552	41208030	Pork & beans	2	1	small can (8 oz)	1	0.5	0.5	222.46	0.908	1553
1553	41301020	Dry blackeye peas, cooked without fat	1	0.5	cup	0.5	0.25	0.5	97.175	0.10985	1554
1554	41302020	Chickpeas	1	0.5	cup	0.5	0.25	0.5	147.6	0.2542	1555
1555	41303000	Split peas	1	0.5	cup	0.5	0.25	0.5	114.66	0.049	1556
1556	41305000	Lentils	1	0.5	cup	0.5	0.25	0.5	109.825	0.04775	1557
1557	41410010	Soy nuts	1	0.25	cup	0.25	0.25	1	109.5075	0.85328	1558
1558	41420010	Tofu	1	0.25	cup	0.25	0.25	1	37.82	0.3286	1559
1559	41420010	Tofu	2	1	cubic inch piece	1	1	1	10.736	0.09328	1560
1560	41420300	Soy sauce	1	1	Tablespoon	1	0.5	0.5	8.48	0.0016	1561
1561	41420300	Soy sauce	2	1	packet	1	0.5	0.5	4.717	0.00089	1562
1562	41420400	Teriyaki sauce	1	0.25	cup	0.25	0.25	1	53.55	0	1563
1563	41420450	Worcestershire sauce	1	1	teaspoon	0.33	0.5	0.5	3.7587	0	1564
1564	41430000	Protein powder	1	1	Tablespoon	1	1	1	37.293	0.1395	1565
1565	41480010	Tofutti tofu frozen dessert	1	0.5	cup	0.5	0.25	0.5	180.4	2.5584	1566
1566	41601010	Bean soup	1	1	cup	1	0.5	0.5	136.62	1.2144	1567
1567	41601070	Miso soup	1	1	cup	1	0.5	0.5	84	0.576	1568
1568	41601090	Bean soup with macaroni	1	1	cup	1	0.5	0.5	154.33	0.6325	1569
1569	41601110	Bean soup with ham	1	1	cup	1	0.5	0.5	221.13	1.3122	1570
1570	41602030	Split pea soup with ham	1	1	cup	1	0.5	0.5	195	1.67	1571
1571	41603010	Lentil soup	1	1	cup	1	0.5	0.5	181.04	0.5704	1572
1573	41810400	Meatless sausage	1	1	link	1	0.5	0.5	64.25	0.7325	1573
1574	41810400	Meatless sausage	2	1	patty	1	0.5	0.5	97.66	1.1134	1574
1575	41810610	Meatless fried chicken (breaded)	1	1	piece	1	0.5	0.5	84.24	0.4068	1575
1576	41810610	Meatless fried chicken (breaded)	2	0.5	cup, diced	0.5	0.25	0.5	152.1	0.7345	1576
1577	41811400	Meatless hot dog (no bun)	1	1	frankfurter	1	0.5	0.5	163.1	1.372	1577
1578	41811900	Soy burger (no bun)	1	1	patty	1	0.5	0.5	125.3	0.504	1578
1579	41811910	Veggie burger (no bun)	1	1	patty	1	0.5	0.5	127.09	0.5112	1579
1580	41812450	Vegetarian chili	1	0.5	cup	0.5	0.25	0.5	135.89	0.5715	1580
1581	41812900	Vegetarian meatloaf or patty	1	1	slice	1	0.5	0.5	110.32	0.8008	1581
1582	42100100	Almonds	1	1	ounce (22 almonds)	1	0.25	0.25	163.863	1.09998	1582
1583	42100100	Almonds	2	0.25	cup	0.25	0.25	1	203.745	1.3677	1583
1584	42102000	Brazil nuts	1	0.25	cup	0.25	0.25	1	229.6	5.299	1584
1585	42104000	Cashews	1	1	ounce (18 cashews)	1	0.25	0.25	164.7135	2.40408	1585
1586	42104000	Cashews	2	0.25	cup	0.25	0.25	1	188.825	2.756	1586
1587	42105000	Roasted chestnuts	1	1	ounce (3 chestnuts)	1	0.25	0.25	69.4575	0.11624	1587
1588	42105000	Roasted chestnuts	2	0.25	cup	0.25	0.25	1	87.5875	0.14658	1588
1589	42106020	Shredded sweetened coconut	1	0.25	cup shredded	0.25	0.25	1	110.205	6.62858	1589
1590	42106020	Shredded sweetened coconut	2	0.25	cup flaked	0.25	0.25	1	87.69	5.27435	1590
1591	42106020	Shredded sweetened coconut	2	1	ounce	1	0.25	0.25	134.379	8.08259	1591
1592	42107000	Filberts (hazelnuts)	1	1	ounce (20 nuts)	2	0.25	0.25	175.84	1.2488	1592
1593	42107000	Filberts (hazelnuts)	2	0.25	cup	0.25	0.25	1	211.95	1.50525	1593
1594	42109100	Macadamia nuts	1	1	ounce (11 nuts)	1	0.25	0.25	202.986	3.38783	1594
1595	42109100	Macadamia nuts	2	0.25	cup	0.25	0.25	1	239.86	4.00325	1595
1596	42110000	Mixed nuts	1	0.25	cup	0.25	0.25	1	219.035	3.12045	1596
1597	42111000	Peanuts	1	1	ounce (32 peanuts)	1	0.25	0.25	169.8165	2.45795	1597
1598	42111000	Peanuts	2	0.25	cup	0.25	0.25	1	218.635	3.16455	1598
1599	42112000	Pecans	1	1	ounce (20 halves)	1	0.25	0.25	195.8985	1.75203	1599
1600	42112000	Pecans	2	0.25	cup	0.25	0.25	1	186.57	1.6686	1600
1601	42113000	Pine nuts (pignolias)	1	1	Tablespoon	1	0.25	0.25	57.878	0.4214	1601
1602	42113000	Pine nuts (pignolias)	2	0.25	cup	0.25	0.25	1	228.82	1.666	1602
1603	42114100	Pistachios	1	0.25	cup in shell	0.25	0.25	1	82.36	0.80475	1603
1604	42114100	Pistachios	2	0.25	cup shelled	0.25	0.25	1	181.76	1.776	1604
1605	42114100	Pistachios	2	1	ounce in shell	1	0.25	0.25	85.2	0.8325	1605
1606	42116000	Walnuts	1	1	ounce (14 halves)	1	0.25	0.25	185.409	1.73786	1606
1607	42116000	Walnuts	2	0.25	cup	0.25	0.25	1	163.5	1.5325	1607
1608	42202000	Peanut butter	1	1	Tablespoon	1	0.5	0.5	95.84	1.6048	1608
1609	42202150	Peanut butter, reduced fat	1	1	Tablespoon	1	0.5	0.5	93.6	1.332	1609
1610	42203000	Peanut butter & jelly spread	1	1	Tablespoon	1	0.5	0.5	65.44	0.6896	1610
1611	42204050	Peanut sauce	1	1	Tablespoon	1	0.5	0.5	44.1	0.7238	1611
1612	42204050	Peanut sauce	2	0.25	cup	0.25	0.25	1	178.7625	2.93397	1612
1613	42401010	Coconut milk	1	0.25	cup	0.25	0.25	1	138	12.684	1613
1614	42501000	Trail mix (nuts, seeds, dried fruit)	1	0.25	cup	0.25	0.25	1	176.05	1.5575	1614
1615	43102000	Sunflower seeds	1	1	ounce, hulled	1	0.25	0.25	161.595	1.4742	1615
1616	43102000	Sunflower seeds	2	0.25	cup, hulled	0.25	0.25	1	205.2	1.872	1616
1617	43102000	Sunflower seeds	2	0.25	cup in hulls	0.25	0.25	1	65.55	0.598	1617
1618	43103000	Sesame seeds	1	0.25	cup	0.25	0.25	1	212.625	2.52	1618
1619	43104000	Flax seed	1	0.25	cup	0.25	0.25	1	178.35	1.16	1619
1620	51101000	White bread	1	1	regular slice	1	0.5	0.5	69.16	0.2106	1620
1621	51101000	White bread	2	1	large slice	1	0.5	0.5	79.8	0.243	1621
1622	51101000	White bread	2	1	thin slice	1	0.5	0.5	53.2	0.162	1622
1623	51107010	French bread	1	1	large slice	1	0.5	0.5	175.36	0.4096	1623
1624	51107010	French bread	2	0.5	mini baguette (9 long)	0.5	0.25	0.5	208.24	0.4864	1624
1625	51107010	French bread	2	1	medium slice	1	0.5	0.5	87.68	0.2048	1625
1626	51108010	foccacia	1	1	slice	1	0.5	0.5	182.4	0.0171	1626
1627	51109100	Pita bread (white)	1	1	medium (5-1/4 across)	1	0.5	0.5	123.75	0.0765	1627
1628	51109100	Pita bread (white)	2	1	large (6-1/2 across)	1	0.25	0.25	233.75	0.1445	1628
1629	51109100	Pita bread (white)	2	1	small (4 across)	1	0.5	0.5	77	0.0476	1629
1630	51111010	Cheese bread	1	1	slice	1	0.5	0.5	70.98	0.4732	1630
1631	51113010	Cinnamon bread or toast	1	1	slice	1	0.5	0.5	69.16	0.2106	1631
1632	51121010	Garlic bread	1	1	medium slice	1	0.5	0.5	95.7	0.7134	1632
1633	51121010	Garlic bread	2	1	large slice	1	0.5	0.5	135.3	1.0086	1633
1634	51121010	Garlic bread	2	1	small slice	1	0.5	0.5	52.8	0.3936	1634
1635	51122000	Diet high-fiber bread	1	1	regular slice	1	0.5	0.5	60.03	0.1595	1635
1636	51122000	Diet high-fiber bread	2	1	thin slice	1	0.5	0.5	47.61	0.1265	1636
1637	51129010	Raisin bread	1	1	regular slice	1	0.5	0.5	71.24	0.2808	1637
1638	51133010	Sourdough bread	1	1	medium slice	1	0.5	0.5	68.5	0.16	1638
1639	51133010	Sourdough bread	2	1	large slice	1	0.5	0.5	95.9	0.224	1639
1640	51133010	Sourdough bread	2	1	small slice	1	0.5	0.5	41.1	0.096	1640
1641	51150000	White roll	1	1	pan or dinner roll	1	0.5	0.5	78.12	0.3052	1641
1642	51150000	White roll	2	1	hamburger or hot dog bun	1	0.5	0.5	119.97	0.4687	1642
1643	51157000	Sub roll	1	1	medium (8 long)	1	0.5	0.5	262.26	1.0246	1643
1644	51157000	Sub roll	2	1	large (12 long)	1	0.5	0.5	376.65	1.4715	1644
1645	51157000	Sub roll	2	1	small (5-1/2 long)	1	0.5	0.5	181.35	0.7085	1645
1646	51160110	Frosted sweet roll or cinnamon bun	1	1	medium roll	1	0.5	0.5	226.8	1.722	1646
1647	51160110	Frosted sweet roll or cinnamon bun	2	1	large roll	1	0.5	0.5	313.74	2.3821	1647
1648	51160110	Frosted sweet roll or cinnamon bun	2	1	small roll	1	0.5	0.5	147.42	1.1193	1648
1649	51160110	Frosted sweet roll or cinnamon bun	2	1	Little Debbie	1	0.5	0.5	189	1.435	1649
1650	51165060	Coffee cake	1	1	piece (1/12 of a 9 sq)	1	0.5	0.5	159.8	0.8742	1650
1651	51165060	Coffee cake	2	1	piece (1/8 of 8 cake)	1	0.5	0.5	139.4	0.7626	1651
1652	51165100	Fat-free coffee cake	1	1	one-inch slice	1	0.5	0.5	94.05	0.033	1652
1653	51165100	Fat-free coffee cake	2	0.25	coffeecake (5 by 11)	0.25	0.25	1	302.8125	0.10625	1653
1654	51166000	Croissant	1	1	medium croissant (2 oz)	1	0.5	0.5	231.42	6.6462	1654
1655	51166000	Croissant	2	1	mini croissant (1 oz)	1	0.5	0.5	113.68	3.2648	1655
1656	51166000	Croissant	2	1	small croissant (1.5 oz)	1	0.5	0.5	170.52	4.8972	1656
1657	51166000	Croissant	2	1	large croissant (2.4 oz)	1	0.5	0.5	272.02	7.8122	1657
1658	51180010	Bagel (plain)	1	1	regular (4 oz)	1	0.25	0.25	288.75	0.231	1658
1659	51180010	Bagel (plain)	2	1	large (5 oz)	1	0.25	0.25	360.25	0.2882	1659
1660	51180010	Bagel (plain)	2	1	miniature (1 oz)	1	0.5	0.5	71.5	0.0572	1660
1661	51180010	Bagel (plain)	2	1	small (2 1/2 oz)	1	0.5	0.5	189.75	0.1518	1661
1662	51180030	Raisin bagel	1	1	regular (4 oz)	1	0.25	0.25	287.7	0.2835	1662
1663	51180030	Raisin bagel	2	1	large (5 oz)	1	0.25	0.25	358.94	0.3537	1663
1664	51180030	Raisin bagel	2	1	small (2 1/2 oz)	1	0.5	0.5	189.06	0.1863	1664
1665	51182010	Bread stuffing	1	0.5	cup, moist type	0.5	0.25	0.5	176	1.63	1665
1666	51182010	Bread stuffing	2	0.5	cup, dry mix, prepared	0.5	0.25	0.5	200.64	1.8582	1666
1667	51184000	Bread stick	1	1	medium	1	1	1	41.2	0.141	1667
1668	51184000	Bread stick	2	1	large	1	1	1	82.4	0.282	1668
1669	51184000	Bread stick	2	1	small	1	1	1	20.6	0.0705	1669
1670	51184000	Bread stick	2	1	snack size	1	1	1	8.24	0.0282	1670
1671	51185000	Croutons	1	0.25	cup	0.25	0.25	1	46.5	0.525	1671
1672	51185000	Croutons	2	1	fast food package	1	0.5	0.5	46.5	0.525	1672
1673	51186010	English muffin	1	1	muffin	1	0.5	0.5	136.3	0.1508	1673
1674	51186100	English muffin with raisins	1	1	muffin	1	0.5	0.5	140.94	0.2262	1674
1675	51187000	Melba toast	1	1	piece	1	1	1	19.5	0.0225	1675
1676	51187000	Melba toast	2	1	melba round	1	1	1	11.7	0.0135	1676
1677	51201010	100% whole wheat bread	1	1	regular slice	1	0.5	0.5	68.88	0.2576	1677
1678	51201010	100% whole wheat bread	2	1	large slice	1	0.5	0.5	78.72	0.2944	1678
1679	51201010	100% whole wheat bread	2	1	thin slice	1	0.5	0.5	56.58	0.2116	1679
1680	51201150	Pita bread (100% whole wheat)	1	1	medium (5-1/4 across)	1	0.5	0.5	119.7	0.1845	1680
1681	51201150	Pita bread (100% whole wheat)	2	1	large (6-1/2 across)	1	0.25	0.25	226.1	0.3485	1681
1682	51201150	Pita bread (100% whole wheat)	2	1	small (4 across)	1	0.5	0.5	74.48	0.1148	1682
1683	51202000	Whole wheat English muffin	1	1	muffin	1	0.5	0.5	117.74	0.1914	1683
1684	51208000	100% whole wheat bagel	1	1	regular (4 oz)	1	0.25	0.25	277.2	0.252	1684
1685	51208000	100% whole wheat bagel	2	1	large (5 oz)	1	0.25	0.25	345.84	0.3144	1685
1686	51208000	100% whole wheat bagel	2	1	miniature (1 oz)	1	0.5	0.5	68.64	0.0624	1686
1687	51208000	100% whole wheat bagel	2	1	small (2 1/2 oz)	1	0.5	0.5	182.16	0.1656	1687
1688	51301010	Wheat or cracked wheat bread	1	1	regular slice	1	0.5	0.5	65	0.2225	1688
1689	51301010	Wheat or cracked wheat bread	2	1	large slice	1	0.5	0.5	78	0.267	1689
1690	51301010	Wheat or cracked wheat bread	2	1	thin slice	1	0.5	0.5	52	0.178	1690
1691	51301700	Wheat Bagel (part whole wheat)	1	1	regular (4 oz)	1	0.25	0.25	300.3	0.2205	1691
1692	51301700	Wheat Bagel (part whole wheat)	2	1	large (5 oz)	1	0.25	0.25	374.66	0.2751	1692
1693	51301700	Wheat Bagel (part whole wheat)	2	1	miniature (1 oz)	1	0.5	0.5	74.36	0.0546	1693
1694	51301700	Wheat Bagel (part whole wheat)	2	1	small (2 1/2 oz)	1	0.5	0.5	197.34	0.1449	1694
1695	51303010	Cracked wheat English muffin	1	1	muffin	1	0.5	0.5	129.34	0.1682	1695
1696	51320530	Wheat roll (part whole wheat)	1	1	pan or dinner roll	1	0.5	0.5	82.04	0.3108	1696
1697	51320530	Wheat roll (part whole wheat)	2	1	submarine bun	1	0.25	0.25	275.42	1.0434	1697
1698	51320530	Wheat roll (part whole wheat)	2	1	hamburger or hot dog bun	1	0.5	0.5	125.99	0.4773	1698
1699	51401010	Rye bread	1	1	regular slice	1	0.5	0.5	67.34	0.1638	1699
1700	51401010	Rye bread	2	1	large slice	1	0.5	0.5	82.88	0.2016	1700
1701	51401010	Rye bread	2	1	snack-size slice	1	1	1	18.13	0.0441	1701
1702	51401010	Rye bread	2	1	thin slice	1	0.5	0.5	51.8	0.126	1702
1703	51601020	Multigrain bread	1	1	regular slice	1	0.5	0.5	65	0.2106	1703
1704	51601020	Multigrain bread	2	1	large slice	1	0.5	0.5	80	0.2592	1704
1705	51601020	Multigrain bread	2	1	thin slice	1	0.5	0.5	57.5	0.1863	1705
1706	51602010	Diet high-fiber multigrain bread	1	1	regular slice	1	0.5	0.5	60.58	0.1092	1706
1707	51602010	Diet high-fiber multigrain bread	2	1	thin slice	1	0.5	0.5	53.59	0.0966	1707
1708	52102040	Refrigerated biscuit (canned dough)	1	1	biscuit	1	0.5	0.5	65.74	0.703	1708
1709	52102040	Refrigerated biscuit (canned dough)	2	1	crescent roll	1	0.5	0.5	96.88	1.036	1709
1710	52102040	Refrigerated biscuit (canned dough)	2	1	large biscuit	1	0.5	0.5	100.34	1.073	1710
1711	52102040	Refrigerated biscuit (canned dough)	2	1	extra large (Pillsbury Grands!)	1	0.5	0.5	190.3	2.035	1711
1712	52103000	Buttermilk biscuit	1	1	medium	1	0.5	0.5	185.64	1.2699	1712
1713	52103000	Buttermilk biscuit	2	1	large	1	0.5	0.5	280.28	1.9173	1713
1714	52103000	Buttermilk biscuit	2	1	small	1	0.5	0.5	127.4	0.8715	1714
1715	52204000	Cornbread stuffing	1	0.5	cup, moist type	0.5	0.25	0.5	179	1.76	1715
1716	52204000	Cornbread stuffing	2	0.5	cup, dry type	0.5	0.25	0.5	126.195	1.2408	1716
1717	52206010	Cornbread or corn muffin	1	1	medium muffin or square	1	0.5	0.5	173.85	0.7695	1717
1718	52206010	Cornbread or corn muffin	2	1	large muffin or square	1	0.5	0.5	216.55	0.9585	1718
1719	52206010	Cornbread or corn muffin	2	1	small muffin or square	1	0.5	0.5	137.25	0.6075	1719
1720	52206010	Cornbread or corn muffin	2	1	stick	1	0.5	0.5	118.95	0.5265	1720
1721	52209010	Hush puppy	1	1	hush puppy	1	1	1	74.14	0.4642	1721
1722	52209010	Hush puppy	2	0.5	cup	0.5	0.25	0.5	256.12	1.6036	1722
1723	52215100	Corn tortilla	1	1	medium (6 across)	1	0.5	0.5	53.28	0.0792	1723
1724	52215100	Corn tortilla	2	1	large (8 across)	1	0.5	0.5	95.46	0.1419	1724
1725	52215100	Corn tortilla	2	1	small (4 across)	1	1	1	23.754	0.03531	1725
1726	52215200	Flour (wheat) tortilla	1	1	medium (8 across)	1	0.5	0.5	165.75	0.8925	1726
1727	52215200	Flour (wheat) tortilla	2	1	large (10 across)	1	0.5	0.5	227.5	1.225	1727
1728	52215200	Flour (wheat) tortilla	2	1	small (6 across)	1	0.5	0.5	97.5	0.525	1728
1729	52215260	Whole wheat tortilla	1	1	medium (7 across)	1	0.5	0.5	105.2	0.088	1729
1730	52215260	Whole wheat tortilla	2	1	large (8 across)	1	0.5	0.5	136.76	0.1144	1730
1731	52215260	Whole wheat tortilla	2	1	small  (6 across)	1	0.5	0.5	71.01	0.0594	1731
1732	52215300	Taco or tostada shell	1	1	medium (5 across)	1	0.5	0.5	62.244	0.43225	1732
1733	52215300	Taco or tostada shell	2	1	large (6 1/2 across)	1	0.5	0.5	98.28	0.6825	1733
1734	52215300	Taco or tostada shell	2	1	miniature (3 across)	1	1	1	23.4	0.1625	1734
1735	52302010	Blueberry or banana muffin	1	1	medium (2 3/4” across)	1	0.5	0.5	313.01	1.582	1735
1736	52302010	Blueberry or banana muffin	2	1	large (3 1/4” across)	1	0.5	0.5	426.58	2.156	1736
1737	52302010	Blueberry or banana muffin	2	1	miniature (1 1/4” across)	1	1	1	52.63	0.266	1737
1738	52302010	Blueberry or banana muffin	2	1	small (2 1/2” across)	1	0.5	0.5	182.82	0.924	1738
1739	52302100	Fat-free berry or banana muffin	1	1	medium (2 3/4” across)	1	0.5	0.5	294.93	0.113	1739
1740	52302100	Fat-free berry or banana muffin	2	1	large (3 1/4” across)	1	0.5	0.5	401.94	0.154	1740
1741	52302100	Fat-free berry or banana muffin	2	1	miniature (1 1/4” across)	1	1	1	49.59	0.019	1741
1742	52302100	Fat-free berry or banana muffin	2	1	small (2 1/2” across)	1	0.5	0.5	172.26	0.066	1742
1743	52302500	Chocolate chip muffin	1	1	medium (2 3/4” across)	1	0.5	0.5	363.86	4.6895	1743
1744	52302500	Chocolate chip muffin	2	1	large (3 1/4” across)	1	0.5	0.5	495.88	6.391	1744
1745	52302500	Chocolate chip muffin	2	1	miniature (1 1/4” across)	1	1	1	61.18	0.7885	1745
1746	52302500	Chocolate chip muffin	2	1	small (2 1/2” across)	1	0.5	0.5	212.52	2.739	1746
1747	52304010	Bran muffin	1	1	medium (2 3/4” across)	1	0.5	0.5	333.35	1.5368	1747
1748	52304010	Bran muffin	2	1	large (3 1/4” across)	1	0.5	0.5	454.3	2.0944	1748
1749	52304010	Bran muffin	2	1	miniature (1 1/4” across)	1	1	1	56.05	0.2584	1749
1750	52304010	Bran muffin	2	1	small (2 1/2” across)	1	0.5	0.5	194.7	0.8976	1750
1751	52304040	Lowfat bran & fruit muffin	1	1	small muffin (2 oz)	1	0.5	0.5	136.3	0.4582	1751
1752	52306010	Plain muffin	1	1	medium (2 3/4” across)	1	0.5	0.5	344.65	2.9832	1752
1753	52306010	Plain muffin	2	1	large (3 1/4” across)	1	0.5	0.5	469.7	4.0656	1753
1754	52306010	Plain muffin	2	1	miniature (1 1/4” across)	1	1	1	57.95	0.5016	1754
1755	52306010	Plain muffin	2	1	small (2 1/2” across)	1	0.5	0.5	201.3	1.7424	1755
1756	52308010	Matzo pancake	1	1	pancake or fritter	1	0.5	0.5	53.55	0.69645	1756
1757	52308020	Matzo ball	1	1	ball	1	0.5	0.5	47.95	0.4284	1757
1758	52405010	Fruit bread (banana, etc.)	1	1	slice (1.4 oz)	1	0.5	0.5	132.43	0.8651	1758
1759	52407000	Zucchini bread	1	1	slice (1.4 oz)	1	0.5	0.5	149.6	1.06	1759
1760	53101100	Angel food cake	1	1	piece (1/12 of 10 cake)	1	0.5	0.5	143.07	0.0228	1760
1761	53104260	Carrot cake with icing	1	1	piece, 1-layer cake	1	0.5	0.5	326.4	3.064	1761
1762	53104260	Carrot cake with icing	2	1	piece, 2-layer cake	1	0.5	0.5	542.64	5.0939	1762
1763	53104260	Carrot cake with icing	2	1	cupcake	1	0.5	0.5	244.8	2.298	1763
1764	53104500	Cheesecake	1	1	piece	1	0.5	0.5	409.6	9.8304	1764
1765	53104500	Cheesecake	2	1	single serving cake	1	0.5	0.5	182.4	4.3776	1765
1766	53105260	Chocolate cake with icing	1	1	piece, 1-layer cake	1	0.5	0.5	245.52	2.8248	1766
1767	53105260	Chocolate cake with icing	2	1	piece, 2-layer cake	1	0.5	0.5	405.48	4.6652	1767
1768	53108200	Chocolate cupcake with icing/filling	1	1	medium cupcake (1.4 oz)	1	0.5	0.5	150.4	1.144	1768
1769	53108200	Chocolate cupcake with icing/filling	2	1	small cupcake (0.9 oz)	1	0.5	0.5	94	0.715	1769
1770	53108200	Chocolate cupcake with icing/filling	2	1	large cupcake (2.3 oz)	1	0.5	0.5	240.64	1.8304	1770
1771	53108200	Chocolate cupcake with icing/filling	2	1	Ho Ho	1	0.5	0.5	105.28	0.8008	1771
1772	53108200	Chocolate cupcake with icing/filling	2	1	Ding Dong	1	0.5	0.5	142.88	1.0868	1772
1773	53112100	Ice cream cake	1	1	piece (1/10 of loaf)	1	0.5	0.5	91.12	1.5266	1773
1774	53116000	Pound cake	1	1	piece (1/10 of loaf)	1	0.5	0.5	350.35	3.1122	1774
1775	53119000	Upside down cake (with fruit)	1	1	piece (1/12 of 8 sq)	1	0.5	0.5	275.2	2.5026	1775
1776	53119000	Upside down cake (with fruit)	2	1	piece (1/12 of 9 cake)	1	0.5	0.5	387.2	3.5211	1776
1777	53120260	White cake with icing	1	1	piece, 2-layer cake	1	0.5	0.5	415.29	2.9212	1777
1778	53120260	White cake with icing	2	1	piece, 1-layer cake	1	0.5	0.5	251.46	1.7688	1778
1779	53121260	Yellow cake with icing	1	1	piece, 2-layer cake	1	0.5	0.5	400.03	2.7686	1779
1780	53121260	Yellow cake with icing	2	1	piece, 1-layer cake	1	0.5	0.5	242.22	1.6764	1780
1781	53123070	Fruit shortcake with whipped cream	1	1	piece (3 across)	1	0.5	0.5	211.22	2.36	1781
1782	53203500	Biscotti	1	1	biscotti	1	0.5	0.5	144.96	1.1264	1782
1783	53204010	Brownie, no icing	1	1	brownie (2 square)	1	0.5	0.5	128.86	0.969	1783
1784	53204010	Brownie, no icing	2	1	Brownie Bites bag	1	0.5	0.5	234.98	1.767	1784
1785	53204100	Brownie with icing	1	1	brownie (2 square)	1	0.5	0.5	170.1	1.7808	1785
1786	53204100	Brownie with icing	2	1	Little Debbie package	1	0.5	0.5	247.05	2.5864	1786
1787	53206000	Chocolate chip cookie	1	1	medium (2 across)	1	1	1	48.1	0.748	1787
1788	53206000	Chocolate chip cookie	2	0.25	cup of bite size cookies	0.25	0.25	1	97.4025	1.5147	1788
1789	53206000	Chocolate chip cookie	2	1	big cookie (4 across)	1	0.5	0.5	192.4	2.992	1789
1790	53206000	Chocolate chip cookie	2	1	large	1	0.5	0.5	67.34	1.0472	1790
1791	53206030	Reduced-fat chocolate chip cookie	1	1	Nabisco Chips Ahoy!	1	1	1	46.866	0.535	1791
1792	53206030	Reduced-fat chocolate chip cookie	2	0.25	cup, Snackwell's	0.25	0.25	1	73.365	0.8375	1792
1793	53206030	Reduced-fat chocolate chip cookie	2	1	Keebler Chips Deluxe	1	1	1	70.08	0.8	1793
1794	53207000	Chocolate fudge cookie	1	1	medium (2 across)	1	1	1	56.29	0.5512	1794
1795	53207000	Chocolate fudge cookie	2	1	big cookie (4 across)	1	0.5	0.5	108.25	1.06	1795
1796	53207000	Chocolate fudge cookie	2	1	bite size	1	1	1	9.526	0.09328	1796
1797	53208200	Moon pie	1	1	moon pie	1	0.5	0.5	328.38	3.6816	1797
1798	53208200	Moon pie	2	1	scooter pie	1	0.5	0.5	143.14	1.6048	1798
1799	53208200	Moon pie	2	1	whoopie pie	1	0.5	0.5	239.97	2.6904	1799
1800	53208200	Moon pie	2	1	Little Debbie	1	0.5	0.5	164.19	1.8408	1800
1801	53209000	Oreo or thin mint cookie	1	1	regular Oreo	1	1	1	51.92	0.4026	1801
1802	53209000	Oreo or thin mint cookie	2	1	mini sandwich	1	1	1	13.216	0.10248	1802
1803	53209000	Oreo or thin mint cookie	2	1	chocolate-coated Oreo	1	1	1	61.36	0.4758	1803
1804	53209000	Oreo or thin mint cookie	2	1	fudge stick	1	1	1	42.48	0.3294	1804
1805	53209000	Oreo or thin mint cookie	2	1	large (4 across)	1	0.5	0.5	141.6	1.098	1805
1806	53209000	Oreo or thin mint cookie	2	1	Girl Scout thin mint	1	1	1	33.512	0.25986	1806
1807	53209020	Reduced-fat Oreo	1	1	cookie	1	1	1	46	0.1426	1807
1808	53210000	Chocolate wafer cookie	1	1	medium (1-3/4 across)	1	1	1	51.96	0.5088	1808
1809	53210000	Chocolate wafer cookie	2	0.25	cup, Teddy Grahams	0.25	0.25	1	76.8575	0.7526	1809
1810	53210000	Chocolate wafer cookie	2	1	small or thin	1	1	1	25.98	0.2544	1810
1811	53220030	Fig bar (Fig Newton)	1	1	bar (bar = 1 1/2)	1	1	1	55.68	0.1792	1811
1812	53220030	Fig bar (Fig Newton)	2	1	small pkg (two 3 bars)	1	0.5	0.5	198.36	0.6384	1812
1813	53222010	Fortune cookie	1	1	cookie	1	1	1	30.24	0.0536	1813
1814	53222020	Ice cream cone (wafer or cake, shell only)	1	1	cone	1	1	1	16.68	0.0488	1814
1815	53222020	Ice cream cone (wafer or cake, shell only)	2	1	large waffle cone	1	0.5	0.5	120.93	0.3538	1815
1816	53222100	Ice cream cone (sugar cone, shell only)	1	1	cone	1	1	1	40.2	0.057	1816
1817	53226500	Marshmallow rice krispies bar	1	1	bar (2 square)	1	0.5	0.5	112.8	0.573	1817
1818	53233010	Oatmeal raisin cookie	1	1	medium (2-5/8 across)	1	1	1	58.5	0.5876	1818
1819	53233010	Oatmeal raisin cookie	2	1	big cookie (4 across)	1	0.5	0.5	112.5	1.13	1819
1820	53233010	Oatmeal raisin cookie	2	1	Little Debbie cookie	1	0.5	0.5	171	1.7176	1820
1821	53233040	Reduced-fat oatmeal raisin cookie	1	1	cookie	1	1	1	51.57	0.0729	1821
1822	53234000	Peanut butter cookie	1	1	medium	1	1	1	76.32	0.7184	1822
1823	53234000	Peanut butter cookie	2	1	big cookie (4 across)	1	0.5	0.5	119.25	1.1225	1823
1824	53239000	Shortbread cookie	1	1	small (Lorna Doone)	1	1	1	35.14	0.4277	1824
1825	53239000	Shortbread cookie	2	1	large	1	0.5	0.5	105.42	1.2831	1825
1826	53239000	Shortbread cookie	2	1	medium (2 across)	1	0.5	0.5	75.3	0.9165	1826
1827	53239000	Shortbread cookie	2	1	Girl Scout cookie	1	1	1	31.626	0.38493	1827
1828	53241500	Sugar cookie	1	1	medium (2 5/8 across)	1	1	1	76	1.0832	1828
1829	53241500	Sugar cookie	2	1	large (3 1/2-4 across)	1	0.5	0.5	118.75	1.6925	1829
1830	53241500	Sugar cookie	2	1	small (2 across)	1	1	1	42.75	0.6093	1830
1831	53243000	Vanilla sandwich cookie	1	1	sandwich	1	1	1	53.13	0.3278	1831
1832	53247000	Vanilla wafer	1	1	medium	1	1	1	17.64	0.1536	1832
1833	53301000	Apple pie, two crust	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	355.5	5.7	1833
1834	53301500	Apple pie with crumb topping	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	363	2.745	1834
1835	53342000	Chocolate cream pie	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	380.16	6.552	1835
1836	53347000	Pumpkin pie	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	323.4	2.7412	1836
1837	53381000	Lemon meringue pie	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	367.16	2.4249	1837
1838	53385000	Pecan pie	1	1	piece (1/8 of 9 pie)	1	0.5	0.5	456	4.0356	1838
1839	53400200	Cheese blintz	1	1	blintz	1	0.5	0.5	134.4	2.0041	1839
1840	53400300	Fruit blintz	1	1	blintz	1	0.5	0.5	123.2	1.2852	1840
1841	53410800	Peach cobbler	1	0.5	cup	1	0.25	0.5	209	1.069	1841
1842	53415100	Apple crisp	1	0.5	cup	1	0.25	0.5	192	0.803	1842
1843	53420200	Cream puff or éclair	1	1	éclair	1	0.5	0.5	267.24	4.2024	1843
1844	53420200	Cream puff or éclair	2	1	cream puff	1	0.5	0.5	293.44	4.6144	1844
1845	53510000	Plain Danish pastry	1	1	medium (4-1/4 across)	1	0.5	0.5	261.95	3.692	1845
1846	53510000	Plain Danish pastry	2	1	large (7 across)	1	0.5	0.5	572.26	8.0656	1846
1847	53510000	Plain Danish pastry	2	1	small (3 across)	1	0.5	0.5	141.05	1.988	1847
1848	53510000	Plain Danish pastry	2	1	Toaster Strudel	1	0.5	0.5	213.59	3.0104	1848
1849	53510100	Fruit-filled Danish pastry	1	1	medium (4-1/4 across)	1	0.5	0.5	263.41	3.4506	1849
1850	53510100	Fruit-filled Danish pastry	2	1	large (7 across)	1	0.5	0.5	526.82	6.9012	1850
1851	53510100	Fruit-filled Danish pastry	2	1	small (3 across)	1	0.5	0.5	129.85	1.701	1851
1852	53510100	Fruit-filled Danish pastry	2	1	Toaster Strudel	1	0.5	0.5	196.63	2.5758	1852
1853	53511000	Cheese Danish pastry	1	1	medium (5 across)	1	0.5	0.5	418.88	7.6048	1853
1854	53511000	Cheese Danish pastry	2	1	large (7 across)	1	0.5	0.5	632.06	11.4751	1854
1855	53511000	Cheese Danish pastry	2	1	small (3 across)	1	0.5	0.5	205.7	3.7345	1855
1856	53511500	Fat-free cheese Danish pastry	1	1	slice	1	0.5	0.5	94.72	0.064	1856
1857	53520110	Cake doughnut	1	1	medium (3-1/4 across)	1	0.5	0.5	197.87	1.7014	1857
1858	53520110	Cake doughnut	2	1	large (3-5/8 across)	1	0.5	0.5	244.18	2.0996	1858
1859	53520110	Cake doughnut	2	1	twist (4-1/2 long)	1	0.5	0.5	218.92	1.8824	1859
1860	53520110	Cake doughnut	2	1	doughnut hole	1	1	1	58.94	0.5068	1860
1861	53520110	Cake doughnut	2	1	small (2-1/2 across)	1	0.5	0.5	105.25	0.905	1861
1862	53520140	Cake doughnut, frosted	1	1	medium(3-1/4 across)	1	0.5	0.5	251.22	4.2983	1862
1863	53520140	Cake doughnut, frosted	2	1	large (3-5/8 across)	1	0.5	0.5	327.06	5.5959	1863
1864	53520140	Cake doughnut, frosted	2	1	doughnut hole	1	1	1	94.8	1.622	1864
1865	53520140	Cake doughnut, frosted	2	1	small (2-1/2 across)	1	0.5	0.5	170.64	2.9196	1865
1866	53521100	Chocolate raised doughnut, frosted	1	1	medium (3 across)	1	0.5	0.5	274.77	4.3168	1866
1867	53521100	Chocolate raised doughnut, frosted	2	1	doughnut hole	1	1	1	89.01	1.3984	1867
1868	53521100	Chocolate raised doughnut, frosted	2	1	large (4 across)	1	0.5	0.5	394.74	6.2016	1868
1869	53521110	Raised doughnut	1	1	medium (3-3/4 across)	1	0.5	0.5	241.8	3.486	1869
1870	53521110	Raised doughnut	2	1	doughnut hole	1	1	1	52.39	0.7553	1870
1871	53521110	Raised doughnut	2	1	large (4 across)	1	0.5	0.5	302.25	4.3575	1871
1872	53521110	Raised doughnut	2	1	twist (5 long)	1	0.5	0.5	362.7	5.229	1872
1873	53521110	Raised doughnut	2	1	small (3 across)	1	0.5	0.5	124.93	1.8011	1873
1874	53521130	Raised doughnut, frosted	1	1	medium (3 across)	1	0.5	0.5	274.77	4.1961	1874
1875	53521130	Raised doughnut, frosted	2	1	large (4 across)	1	0.5	0.5	394.74	6.0282	1875
1876	53521130	Raised doughnut, frosted	2	1	doughnut hole	1	1	1	89.01	1.3593	1876
1877	53521140	Jelly doughnut	1	1	doughnut	1	0.5	0.5	221	3.146	1877
1878	53530000	Pop Tart	1	1	Pop Tart	1	0.5	0.5	204.36	0.7904	1878
1879	53540200	Breakfast bar	1	1	bar	1	0.5	0.5	139.49	0.555	1879
1880	53541200	Meal replacement bar (Slim Fast bar)	1	1	bar	1	0.5	0.5	142.8	2.4276	1880
1881	53542100	Granola bar	1	1	bar	1	0.5	0.5	129.92	3.5532	1881
1882	53542200	Lowfat granola bar	1	1	bar	1	0.5	0.5	95.28	0.1752	1882
1883	53542200	Lowfat granola bar	2	1	Nature Valley bar	1	0.5	0.5	111.16	0.2044	1883
1884	53542200	Lowfat granola bar	2	1	Kellogg's bar	1	0.5	0.5	83.37	0.1533	1884
1885	53544200	Chocolate-covered granola bar	1	1	Kudos bar	1	0.5	0.5	171.36	2.9628	1885
1886	53544200	Chocolate-covered granola bar	2	1	Quaker Oats bar	1	0.5	0.5	133.28	2.3044	1886
1887	53544200	Chocolate-covered granola bar	2	1	Sweet Success bar	1	0.5	0.5	157.08	2.7159	1887
1888	53544450	Fortified high energy bar (Powerbar)	1	1	bar	1	0.5	0.5	228.8	0.3315	1888
1889	54101010	Animal cracker	1	0.25	individual box	0.25	0.25	1	63.555	0.49305	1889
1890	54101010	Animal cracker	2	0.25	cup	0.25	0.25	1	71.36	0.5536	1890
1891	54101010	Animal cracker	2	1	cracker	1	1	1	11.15	0.0865	1891
1892	54102010	Graham cracker	1	1	large rectangle (2 squares)	1	0.5	0.5	59.22	0.2128	1892
1893	54301000	Snack cracker	1	1	round cracker (Ritz)	1	1	1	15.06	0.1134	1893
1894	54301000	Snack cracker	2	0.25	cup bite size crackers	0.25	0.25	1	66.515	0.50085	1894
1895	54301000	Snack cracker	2	1	rectangular cracker	1	1	1	20.08	0.1512	1895
1896	54301100	Reduced-fat snack cracker	1	1	round cracker (Ritz)	1	1	1	11.76	0.0135	1896
1897	54301100	Reduced-fat snack cracker	2	1	Snackwell's cracker	1	1	1	9.016	0.01035	1897
1898	54304000	Cheese cracker	1	0.25	cup bit-size crackers	0.25	0.25	1	66.6475	1.24153	1898
1899	54304000	Cheese cracker	2	1	single serving bag	1	0.5	0.5	140.84	2.6236	1899
1900	54304100	Reduced fat cheese cracker	1	0.25	cup	0.25	0.25	1	49.68	0.138	1900
1901	54307000	Matzo	1	1	matzo	1	0.5	0.5	110.6	0.0644	1901
1902	54325000	Saltine cracker	1	1	square cracker	1	1	1	13.02	0.0879	1902
1903	54325000	Saltine cracker	2	1	rectangle cracker	1	1	1	26.04	0.1758	1903
1904	54328100	Peanut butter sandwich cracker	1	1	sandwich	1	1	1	11.856	0.11784	1904
1905	54328200	Cheese sandwich cracker	1	1	sandwich	1	1	1	33.39	0.4284	1905
1906	54337000	100% whole wheat cracker (Triscuit)	1	1	cracker	1	1	1	17.72	0.1356	1906
1907	54337050	Reduced-fat Triscuit	1	1	cracker	1	1	1	15.795	0.06162	1907
1908	54338000	Wheat cracker	1	8	Wheat Thins	0.16	2	0.25	76	0.828	1908
1909	54338000	Wheat cracker	2	0.5	ounce crackers	0.15	0.25	0.5	67	0.735	1909
1910	54401020	Corn chips (Fritos)	1	1	cup	1	0.25	0.25	237.16	2.002	1910
1911	54401020	Corn chips (Fritos)	2	1	single srvg bag (bag = 1 oz)	1	0.5	0.5	150.92	1.274	1911
1912	54401020	Corn chips (Fritos)	2	1	grab-size bag (bag = 2.3 oz)	1	0.5	0.5	344.96	2.912	1912
1913	54401050	Corn puffs (Cheetos)	1	1	cup	1	0.25	0.25	193.9	2.3065	1913
1914	54401050	Corn puffs (Cheetos)	2	1	single srvg bag (bag = 1 oz)	1	0.5	0.5	155.12	1.8452	1914
1915	54401050	Corn puffs (Cheetos)	2	1	grab-size bag (bag = 2.1 oz)	1	0.5	0.5	332.4	3.954	1915
1916	54401080	Tortilla chips (Doritos, Tostitos)	1	1	cup	1	0.25	0.25	160.32	1.6064	1916
1917	54401080	Tortilla chips (Doritos, Tostitos)	2	1	single srvg bag (bag = 1 oz)	1	0.5	0.5	140.28	1.4056	1917
1918	54401080	Tortilla chips (Doritos, Tostitos)	2	1	grab-size bag (bag = 2.1 oz)	1	0.5	0.5	300.6	3.012	1918
1919	54401080	Tortilla chips (Doritos, Tostitos)	2	10	chips	1	2	0.1	150.3	1.506	1919
1920	54401150	Baked or low-fat tortilla chips	1	1	cup	1	0.25	0.25	87.15	0.1785	1920
1921	54401150	Baked or low-fat tortilla chips	2	10	chips	1	2	0.1	107.9	0.221	1921
1922	54401210	Low-fat corn puffs (cheese curls)	1	1	cup	1	0.25	0.25	103.68	0.504	1922
1923	54403000	Popcorn (oil popped, no butter)	1	1	bag, popped	1	0.25	0.25	440	4.3032	1923
1924	54403000	Popcorn (oil popped, no butter)	2	1	cup, popped	1	0.5	0.5	55	0.5379	1924
1925	54403000	Popcorn (oil popped, no butter)	2	1	single serving bag	1	0.5	0.5	140	1.3692	1925
1926	54403020	Buttered popcorn	1	1	bag, popped	1	0.25	0.25	458.48	8.272	1926
1927	54403020	Buttered popcorn	2	1	cup, popped	1	0.5	0.5	72.94	1.316	1927
1928	54403070	Low-fat popcorn	1	1	bag, popped	1	0.25	0.25	327.25	1.0934	1928
1929	54403070	Low-fat popcorn	2	1	cup, popped	1	0.5	0.5	32.3	0.10792	1929
1930	54403110	Caramel corn	1	1	cup	1	0.25	0.25	150.85	1.2635	1930
1931	54403110	Caramel corn	2	1	popcorn ball	1	0.5	0.5	215.5	1.805	1931
1932	54408010	Hard pretzels	1	0.25	cup	0.25	0.25	1	38.1	0.075	1932
1933	54408010	Hard pretzels	2	1	single serving bag (1 oz)	1	0.5	0.5	106.68	0.21	1933
1934	54408010	Hard pretzels	2	1	grab-size bag (2.1 oz)	1	0.5	0.5	228.6	0.45	1934
1935	54408020	Soft pretzel	1	1	medium (4 oz)	1	0.5	0.5	388.7	0.805	1935
1936	54408020	Soft pretzel	2	1	large ( 5 oz)	1	0.5	0.5	483.34	1.001	1936
1937	54408020	Soft pretzel	2	1	small (2 oz)	1	0.5	0.5	209.56	0.434	1937
1938	54420010	Snack Mix (pretzel, nut, cereal mix)	1	0.25	cup	0.25	0.25	1	47.475	0.37463	1938
1939	55101000	Pancakes	1	2	medium (5 across)	2	0.5	0.25	183.2	0.616	1939
1940	55101000	Pancakes	2	2	large (7 across)	2	0.5	0.25	366.4	1.232	1940
1941	55101000	Pancakes	2	2	small (3 across)	2	1	0.5	59.54	0.2002	1941
1942	55103000	Blueberry pancakes	1	2	medium (5 across)	2	0.5	0.25	152	1.496	1942
1943	55103000	Blueberry pancakes	2	2	small (3 across)	2	1	0.5	49.4	0.4862	1943
1944	55103000	Blueberry pancakes	2	2	large (7 across)	2	0.5	0.25	304	2.992	1944
1945	55105200	Whole wheat pancakes	1	2	medium (5 across)	2	0.5	0.25	183.2	1.704	1945
1946	55105200	Whole wheat pancakes	2	2	large (7 across)	2	0.5	0.25	366.4	3.408	1946
1947	55105200	Whole wheat pancakes	2	2	small (3 across)	2	1	0.5	59.54	0.5538	1947
1948	55201000	Waffle	1	1	round (4 across)	1	0.5	0.5	102.96	0.5616	1948
1949	55201000	Waffle	2	1	miniature waffle	1	1	1	22.176	0.12096	1949
1950	55201000	Waffle	2	1	large round (7 across)	1	0.5	0.5	198	1.08	1950
1951	55201000	Waffle	2	1	square (4 square)	1	0.5	0.5	97.68	0.5328	1951
1952	55202000	Bran, multigrain, or wheat waffle	1	1	round (4 across)	1	0.5	0.5	115.05	0.9165	1952
1953	55202000	Bran, multigrain, or wheat waffle	2	1	large round (7 across)	1	0.5	0.5	221.25	1.7625	1953
1954	55202000	Bran, multigrain, or wheat waffle	2	1	square (4 square)	1	0.5	0.5	109.15	0.8695	1954
1955	55211050	Lowfat waffle	1	1	square (4 square)	1	0.5	0.5	87.32	0.111	1955
1956	55301000	French toast	1	1	regular slice (2 oz)	1	0.5	0.5	157.95	1.573	1956
1957	55301000	French toast	2	1	thick slice (3 oz)	1	0.5	0.5	177.39	1.7666	1957
1958	55301050	French toast sticks	1	1	fast food order (4 oz)	1	0.5	0.5	385.84	3.5404	1958
1959	55301050	French toast sticks	2	1	stick	1	1	1	76.44	0.7014	1959
1960	56101010	Spaghetti, macaroni, or pasta (plain)	1	1	cup, cooked	1	0.5	0.5	196	0.126	1960
1961	56101010	Spaghetti, macaroni, or pasta (plain)	2	1	jumbo shell	1	1	1	32.2	0.0207	1961
1962	56101010	Spaghetti, macaroni, or pasta (plain)	2	1	lasagne noodle	1	0.5	0.5	77	0.0495	1962
1963	56101010	Spaghetti, macaroni, or pasta (plain)	2	2	ounces dry, cooked yield	2	0.5	0.25	218.4	0.1404	1963
1964	56112010	Egg noodles (no fat added)	1	1	cup, cooked	1	0.25	0.25	211.2	0.48	1964
1965	56112030	Egg noodles with butter or oil	1	1	cup, cooked	1	0.25	0.25	252.45	1.056	1965
1966	56112030	Egg noodles with butter or oil	2	1	instant noodle container	1	0.5	0.5	302.94	1.2672	1966
1967	56117000	Mung bean noodles	1	1	cup, cooked	1	0.25	0.25	159.6	0.0095	1967
1968	56117090	Chow fun rice noodles	1	1	cup, cooked	1	0.25	0.25	171.2	0.176	1968
1969	56133000	Whole wheat spaghetti or pasta (plain)	1	1	cup, cooked	1	0.5	0.5	172.2	0.126	1969
1970	56200400	Cooked barley	1	0.5	cup	0.5	0.25	0.5	98.82	0.0729	1970
1971	56201010	Grits, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	55.66	0.0121	1971
1972	56201020	Grits, with butter	1	0.5	cup, cooked	0.5	0.25	0.5	88.92	0.75335	1972
1973	56203010	Oatmeal (plain)	1	0.5	cup, cooked	0.5	0.25	0.5	72.54	0.2106	1973
1974	56203030	Oatmeal (flavored)	1	0.5	cup, cooked	0.5	0.25	0.5	106.47	0.2457	1974
1975	56203030	Oatmeal (flavored)	2	1	packet, cooked	1	0.5	0.5	132.86	0.3066	1975
1976	56205010	White rice, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	101.91	0.0553	1976
1977	56205110	Brown rice, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	107.25	0.16575	1977
1978	56205210	Wild rice, no fat added	1	0.5	cup, cooked	0.5	0.25	0.5	65	0.0325	1978
1979	56205420	White rice, with butter or oil	1	0.5	cup, cooked	0.5	0.25	0.5	118.175	0.4075	1979
1980	56207010	Cream of wheat	1	0.5	cup, cooked	0.5	0.25	0.5	55.22	0.0251	1980
1981	57101000	All-Bran cereal	1	1	cup	1	0.25	0.25	156	0.324	1981
1982	57101000	All-Bran cereal	2	1	single serving box	1	0.5	0.5	91	0.189	1982
1983	57104000	Apple Jacks cereal	1	1	cup	1	0.25	0.25	117	0.12	1983
1984	57104000	Apple Jacks cereal	2	1	single serving box	1	0.5	0.5	105.3	0.108	1984
1985	57117000	Cap'n Crunch cereal	1	1	cup	1	0.25	0.25	144.36	0.54	1985
1986	57123000	Cheerios	1	1	cup	1	0.25	0.25	110.7	0.36	1986
1987	57123000	Cheerios	2	1	single serving box	1	0.5	0.5	77.49	0.252	1987
1988	57124000	Chex cereal (corn, wheat, or bran)	1	1	cup	1	0.25	0.25	143.13	0.1365	1988
1989	57125000	Cinnamon Toast Crunch cereal	1	1	cup	1	0.25	0.25	160.36	0.684	1989
1990	57125000	Cinnamon Toast Crunch cereal	2	1	single serving box	1	0.5	0.5	139.26	0.594	1990
1991	57128000	Cocoa Puffs cereal	1	1	cup	1	0.25	0.25	117	0.21	1991
1992	57135000	Corn flakes cereal	1	1	cup	1	0.25	0.25	90.25	0.0475	1992
1993	57135000	Corn flakes cereal	2	1	single serving box	1	0.5	0.5	75.81	0.0399	1993
1994	57206700	Fiber One cereal	1	1	cup	1	0.25	0.25	118.2	0.24	1994
1995	57207000	Bran flakes cereal	1	1	cup	1	0.25	0.25	144	0.18	1995
1996	57213000	Froot Loops cereal	1	1	cup	1	0.25	0.25	110.04	0.4256	1996
1997	57213000	Froot Loops cereal	2	1	single serving box	1	0.5	0.5	106.11	0.4104	1997
1998	57214000	Frosted Mini-Wheats cereal	1	1	cup	1	0.25	0.25	204	0.216	1998
1999	57214000	Frosted Mini-Wheats cereal	2	1	single serving box	1	0.5	0.5	119	0.126	1999
2000	57223000	Fruity Pebbles cereal	1	1	cup	1	0.25	0.25	144.36	0.324	2000
2001	57224000	Golden Grahams cereal	1	1	cup	1	0.25	0.25	148.8	0.24	2001
2002	57228000	Granola cereal (homemade)	1	0.5	cup	0.5	0.25	0.5	298.9	2.7694	2002
2003	57229000	Low-fat granola cereal	1	0.5	cup	0.5	0.25	0.5	209	0.605	2003
2004	57230000	Grape-Nuts cereal	1	0.25	cup	0.25	0.25	1	97.8275	0.109	2004
2005	57237100	Honey Bunches of Oats cereal	1	1	cup	1	0.25	0.25	157.6	0.32	2005
2006	57238000	Honeycomb cereal	1	1	cup	1	0.25	0.25	86.9	0.132	2006
2007	57241000	Honey Nut Cheerios	1	1	cup	1	0.25	0.25	111.9	0.24	2007
2008	57241000	Honey Nut Cheerios	2	1	single serving box	1	0.5	0.5	104.44	0.224	2008
2009	57243000	Honey Smacks cereal	1	1	cup	1	0.25	0.25	150.93	0.117	2009
2010	57301500	Kashi, puffed	1	1	cup	1	0.25	0.25	87.6	0.0792	2010
2011	57303100	Kix cereal	1	1	cup	1	0.25	0.25	82.94	0.11	2011
2012	57303100	Kix cereal	2	1	single serving box	1	0.5	0.5	67.86	0.09	2012
2013	57304100	Life cereal (plain & cinnamon)	1	1	cup	1	0.25	0.25	165	0.3564	2013
2014	57305100	Lucky Charms cereal	1	1	cup	1	0.25	0.25	114	0.24	2014
\.


--
-- TOC entry 3606 (class 0 OID 24745)
-- Dependencies: 211
-- Data for Name: food_nutrition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food_nutrition (food_id, food_code, grains, whole_grains, vegetables, orange_vegetables, drkgreen_vegetables, starchy_vegetables, other_vegetables, fruits, milk, meats, soy, drybeans_peas, oils, solid_fats, added_sugars, alcohol, food_nutrition_id) FROM stdin;
1	12350000	0.04799	0	0.0407	0	0	0	0.0407	0	0	0	0	0	0	105.6485	1.57001	0	1
2	13110100	0	0	0	0	0	0	0	0	0.29393	0	0	0	0	130.99968	95.20488	0	2
3	13110120	0	0	0	0	0	0	0	0	0.2516	0.0962	0	0	0	213.06672	96.1034	0	3
4	13110200	0	0	0	0	0	0	0	0	0.38233	0	0	0	0	170.39808	123.83793	0	4
5	13120100	0	0	0	0	0	0	0	0	0.09744	0	0	0	0	112.32144	45.54761	0	5
6	13120100	0	0	0	0	0	0	0	0	0.16008	0	0	0	0	184.52808	74.82821	0	6
7	13120500	0.53454	0	0	0	0	0	0	0	0.09912	0	0	0	0	49.46265	48.40002	0	7
8	13130300	0	0	0	0	0	0	0	0	0.7598	0	0	0	0	45.60372	70.88353	0	8
9	13130600	0	0	0	0	0	0	0	0	0.7175	0	0	0	0	39.6585	0	0	9
10	13135000	0.5436	0	0	0	0	0	0	0	0.2652	0	0	0	0	21.2112	41.22339	0	10
11	13140100	0	0	0	0	0	0	0	0	0.25648	0	0	0	0	84.15288	37.81981	0	11
12	13140900	0	0	0	0	0	0	0	0	0.40661	0	0	0	0	27.86337	37.92188	0	12
13	13150000	0	0	0	0	0	0	0	0.11387	0.21423	0	0	0	0.04932	18.20376	151.04761	0	13
14	13150000	0	0	0	0	0	0	0	0.03894	0.07326	0	0	0	0.01687	6.22512	51.65359	0	14
15	13160150	0.04176	0	0	0	0	0	0	0	0.43344	0.08928	0	0	0.352	7.9704	73.98561	0	15
16	14104010	0	0	0	0	0	0	0	0	0.66444	0	0	0	0	83.06347	0	0	16
17	14104010	0	0	0	0	0	0	0	0	0.39984	0	0	0	0	49.9851	0	0	17
18	14104400	0	0	0	0	0	0	0	0	0.6615	0	0	0	0	70.62862	0	0	18
19	14104400	0	0	0	0	0	0	0	0	0.67032	0	0	0	0	71.57034	0	0	19
20	14107030	0	0	0	0	0	0	0	0	0.66679	0	0	0	0	49.90734	0	0	20
21	14109030	0	0	0	0	0	0	0	0	0.95229	0	0	0	0	10.67985	0	0	21
22	14109030	0	0	0	0	0	0	0	0	0.52905	0	0	0	0	5.93325	0	0	22
23	14201010	0	0	0	0	0	0	0	0	0.20055	0	0	0	0	42.2604	0	0	23
24	14201500	0	0	0	0	0	0	0	0	0.5	0	0	0	0	56.93855	0	0	24
25	14204010	0	0	0	0	0	0	0	0	0.24973	0	0	0	0	9.92592	0	0	25
26	14301010	0	0	0	0	0	0	0	0	0	0	0	0	0	45.50535	0	0	26
27	14301010	0	0	0	0	0	0	0	0	0	0	0	0	0	31.383	0	0	27
28	14301010	0	0	0	0	0	0	0	0	0	0	0	0	0	88.9708	0	0	28
29	14303010	0	0	0	0	0	0	0	0	0	0	0	0	0	23.76	0	0	29
30	14303010	0	0	0	0	0	0	0	0	0	0	0	0	0	15.84	0	0	30
31	14410200	0	0	0	0	0	0	0	0	0.37044	0	0	0	0	48.56922	0	0	31
32	14410200	0	0	0	0	0	0	0	0	0.49833	0	0	0	0	65.33717	0	0	32
33	14410200	0	0	0	0	0	0	0	0	0.3087	0	0	0	0	40.47435	0	0	33
34	14410350	0	0	0	0	0	0	0	0	0.49392	0	0	0	0	0.6237	0	0	34
35	14410350	0	0	0	0	0	0	0	0	0.66444	0	0	0	0	0.83903	0	0	35
36	14410350	0	0	0	0	0	0	0	0	0.38102	0	0	0	0	0.48114	0	0	36
37	14420100	0	0	0	0	0	0	0	0	0.60976	0	0	0	0	65.05101	4.11272	0	37
38	14420100	0	0	0	0	0	0	0	0	1.07604	0	0	0	0	114.7959	7.25774	0	38
39	14620100	0	0	0.0036	0	0	0	0.0036	0	0	0.0066	0	0	0.49133	76.2912	0.28282	0	39
40	14650100	0.12636	0	0	0	0	0	0	0	0.47871	0	0	0	0	70.91348	0	0	40
41	14650150	0.11178	0	0.00061	0	0	0	0.00061	0	0.5589	0.00182	0	0	0	39.96196	0.3061	0	41
42	14650160	0	0	0	0	0	0	0	0	0.45502	0	0	0	0	223.76291	0	0	42
43	14660200	1.17744	0	0	0	0	0	0	0	2.60568	0.22044	0.00528	0	0.00381	273.537	4.39833	0	43
44	21101120	0	0	0	0	0	0	0	0	0	6.74832	0	0	0	123.5628	0	0	44
45	21101120	0	0	0	0	0	0	0	0	0	8.99776	0	0	0	164.7504	0	0	45
46	21101120	0	0	0	0	0	0	0	0	0	5.06124	0	0	0	92.6721	0	0	46
47	21101120	0	0	0	0	0	0	0	0	0	3.04336	0	0	0	55.7244	0	0	47
48	21101130	0	0	0	0	0	0	0	0	0	5.50212	0	0	0	5.967	0	0	48
49	21101130	0	0	0	0	0	0	0	0	0	7.37143	0	0	0	7.99425	0	0	49
50	21101130	0	0	0	0	0	0	0	0	0	4.12659	0	0	0	4.47525	0	0	50
51	21101130	0	0	0	0	0	0	0	0	0	4	0	0	0	3.519	0	0	51
52	21102120	0	0	0	0	0	0	0	0	0	6.04248	0	0	0	210.24036	0	0	52
53	21102120	0	0	0	0	0	0	0	0	0	8.05664	0	0	0	280.32048	0	0	53
54	21102120	0	0	0	0	0	0	0	0	0	4.53186	0	0	0	157.68027	0	0	54
55	21102120	0	0	0	0	0	0	0	0	0	2.72504	0	0	0	94.81428	0	0	55
56	21102130	0	0	0	0	0	0	0	0	0	5.3118	0	0	0	38.52576	0	0	56
57	21102130	0	0	0	0	0	0	0	0	0	7.11645	0	0	0	51.61464	0	0	57
58	21102130	0	0	0	0	0	0	0	0	0	3.98385	0	0	0	28.89432	0	0	58
59	21102130	0	0	0	0	0	0	0	0	0	4	0	0	0	22.72032	0	0	59
60	21103120	1.97559	0	0	0	0	0	0	0	0.04617	5.32899	0.00972	0	2.19672	242.86635	7.38598	0	60
61	21103120	2.63412	0	0	0	0	0	0	0	0.06156	7.10532	0.01296	0	2.92896	323.8218	9.84797	0	61
62	21103120	1.47966	0	0	0	0	0	0	0	0.03458	3.99126	0.00728	0	1.64528	181.8999	5.53189	0	62
63	21103120	0.92194	0	0	0	0	0	0	0	0.02155	2.48686	0.00454	0	1.02514	113.33763	3.44679	0	63
64	21103130	1.51032	0	0	0	0	0	0	0	0.03534	4.82856	0.00744	0	1.6802	53.85258	5.65347	0	64
65	21103130	2.01376	0	0	0	0	0	0	0	0.04712	6.43808	0.00992	0	2.24027	71.80344	7.53796	0	65
66	21103130	1.1368	0	0	0	0	0	0	0	0.0266	3.6344	0.0056	0	1.26467	40.5342	4.2553	0	66
67	21103130	0.87696	0	0	0	0	0	0	0	0.02052	2.80368	0.00432	0	0.9756	31.26924	3.28266	0	67
68	21304220	0.06375	0	0.00459	0	0	0	0.00459	0	0	0.93534	0	0	0.00057	28.05408	3.76345	0	68
69	21304220	0.0875	0	0.0063	0	0	0	0.0063	0	0	1.2838	0	0	0.00078	38.5056	5.16552	0	69
70	21304220	0.0275	0	0.00198	0	0	0	0.00198	0	0	0.40348	0	0	0.00024	12.10176	1.62345	0	70
71	21401110	0	0	0	0	0	0	0	0	0	1.34988	0	0	0	36.83232	0	0	71
72	21401110	0	0	0	0	0	0	0	0	0	2.02482	0	0	0	55.24848	0	0	72
73	21401110	0	0	0	0	0	0	0	0	0	0.67494	0	0	0	18.41616	0	0	73
74	21401110	0	0	0	0	0	0	0	0	0	3.64468	0	0	0	99.44726	0	0	74
75	21401120	0	0	0	0	0	0	0	0	0	1.48134	0	0	0	6.37686	0	0	75
76	21401120	0	0	0	0	0	0	0	0	0	2.22201	0	0	0	9.56529	0	0	76
77	21401120	0	0	0	0	0	0	0	0	0	0.74067	0	0	0	3.18843	0	0	77
78	21401120	0	0	0	0	0	0	0	0	0	4	0	0	0	17.21752	0	0	78
79	21417120	0	0	0	0	0	0	0	0	0	1.4448	0	0	0	9.53316	0	0	79
80	21417120	0	0	0	0	0	0	0	0	0	2.1672	0	0	0	14.29974	0	0	80
81	21417120	0	0	0	0	0	0	0	0	0	0.7224	0	0	0	4.76658	0	0	81
82	21417120	0	0	0	0	0	0	0	0	0	4	0	0	0	20.88216	0	0	82
83	21501000	0	0	0	0	0	0	0	0	0	2.6911	0	0	0	79.0704	0	0	83
84	21501000	0	0	0	0	0	0	0	0	0	0.88648	0	0	0	26.04672	0	0	84
85	21501000	0	0	0	0	0	0	0	0	0	0.66486	0	0	0	19.53504	0	0	85
86	21501000	0	0	0	0	0	0	0	0	0	3.57758	0	0	0	105.11712	0	0	86
87	21501000	0	0	0	0	0	0	0	0	0	0.88648	0	0	0	26.04672	0	0	87
88	21501000	0	0	0	0	0	0	0	0	0	2.15288	0	0	0	63.25632	0	0	88
89	21501200	0	0	0	0	0	0	0	0	0	2.81688	0	0	0	73.91736	0	0	89
90	13160410	0.72199	0	0	0	0	0	0	0	0.35894	0.2329	0	0	0	11.61486	171.70839	0	90
91	13210250	0.4901	0	0	0	0	0	0	0	0.4498	0	0	0	0.00087	10.0269	28.58916	0	91
92	13210280	0.24665	0	0	0	0	0	0	0	0.45023	0	0	0	0	19.00341	57.78004	0	92
93	13220220	0.54125	0	0	0	0	0	0	0	0.47375	0	0	0	0.00625	1.72125	0	0	93
94	13411000	0.23438	0	0	0	0	0	0	0	0.24	0	0	0	0	58.13437	0	0	94
95	13412000	0.195	0	0	0	0	0	0	0	0.24938	0	0	0	0	56.5425	0	0	95
96	14104010	0	0	0	0	0	0	0	0	0.66679	0	0	0	0	83.35751	0	0	96
97	14640100	2.036	0	0	0	0	0	0	0	0.49	0	0	0	0.27	125.974	8.22	0	97
98	7258	0	0	0	0	0	0	0	0	0	0.9884	0	0	0	0	0	0	98
99	92101000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	99
100	92101900	0	0	0	0	0	0	0	0	1.07304	0	0	0	0	45.31248	0	0	100
101	92101900	0	0	0	0	0	0	0	0	0.53652	0	0	0	0	22.65624	0	0	101
102	92101900	0	0	0	0	0	0	0	0	1.27555	0	0	0	0	53.8641	0	0	102
103	92101900	0	0	0	0	0	0	0	0	0.80478	0	0	0	0	33.98436	0	0	103
104	92161000	0	0	0	0	0	0	0	0	1.01088	0	0	0	0	70.37766	0	0	104
105	92161000	0	0	0	0	0	0	0	0	1.20224	0	0	0	0	83.70018	0	0	105
106	92161000	0	0	0	0	0	0	0	0	0.4992	0	0	0	0	34.7544	0	0	106
107	92161000	0	0	0	0	0	0	0	0	0.7592	0	0	0	0	52.85565	0	0	107
108	7259	0	0	0	0	0	0	0	0	0	0.9884	0	0	0	0	0	0	108
109	16126	0	0	0	0	0	0	0	0	0	0	0.99981	0	0	0	0	0	109
110	16126	0	0	0	0	0	0	0	0	0	0	1.28547	0	0	0	0	0	110
111	16129	0	0	0	0	0	0	0	0	0	0	0.98394	0	1.65609	0	0	0	111
112	16129	0	0	0	0	0	0	0	0	0	0	0.20631	0	0.34724	0	0	0	112
113	23559	0	0	0	0	0	0	0	0	0	3.6006	0	0	0	0	0	0	113
114	23559	0	0	0	0	0	0	0	0	0	0.9884	0	0	0	0	0	0	114
115	23559	0	0	0	0	0	0	0	0	0	0.9178	0	0	0	0	0	0	115
116	23559	0	0	0	0	0	0	0	0	0	4.7302	0	0	0	0	0	0	116
117	23559	0	0	0	0	0	0	0	0	0	0.9884	0	0	0	0	0	0	117
118	23559	0	0	0	0	0	0	0	0	0	2.8593	0	0	0	0	0	0	118
119	23564	0	0	0	0	0	0	0	0	0	3.43827	0	0	0	13.74813	0	0	119
120	23564	0	0	0	0	0	0	0	0	0	0.97244	0	0	0	3.88836	0	0	120
121	23564	0	0	0	0	0	0	0	0	0	0.86825	0	0	0	3.47175	0	0	121
122	23564	0	0	0	0	0	0	0	0	0	4.54963	0	0	0	18.19197	0	0	122
123	23564	0	0	0	0	0	0	0	0	0	0.97244	0	0	0	3.88836	0	0	123
124	23564	0	0	0	0	0	0	0	0	0	2.74367	0	0	0	10.97073	0	0	124
125	11111000	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	69.56928	0	0	125
126	11111000	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	69.56928	0	0	126
127	11112110	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	41.46048	0	0	127
128	11112110	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	41.46048	0	0	128
129	11112210	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	19.50048	0	0	129
130	11112210	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	19.50048	0	0	130
131	11113000	0	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	131
132	11113000	0	0	0	0	0	0	0	0	0.99878	0	0	0	0	0	0	0	132
133	11114300	0	0	0	0	0	0	0	0	0.99308	0	0	0	0	19.50048	0	0	133
134	11114300	0	0	0	0	0	0	0	0	0.99308	0	0	0	0	19.50048	0	0	134
135	11114320	0	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	135
136	11114320	0	0	0	0	0	0	0	0	0.99878	0	0	0	0	0	0	0	136
137	11114330	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	41.46048	0	0	137
138	11114330	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	41.46048	0	0	138
139	11114350	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	69.56928	0	0	139
140	11114350	0	0	0	0	0	0	0	0	1.0004	0	0	0	0	69.56928	0	0	140
141	11115000	0	0	0	0	0	0	0	0	0.9996	0	0	0	0	17.5959	0	0	141
142	11115000	0	0	0	0	0	0	0	0	0.99878	0	0	0	0	17.58154	0	0	142
143	11121300	0	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	143
144	11121300	0	0	0	0	0	0	0	0	0.99878	0	0	0	0	0	0	0	144
145	11220000	0	0	0	0	0	0	0	0	0.33966	0	0	0	0	59.28674	142.93239	0	145
146	11320000	0	0	0	0	0	0	0	0	0	0	0.9996	0	0.54771	0	0	0	146
147	11320000	0	0	0	0	0	0	0	0	0	0	0.99878	0	0.54726	0	0	0	147
148	11321000	0	0	0	0	0	0	0	0	0	0	1.0008	0	0.38933	3.9096	37.44922	0	148
149	11411100	0	0	0	0	0	0	0	0	0.92616	0	0	0	0	64.66095	0	0	149
150	11411300	0	0	0	0	0	0	0	0	0.92616	0	0	0	0	1.40967	0	0	150
151	11421000	0	0	0	0	0	0	0	0	0.92616	0	0	0	0	63.1287	72.09592	0	151
152	11422000	0	0	0	0	0	0	0	0	0.92616	0	0	0	0	23.67837	73.53488	0	152
153	11424000	0.00908	0	0	0	0	0	0	0	0.92616	0	0	0	0.0005	2.02257	0	0	153
154	11431000	0	0	0	0	0	0	0	0.0578	0.6936	0	0	0	0	48.2715	91.2402	0	154
155	11432000	0	0	0	0	0	0	0	0.0578	0.6936	0	0	0	0	15.0399	93.28496	0	155
156	11433500	0	0	0	0	0	0	0	0.1921	0.7055	0	0	0	0	0.765	0	0	156
157	11460150	0	0	0	0	0	0	0	0	0.874	0	0	0	0	24.894	100.64477	0	157
158	11460400	1.52892	0	0	0	0	0	0	0	0.86118	0	0	0	0.00744	11.53386	0	0	158
159	11460440	0	0	0	0	0	0	0	0	0.609	0	0	0	0	55.2798	110.55418	0	159
160	11511100	0	0	0	0	0	0	0	0	1	0	0	0	0	74.565	48.31502	0	160
161	11511200	0	0	0	0	0	0	0	0	1	0	0	0	0	43.29	45.99882	0	161
162	11511300	0	0	0	0	0	0	0	0	1	0	0	0	0	4.6575	52.25661	0	162
163	11511400	0	0	0	0	0	0	0	0	1	0	0	0	0	20.79	45.5112	0	163
164	11514100	0	0	0	0	0	0	0	0	0.18746	0	0	0	0	9.86328	65.49322	0	164
165	11514300	0.25807	0	0	0	0	0	0	0	0.25019	0	0	0	0.0591	1.43613	0	0	165
166	11526000	0.1833	0	0	0	0	0	0	0	0.94705	0	0	0	0.01149	42.40575	22.11601	0	166
167	11541110	0	0	0	0	0	0	0	0	0.7641	0	0	0	0	124.70112	158.37394	0	167
168	11541500	0	0	0	0	0	0	0	0	0.5157	0	0	0	0	13.33944	110.89324	0	168
169	11541500	0	0	0	0	0	0	0	0	0.945	0	0	0	0	24.444	203.20751	0	169
170	11541500	0	0	0	0	0	0	0	0	0.6858	0	0	0	0	17.73936	147.47059	0	170
171	11553000	0	0	0	0	0	0	0	1.41174	0.56672	0	0	0	0.02024	60.47712	206.76453	0	171
172	11553000	0	0	0	0	0	0	0	0.56358	0.22624	0	0	0	0.00808	24.14304	82.54236	0	172
173	11560000	0	0	0	0	0	0	0	0	0.04384	0	0	0	0.00061	9.76536	50.81553	0	173
174	11560000	0	0	0	0	0	0	0	0	0.03904	0	0	0	0.00054	8.69616	45.25179	0	174
175	11623000	0	0	0	0	0	0	0	0	0.93	0	0	0	0.68999	1.62936	104.72517	0	175
176	11812000	0	0	0	0	0	0	0	0	0.75	0	0	0	0	2.6622	0	0	176
177	11830970	0.03825	0	0	0	0	0	0	0	0.1563	0	0.0264	0	0	0.01755	23.25704	0	177
178	11830970	0.08415	0	0	0	0	0	0	0	0.34386	0	0.05808	0	0	0.03861	51.16548	0	178
179	12110100	0	0	0	0	0	0	0	0	0	0	0	0	0	52.137	0	0	179
180	12120100	0	0	0	0	0	0	0	0	0	0	0	0	0	31.257	0	0	180
181	12120100	0	0	0	0	0	0	0	0	0	0	0	0	0	15.525	0	0	181
182	12140000	0	0	0	0	0	0	0	0	0	0	0	0	0	93.20378	6.69242	0	182
183	12210200	0	0	0	0	0	0	0	0	0	0	0	0	0	26.919	13.22425	0	183
184	12210250	0	0	0	0	0	0	0	0	0	0	0	0	0	9.45	10.57648	0	184
185	12210400	0	0	0	0	0	0	0	0	0	0	0	0	0	9.5796	6.37758	0	185
186	12310100	0	0	0	0	0	0	0	0	0	0	0	0	0	56.592	0	0	186
187	12310350	0	0	0	0	0	0	0	0	0	0	0	0	0	30.528	0	0	187
188	21501200	0	0	0	0	0	0	0	0	0	0.89628	0	0	0	23.51916	0	0	188
189	21501200	0	0	0	0	0	0	0	0	0	0.70422	0	0	0	18.47934	0	0	189
190	21501200	0	0	0	0	0	0	0	0	0	3.77718	0	0	0	99.11646	0	0	190
191	21501200	0	0	0	0	0	0	0	0	0	0.89628	0	0	0	23.51916	0	0	191
192	21501200	0	0	0	0	0	0	0	0	0	2.27271	0	0	0	59.63787	0	0	192
193	21501300	0	0	0	0	0	0	0	0	0	3.15936	0	0	0	58.54464	0	0	193
194	21501300	0	0	0	0	0	0	0	0	0	0.92148	0	0	0	17.07552	0	0	194
195	21501300	0	0	0	0	0	0	0	0	0	0.78984	0	0	0	14.63616	0	0	195
196	21501300	0	0	0	0	0	0	0	0	0	4.21248	0	0	0	78.05952	0	0	196
197	21501300	0	0	0	0	0	0	0	0	0	0.92148	0	0	0	17.07552	0	0	197
198	21501300	0	0	0	0	0	0	0	0	0	2.53407	0	0	0	46.95768	0	0	198
199	21602100	0	0	0	0	0	0	0	0	0	0.27773	0	0	0.00085	17.47699	3.34702	0	199
200	21602100	0	0	0	0	0	0	0	0	0	0.65093	0	0	0.002	40.9617	7.84459	0	200
201	21603000	0	0	0	0	0	0	0	0	0	0.77084	0	0	0	55.2762	0	0	201
202	22101110	0	0	0	0	0	0	0	0	0	3.0159	0	0	0	41.0427	0	0	202
203	22101110	0	0	0	0	0	0	0	0	0	4.38981	0	0	0	59.73993	0	0	203
204	22101110	0	0	0	0	0	0	0	0	0	1.64199	0	0	0	22.34547	0	0	204
205	22101110	0	0	0	0	0	0	0	0	0	3.80003	0	0	0	51.7138	0	0	205
206	22101120	0	0	0	0	0	0	0	0	0	2.9484	0	0	0	4.3092	0	0	206
207	22101120	0	0	0	0	0	0	0	0	0	4.5279	0	0	0	6.6177	0	0	207
208	22101120	0	0	0	0	0	0	0	0	0	1.6146	0	0	0	2.3598	0	0	208
209	22101120	0	0	0	0	0	0	0	0	0	4	0	0	0	5.81742	0	0	209
210	22101210	0	0	0	0	0	0	0	0	0	2.54016	0	0	0	74.70792	0	0	210
211	22101210	0	0	0	0	0	0	0	0	0	3.66912	0	0	0	107.91144	0	0	211
212	22101210	0	0	0	0	0	0	0	0	0	1.37984	0	0	0	40.58208	0	0	212
213	22101210	0	0	0	0	0	0	0	0	0	3.55622	0	0	0	104.59109	0	0	213
214	92302000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	214
215	92302000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	215
216	92302000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	216
217	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	217
218	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	218
219	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	219
220	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	220
221	92510610	0	0	0	0	0	0	0	0.10664	0	0	0	0	0	0	96.98567	0	221
222	92510610	0	0	0	0	0	0	0	0.08987	0	0	0	0	0	0	81.73389	0	222
223	92510610	0	0	0	0	0	0	0	0.11266	0	0	0	0	0	0	102.46066	0	223
224	92510610	0	0	0	0	0	0	0	0.05633	0	0	0	0	0	0	51.23033	0	224
225	92510610	0	0	0	0	0	0	0	0.21328	0	0	0	0	0	0	193.97134	0	225
226	92511010	0	0	0	0	0	0	0	0.11408	0	0	0	0	0	0	93.23684	0	226
227	92511010	0	0	0	0	0	0	0	0.22816	0	0	0	0	0	0	186.47369	0	227
228	92520410	0	0	0	0	0	0	0	0.4296	0	0	0	0	0	0	0.03901	0	228
229	92530510	0	0	0	0	0	0	0	0.77418	0	0	0	0	0.01349	0	117.9808	0	229
230	92560000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	50.01031	0	230
231	92570100	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	231
232	93101000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	147.6	232
233	93101000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	196.8	233
234	93102000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	100.8	234
235	93102000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	134.4	235
236	93201000	0	0	0	0	0	0	0	0	0	0	0	0	0.01333	0	17.98668	52.8	236
237	93201000	0	0	0	0	0	0	0	0	0	0	0	0	0.02	0	26.98001	79	237
238	93301030	0	0	0.34914	0	0	0	0.34914	0.05796	0	0	0	0	0	0	0	98.532	238
239	93301030	0	0	0.6072	0	0	0	0.6072	0.1008	0	0	0	0	0	0	0	171.36	239
240	93301060	0	0	0	0	0	0	0	0.0588	0	0	0	0	0	0	53.3505	104.37	240
241	93301060	0	0	0	0	0	0	0	0.0672	0	0	0	0	0	0	60.972	119.28	241
242	93301090	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	138.243	242
243	93301090	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	263.32	243
244	93301100	0	0	0	0	0	0	0	0.15819	0	0	0	0	0.01389	0	60.12325	325.3698	244
245	93301100	0	0	0	0	0	0	0	0.10044	0	0	0	0	0.00882	0	38.17349	206.584	245
246	93301110	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	129.514	246
247	93301110	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	259.028	247
248	93301190	0	0	0	0	0	0	0	0	0	0	0	0	0	0	98.59676	166.32	248
249	93301190	0	0	0	0	0	0	0	0	0	0	0	0	0	0	65.73118	110.88	249
250	93301200	0	0	0	0	0	0	0	0.4248	0	1.7736	0	0	0.4384	0	146.48105	166.32	250
251	93301200	0	0	0	0	0	0	0	0.4248	0	1.7736	0	0	0.4384	0	146.48105	166.32	251
252	93301450	0	0	0	0	0	0	0	0	0	0	0	0	0	87.35119	22.65648	92.9	252
253	93401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	113.575	253
254	93401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	189.42	254
255	93401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	284.9	255
256	93401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	79.31	256
257	93402000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	164.8	257
258	93402000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	188.8	258
259	93404000	0	0	0	0	0	0	0	0.063	0	0	0	0	0	0	39.69714	71.60286	259
260	93404000	0	0	0	0	0	0	0	0.072	0	0	0	0	0	0	45.36816	81.83184	260
261	93404500	0	0	0	0	0	0	0	0.15276	0	0	0	0	0	0	63.33404	100.82596	261
262	93404500	0	0	0	0	0	0	0	0.15544	0	0	0	0	0	0	64.44516	102.59484	262
263	93501000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	128.436	263
264	93502000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	105	264
265	93502000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	140	265
266	93503000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	110.46	266
267	93503000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	147.28	267
268	93504000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	97.02	268
269	93504000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	128.436	269
270	93505000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	97.02	270
271	93505000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	128.436	271
272	94000000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	272
273	94000000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	273
274	94210100	0	0	0	0	0	0	0	0	0	0	0	0	0	0	11.85	0	274
275	94210100	0	0	0	0	0	0	0	0	0	0	0	0	0	0	25	0	275
276	94210100	0	0	0	0	0	0	0	0	0	0	0	0	0	0	35.1	0	276
277	11411100	0	0	0	0	0	0	0	0	0.11577	0	0	0	0	8.08262	0	0	277
278	11411300	0	0	0	0	0	0	0	0	0.11577	0	0	0	0	0.17621	0	0	278
279	11421000	0	0	0	0	0	0	0	0	0.11577	0	0	0	0	7.89109	9.01199	0	279
280	11422000	0	0	0	0	0	0	0	0	0.11577	0	0	0	0	2.9598	9.19186	0	280
281	11424000	0.00114	0	0	0	0	0	0	0	0.11577	0	0	0	0	0.25282	0	0	281
282	11431000	0	0	0	0	0	0	0	0.00963	0.1156	0	0	0	0	8.04525	15.2067	0	282
283	11432000	0	0	0	0	0	0	0	0.00963	0.1156	0	0	0	0	2.50665	15.54749	0	283
284	11433500	0	0	0	0	0	0	0	0.03202	0.11758	0	0	0	0	0.1275	0	0	284
285	42110000	0	0	0	0	0	0	0	0	0	2.00362	0	0	2.32375	3.46338	0	0	285
286	43103000	0	0	0	0	0	0	0	0	0	0.66141	0	0	0.61346	0	0	0	286
287	43104000	0	0	0	0	0	0	0	0	0	0.63936	0	0	0.31107	0	0	0	287
288	54338000	0.516	0.296	0	0	0	0	0	0	0	0	0	0	0	21.204	5.824	0	288
289	54338000	0.6	0.348	0	0	0	0	0	0	0	0	0	0	0	24.732	6.848	0	289
290	54338000	0.484	0.278	0	0	0	0	0	0	0	0	0	0	0	19.877	5.488	0	290
291	56207110	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	291
292	56207150	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	292
293	62125100	0	0	0	0	0	0	0	0.12497	0	0	0	0	0	0	0	0	293
294	72116000	0	0	0.163	0	0.163	0	0	0	0	0	0	0	0	0	0	0	294
295	82101000	0	0	0	0	0	0	0	0	0	0	0	0	1.00741	0	0	0	295
296	12210410	0	0	0	0	0	0	0	0	0	0	0	0	0	4.239	8.52994	0	296
297	12220200	0	0	0	0	0	0	0	0	0	0	0	0	0.00104	42.64312	16.7406	0	297
298	12220250	0	0	0	0	0	0	0	0	0	0	0	0	0	2.45625	0.90281	0	298
299	12310100	0	0	0	0	0	0	0	0	0	0	0	0	0	54.234	0	0	299
300	14107030	0	0	0	0	0	0	0	0	0.66444	0	0	0	0	49.7313	0	0	300
301	14107030	0	0	0	0	0	0	0	0	0.41395	0	0	0	0	30.98304	0	0	301
302	14107030	0	0	0	0	0	0	0	0	0.65856	0	0	0	0	49.2912	0	0	302
303	14108010	0	0	0	0	0	0	0	0	0.17635	0	0	0	0	12.55725	0	0	303
304	14109030	0	0	0	0	0	0	0	0	0.9999	0	0	0	0	11.21384	0	0	304
305	91501010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	65.96523	0	305
306	91501020	0	0	0	0	0	0	0	0.2904	0	0	0	0	0	0	41.17463	0	306
307	91511010	0.04653	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	307
308	91511010	0.0564	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	308
309	91511020	0.0336	0	0	0	0	0	0	0.3192	0	0	0	0	0	0	0	0	309
310	91601000	0	0	0	0	0	0	0	0.01351	0	0	0	0	0	0	121.65371	0	310
311	91705010	0	0	0	0	0	0	0	0	0.24862	0	0	0	2.3126	71.3961	108.27245	0	311
312	91705010	0	0	0	0	0	0	0	0	0.02206	0	0	0	0.20515	6.33353	9.60481	0	312
313	91705010	0	0	0	0	0	0	0	0	0.05614	0	0	0	0.5222	16.1217	24.44862	0	313
314	91705010	0	0	0	0	0	0	0	0	0.52932	0	0	0	4.9236	152.0046	230.51553	0	314
315	91705020	0.00918	0	0	0	0	0	0	0	0.13498	0	0	0	1.13296	34.95132	63.42603	0	315
316	91705020	0.01674	0	0	0	0	0	0	0	0.24614	0	0	0	2.06598	63.73476	115.65924	0	316
317	91705020	0.00189	0	0	0	0	0	0	0	0.02779	0	0	0	0.23326	7.19586	13.0583	0	317
318	91705020	0.00378	0	0	0	0	0	0	0	0.05558	0	0	0	0.46651	14.39172	26.1166	0	318
319	91705050	0	0	0	0	0	0	0	0.05511	0.08514	0.2343	0	0	1.02755	25.01037	51.3854	0	319
320	91705050	0	0	0	0	0	0	0	0.07098	0.10965	0.30175	0	0	1.32336	32.21032	66.17816	0	320
321	91705050	0	0	0	0	0	0	0	0.01837	0.02838	0.0781	0	0	0.34252	8.33679	17.12847	0	321
322	91705060	0	0	0	0	0	0	0	0	0.14637	0.31447	0	0	1.82441	45.33534	60.3238	0	322
323	91705060	0	0	0	0	0	0	0	0	0.22134	0.47554	0	0	2.75886	68.55588	91.22135	0	323
324	91705060	0	0	0	0	0	0	0	0	0.04998	0.10738	0	0	0.62297	15.48036	20.59837	0	324
325	91705200	0	0	0	0	0	0	0	0	0	0	0	0	2.1861	10.4139	5.40582	0	325
326	91705200	0	0	0	0	0	0	0	0	0	0	0	0	0.5205	2.4795	1.2871	0	326
327	91705300	0	0	0	0	0	0	0	0	0	0	0	0	0	14.022	5.00282	0	327
328	91705300	0	0	0	0	0	0	0	0	0	0	0	0	0	9.6615	3.44706	0	328
329	91705300	0	0	0	0	0	0	0	0	0	0	0	0	0	21.204	7.56524	0	329
330	91706000	0	0	0	0	0	0	0	0	0	0.954	0	0	1.62867	31.3605	86.10557	0	330
331	91706000	0	0	0	0	0	0	0	0	0	0.3816	0	0	0.65147	12.5442	34.44223	0	331
332	91706000	0	0	0	0	0	0	0	0	0	0.53424	0	0	0.91205	17.56188	48.21912	0	332
333	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.27324	5.6736	59.29784	0	333
334	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.19127	3.97152	41.50849	0	334
335	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.3962	8.22672	85.98187	0	335
336	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.57381	11.91456	124.52547	0	336
337	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.23226	4.82256	50.40317	0	337
338	91707010	0	0	0	0	0	0	0	0	0	0	0	0	0.194	4.02826	42.10147	0	338
339	91708030	0.51856	0	0	0	0	0	0	0.09016	0	0	0	0	0.16713	0	45.84343	0	339
340	91708030	0.38892	0	0	0	0	0	0	0.06762	0	0	0	0	0.12535	0	34.38257	0	340
341	91715100	0	0	0	0	0	0	0	0	0.12483	0.75012	0	0	1.74369	38.59812	99.97624	0	341
342	91715100	0	0	0	0	0	0	0	0	0.24747	1.48708	0	0	3.4568	76.51908	198.19851	0	342
343	91715100	0	0	0	0	0	0	0	0	0.01971	0.11844	0	0	0.27532	6.09444	15.78572	0	343
344	91718100	0.16165	0	0	0	0	0	0	0	0.01342	0.72041	0	0	0.79286	54.65295	120.40703	0	344
345	91718100	0.11528	0	0	0	0	0	0	0	0.00957	0.51374	0	0	0.5654	38.97382	85.86403	0	345
346	91718100	0.2862	0	0	0	0	0	0	0	0.02376	1.27548	0	0	1.40376	96.7626	213.17966	0	346
347	91718100	0.05565	0	0	0	0	0	0	0	0.00462	0.24801	0	0	0.27295	18.81495	41.4516	0	347
348	91723000	0.07956	0	0	0	0	0	0	0	0	0	0	0	0.00242	0	16.05401	0	348
349	91723000	0.12708	0	0	0	0	0	0	0	0	0	0	0	0.00386	0	25.64182	0	349
350	91723000	0.0884	0	0	0	0	0	0	0	0	0	0	0	0.00268	0	17.83779	0	350
351	91726130	0.13878	0.06966	0	0	0	0	0	0	0.09018	0	0	0	0.4872	58.08672	121.80065	0	351
352	91726130	0.26214	0.13158	0	0	0	0	0	0	0.17034	0	0	0	0.92027	109.71936	230.06789	0	352
353	91726130	0.02185	0.01097	0	0	0	0	0	0	0.0142	0	0	0	0.07669	9.14328	19.17232	0	353
354	91731010	0	0	0	0	0	0	0	0	0.141	0.82908	0	0	1.49032	30.76056	78.86896	0	354
355	91731010	0	0	0	0	0	0	0	0	0.1275	0.7497	0	0	1.34763	27.8154	71.31768	0	355
356	91731010	0	0	0	0	0	0	0	0	0.072	0.42336	0	0	0.76101	15.70752	40.27351	0	356
357	91733000	0	0	0	0	0	0	0	0	0	0.18549	0	0	0.1802	3.68469	22.98592	0	357
358	91733000	0	0	0	0	0	0	0	0	0	0.09275	0	0	0.0901	1.84235	11.49296	0	358
359	91733000	0	0	0	0	0	0	0	0	0	0.26793	0	0	0.26029	5.32233	33.20188	0	359
360	91734100	0	0	0	0	0	0	0	0	0.162	0.25155	0	0	1.7501	46.5183	71.7606	0	360
361	91734100	0	0	0	0	0	0	0	0	0.0252	0.03913	0	0	0.27224	7.23618	11.16276	0	361
362	91734400	0	0	0	0	0	0	0	0	0.2	0.62	0	0	1.89	40.5	116	0	362
363	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.01156	0	63.34834	0	363
364	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.00356	0	19.4918	0	364
365	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.00667	0	36.54712	0	365
366	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.00356	0	19.4918	0	366
367	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.00933	0	51.16597	0	367
368	91745020	0	0	0	0	0	0	0	0	0	0	0	0	0.00227	0	12.42602	0	368
369	91746100	0.2688	0	0	0	0	0	0	0	0.10416	0	0	0	1.2752	39.42864	111.99656	0	369
370	91746100	0.2912	0	0	0	0	0	0	0	0.11284	0	0	0	1.38147	42.71436	121.32961	0	370
371	91746100	0.1176	0	0	0	0	0	0	0	0.04557	0	0	0	0.5579	17.25003	48.9985	0	371
372	91750000	0.03713	0	0	0	0	0	0	0.00188	0.00301	0.00677	9e-05	0	0.00825	6.34669	22.19545	0	372
373	91750000	0.16195	0	0	0	0	0	0	0.0082	0.01312	0.02952	0.00041	0	0.03599	27.68238	96.80996	0	373
374	91770020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	374
375	91770020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	375
376	91770020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	376
377	91770020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	377
378	91770030	0.02961	0	0	0	0	0	0	0.00518	0.03927	0.08827	0	0	0.16066	16.13934	1.74991	0	378
379	91770030	0.19669	0	0	0	0	0	0	0.03441	0.26087	0.58637	0	0	1.06723	107.21133	11.62437	0	379
380	91770030	0.20093	0	0	0	0	0	0	0.03515	0.26648	0.59897	0	0	1.09018	109.51695	11.87436	0	380
381	91770030	0.03384	0	0	0	0	0	0	0.00592	0.04488	0.10088	0	0	0.18361	18.44496	1.99989	0	381
382	91770030	0.02115	0	0	0	0	0	0	0.0037	0.02805	0.06305	0	0	0.11476	11.5281	1.24993	0	382
383	91770030	0.02538	0	0	0	0	0	0	0.00444	0.03366	0.07566	0	0	0.13771	13.83372	1.49992	0	383
384	91801000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	9.88	0	384
385	91801000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	37.05	0	385
386	91801000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.94	0	386
387	91802000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	387
388	92101000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	388
389	92101000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	389
390	92305040	0	0	0	0	0	0	0	0	0	0	0	0	0	0	52.5	0	390
391	92305040	0	0	0	0	0	0	0	0	0	0	0	0	0	0	70	0	391
392	92305040	0	0	0	0	0	0	0	0	0	0	0	0	0	0	105	0	392
393	92410110	0	0	0	0	0	0	0	0	0	0	0	0	0	0	124.44	0	393
394	92410110	0	0	0	0	0	0	0	0	0	0	0	0	0	0	82.96	0	394
395	92410210	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	395
396	92410210	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	396
397	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	153.66174	0	397
398	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	204.88232	0	398
399	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	204.88232	0	399
400	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	281.50498	0	400
401	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	409.76464	0	401
402	92410310	0	0	0	0	0	0	0	0	0	0	0	0	0	0	563.42638	0	402
403	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	403
404	92410320	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	404
405	82101000	0	0	0	0	0	0	0	0	0	0	0	0	3.02222	0	0	0	405
406	82101000	0	0	0	0	0	0	0	0	0	0	0	0	12.11111	0	0	0	406
407	83101000	0	0	0	0	0	0	0	0	0.03106	0.03519	0	0	1.56036	7.87506	1.28571	0	407
408	83104000	0	0	0.00406	0	0	0	0.00406	0	0	0	0	0	1.5522	0	8.38784	0	408
409	83104000	0	0	0.01144	0	0	0	0.01144	0	0	0	0	0	4.378	0	23.65802	0	409
410	83106000	0	0	0	0	0	0	0	0	0	0	0	0	0.92617	0	4.33665	0	410
411	83106000	0	0	0	0	0	0	0	0	0	0	0	0	3.70151	0	17.33184	0	411
412	83106000	0	0	0	0	0	0	0	0	0	0	0	0	2.7722	0	12.98044	0	412
413	83107000	0	0	0	0	0	0	0	0	0	0.02346	0	0	2.3713	0.53033	0.00673	0	413
414	83107000	0	0	0	0	0	0	0	0	0	0.0935	0	0	9.45083	2.11365	0.02682	0	414
415	83107000	0	0	0	0	0	0	0	0	0	0.0204	0	0	2.062	0.46116	0.00585	0	415
416	83110000	0.03793	0	0	0	0	0	0	0	0	0.00956	0	0	1.05647	0.62975	2.9365	0	416
417	83110000	0.15158	0	0	0	0	0	0	0	0	0.03819	0	0	4.2223	2.51685	11.736	0	417
418	83110000	0.03096	0	0	0	0	0	0	0	0	0.0078	0	0	0.86243	0.51408	2.39714	0	418
419	83112500	0	0	0.00191	0	0	0	0.00191	0	0	0	0	0	1.6497	2.80079	2.30093	0	419
420	83112500	0	0	0.00764	0	0	0	0.00764	0	0	0	0	0	6.59319	11.19364	9.1959	0	420
421	83112500	0	0	0.00572	0	0	0	0.00572	0	0	0	0	0	4.93788	8.38332	6.88714	0	421
422	83113000	0	0	0.00265	0	0	0	0.00265	0	0	0	0	0	0	0	2.19585	0	422
423	83113000	0	0	0.01063	0	0	0	0.01063	0	0	0	0	0	0	0	8.79748	0	423
424	83114000	0	0	0.01513	0	0	0	0.01529	0	0	0.0064	0	0	1.19142	0.71323	8.27628	0	424
425	83114000	0	0	0.04268	0	0	0	0.04312	0	0	0.01804	0	0	3.36043	2.01168	23.34334	0	425
426	83200100	0	0	0.00875	0	0	0	0.00875	0	0.00065	0.00081	0	0	0.3524	0.16767	4.98982	0	426
427	83200100	0	0	0.0351	0	0	0	0.0351	0	0.0026	0.00325	0	0	1.41397	0.67275	20.02086	0	427
428	83204000	0.40125	0	0	0	0	0	0	0.00313	0	0.00813	0	0	2.61528	0.79313	13.70415	0	428
429	83205500	0	0	0	0	0	0	0	0.00042	0.00168	0	0	0	0.02458	0.02898	1.71122	0	429
430	83205500	0	0	0	0	0	0	0	0.00132	0.00528	0	0	0	0.07724	0.09108	5.37812	0	430
431	83207100	0	0	0.02576	0	0	0	0.02592	0.00272	0	0	0	0	0.04764	0	9.77581	0	431
432	83207100	0	0	0.07084	0	0	0	0.07128	0.00748	0	0	0	0	0.13102	0	26.88347	0	432
433	83210200	0	0	0.01733	0	0	0	0.01733	0	0.01221	0	0	0	0	3.90703	3.13783	0	433
434	83210200	0	0	0.0462	0	0	0	0.0462	0	0.03256	0	0	0	0	10.41876	8.36756	0	434
435	91101010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16.254	0	435
436	91101010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	193.5	0	436
437	91101010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	19.35	0	437
438	91101010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	23.22	0	438
439	91101020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	9.48177	0	439
440	91101020	0	0	0	0	0	0	0	0	0	0	0	0	0	0	113.78125	0	440
441	91102010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	17.14365	0	441
442	91200000	0.0295	0	0	0	0	0	0	0	0	0	0	0	0.00016	0	0	0	442
443	91200000	0.14748	0	0	0	0	0	0	0	0	0	0	0	0.0008	0	0	0	443
444	91301080	0	0	0	0	0	0	0	0	0	0	0	0	0	1.91196	36.08232	0	444
445	91301080	0	0	0	0	0	0	0	0	0	0	0	0	0	7.6275	143.94542	0	445
446	91301250	0	0	0	0	0	0	0	0	0	0	0	0	0.00444	0	49.47393	0	446
447	91301250	0	0	0	0	0	0	0	0	0	0	0	0	0.01311	0	145.94808	0	447
448	91302010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	63.84	0	448
449	91304010	0	0	0	0	0	0	0	0	0.00424	0	0	0	0.00415	4.00298	58.96102	0	449
450	91304010	0	0	0	0	0	0	0	0	0.017	0	0	0	0.01662	16.0497	236.4	0	450
451	91304020	0	0	0	0	0	0	0	0	0.05229	0	0	0	0.33325	3.2319	41.41405	0	451
452	91304020	0	0	0	0	0	0	0	0	0.21165	0	0	0	1.34886	13.0815	167.62831	0	452
453	91304030	0	0	0	0	0	0	0	0.03307	0	0	0	0	0.00226	0	51.02956	0	453
454	91304030	0	0	0	0	0	0	0	0.1326	0	0	0	0	0.00907	0	204.59966	0	454
455	91304040	0.13293	0	0	0	0	0	0	0	0	0	0	0	0	0	11.23941	0	455
456	91304040	0.53064	0	0	0	0	0	0	0	0	0	0	0	0	0	44.86701	0	456
457	91304060	0	0	0	0	0	0	0	0	0	0.4746	0	0	0.70044	0	40.93732	0	457
458	91304060	0	0	0	0	0	0	0	0	0	1.94586	0	0	2.87182	0	167.84303	0	458
459	91304090	0	0	0	0	0	0	0	0	0.02728	0.09564	0	0	0.92683	1.62518	30.43651	0	459
460	91305010	0	0	0	0	0	0	0	0	0.00533	0	0	0	0	16.22149	48.59744	0	460
461	91305010	0	0	0	0	0	0	0	0	0.02131	0	0	0	0	64.83881	194.24851	0	461
462	91305020	0	0	0	0	0	0	0	0	0.00537	0	0	0	0	18.74282	59.77764	0	462
463	91305020	0	0	0	0	0	0	0	0	0.02153	0	0	0	0	75.11254	239.56116	0	463
464	91351010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1.28488	0	464
465	91351010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.13951	0	465
466	91351020	0	0	0	0	0	0	0	0.02499	0	0	0	0	0.00016	1.84415	1.46562	0	466
467	91351020	0	0	0	0	0	0	0	0.09988	0	0	0	0	0.00063	7.37012	5.85733	0	467
468	91361010	0.1314	0	0	0	0	0	0	0	0	0	0	0	0	0	20.18259	0	468
469	91361010	0.14454	0	0	0	0	0	0	0	0	0	0	0	0	0	22.20085	0	469
470	91361040	0.14124	0	0	0	0	0	0	0	0	0	0	0	0	44.78166	43.32894	0	470
471	91361040	0.03531	0	0	0	0	0	0	0	0	0	0	0	0	11.19541	10.83223	0	471
472	91361050	0.0208	0	0	0	0	0	0	0.02413	0	0	0	0	0.00038	11.42536	4.23555	0	472
473	91361050	0.15878	0	0	0	0	0	0	0.18415	0	0	0	0	0.0029	87.19357	32.32392	0	473
474	91361050	0.03942	0	0	0	0	0	0	0.04572	0	0	0	0	0.00072	21.64806	8.02525	0	474
475	91401000	0	0	0	0	0	0	0	0.02432	0	0	0	0	0	0	27.46698	0	475
476	91401000	0	0	0	0	0	0	0	0.01792	0	0	0	0	0	0	20.23883	0	476
477	91402000	0	0	0	0	0	0	0	0.03213	0	0	0	0	0	0	44.46558	0	477
478	91402000	0	0	0	0	0	0	0	0.02142	0	0	0	0	0	0	29.64372	0	478
479	91405000	0	0	0	0	0	0	0	0.05659	0	0	0	0	0	0	0	0	479
480	91406500	0	0	0	0	0	0	0	0.0753	0	0	0	0	0	0	0	0	480
481	91406600	0	0	0	0	0	0	0	0.0753	0	0	0	0	0	0	21.71765	0	481
482	91501010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	54.42132	0	482
483	91611000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	63.36	0	483
484	91611000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	23.76	0	484
485	91611000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	92.16	0	485
486	91611000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	30.96	0	486
487	91611100	0.2684	0	0	0	0	0	0	0.01232	0	0	0	0	0.00782	0	0	0	487
488	91611100	0.3904	0	0	0	0	0	0	0.01792	0	0	0	0	0.01138	0	0	0	488
489	91621000	0	0	0	0	0	0	0	0.04634	0	0	0	0	0	0	417.27854	0	489
490	91621000	0	0	0	0	0	0	0	0.02324	0	0	0	0	0	0	209.2696	0	490
491	91621000	0	0	0	0	0	0	0	0.06328	0	0	0	0	0	0	569.81843	0	491
492	91621000	0	0	0	0	0	0	0	0.03892	0	0	0	0	0	0	350.46355	0	492
493	91701010	0	0	0	0	0	0	0	0	0.0036	0.14814	0	0	0.1832	1.03626	1.5716	0	493
494	91701010	0	0	0	0	0	0	0	0	0.051	2.09865	0	0	2.59533	14.68035	22.26432	0	494
495	91703010	0	0	0	0	0	0	0	0	0.05215	0	0	0	0.42692	2.30265	97.14935	0	495
496	91703010	0	0	0	0	0	0	0	0	0.00968	0	0	0	0.07929	0.42764	18.04202	0	496
497	91703010	0	0	0	0	0	0	0	0	0.09536	0	0	0	0.78066	4.21056	177.64452	0	497
498	91703020	0	0	0	0	0	0	0	0	0.0287	0	0	0	0.12314	0.06426	15.05169	0	498
499	91703020	0	0	0	0	0	0	0	0	0.2419	0	0	0	1.03788	0.54162	126.86426	0	499
500	91703200	0.38802	0	0	0	0	0	0	0	0.1073	0	0	0	2.38084	30.1455	101.75849	0	500
501	91703200	0.63555	0	0	0	0	0	0	0	0.17575	0	0	0	3.89964	49.37625	166.67339	0	501
502	91703200	0.10704	0	0	0	0	0	0	0	0.0296	0	0	0	0.65678	8.316	28.07131	0	502
503	91705010	0	0	0	0	0	0	0	0	0.1604	0	0	0	1.492	46.062	69.85319	0	503
504	91705010	0	0	0	0	0	0	0	0	0.16842	0	0	0	1.5666	48.3651	73.34585	0	504
505	75216171	0	0	0.61	0	0	0.61	0	0	0	0	0	0	0	0	0	0	505
506	75216171	0	0	0.0488	0	0	0.0488	0	0	0	0	0	0	0	0	0	0	506
507	75216171	0	0	0.5246	0	0	0.5246	0	0	0	0	0	0	0	0	0	0	507
508	75217010	0	0	0.50016	0	0	0	0.50016	0	0	0	0	0	0	0	0	0	508
509	75217010	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	0	0	0	509
510	75219011	0	0	0.49998	0	0	0	0.49998	0	0	0	0	0	0	0	0	0	510
511	75219011	0	0	0.10256	0	0	0	0.10256	0	0	0	0	0	0	0	0	0	511
512	75219011	0	0	0.2564	0	0	0	0.2564	0	0	0	0	0	0	0	0	0	512
513	75340010	0	0	0.49975	0	0.15049	0.06414	0.28575	0	0	0	0	0	0	0	0	0	513
514	75340160	0.24138	0	0.39204	0.10206	0.10206	0.08505	0.10287	0	0.07371	0	0	0	0	33.76728	0	0	514
515	75340160	0.80162	0	1.30196	0.33894	0.33894	0.28245	0.34163	0	0.24479	0	0	0	0	112.14072	0	0	515
516	75340200	0	0	0.68244	0	0	0.3243	0.3572	0	0	0	0.72098	0	0	0	0	0	516
517	75410500	0	0	0.49621	0	0	0	0.49621	0	1.16259	0.58344	0	0	0	252.26487	0	0	517
518	75411010	0	0	0.40981	0	0	0.40981	0	0	0.11663	0.35096	0	0	0	35.7273	5.66972	0	518
519	75411020	0.84735	0	0.1085	0	0	0.1085	0	0	0.02695	0.1085	0	0	0	61.0533	0	0	519
520	75411020	1.29523	0	0.16585	0	0	0.16585	0	0	0.0412	0.16585	0	0	0	93.32433	0	0	520
521	75412060	0.52866	0	1	0	0	0	1	0	0.9504	0.08316	0	0	0	191.45808	0	0	521
522	75412060	0.11748	0	0.28556	0	0	0	0.28556	0	0.2112	0.01848	0	0	0	42.54624	0	0	522
523	75414020	0.38976	0	0.29856	0	0	0	0.29856	0.00552	0.07872	0.0288	0.00192	0	0.00128	29.59848	1.45506	0	523
524	75414020	1.5428	0	0.5	0	0	0	0.5	0.02185	0.3116	0.114	0.0076	0	0.00507	117.16065	5.7596	0	524
525	75414030	0.51858	0.14204	0.51188	0	0	0	0.51188	0	0.02881	0.04556	0	0	2.32386	3.70845	8.78838	0	525
526	75414030	0.10836	0.02968	0.10696	0	0	0	0.10696	0	0.00602	0.00952	0	0	0.48558	0.7749	1.83638	0	526
527	75414030	0.06192	0.01696	0.06112	0	0	0	0.06112	0	0.00344	0.00544	0	0	0.27748	0.4428	1.04936	0	527
528	75414500	0.2898	0.07912	0.28566	0	0	0	0.28566	0	0.0161	0.0253	0	0	1.29802	2.07	4.90481	0	528
529	75414500	0.04725	0.0129	0.04658	0	0	0	0.04658	0	0.00263	0.00413	0	0	0.21163	0.3375	0.7997	0	529
530	75415020	0.49536	0.13588	0.35174	0	0	0	0.35174	0	0.02752	0.043	0	0	2.22033	3.54492	8.38706	0	530
531	75415020	0.13824	0.03792	0.09816	0	0	0	0.09816	0	0.00768	0.012	0	0	0.61963	0.98928	2.34058	0	531
532	75415020	0.1728	0.0474	0.1227	0	0	0	0.1227	0	0.0096	0.015	0	0	0.77453	1.2366	2.92572	0	532
533	75416500	0	0	0.4815	0	0	0.45261	0.02782	0	0	0.26857	0	0	4.27762	6.40395	0.01739	0	533
534	75418010	0.6413	0.1749	0.5	0	0	0	0.5	0	0.0363	0.0561	0	0	2.8732	4.5837	10.8528	0	534
535	75440170	0.252	0.04452	0.05292	0.01652	0	0.01568	0.02072	0	0.00042	0	0.00154	0	0	9.17658	0.16156	0	535
536	75440200	0.06272	0	0.03612	0.00413	0	0	0.03199	0	0	0.02142	0	0	0	5.69646	0	0	536
537	75440200	0.28224	0	0.16254	0.01858	0	0	0.14396	0	0	0.09639	0	0	0	25.63407	0	0	537
538	75460700	0.29318	0	0.39319	0.06987	0.0733	0.1096	0.13974	0	0	0	0	0	0	0	0	0	538
539	75500210	0	0	0.25012	0	0	0	0.25012	0	0	0	0	0	0	0	10.28724	0	539
540	75501010	0	0	0.2499	0	0	0.13414	0.11576	0	0	0	0	0	0.10719	0	1.1417	0	540
541	75502520	0	0	0.25013	0	0	0	0.25013	0	0	0	0	0	0	0	0	0	541
542	75503010	0	0	0.2097	0	0	0	0.2097	0	0	0	0	0	0	0	0	0	542
543	75503010	0	0	0.94365	0	0	0	0.94365	0	0	0	0	0	0	0	0	0	543
544	75503010	0	0	0.45435	0	0	0	0.45435	0	0	0	0	0	0	0	0	0	544
545	75503010	0	0	0.19572	0	0	0	0.19572	0	0	0	0	0	0	0	0	0	545
546	75503010	0	0	0.2097	0	0	0	0.2097	0	0	0	0	0	0	0	0	0	546
547	75503020	0	0	0.0408	0	0	0	0.0408	0	0	0	0	0	0	0	1.31657	0	547
548	75503020	0	0	0.2499	0	0	0	0.2499	0	0	0	0	0	0	0	8.06402	0	548
549	75503040	0	0	0.1875	0	0	0	0.1875	0	0	0	0	0	0	0	3.9741	0	549
550	75503040	0	0	0.0375	0	0	0	0.0375	0	0	0	0	0	0	0	0.79482	0	550
551	75503090	0	0	0.06255	0	0	0	0.06255	0	0	0	0	0	0	0	0	0	551
552	75506010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	552
553	75506010	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	553
554	75510010	0	0	0.10904	0	0	0	0.10904	0	0	0	0	0	0	0	0	0	554
555	75510010	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	0	0	0	555
556	75510010	0	0	0.14664	0	0	0	0.14664	0	0	0	0	0	0	0	0	0	556
557	75510020	0	0	0.12597	0	0	0	0.12597	0	0	0	0	0	0	0	0	0	557
558	75510020	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	0	0	0	558
559	75510020	0	0	0.17043	0	0	0	0.17043	0	0	0	0	0	0	0	0	0	559
560	75511010	0	0	0.03794	0	0	0	0.03794	0	0	0	0	0	0	0	0	0	560
561	75511010	0	0	0.00326	0	0	0	0.00326	0	0	0	0	0	0	0	0	0	561
562	75607010	0.51584	0	0.32488	0	0	0	0.32488	0	0.50344	0	0.00496	0	0	103.98888	0	0	562
563	75608100	0.02169	0	0.31812	0	0	0	0.31812	0	0	0	0.01205	0	0	14.40216	0.78344	0	563
564	75649010	0.00482	0	0.4338	0.07953	0	0.35186	0	0	0	0	0.00241	0	0	0	0.35255	0	564
565	75651010	0.11568	0	0.3856	0.0723	0.00482	0.09881	0.21208	0	0	0	0.01928	0.06266	0.19441	10.88838	0	0	565
566	75651070	0.51815	0	0.63383	0.08435	0	0.08917	0.46031	0	0	0	0	0	0	0	2.70288	0	566
567	75651020	0.07076	0.07076	0.39772	0.14396	0	0.17812	0.07564	0	0	0.38064	0.00244	0	0.69052	0.72468	0	0	567
568	75652010	0	0	0.5092	0.03068	0	0.2638	0.21472	0	0	1.06763	0	0	0	72.81333	0	0	568
569	75657000	0.0288	0	0.012	0	0	0	0.012	0	0	0	0.06	0	0	0.1296	2.14553	0	569
570	77300000	3.55992	0	1.1193	0.15015	0	0	0.96642	0	0	0	0	0	0.03003	16.25169	0	0	570
571	81101000	0	0	0	0	0	0	0	0	0	0	0	0	0	35.85	0	0	571
572	81101000	0	0	0	0	0	0	0	0	0	0	0	0	0	202.5525	0	0	572
573	81101000	0	0	0	0	0	0	0	0	0	0	0	0	0	101.814	0	0	573
574	81101010	0	0	0	0	0	0	0	0	0	0	0	0	0	27.246	0	0	574
575	81101010	0	0	0	0	0	0	0	0	0	0	0	0	0	67.398	0	0	575
576	81101500	0	0	0	0	0	0	0	0	0	0	0	0	0	2.755	0	0	576
577	81101500	0	0	0	0	0	0	0	0	0	0	0	0	0	15.56575	0	0	577
578	81101500	0	0	0	0	0	0	0	0	0	0	0	0	0	7.8242	0	0	578
579	81102010	0	0	0	0	0	0	0	0	0	0	0	0	0	35.25	0	0	579
580	81102010	0	0	0	0	0	0	0	0	0	0	0	0	0	199.1625	0	0	580
581	81102010	0	0	0	0	0	0	0	0	0	0	0	0	0	100.11	0	0	581
582	81102020	0	0	0	0	0	0	0	0	0	0	0	0	0.83723	0	0	0	582
583	81103080	0	0	0	0	0	0	0	0	0	0	0	0	0.6292	0	0	0	583
584	81104010	0	0	0	0	0	0	0	0	0	0	0	0	0.43111	0	0	0	584
585	81104010	0	0	0	0	0	0	0	0	0	0	0	0	1.25022	0	0	0	585
586	81104100	0	0	0	0	0	0	0	0	0	0	0	0	0.03255	0	0	0	586
587	81201000	0	0	0	0	0	0	0	0	0	0	0	0	0	106.20288	0	0	587
588	81201000	0	0	0	0	0	0	0	0	0	0	0	0	0	425.22638	0	0	588
589	81203100	0	0	0	0	0	0	0	0	0	0	0	0	0	37.34016	0	0	589
590	81203100	0	0	0	0	0	0	0	0	0	0	0	0	0	453.05	0	0	590
591	81301020	0	0	0.00738	0	0.00738	0	0	0.00497	0	0	0	0	0	106.784	0	0	591
592	81301020	0	0	0.02964	0	0.02964	0	0	0.01995	0	0	0	0	0	428.64	0	0	592
593	81302010	0	0	0	0	0	0	0	0.00612	0	0.08807	0	0	0	62.03459	0	0	593
594	81302010	0	0	0	0	0	0	0	0.02442	0	0.35145	0	0	0	247.56039	0	0	594
595	81302050	0.01771	0	0.00734	0	0	0	0.00734	0	0	0.01541	0	0	1.59626	0.54043	1.45116	0	595
596	81302050	0.07073	0	0.02932	0	0	0	0.02932	0	0	0.06153	0	0	6.37394	2.15797	5.79455	0	596
597	81302060	0	0	0.00056	0	0	0	0.00056	0	0	0	0	0	0	25.6788	0	0	597
598	81302060	0	0	0.00224	0	0	0	0.00224	0	0	0	0	0	0	102.7152	0	0	598
599	81302070	0	0	0.03957	0	0.03957	0	0	0	0.08818	0.19988	0	0	1.63588	6.27863	0	0	599
600	81302070	0	0	0.15827	0	0.15827	0	0	0	0.3527	0.7995	0	0	6.54351	25.1145	0	0	600
601	83200100	0	0	0.02376	0	0	0	0.02376	0	0.00176	0.0022	0	0	0.95715	0.4554	13.55259	0	601
602	83203250	0.0752	0	0	0	0	0	0	0	0	0	0	0	0	3.88368	6.20253	0	602
603	83203250	0.3008	0	0	0	0	0	0	0	0	0	0	0	0	15.53472	24.81011	0	603
604	83204000	0.10015	0	0	0	0	0	0	0.00078	0	0.00203	0	0	0.65277	0.19796	3.42056	0	604
605	74101000	0	0	0.17236	0	0	0	0.17236	0	0	0	0	0	0	0	0	0	605
606	74201001	0	0	0.5004	0	0	0	0.5004	0	0	0	0	0	0	0	0	0	606
607	74204013	0	0	0.54188	0	0	0	0.54188	0	0	0	0	0	0	0	6.88032	0	607
608	74205011	0.783	0	0.38664	0	0	0	0.38664	0	0.06804	0.13716	0	0	0	15.50988	0	0	608
609	74205011	0.6525	0	0.3222	0	0	0	0.3222	0	0.0567	0.1143	0	0	0	12.9249	0	0	609
610	74205011	0.73225	0	0.36158	0	0	0	0.36158	0	0.06363	0.12827	0	0	0	14.50461	0	0	610
611	74206000	0	0	0.07408	0	0	0	0.07408	0	0	0	0	0	0	0	0	0	611
612	74206000	0	0	0.50004	0	0	0	0.50004	0	0	0	0	0	0	0	0	0	612
613	74301100	0	0	0.99873	0	0	0	0.99873	0	0	0	0	0	0	0	0	0	613
614	74303000	0	0	1.00188	0.0121	0.00242	0	0.98978	0	0	0	0	0	0	0	0	0	614
615	74401010	0	0	0.0849	0	0	0	0.0849	0	0	0	0	0	0	0	9.49884	0	615
616	74402100	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	0	0	0	616
617	74402100	0	0	0.10608	0	0	0	0.10608	0	0	0	0	0	0	0	0	0	617
618	74402250	0	0	0.19688	0	0	0	0.19688	0	0	0	0	0	0	69.18188	0	0	618
619	74402350	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	26.45176	0	0	619
620	74402350	0	0	0.1098	0	0	0	0.1098	0	0	0	0	0	0	6.45165	0	0	620
621	74403010	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	621
622	74404010	0	0	0.5	0	0	0	0.5	0	0.005	0	0	0	0.02778	19.76625	3.63683	0	622
623	74404060	0.155	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	13.83622	0	623
624	74406010	0.0896	0	0.0064	0	0	0	0.0064	0	0	0	0	0	0.00071	0	5.31571	0	624
625	74406010	0.175	0	0.0125	0	0	0	0.0125	0	0	0	0	0	0.00139	0	10.38224	0	625
626	75105000	0	0	0.50018	0	0	0	0.50018	0	0	0	0	0	0	0	0	0	626
627	75105000	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	627
628	75105000	0	0	0.25852	0	0	0	0.25852	0	0	0	0	0	0	0	0	0	628
629	75107000	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	629
630	75107000	0	0	0.13	0	0	0	0.13	0	0	0	0	0	0	0	0	0	630
631	75109000	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	631
632	75109000	0	0	0.51646	0	0	0	0.51646	0	0	0	0	0	0	0	0	0	632
633	75109000	0	0	0.166	0	0	0	0.166	0	0	0	0	0	0	0	0	0	633
634	75109500	0	0	0.06249	0	0	0	0.06249	0	0	0	0	0	0	0	0	0	634
635	75109550	0	0	0.125	0	0.125	0	0	0	0	0	0	0	0	0	0	0	635
636	75109550	0	0	0.03438	0	0.03438	0	0	0	0	0	0	0	0	0	0	0	636
637	75111000	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	637
638	75111000	0	0	0.05264	0	0	0	0.05264	0	0	0	0	0	0	0	0	0	638
639	75111000	0	0	0.06768	0	0	0	0.06768	0	0	0	0	0	0	0	0	0	639
640	75111500	0	0	0.02205	0	0	0	0.02205	0	0	0	0	0	0	0	0	0	640
641	75113000	0	0	0.49995	0	0	0	0.49995	0	0	0	0	0	0	0	0	0	641
642	75113000	0	0	0.07272	0	0	0	0.07272	0	0	0	0	0	0	0	0	0	642
643	75114000	0	0	0.49995	0	0.3322	0	0.1683	0	0	0	0	0	0	0	0	0	643
644	75115000	0	0	0.50015	0	0	0	0.50015	0	0	0	0	0	0	0	0	0	644
645	75115000	0	0	0.25722	0	0	0	0.25722	0	0	0	0	0	0	0	0	0	645
646	75115000	0	0	0.08574	0	0	0	0.08574	0	0	0	0	0	0	0	0	0	646
647	75117020	0	0	0.0875	0	0	0	0.0875	0	0	0	0	0	0	0	0	0	647
648	75117020	0	0	0.25	0	0	0	0.25	0	0	0	0	0	0	0	0	0	648
649	75119000	0	0	0.00416	0	0.00416	0	0	0	0	0	0	0	0	0	0	0	649
650	75121000	0	0	0.30015	0	0	0	0.30015	0	0	0	0	0	0	0	0	0	650
651	75121000	0	0	0.25013	0	0	0	0.25013	0	0	0	0	0	0	0	0	0	651
652	75122100	0	0	0.0671	0	0	0	0.0671	0	0	0	0	0	0	0	0	0	652
653	75122100	0	0	0.24995	0	0	0	0.24995	0	0	0	0	0	0	0	0	0	653
654	75122100	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	654
655	75122100	0	0	0.79849	0	0	0	0.79849	0	0	0	0	0	0	0	0	0	655
656	75125000	0	0	0.00862	0	0	0	0.00862	0	0	0	0	0	0	0	0	0	656
657	75125000	0	0	0.24998	0	0	0	0.24998	0	0	0	0	0	0	0	0	0	657
658	75125000	0	0	0.03879	0	0	0	0.03879	0	0	0	0	0	0	0	0	0	658
659	75141000	0	0	0.5	0.05888	0	0	0.441	0	0	0.02576	0	0	2.5762	0.5796	6.59457	0	659
660	75141000	0	0	0.7713	0.0576	0	0	0.7137	0	0	0.0252	0	0	2.5202	0.567	6.45121	0	660
661	75143000	0	0	0.56429	0.04307	0	0	0.52122	0	0	0	0	0	0	0	0	0	661
662	75201011	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	662
663	75201011	0	0	0.714	0	0	0	0.714	0	0	0	0	0	0	0	0	0	663
664	75201011	0	0	0.16065	0	0	0	0.16065	0	0	0	0	0	0	0	0	0	664
665	75202011	0	0	0.417	0	0	0	0.417	0	0	0	0	0	0	0	0	0	665
666	75202011	0	0	0.5004	0	0	0	0.5004	0	0	0	0	0	0	0	0	0	666
667	75202011	0	0	0.3058	0	0	0	0.3058	0	0	0	0	0	0	0	0	0	667
668	75202011	0	0	0.5282	0	0	0	0.5282	0	0	0	0	0	0	0	0	0	668
669	75204011	0	0	0.4998	0	0	0.4998	0	0	0	0	0	0	0	0	0	0	669
670	75205023	0	0	0.50018	0	0	0	0.50018	0	0	0	0	0	0	0	0	0	670
671	75207011	0	0	0.50034	0	0	0	0.50034	0	0	0	0	0	0	0	0	0	671
672	75208011	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	672
673	75208011	0	0	0.46158	0	0	0	0.46158	0	0	0	0	0	0	0	0	0	673
674	75208011	0	0	0.47922	0	0	0	0.47922	0	0	0	0	0	0	0	0	0	674
675	75209012	0	0	0.49988	0	0	0	0.49988	0	0	0	0	0	0	0	0	0	675
676	75209012	0	0	0.13545	0	0	0	0.13545	0	0	0	0	0	0	0	0	0	676
677	75211020	0	0	0.50025	0	0	0	0.50025	0	0	0	0	0	0	0	0	0	677
678	75214011	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	678
679	75214011	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	679
680	75214011	0	0	0.176	0	0	0	0.176	0	0	0	0	0	0	0	0	0	680
681	75216153	0.04992	0	0.49024	0	0	0.49024	0	0	0	0	0	0	0	0	11.73409	0	681
682	75216171	0	0	0.5002	0	0	0.5002	0	0	0	0	0	0	0	0	0	0	682
683	75216171	0	0	0.6954	0	0	0.6954	0	0	0	0	0	0	0	0	0	0	683
684	75220011	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	684
685	75220011	0	0	0.33125	0	0	0	0.33125	0	0	0	0	0	0	0	0	0	685
686	75221011	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	686
687	75221011	0	0	0.05712	0	0	0	0.05712	0	0	0	0	0	0	0	0	0	687
688	75223011	0	0	0.49995	0	0	0.49995	0	0	0	0	0	0	0	0	0	0	688
689	75224021	0	0	0.5	0	0	0.5	0	0	0	0	0	0	0	0	0	0	689
690	75226010	0	0	0.4998	0	0	0	0.4998	0	0	0	0	0	0	0	0	0	690
691	75226101	0	0	0.31605	0	0	0	0.31605	0	0	0	0	0	0	0	0	0	691
692	75226101	0	0	0.06248	0	0	0	0.06248	0	0	0	0	0	0	0	0	0	692
693	75230010	0	0	0.49984	0	0	0	0.49984	0	0	0	0	0	0	0	0	0	693
694	75231011	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	694
695	75233011	0	0	0.5004	0	0	0	0.5004	0	0	0	0	0	0	0	0	0	695
696	75234011	0	0	0.49988	0	0	0	0.49988	0	0	0	0	0	0	0	0	0	696
697	75234011	0	0	0.5	0	0	0	0.5	0	0	0	0	0	0	0	0	0	697
698	75235000	0	0	0.50007	0	0	0	0.5	0	0	0	0	0	0	0	0	0	698
699	75236500	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	699
700	75301110	0	0	0.50016	0	0	0.50016	0	0	0	0	0	0	0	0	0	0	700
701	75302080	0	0	0.2565	0	0	0	0.2565	0	0	0	0	0.12825	0.4755	0	2.23086	0	701
702	75307000	0	0	0.49968	0	0	0	0.49968	0	0	0	0	0	0	13.49136	0	0	702
703	75311012	0	0	0.5005	0.14287	0	0.25571	0.10192	0	0	0	0	0	0	0	0	0	703
704	75317000	0	0	0.49995	0.20873	0	0.16748	0.12375	0	0	0	0	0	0	19.19363	0	0	704
705	71103010	0	0	1.17944	0	0	1.17944	0	0	0	0	0	0	0	0	0	0	705
706	71104010	0	0	1.0742	0	0	1.0742	0	0	0	0	0	0	0	0	0	0	706
707	71104010	0	0	0.5002	0	0	0.5002	0	0	0	0	0	0	0	0	0	0	707
708	71104010	0	0	1.8614	0	0	1.8614	0	0	0	0	0	0	0	0	0	0	708
709	71104010	0	0	0.861	0	0	0.861	0	0	0	0	0	0	0	0	0	0	709
710	71104010	0	0	0.5576	0	0	0.5576	0	0	0	0	0	0	0	0	0	0	710
711	71201010	0	0	0.3528	0	0	0.3528	0	0	0	0	0	0	1.52404	0	0	0	711
712	71201010	0	0	0.49392	0	0	0.49392	0	0	0	0	0	0	2.13366	0	0	0	712
713	71201010	0	0	0.882	0	0	0.882	0	0	0	0	0	0	3.81011	0	0	0	713
714	71401030	0	0	0.859	0	0	0.859	0	0	0	0	0	0	0	220.68594	3.02304	0	714
715	71401030	0	0	0.36537	0	0	0.36537	0	0	0	0	0	0	0	93.87387	1.28592	0	715
716	71401030	0	0	0.51921	0	0	0.51921	0	0	0	0	0	0	0	133.39971	1.82736	0	716
717	71401030	0	0	1.1	0	0	1.1	0	0	0	0	0	0	0	278.3	3.8	0	717
718	71401030	0	0	0.54485	0	0	0.54485	0	0	0	0	0	0	0	139.98735	1.9176	0	718
719	71401030	0	0	0.56408	0	0	0.56408	0	0	0	0	0	0	0	144.92808	1.98528	0	719
720	71401030	0	0	0.3205	0	0	0.3205	0	0	0	0	0	0	0	82.3455	1.14591	0	720
721	71403000	0	0	0.50052	0	0	0.44426	0.05529	0	0	0	0	0	2.05209	0	0	0	721
722	71405020	0	0	0.50025	0	0	0.50025	0	0	0	0	0	0	0	72.9234	0	0	722
723	71405020	0	0	0.4554	0	0	0.4554	0	0	0	0	0	0	0	66.38544	0	0	723
724	71411000	0	0	3.444	0	0	3.444	0	0	1.659	1.3398	0	0	0	673.2558	0	0	724
725	71411000	0	0	0.574	0	0	0.574	0	0	0.2765	0.2233	0	0	0	112.2093	0	0	725
726	71411000	0	0	0.3444	0	0	0.3444	0	0	0.1659	0.13398	0	0	0	67.32558	0	0	726
727	71411000	0	0	0.287	0	0	0.287	0	0	0.13825	0.11165	0	0	0	56.10465	0	0	727
728	71501010	0	0	0.4998	0	0	0.4998	0	0	0.05145	0	0	0	0	2.1924	0	0	728
729	71501020	0	0	0.4998	0	0	0.4998	0	0	0.04935	0	0	0	0	28.7847	0	0	729
730	71501030	0	0	0.4998	0	0	0.4998	0	0	0	0	0	0	0	30.00375	0	0	730
731	71505000	0	0	0.49984	0	0	0.49984	0	0	0	0	0	0	0	61.15968	0	0	731
732	71505000	0	0	0.0617	0	0	0.0617	0	0	0	0	0	0	0	7.5494	0	0	732
733	71508010	0	0	0.708	0	0	0.708	0	0	0	0	0	0	0	70.9947	0	0	733
734	71508010	0	0	1.224	0	0	1.224	0	0	0	0	0	0	0	122.7366	0	0	734
735	71508010	0	0	0.564	0	0	0.564	0	0	0	0	0	0	0	56.5551	0	0	735
736	71508020	0	0	0.959	0	0	0.959	0	0	0.3388	0	0	0	0	65.5578	0	0	736
737	71508020	0	0	1.22615	0	0	1.22615	0	0	0.43318	0	0	0	0	83.82033	0	0	737
738	71508020	0	0	0.70898	0	0	0.70898	0	0	0.25047	0	0	0	0	48.46594	0	0	738
739	71508020	0	0	0.56513	0	0	0.56513	0	0	0.19965	0	0	0	0	38.63227	0	0	739
740	71601010	0	0	0.50373	0	0	0.41785	0.08589	0	0	0.20748	0	0	1.23005	4.9765	0.53329	0	740
741	71603010	0	0	0.5	0	0	0.404	0.09554	0	0	0.01351	0	0	1.3748	0.30398	0.59603	0	741
742	71701000	0.08806	0	0.4958	0	0	0.481	0.01517	0	0	0.12025	0	0	0	30.25305	0	0	742
743	71701000	0.05236	0	0.2948	0	0	0.286	0.00902	0	0	0.0715	0	0	0	17.9883	0	0	743
744	71702000	0	0	0.28728	0	0	0.28728	0	0	0.10944	0.28728	0	0	0	7.91502	0	0	744
745	71801010	0.13888	0	0.36952	0	0	0.3596	0.00992	0	0.54312	0.00248	0	0	0	41.55984	0	0	745
746	71801010	0.10332	0	0.2749	0	0	0.26752	0.00738	0	0.40406	0.00185	0	0	0	30.91851	0	0	746
747	71851010	0.0343	0	0.3675	0	0	0.3675	0	0	0	0	0.0392	0	0	0.91385	0	0	747
748	71900100	0	0	0.62068	0	0	0.62068	0	0	0	0	0	0	0	0	0	0	748
749	71900100	0	0	0.4997	0	0	0.4997	0	0	0	0	0	0	0	0	0	0	749
750	71905110	0	0	0.58608	0	0	0.58608	0	0	0	0	0	0	2.82722	0	0	0	750
751	71930100	0	0	0.1516	0	0	0.1516	0	0	0	0	0	0	0	0	0	0	751
752	71930100	0	0	0.50028	0	0	0.50028	0	0	0	0	0	0	0	0	0	0	752
753	71930200	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	753
754	71931010	0	0	1.1891	0	0	0.621	0.5681	0	0	0	0	0	6.7896	0	0	0	754
755	71962010	0	0	0.4998	0	0	0.5	0	0	0	0	0	0	0	0	0	0	755
756	72116000	0	0	0.5	0	0.5	0	0	0	0	0	0	0	0	0	0	0	756
757	72116140	0.3186	0	0.62208	0	0.62208	0	0	0.01944	0.13716	0.2862	0	0	2.54808	13.03452	1.26391	0	757
758	72118211	0	0	0.50005	0	0.50005	0	0	0	0	0	0	0	0	0	0	0	758
759	72118221	0	0	0.49981	0	0.49981	0	0	0	0	0	0	0	0	15.70325	0	0	759
760	72125100	0	0	0.5001	0	0.5001	0	0	0	0	0	0	0	0	0	0	0	760
761	72125212	0	0	0.4997	0	0.4997	0	0	0	0	0	0	0	0	0	0	0	761
762	72125232	0.177	0	0.317	0	0.317	0	0	0	0.134	0	0	0	0	37.476	0	0	762
763	72201100	0	0	0.5	0	0.5	0	0	0	0	0	0	0	0	0	0	0	763
764	72201100	0	0	0.49984	0	0.49984	0	0	0	0	0	0	0	0	0	0	0	764
765	72201100	0	0	0.12496	0	0.12496	0	0	0	0	0	0	0	0	0	0	0	765
766	72201211	0	0	0.5	0	0.5	0	0	0	0	0	0	0	0	0	0	0	766
767	72201211	0	0	0.5	0	0.5	0	0	0	0	0	0	0	0	0	0	0	767
768	72201211	0	0	0.0641	0	0.0641	0	0	0	0	0	0	0	0	0	0	0	768
769	72201230	0.12882	0	0.4617	0	0.4617	0	0	0	0.4047	0	0	0	0	65.68452	0	0	769
770	72201230	0.05424	0	0.1944	0	0.1944	0	0	0	0.1704	0	0	0	0	27.65664	0	0	770
771	72202020	0.53124	0	0.26676	0	0.21318	0	0.05358	0	0.37278	0	0	0	0	55.98882	0	0	771
772	72302000	0.37683	0	0.4029	0	0.4029	0	0	0	0.74892	0	0	0	0	102.89592	0	0	772
773	72302100	0.48756	0	0.27485	0	0.27485	0	0	0	0.72178	0	0	0	0	75.13443	0.19424	0	773
774	73101010	0	0	0.47641	0.47641	0	0	0	0	0	0	0	0	0	0	0	0	774
775	73101010	0	0	0.42955	0.42955	0	0	0	0	0	0	0	0	0	0	0	0	775
776	73101010	0	0	0.0781	0.0781	0	0	0	0	0	0	0	0	0	0	0	0	776
777	73101110	0	0	0.364	0.364	0	0	0	0.27038	0	0.0315	0	0	3.19842	0.71663	0.01422	0	777
778	73102211	0	0	0.49998	0.49998	0	0	0	0	0	0	0	0	0	0	0	0	778
779	73102211	0	0	0.47755	0.47755	0	0	0	0	0	0	0	0	0	0	0	0	779
780	73102241	0	0	0.49991	0.49991	0	0	0	0	0	0	0	0	0	50.52663	25.60631	0	780
781	73102241	0	0	0.53096	0.53096	0	0	0	0	0	0	0	0	0	53.66493	27.19676	0	781
782	73105010	0	0	1.00064	1.00064	0	0	0	0	0	0	0	0	0	0	0	0	782
783	73111212	0	0	0.5	0.2152	0	0.2848	0	0	0	0	0	0	0	0	0	0	783
784	73303010	0	0	0.5002	0.5002	0	0	0	0	0	0	0	0	0	0	0	0	784
785	73303010	0	0	0.76	0.76	0	0	0	0	0	0	0	0	0	0	0	0	785
786	73403010	0	0	0.57	0.57	0	0	0	0	0	0	0	0	0	0	0	0	786
787	73403010	0	0	0.9	0.9	0	0	0	0	0	0	0	0	0	0	0	0	787
788	73403010	0	0	0.3	0.3	0	0	0	0	0	0	0	0	0	0	0	0	788
789	73406000	0	0	0.4998	0.4998	0	0	0	0	0	0	0	0	0.00065	29.46762	65.46786	0	789
790	73409000	0	0	0.50018	0.50018	0	0	0	0	0.08275	0	0	0	0	25.49781	0	0	790
791	74101000	0	0	0.68388	0	0	0	0.68388	0	0	0	0	0	0	0	0	0	791
792	74101000	0	0	0.5004	0	0	0	0.5004	0	0	0	0	0	0	0	0	0	792
793	74101000	0	0	1.01192	0	0	0	1.01192	0	0	0	0	0	0	0	0	0	793
794	74101000	0	0	0.50596	0	0	0	0.50596	0	0	0	0	0	0	0	0	0	794
795	74101000	0	0	0.09452	0	0	0	0.09452	0	0	0	0	0	0	0	0	0	795
796	74101000	0	0	0.1112	0	0	0	0.1112	0	0	0	0	0	0	0	0	0	796
797	74406010	0.02604	0	0.00186	0	0	0	0.00186	0	0	0	0	0	0.00021	0	1.54488	0	797
798	74406100	0	0	0.04864	0	0	0	0.04864	0.00688	0	0	0	0	0.00021	0	3.07136	0	798
799	74406100	0	0	0.19	0	0	0	0.19	0.02688	0	0	0	0	0.00083	0	11.99748	0	799
800	74406500	0	0	0.25	0	0	0	0.25	0.02594	0	0	0	0	0	0	31.31654	0	800
801	74506000	0	0	0.5	0	0	0	0.5	0	0	0	0	0	1.73257	0	10.38923	0	801
802	74601010	0.38688	0	0.93248	0	0	0	0.93248	0	0.50096	0	0	0	0	21.15936	4.15192	0	802
803	74602010	0.38552	0	0.92964	0	0	0	0.92964	0	0	0	0	0	0	0	4.16427	0	803
804	75101000	0	0	0.50024	0	0	0	0.50024	0	0	0	0	0	0	0	0	0	804
805	63131010	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	0	805
806	63131010	0	0	0	0	0	0	0	0.50715	0	0	0	0	0	0	0	0	806
807	63131010	0	0	0	0	0	0	0	0.08306	0	0	0	0	0	0	0	0	807
808	63133010	0	0	0	0	0	0	0	1.00016	0	0	0	0	0	0	0	0	808
809	63133010	0	0	0	0	0	0	0	0.4606	0	0	0	0	0	0	0	0	809
810	63133010	0	0	0	0	0	0	0	0.50008	0	0	0	0	0	0	0	0	810
811	63135010	0	0	0	0	0	0	0	0.62426	0	0	0	0	0	0	0	0	811
812	63135010	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	812
813	63135010	0	0	0	0	0	0	0	1.00009	0	0	0	0	0	0	0	0	813
814	63135010	0	0	0	0	0	0	0	0.50323	0	0	0	0	0	0	0	0	814
815	63135010	0	0	0	0	0	0	0	0.05096	0	0	0	0	0	0	0	0	815
816	63135140	0	0	0	0	0	0	0	0.39004	0	0	0	0	0.00087	0	33.73745	0	816
817	63135140	0	0	0	0	0	0	0	0.49949	0	0	0	0	0.00112	0	43.20459	0	817
818	63135140	0	0	0	0	0	0	0	0.44974	0	0	0	0	0.001	0	38.90135	0	818
819	63137010	0	0	0	0	0	0	0	1.00596	0	0	0	0	0	0	0	0	819
820	63137010	0	0	0	0	0	0	0	0.49995	0	0	0	0	0	0	0	0	820
821	63137010	0	0	0	0	0	0	0	1.26654	0	0	0	0	0	0	0	0	821
822	63137010	0	0	0	0	0	0	0	0.84234	0	0	0	0	0	0	0	0	822
823	63137010	0	0	0	0	0	0	0	0.08484	0	0	0	0	0	0	0	0	823
824	63137140	0	0	0	0	0	0	0	0.30552	0	0	0	0	0.00101	0	20.65428	0	824
825	63137140	0	0	0	0	0	0	0	0.50049	0	0	0	0	0.00166	0	33.83498	0	825
826	63137140	0	0	0	0	0	0	0	0.45426	0	0	0	0	0.00151	0	30.70966	0	826
827	63139010	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	0	827
828	63141010	0	0	0	0	0	0	0	0.49988	0	0	0	0	0	0	0	0	828
829	63141010	0	0	0	0	0	0	0	0.5418	0	0	0	0	0	0	0	0	829
830	63141140	0	0	0	0	0	0	0	0.50022	0	0	0	0	0.00168	0	26.72645	0	830
831	63141140	0	0	0	0	0	0	0	0.19056	0	0	0	0	0.00064	0	10.18151	0	831
832	63143010	0	0	0	0	0	0	0	0.39996	0	0	0	0	0	0	0	0	832
833	63145010	0	0	0	0	0	0	0	0.49973	0	0	0	0	0	0	0	0	833
834	63149010	0	0	0	0	0	0	0	0.50008	0	0	0	0	0	0	0	0	834
835	63149010	0	0	0	0	0	0	0	0.46718	0	0	0	0	0	0	0	0	835
836	63149010	0	0	0	0	0	0	0	1.88188	0	0	0	0	0	0	0	0	836
837	63149010	0	0	0	0	0	0	0	3.76376	0	0	0	0	0	0	0	0	837
838	63203010	0	0	0	0	0	0	0	0.50025	0	0	0	0	0	0	0	0	838
839	63207110	0	0	0	0	0	0	0	0.25	0	0	0	0	0.00492	0	92.60225	0	839
840	63207110	0	0	0	0	0	0	0	0.34314	0	0	0	0	0.00405	0	76.22135	0	840
841	63219020	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	841
842	63223020	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	842
843	63223020	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	843
844	63223020	0	0	0	0	0	0	0	0.49966	0	0	0	0	0	0	0	0	844
845	63223020	0	0	0	0	0	0	0	0.10836	0	0	0	0	0	0	0	0	845
846	63223020	0	0	0	0	0	0	0	0.07224	0	0	0	0	0	0	0	0	846
847	63223020	0	0	0	0	0	0	0	0.04214	0	0	0	0	0	0	0	0	847
848	63223130	0	0	0	0	0	0	0	0.50038	0	0	0	0	0.00423	0	88.28831	0	848
849	63301010	0	0	0	0	0	0	0	0.50759	0	0.3	0	0	0.50094	0	14.33619	0	849
850	63311000	0	0	0	0	0	0	0	0.49963	0	0	0	0	0	0	0	0	850
851	63311130	0	0	0	0	0	0	0	0.45539	0	0	0	0	0.00301	0	48.83791	0	851
852	63311130	0	0	0	0	0	0	0	0.49972	0	0	0	0	0.00331	0	53.59204	0	852
853	63311140	0	0	0	0	0	0	0	0.46669	0	0	0	0	0.00201	0	29.95661	0	853
854	63311140	0	0	0	0	0	0	0	0.49973	0	0	0	0	0.00215	0	32.07743	0	854
855	63401010	0	0	0.08152	0	0	0	0.08152	0.42333	0	0.36031	0	0	2.04815	0.34524	0	0	855
856	63409010	0	0	0.00291	0	0	0	0.00291	0.25	0	0	0	0	0	0	0	0	856
857	63415100	0.34848	0	0	0	0	0	0	0.52514	0	0	0	0	0	0	40.16071	0	857
858	63420110	0	0	0	0	0	0	0	0.5587	0	0	0	0	0	0	0	0	858
859	63420200	0.0081	0	0	0	0	0	0	0.17334	0	0	0	0	0.00024	0	12.45479	0	859
860	63430100	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	860
861	64100110	0	0	0	0	0	0	0	1.0025	0	0	0	0	0	0	0	0	861
862	64100110	0	0	0	0	0	0	0	1.05864	0	0	0	0	0	0	0	0	862
863	64100110	0	0	0	0	0	0	0	0.52932	0	0	0	0	0	0	0	0	863
864	64101010	0	0	0	0	0	0	0	0.99944	0	0	0	0	0	0	0	0	864
865	64104010	0	0	0	0	0	0	0	0.99944	0	0	0	0	0	0	0	0	865
866	64104010	0	0	0	0	0	0	0	1.2493	0	0	0	0	0	0	0	0	866
867	64104010	0	0	0	0	0	0	0	1.05586	0	0	0	0	0	0	0	0	867
868	64105400	0	0	0	0	0	0	0	1.00188	0	0	0	0	0	0	0	0	868
869	64116020	0	0	0	0	0	0	0	1.00188	0	0	0	0	0	0	0	0	869
870	64124020	0	0	0	0	0	0	0	1.0025	0	0	0	0	0	0	0	0	870
871	64132020	0	0	0	0	0	0	0	1.00096	0	0	0	0	0	0	0	0	871
872	64134000	0	0	0	0	0	0	0	2.29336	0	0	0	0	0	0	87.37695	0	872
873	64134000	0	0	0	0	0	0	0	0.9156	0	0	0	0	0	0	34.88433	0	873
874	64205010	0	0	0	0	0	0	0	0.6723	0	0	0	0	0.00332	0	61.84192	0	874
875	64401000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	875
876	71101000	0	0	1.03097	0	0	1.03097	0	0	0	0	0	0	0	0	0	0	876
877	71101000	0	0	1.78649	0	0	1.78649	0	0	0	0	0	0	0	0	0	0	877
878	71101000	0	0	0.82635	0	0	0.82635	0	0	0	0	0	0	0	0	0	0	878
879	71101000	0	0	1.13328	0	0	1.13328	0	0	0	0	0	0	0	0	0	0	879
880	71101110	0	0	1.4186	0	0	1.4186	0	0	0	0	0	0	0	0	0	0	880
881	71101110	0	0	1.5088	0	0	1.5088	0	0	0	0	0	0	0	0	0	0	881
882	71101110	0	0	1.1316	0	0	1.1316	0	0	0	0	0	0	0	0	0	0	882
883	71101110	0	0	1.5088	0	0	1.5088	0	0	0	0	0	0	0	0	0	0	883
884	71103010	0	0	1.07047	0	0	1.07047	0	0	0	0	0	0	0	0	0	0	884
885	71103010	0	0	1.17944	0	0	1.17944	0	0	0	0	0	0	0	0	0	0	885
886	71103010	0	0	0.80125	0	0	0.80125	0	0	0	0	0	0	0	0	0	0	886
887	71201010	0	0	0.31752	0	0	0.31752	0	0	0	0	0	0	1.37164	0	0	0	887
888	71201050	0	0	0.3528	0	0	0.3528	0	0	0	0	0	0	0.91027	0	0	0	888
889	71201050	0	0	0.29988	0	0	0.29988	0	0	0	0	0	0	0.77373	0	0	0	889
890	71201100	0	0	0.75852	0	0	0.75852	0	0	0	0	0	0	0	148.17456	0	0	890
891	71201100	0	0	0.49392	0	0	0.49392	0	0	0	0	0	0	0	96.48576	0	0	891
892	71201100	0	0	0.3528	0	0	0.3528	0	0	0	0	0	0	0	68.9184	0	0	892
893	71201250	0	0	0.49392	0	0	0.49392	0	0	0	0	0	0	0	45.73044	0	0	893
894	71201250	0	0	0.56448	0	0	0.56448	0	0	0	0	0	0	0	52.26336	0	0	894
895	71201250	0	0	0.40572	0	0	0.40572	0	0	0	0	0	0	0	37.56429	0	0	895
896	71205000	0	0	0.33516	0	0	0.33516	0	0	0	0	0	0	1.43952	0	0	0	896
897	71205000	0	0	0.49392	0	0	0.49392	0	0	0	0	0	0	2.1214	0	0	0	897
898	71205000	0	0	0.05292	0	0	0.05292	0	0	0	0	0	0	0.22729	0	0	0	898
899	71301020	0.12322	0	0.5	0	0	0.5	0	0	0.3477	0	0	0	0	58.21596	0	0	899
900	71305010	0.1243	0	0.5	0	0	0.5	0	0	0.15933	0	0	0	0	25.8318	0	0	900
901	71401020	0	0	0.36537	0	0	0.36537	0	0	0	0	0	0	0	0	0	0	901
902	71401020	0	0	0.51921	0	0	0.51921	0	0	0	0	0	0	0	0	0	0	902
903	71401020	0	0	0.56408	0	0	0.56408	0	0	0	0	0	0	0	0	0	0	903
904	71401020	0	0	0.3205	0	0	0.3205	0	0	0	0	0	0	0	0	0	0	904
905	58134310	2.55972	0	0.62499	0	0	0	0.6225	0	0.03486	2.3655	0	0	0	1.05576	0.15936	0	905
906	58134620	2.425	0	0.3325	0	0	0	0.3325	0	0.4375	0.415	0	0	0	12.005	0.155	0	906
907	58134660	2.7425	0	0.0375	0	0	0	0.0375	0	0.7375	0.4125	0	0	0	16.885	0	0	907
908	58134680	4.08	0	0	0	0	0	0	0	0.693	0.1695	0.003	0	0.009	7.086	0.141	0	908
909	58134680	1.3056	0	0	0	0	0	0	0	0.22176	0.05424	0.00096	0	0.00288	2.26752	0.04512	0	909
910	58136120	1.714	0	0.828	0.02	0	0	0.808	0	0	0	0	0	1.12356	0	0	0	910
911	58136130	1.352	0	0.736	0	0	0	0.736	0	0	0.812	0	0	1.30133	0	1.17029	0	911
912	58145110	1.19799	0	0	0	0	0	0	0	0.56254	0	0.00122	0	0.00081	96.55605	1.02693	0	912
913	58145114	1.00084	0	0	0	0	0	0	0	0.19482	0	0.04871	0	0.00361	78.97086	0	0	913
914	58145130	0.72414	0	0.00122	0	0	0	0.00122	0	0.27581	1.0121	0.00486	0	0.01674	42.94174	0	0	914
915	58148110	0.75491	0	0.15399	0	0	0	0.15399	0	0	0.01947	0	0	1.94641	0.43808	1.10763	0	915
916	58148120	0.59207	0	0.12125	0	0	0	0.12125	0	0	0.34338	0	0	2.03491	8.23581	0.87747	0	916
917	58148500	0.64694	0	0.21417	0.05487	0	0	0.1593	0	0	0	0	0	0.94538	0	4.43052	0	917
918	58148550	0.61508	0	0.15488	0.03983	0	0	0.11505	0	0	0.4071	0	0	0.68774	24.46848	3.27973	0	918
919	58149110	0.64584	0	0	0	0	0	0	0.13752	0	0.25848	0	0	0	3.70656	0.38448	0	919
920	58200200	4.87628	0	0.8686	0.14948	0	0	0.72316	0.29088	0	0	0	0.11312	0.02828	15.96608	0	0	920
921	58403010	0.4338	0	0.00241	0	0	0	0.00241	0	0.00482	0.21208	0.01205	0	0	13.20921	0.07834	0	921
922	58404010	0.29402	0	0.01687	0.01687	0	0	0	0	0	0.11568	0.02892	0	0	14.14188	0	0	922
923	58404500	0.72059	0	0	0	0	0	0	0	0	0.29402	0.00964	0	1.40262	2.91369	0	0	923
924	58407030	1.8278	0	0.01729	0	0	0	0.01729	0	0	0	0.01729	0	0	55.01925	0	0	924
925	58407030	1.7242	0	0.01631	0	0	0	0.01631	0	0	0	0.01631	0	0	51.90075	0	0	925
926	58408010	1.0604	0	0.10845	0	0.06025	0	0.0482	0	0	1.02425	0.00723	0	0.19548	21.71169	0	0	926
927	58421080	0.696	0	0.1728	0	0	0	0.1728	0.0216	0.2664	0	0	0	1.08107	53.0712	0	0	927
928	61101010	0	0	0	0	0	0	0	0.5568	0	0	0	0	0	0	0	0	928
929	61101010	0	0	0	0	0	0	0	0.50025	0	0	0	0	0	0	0	0	929
930	61101010	0	0	0	0	0	0	0	0.7221	0	0	0	0	0	0	0	0	930
931	61101010	0	0	0	0	0	0	0	0.435	0	0	0	0	0	0	0	0	931
932	61101230	0	0	0	0	0	0	0	0.50038	0	0	0	0	0.00169	0	33.1107	0	932
933	61119010	0	0	0	0	0	0	0	0.71264	0	0	0	0	0	0	0	0	933
934	61119010	0	0	0	0	0	0	0	0.4896	0	0	0	0	0	0	0	0	934
935	61119010	0	0	0	0	0	0	0	1.00096	0	0	0	0	0	0	0	0	935
936	61119010	0	0	0	0	0	0	0	0.52224	0	0	0	0	0	0	0	0	936
937	61119010	0	0	0	0	0	0	0	0.09248	0	0	0	0	0	0	0	0	937
938	61122330	0	0	0	0	0	0	0	0.50022	0	0	0	0	0.00056	0	29.0407	0	938
939	61125010	0	0	0	0	0	0	0	0.43092	0	0	0	0	0	0	0	0	939
940	61125010	0	0	0	0	0	0	0	0.50018	0	0	0	0	0	0	0	0	940
941	61125010	0	0	0	0	0	0	0	0.38475	0	0	0	0	0	0	0	0	941
942	61201020	0	0	0	0	0	0	0	1.00035	0	0	0	0	0	0	0	0	942
943	61204010	0	0	0	0	0	0	0	0.06253	0	0	0	0	0	0	0	0	943
944	61204010	0	0	0	0	0	0	0	0.1927	0	0	0	0	0	0	0	0	944
945	61210220	0	0	0	0	0	0	0	1.00098	0	0	0	0	0	0	0	0	945
946	61210220	0	0	0	0	0	0	0	1.05726	0	0	0	0	0	0	0	0	946
947	61210220	0	0	0	0	0	0	0	0.49848	0	0	0	0	0	0	0	0	947
948	61210220	0	0	0	0	0	0	0	0.7236	0	0	0	0	0	0	0	0	948
949	61210220	0	0	0	0	0	0	0	2.00196	0	0	0	0	0	0	0	0	949
950	61210230	0	0	0	0	0	0	0	1.0025	0	0	0	0	0	0	29.05403	0	950
951	62101000	0	0	0	0	0	0	0	0.50014	0	0	0	0	0	0	0	0	951
952	62101300	0	0	0	0	0	0	0	0.38808	0	0	0	0	4.66466	0	0	0	952
953	62107200	0	0	0	0	0	0	0	0.50004	0	0	0	0	0	7.9542	3.41724	0	953
954	62113100	0	0	0	0	0	0	0	0.19095	0	0	0	0	0	0	0	0	954
955	62113100	0	0	0	0	0	0	0	0.49999	0	0	0	0	0	0	0	0	955
956	62122100	0	0	0	0	0	0	0	1.00045	0	0	0	0	0	0	0	0	956
957	62122100	0	0	0	0	0	0	0	0.09887	0	0	0	0	0	0	0	0	957
958	62125100	0	0	0	0	0	0	0	0.19306	0	0	0	0	0	0	0	0	958
959	62125100	0	0	0	0	0	0	0	0.49989	0	0	0	0	0	0	0	0	959
960	62125100	0	0	0	0	0	0	0	0.59297	0	0	0	0	0	0	0	0	960
961	63101000	0	0	0	0	0	0	0	1.30134	0	0	0	0	0	0	0	0	961
962	63101000	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	962
963	63101000	0	0	0	0	0	0	0	1.99916	0	0	0	0	0	0	0	0	963
964	63101000	0	0	0	0	0	0	0	0.99958	0	0	0	0	0	0	0	0	964
965	63101000	0	0	0	0	0	0	0	0.16031	0	0	0	0	0	0	0	0	965
966	63101120	0	0	0	0	0	0	0	0.5002	0	0	0	0	0	0	0	0	966
967	63101120	0	0	0	0	0	0	0	0.4633	0	0	0	0	0	0	0	0	967
968	63101130	0	0	0	0	0	0	0	0.4998	0	0	0	0	0.00737	0	40.61875	0	968
969	63101130	0	0	0	0	0	0	0	0.44296	0	0	0	0	0.00653	0	35.99936	0	969
970	63101330	0	0	0	0	0	0	0	0.89946	0	0	0	0	0	0	76.51782	0	970
971	63103010	0	0	0	0	0	0	0	0.2121	0	0	0	0	0	0	0	0	971
972	63103010	0	0	0	0	0	0	0	0.46965	0	0	0	0	0	0	0	0	972
973	63103150	0	0	0	0	0	0	0	0.08226	0	0	0	0	0	0	10.47115	0	973
974	63103150	0	0	0	0	0	0	0	0.50041	0	0	0	0	0	0	63.69951	0	974
975	63105010	0	0	0	0	0	0	0	0.25013	0	0	0	0	0	0	0	0	975
976	63105010	0	0	0	0	0	0	0	0.25	0	0	0	0	0	0	0	0	976
977	63105010	0	0	0	0	0	0	0	0.57696	0	0	0	0	0	0	0	0	977
978	63105010	0	0	0	0	0	0	0	1.01384	0	0	0	0	0	0	0	0	978
979	63107010	0	0	0	0	0	0	0	0.8673	0	0	0	0	0	0	0	0	979
980	63107010	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	980
981	63107010	0	0	0	0	0	0	0	0.74235	0	0	0	0	0	0	0	0	981
982	63107010	0	0	0	0	0	0	0	0.9996	0	0	0	0	0	0	0	0	982
983	63109010	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	983
984	63109010	0	0	0	0	0	0	0	0.65382	0	0	0	0	0	0	0	0	984
985	63109010	0	0	0	0	0	0	0	0.44229	0	0	0	0	0	0	0	0	985
986	63109010	0	0	0	0	0	0	0	0.35255	0	0	0	0	0	0	0	0	986
987	63111010	0	0	0	0	0	0	0	0.0267	0	0	0	0	0	0	4.97003	0	987
988	63111010	0	0	0	0	0	0	0	0.24995	0	0	0	0	0	0	46.52183	0	988
989	63115010	0	0	0	0	0	0	0	0.40365	0	0	0	0	0	0	0	0	989
990	63115010	0	0	0	0	0	0	0	0.50025	0	0	0	0	0	0	0	0	990
991	63115010	0	0	0	0	0	0	0	0.4692	0	0	0	0	0	0	0	0	991
992	63123000	0	0	0	0	0	0	0	0.5	0	0	0	0	0	0	0	0	992
993	63123000	0	0	0	0	0	0	0	0.3125	0	0	0	0	0	0	0	0	993
994	63125010	0	0	0	0	0	0	0	0.5454	0	0	0	0	0	0	0	0	994
995	63125010	0	0	0	0	0	0	0	0.49995	0	0	0	0	0	0	0	0	995
996	63126500	0	0	0	0	0	0	0	0.4294	0	0	0	0	0	0	0	0	996
997	63126500	0	0	0	0	0	0	0	0.50003	0	0	0	0	0	0	0	0	997
998	63126500	0	0	0	0	0	0	0	0.03955	0	0	0	0	0	0	0	0	998
999	63127010	0	0	0	0	0	0	0	0.735	0	0	0	0	0	0	0	0	999
1000	63127010	0	0	0	0	0	0	0	0.52038	0	0	0	0	0	0	0	0	1000
1001	63127010	0	0	0	0	0	0	0	0.36456	0	0	0	0	0	0	0	0	1001
1002	63127010	0	0	0	0	0	0	0	1.47	0	0	0	0	0	0	0	0	1002
1003	63129010	0	0	0	0	0	0	0	0.49995	0	0	0	0	0	0	0	0	1003
1004	63129010	0	0	0	0	0	0	0	0.62721	0	0	0	0	0	0	0	0	1004
1005	58100310	1.68554	0	0.05396	0	0	0	0.05396	0	0	0	0	0.46576	0.45566	48.92184	0	0	1005
1006	58100320	1.9008	0	0.06138	0	0	0	0.06138	0	1.08702	0	0	0.5247	0.51304	190.88784	0	0	1006
1007	58100320	1.3632	0	0.04402	0	0	0	0.04402	0	0.77958	0	0	0.3763	0.36794	136.89936	0	0	1007
1008	58100530	1.18545	0	0.2394	0	0	0	0.2394	0	0.378	0.4704	0	0	0.0021	86.3919	0	0	1008
1009	58100600	1.64682	0	0.252	0	0	0	0.252	0	0	1.33434	0	0	0.00224	24.48306	0	0	1009
1010	58100710	1.24136	0	0.2242	0	0	0	0.22302	0	0	0	0	0.29146	0.28425	30.9042	0	0	1010
1011	58100800	1.15566	0	0.23358	0	0	0	0.23358	0	0.73644	0	0	0	0.00227	114.7959	0	0	1011
1012	58101300	1.19028	0	0.1638	0	0	0	0.1638	0	0.11778	0.9282	0	0	0	84.42252	0	0	1012
1013	58101320	1.19028	0	0.24983	0	0	0	0.24983	0	0.18177	0.75696	0	0	0	69.40377	0	0	1013
1014	58104740	2.33	0	0.04	0	0	0	0.04	0	1.33	1.4	0	0	1	143	0	0	1014
1015	58104810	1.17504	0	0.04104	0	0	0	0.04104	0	0	1.01808	0	0	0	62.93376	0	0	1015
1016	58105000	2.10512	0	0.67792	0	0	0	0.67792	0.1784	0	1.50748	0	0	0.00396	36.18621	0	0	1016
1017	58105000	0.77408	0	0.24928	0	0	0	0.24928	0.0656	0	0.55432	0	0	0.00146	13.30614	0	0	1017
1018	58105050	1.77508	0	0.48391	0	0	0	0.48391	0	0	2.99712	0	0	0.00297	85.8996	0	0	1018
1019	58106220	1.31166	0	0.1827	0	0	0	0.1827	0	0.41013	0	0	0	0.15064	49.65219	0.90112	0	1019
1020	58106220	4.09113	0	0.56985	0	0	0	0.56985	0	1.27922	0	0	0	0.46985	154.86754	2.81064	0	1020
1021	58106220	2.61811	0	0.36467	0	0	0	0.36467	0	0.81863	0	0	0	0.30068	99.10735	1.79867	0	1021
1022	58106220	2.04556	0	0.28493	0	0	0	0.28493	0	0.63961	0	0	0	0.23493	77.43377	1.40532	0	1022
1023	58106220	3.83088	0	0.5336	0	0	0	0.5336	0	1.19784	0	0	0	0.43996	145.01592	2.63185	0	1023
1024	58106230	2.04622	0	0.14271	0	0	0	0.142	0	0.32021	0	0	0	0.11739	53.82936	1.40792	0	1024
1025	58106230	6.39084	0	0.44572	0	0	0	0.4435	0	1.00009	0	0	0	0.36663	168.12198	4.39728	0	1025
1026	58106230	4.08523	0	0.28492	0	0	0	0.2835	0	0.63929	0	0	0	0.23436	107.46918	2.81089	0	1026
1027	58106230	2.11827	0	0.14774	0	0	0	0.147	0	0.33149	0	0	0	0.12152	55.72476	1.4575	0	1027
1028	58106230	0.63404	0	0.04422	0	0	0	0.044	0	0.09922	0	0	0	0.03637	16.67952	0.43626	0	1028
1029	58106230	3.19542	0	0.22286	0	0	0	0.22175	0	0.50005	0	0	0	0.18331	84.06099	2.19864	0	1029
1030	58106230	7.14736	0	0.49848	0	0	0	0.496	0	1.11848	0	0	0	0.41003	188.02368	4.91781	0	1030
1031	58106320	1.1235	0	0.3241	0	0	0	0.3241	0	0.3514	0	0	0	0.12911	42.5565	0.77369	0	1031
1032	58106320	3.50692	0	1.01166	0	0	0	1.01165	0	1.09687	0	0	0	0.40301	132.83707	2.41502	0	1032
1033	58106320	2.247	0	0.6482	0	0	0	0.6482	0	0.7028	0	0	0	0.25822	85.113	1.54738	0	1033
1034	58106320	1.75346	0	0.50583	0	0	0	0.50583	0	0.54844	0	0	0	0.20151	66.41854	1.20751	0	1034
1035	58106320	3.4026	0	0.98156	0	0	0	0.98156	0	1.06424	0	0	0	0.39102	128.8854	2.34318	0	1035
1036	58106330	1.8642	0	0.2691	0	0	0	0.2691	0	0.29172	0	0	0	0.10695	49.04874	1.28049	0	1036
1037	58106330	5.82562	0	0.84094	0	0	0	0.84094	0	0.91162	0	0	0	0.33421	153.27731	4.00153	0	1037
1038	58106330	3.7284	0	0.5382	0	0	0	0.5382	0	0.58344	0	0	0	0.21389	98.09748	2.56098	0	1038
1039	58106330	2.09125	0	0.30188	0	0	0	0.30188	0	0.32725	0	0	0	0.11997	55.02262	1.43645	0	1039
1040	58106330	2.91281	0	0.42047	0	0	0	0.42047	0	0.45581	0	0	0	0.1671	76.63866	2.00077	0	1040
1041	58106330	6.5964	0	0.9522	0	0	0	0.9522	0	1.03224	0	0	0	0.37843	173.55708	4.53097	0	1041
1042	58106520	1.30569	0	0.18176	0	0	0	0.18176	0	0.40825	0.20235	0	0	0.15241	80.57151	0.95785	0	1042
1043	58106520	4.07798	0	0.56768	0	0	0	0.56768	0	1.27506	0.63199	0	0	0.47602	251.64412	2.99159	0	1043
1044	58106520	2.60678	0	0.36288	0	0	0	0.36288	0	0.81506	0.40399	0	0	0.30429	160.85932	1.91232	0	1044
1045	58106520	2.03899	0	0.28384	0	0	0	0.28384	0	0.63753	0.31599	0	0	0.23801	125.82206	1.49579	0	1045
1046	58106520	3.51249	0	0.48896	0	0	0	0.48896	0	1.09825	0.54435	0	0	0.41001	216.74871	2.57675	0	1046
1047	58106530	2.0856	0	0.14536	0	0	0	0.14536	0	0.32627	0.15721	0	0	0.12166	79.86663	1.47668	0	1047
1048	58106530	6.5076	0	0.45356	0	0	0	0.45356	0	1.01804	0.49054	0	0	0.37961	249.20411	4.6076	0	1048
1049	58106530	4.1646	0	0.29026	0	0	0	0.29026	0	0.65151	0.31392	0	0	0.24294	159.48052	2.94868	0	1049
1050	58106530	2.0988	0	0.14628	0	0	0	0.14628	0	0.32834	0.15821	0	0	0.12243	80.37211	1.48602	0	1050
1051	58106530	3.2538	0	0.22678	0	0	0	0.22678	0	0.50902	0.24527	0	0	0.18981	124.60205	2.3038	0	1051
1052	58106530	6.732	0	0.4692	0	0	0	0.4692	0	1.05315	0.50745	0	0	0.3927	257.79735	4.76649	0	1052
1053	58106720	1.15024	0	0.3318	0	0	0	0.3318	0	0.36024	0.18486	0	0	0.1343	70.83693	0.83464	0	1053
1054	58106720	3.58904	0	1.0353	0	0	0	1.0353	0	1.12404	0.57681	0	0	0.41905	221.02916	2.6043	0	1054
1055	58106720	2.29684	0	0.66255	0	0	0	0.66255	0	0.71934	0.36914	0	0	0.26818	141.44969	1.66664	0	1055
1056	58106720	1.79452	0	0.51765	0	0	0	0.51765	0	0.56202	0.28841	0	0	0.20953	110.51458	1.30215	0	1056
1057	58106720	3.40704	0	0.9828	0	0	0	0.9828	0	1.06704	0.54756	0	0	0.3978	209.82078	2.47223	0	1057
1058	58106730	1.93314	0	0.27927	0	0	0	0.2784	0	0.30276	0.15138	0	0	0.11271	73.86822	1.37168	0	1058
1059	58106730	6.03273	0	0.87152	0	0	0	0.8688	0	0.94482	0.47241	0	0	0.35174	230.51979	4.28057	0	1059
1060	58106730	3.86073	0	0.55774	0	0	0	0.556	0	0.60465	0.30232	0	0	0.2251	147.52417	2.73941	0	1060
1061	58106730	1.94425	0	0.28088	0	0	0	0.28	0	0.3045	0.15225	0	0	0.11336	74.29275	1.37956	0	1061
1062	58106730	3.01636	0	0.43576	0	0	0	0.4344	0	0.47241	0.23621	0	0	0.17587	115.2599	2.14029	0	1062
1063	58106730	6.62156	0	0.95658	0	0	0	0.9536	0	1.03704	0.51852	0	0	0.38608	253.01988	4.69838	0	1063
1064	58108010	4.93112	0	0	0	0	0	0	0	1.13208	0.87768	0	0	0	315.54504	0	0	1064
1065	58108050	0.30296	0	0.03164	0	0	0	0.03164	0	0.07112	0.03472	0	0	0.02654	15.15906	0.24348	0	1065
1066	58110110	0.5888	0	0.22656	0	0	0.0352	0.19072	0	0	0.14208	0	0	0.63872	21.81312	0	0	1066
1067	58110110	0.1196	0	0.04602	0	0	0.00715	0.03874	0	0	0.02886	0	0	0.12974	4.43079	0	0	1067
1068	58110130	0.57664	0	0.1536	0	0	0.03456	0.11904	0	0	0.39104	0	0	0.62507	20.17152	0	0	1068
1069	58110130	0.11713	0	0.0312	0	0	0.00702	0.02418	0	0	0.07943	0	0	0.12697	4.09734	0	0	1069
1070	58111110	0.33744	0	0.02071	0	0	0.01881	0.0019	0	0	0.22211	0	0	0	15.63795	0	0	1070
1071	58111110	0.5328	0	0.0327	0	0	0.0297	0.003	0	0	0.3507	0	0	0	24.6915	0	0	1071
1072	58112510	0.25493	0	0.03182	0	0	0	0.03182	0	0	0.60199	0	0	0.03799	0.06327	0.30671	0	1072
1073	58125110	1.81824	0	0.00576	0	0	0	0.00576	0	0.29568	0.86016	0	0	0	371.07072	0	0	1073
1074	58125110	1.07011	0	0.00339	0	0	0	0.00339	0	0.17402	0.50624	0	0	0	218.39058	0	0	1074
1075	58125120	0.96954	0	0.20163	0	0.16016	0	0.04147	0	0.33033	0.49621	0	0	0	220.01265	0	0	1075
1076	58125120	0.76614	0	0.15933	0	0.12656	0	0.03277	0	0.26103	0.39211	0	0	0	173.85615	0	0	1076
1077	58126130	1.95936	0	0	0	0	0	0	0	0.22272	0.62208	0	0	0	195.60096	0	0	1077
1078	58127330	1.75377	0	0	0	0	0	0	0	0.3021	1.9239	0	0	0.00707	304.27353	18.91771	0	1078
1079	58130010	1.2566	0	0.34196	0	0	0	0.3399	0	0.70452	0.6901	0	0	0	85.41378	6.86406	0	1079
1080	58130010	1.525	0	0.415	0	0	0	0.4125	0	0.855	0.8375	0	0	0	103.6575	8.33018	0	1080
1081	58130320	1.30752	0	0.71505	0.03632	0.21111	0	0.46535	0	0.73321	0	0	0	0	66.62223	7.15794	0	1081
1082	58130320	1.44	0	0.7875	0.04	0.2325	0	0.5125	0	0.8075	0	0	0	0	73.3725	7.88319	0	1082
1083	58131323	0.91239	0	0.19704	0	0	0	0.19704	0	0.02008	0.23218	0	0	0	9.00211	21.43911	0	1083
1084	58131323	1.54487	0	0.33362	0	0	0	0.33362	0	0.034	0.39313	0	0	0	15.24263	36.30128	0	1084
1085	58131323	0.23991	0	0.05181	0	0	0	0.05181	0	0.00528	0.06105	0	0	0	2.36709	5.63737	0	1085
1086	58131510	1.2392	0	0.0032	0	0	0	0.0032	0	0.2352	0.2128	0	0	0	13.8644	0	0	1086
1087	58131510	0.23235	0	0.0006	0	0	0	0.0006	0	0.0441	0.0399	0	0	0	2.59945	0	0	1087
1088	58132110	1.8724	0	0.5	0	0	0	0.5	0	0.00496	0	0	0	0.0259	18.57024	3.42634	0	1088
1089	58132310	1.7484	0	0.35	0	0.01488	0	0.35	0	0.10664	1.08624	0.00248	0	0.01929	81.40104	4.19223	0	1089
1090	58133120	2.64836	0	0.34892	0	0	0	0.35178	0	1.36994	0.5005	0	0	0	18.16386	0.16588	0	1090
1091	58133120	2.1761	0	0.2867	0	0	0	0.28905	0	1.12565	0.41125	0	0	0	14.92485	0.1363	0	1091
1092	58150110	0.68309	0	0.16517	0	0	0.04233	0.12284	0	0	0.17098	0	0	0.7767	3.60801	0	0	1092
1093	58150310	0.86031	0	0.11286	0	0	0.02673	0.08613	0	0	0.44946	0	0	0.97614	4.94505	0	0	1093
1094	58150510	0.86427	0	0.11385	0	0	0.02673	0.08613	0	0	0.43362	0	0	0.98098	4.55301	0	0	1094
1095	58151130	0.23608	0	0.04394	0.00572	0	0.02392	0.01456	0	0	0.11388	0	0	0	0	4.674	0	1095
1096	58151130	0.37682	0	0.07014	0.00913	0	0.03818	0.02324	0	0	0.18177	0	0	0	0	7.46042	0	1096
1097	58151140	0.2418	0	0.03094	0.00182	0.00884	0	0.02054	0	0	0	0	0	0	0	4.10771	0	1097
1098	58151140	0.38595	0	0.04938	0.0029	0.01411	0	0.03279	0	0	0	0	0	0	0	6.55654	0	1098
1099	58160110	0.66681	0	0	0	0	0	0	0	0	0	0	0.33341	0	44.75155	0	0	1099
1100	58161300	0.99265	0	0.16524	0	0	0	0.16524	0	0	0	0	0	0	11.03341	0	0	1100
1101	58162110	0.35164	0	0.45147	0	0	0	0.44998	0	0.03874	1.64943	0	0	0	66.95613	1.8406	0	1101
1102	58163410	0.66947	0	0.25	0	0	0	0.25	0	0	0	0	0	0.33858	0	2.44883	0	1102
1103	58163610	0.8343	0	0.17819	0	0	0	0.17819	0	0.00309	0.01133	0.00618	0	0	40.6026	0.33483	0	1103
1104	58200100	5.14837	0	0.51094	0	0.16021	0	0.35073	0.2598	0	2.91409	0	0.12124	0.03031	14.40158	0	0	1104
1105	57305100	0.56347	0.49097	0	0	0	0	0	0	0	0	0	0	0.00277	0	47.91907	0	1105
1106	57330000	1.17303	0.63074	0	0	0	0	0	0.17873	0	0	0	0	0	0	49.23759	0	1106
1107	57330000	0.74997	0.40326	0	0	0	0	0	0.11427	0	0	0	0	0	0	31.47977	0	1107
1108	57336000	1.07547	0	0	0	0	0	0	0	0	0	0	0	0	0	9.9928	0	1108
1109	57339000	0.86242	0	0	0	0	0	0	0	0	0	0	0	0	0	8.50279	0	1109
1110	57339000	0.82925	0	0	0	0	0	0	0	0	0	0	0	0	0	8.17576	0	1110
1111	57344000	0.92628	0	0	0	0	0	0	0	0	0	0	0	0	0.01674	12.83367	0	1111
1112	57344000	0.62748	0	0	0	0	0	0	0	0	0	0	0	0	0.01134	8.69378	0	1112
1113	57347000	0.49414	0	0	0	0	0	0	0	0	0	0	0	0.00069	0.01395	53.98002	0	1113
1114	57347000	0.44632	0	0	0	0	0	0	0	0	0	0	0	0.00062	0.0126	48.75615	0	1114
1115	57349000	0.87904	0	0	0	0	0	0	0	0	0	0	0	0	0	58.75772	0	1115
1116	57349000	0.68608	0	0	0	0	0	0	0	0	0	0	0	0	0	45.85969	0	1116
1117	57406100	0.96459	0.96459	0	0	0	0	0	0	0	0	0	0	0.00066	0	21.24609	0	1117
1118	57406100	0.82867	0.82867	0	0	0	0	0	0	0	0	0	0	0.00057	0	18.25232	0	1118
1119	57407100	0.6042	0	0	0	0	0	0	0	0	0	0	0	0.00033	8.6805	50.83439	0	1119
1120	57407100	0.54378	0	0	0	0	0	0	0	0	0	0	0	0.0003	7.81245	45.75095	0	1120
1121	57417000	1.7635	1.7635	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1121
1122	57417000	0.84648	0.84648	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1122
1123	57418000	0.8562	0.8562	0	0	0	0	0	0	0	0	0	0	0.00013	5.049	15.98418	0	1123
1124	57601100	0.51141	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1124
1125	58100100	1.4784	0	0	0	0	0	0	0	0	1.6416	0	0	0.00256	76.88736	0	0	1125
1126	58100110	1.35468	0	0.04402	0	0	0	0.04402	0	0	1.01672	0	0.37346	0.36573	70.37946	0	0	1126
1127	58100130	1.98198	0	0	0	0	0	0	0	1.69884	2.19384	0	0	0.00352	315.62784	0	0	1127
1128	58100130	1.42142	0	0	0	0	0	0	0	1.21836	1.57336	0	0	0.00252	226.35936	0	0	1128
1129	58100140	1.82325	0	0.05865	0	0	0	0.05865	0	1.04295	1.3668	0	0.5049	0.49243	267.4134	0	0	1129
1130	58100140	1.6731	0	0.05382	0	0	0	0.05382	0	0.95706	1.25424	0	0.46332	0.45188	245.39112	0	0	1130
1131	58100140	2.08065	0	0.06693	0	0	0	0.06693	0	1.19019	1.55976	0	0.57618	0.56195	305.16588	0	0	1131
1132	58101320	1.36268	0	0.49063	0	0	0	0.49063	0	0.35697	1.48656	0	0	0	136.29897	0	0	1132
1133	58101400	1.19028	0	0.08096	0	0	0	0.08096	0	0.21436	0.8924	0	0	0.00266	77.56704	0	0	1133
1134	58101450	1.16608	0	0.20224	0	0	0	0.20224	0	0.11776	2.29248	0	0	0.00199	34.7328	0	0	1134
1135	58101720	1.19028	0	0.22176	0	0	0	0.22264	0	0.14432	0	0	0.20944	0.20357	47.19528	0	0	1135
1136	58101910	1.09736	0	0.80736	0	0	0	0.80736	0	0.30856	1.66576	0	0	1.80805	84.91896	0	0	1136
1137	58101910	0.57706	0	0.42456	0	0	0	0.42456	0	0.16226	0.87596	0	0	0.95079	44.65566	0	0	1137
1138	58103110	0.8232	0	0.0749	0	0	0	0.0749	0	0	0.5684	0	0	0	48.069	0	0	1138
1139	58104100	2.17194	0	0	0	0	0	0	0	1.41298	0	0	0	2.37605	176.60448	0	0	1139
1140	58104100	1.18842	0	0	0	0	0	0	0	0.77314	0	0	0	1.3001	96.63264	0	0	1140
1141	58104180	2.84328	0	0.2277	0	0	0	0.22968	0	0.70686	0.7326	0	0.25542	3.35984	119.82168	0	0	1141
1142	58104180	1.26368	0	0.1012	0	0	0	0.10208	0	0.31416	0.3256	0	0.11352	1.49326	53.25408	0	0	1142
1143	58104250	1.60176	0	0	0	0	0	0	0	1.04152	3.8728	0	0	1.75258	130.26708	0	0	1143
1144	58104250	0.74124	0	0	0	0	0	0	0	0.48198	1.7922	0	0	0.81103	60.28317	0	0	1144
1145	58104510	1.01598	0	0.2419	0	0	0	0.2419	0	0.43424	0.6018	0	0	0.00184	195.2487	0	0	1145
1146	58104530	1.76412	0	0.33123	0	0	0	0.33123	0	0.75396	1.39995	0	0	0.00325	309.76776	0	0	1146
1147	58104530	1.99548	0	0.37467	0	0	0	0.37467	0	0.85284	1.58355	0	0	0.00368	350.39304	0	0	1147
1148	58104710	2.33874	0	0.03692	0	0	0	0.03692	0	1.33622	0	0	0	1.00631	207.2277	0	0	1148
1149	58104730	2.32944	0	0.0368	0	0	0	0.0368	0	1.33032	1.40024	0	0	1.003	231.9228	0	0	1149
1150	22101220	0	0	0	0	0	0	0	0	0	2.23448	0	0	0.12119	26.40168	0	0	1150
1151	22101220	0	0	0	0	0	0	0	0	0	3.22028	0	0	0.17466	38.04948	0	0	1151
1152	22101220	0	0	0	0	0	0	0	0	0	1.21582	0	0	0.06594	14.36562	0	0	1152
1153	22101220	0	0	0	0	0	0	0	0	0	4	0	0	0.18535	40.37904	0	0	1153
1154	22101310	0.98496	0	0	0	0	0	0	0	0	2.18784	0.0048	0	1.02677	69.73344	3.68251	0	1154
1155	22101310	1.42614	0	0	0	0	0	0	0	0	3.16781	0.00695	0	1.48668	100.96821	5.33196	0	1155
1156	22101310	0.53352	0	0	0	0	0	0	0	0	1.18508	0.0026	0	0.55617	37.77228	1.99469	0	1156
1157	22101310	1.16348	0	0	0	0	0	0	0	0	2.58439	0.00567	0	1.21288	82.37263	4.34996	0	1157
1158	22101320	0.8488	0	0	0	0	0	0	0	0	1.8776	0.004	0	0.97867	29.412	3.17278	0	1158
1159	22101320	1.24137	0	0	0	0	0	0	0	0	2.74599	0.00585	0	1.4313	43.01505	4.64019	0	1159
1160	22101320	0.46684	0	0	0	0	0	0	0	0	1.03268	0.0022	0	0.53827	16.1766	1.74503	0	1160
1161	22101320	1.2732	0	0	0	0	0	0	0	0	2.8164	0.006	0	1.468	44.118	4.75917	0	1161
1162	22210400	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1162
1163	22311020	0	0	0	0	0	0	0	0	0	1.48134	0	0	0	0	0	0	1163
1164	22311020	0	0	0	0	0	0	0	0	0	2.22201	0	0	0	0	0	0	1164
1165	22311020	0	0	0	0	0	0	0	0	0	0.74067	0	0	0	0	0	0	1165
1166	22311020	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1166
1167	22401020	0	0	0	0	0	0	0	0	0	1.4763	0	0	0	1.45152	0	0	1167
1168	22401020	0	0	0	0	0	0	0	0	0	2.21445	0	0	0	2.17728	0	0	1168
1169	22401020	0	0	0	0	0	0	0	0	0	0.73815	0	0	0	0.72576	0	0	1169
1170	22401020	0	0	0	0	0	0	0	0	0	4	0	0	0	3.9191	0	0	1170
1171	22501010	0	0	0	0	0	0	0	0	0	0.81121	0	0	0	0	0	0	1171
1172	22501010	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1172
1173	22601000	0	0	0	0	0	0	0	0	0	0.18112	0	0	0	25.79328	0	0	1173
1174	22601000	0	0	0	0	0	0	0	0	0	0.27168	0	0	0	38.68992	0	0	1174
1175	22601000	0	0	0	0	0	0	0	0	0	0.1132	0	0	0	16.1208	0	0	1175
1176	22701010	0	0	0	0	0	0	0	0	0	3.66525	0	0	0	280.28835	0	0	1176
1177	22701010	0	0	0	0	0	0	0	0	0	1.22175	0	0	0	93.42945	0	0	1177
1178	22701010	0	0	0	0	0	0	0	0	0	0.95025	0	0	0	72.66735	0	0	1178
1179	22701010	0	0	0	0	0	0	0	0	0	0.67875	0	0	0	51.90525	0	0	1179
1180	22701020	0	0	0	0	0	0	0	0	0	3.524	0	0	0	1.17	0	0	1180
1181	22701020	0	0	0	0	0	0	0	0	0	1.16292	0	0	0	0.3861	0	0	1181
1182	22701020	0	0	0	0	0	0	0	0	0	0.91624	0	0	0	0.3042	0	0	1182
1183	22701020	0	0	0	0	0	0	0	0	0	0.63432	0	0	0	0.2106	0	0	1183
1184	22701040	0.0368	0	0.0024	0	0	0	0.0024	0	0	0.7404	0	0	0.00027	60.7248	2.17804	0	1184
1185	22701040	0.04784	0	0.00312	0	0	0	0.00312	0	0	0.96252	0	0	0.00035	78.94224	2.83145	0	1185
1186	22701040	0.02668	0	0.00174	0	0	0	0.00174	0	0	0.53679	0	0	0.00019	44.02548	1.57908	0	1186
1187	22701050	0.0276	0	0.0018	0	0	0	0.0018	0	0	0.6756	0	0	0.0002	14.1345	1.63353	0	1187
1188	22701050	0.03496	0	0.00228	0	0	0	0.00228	0	0	0.85576	0	0	0.00025	17.9037	2.06913	0	1188
1189	22701050	0.01932	0	0.00126	0	0	0	0.00126	0	0	0.47292	0	0	0.00014	9.89415	1.14347	0	1189
1190	22709010	0	0	0	0	0	0	0	0	0	0.85472	0	0	0	75.38112	0	0	1190
1191	22709010	0	0	0	0	0	0	0	0	0	1.52247	0	0	0	134.27262	0	0	1191
1192	23101020	0	0	0	0	0	0	0	0	0	3.62024	0	0	0	13.16952	0	0	1192
1193	23101020	0	0	0	0	0	0	0	0	0	2.71518	0	0	0	9.87714	0	0	1193
1194	23101020	0	0	0	0	0	0	0	0	0	1.81012	0	0	0	6.58476	0	0	1194
1195	23101020	0	0	0	0	0	0	0	0	0	4	0	0	0	14.35984	0	0	1195
1196	23203110	0	0	0	0	0	0	0	0	0	3.65191	0	0	0	3.55775	0	0	1196
1197	23203110	0	0	0	0	0	0	0	0	0	4.64168	0	0	0	4.522	0	0	1197
1198	23203110	0	0	0	0	0	0	0	0	0	3.13996	0	0	0	3.059	0	0	1198
1199	23205030	0	0	0	0	0	0	0	0	0	2.68191	0	0	0.08675	0	0	0	1199
1200	23205030	0	0	0	0	0	0	0	0	0	3.94972	0	0	0.12776	0	0	0	1200
1201	23210020	0	0	0	0	0	0	0	0	0	1.44774	0	0	0	0.97146	0	0	1201
1202	23210020	0	0	0	0	0	0	0	0	0	2.17161	0	0	0	1.45719	0	0	1202
1203	23210020	0	0	0	0	0	0	0	0	0	0.72387	0	0	0	0.48573	0	0	1203
1204	23210020	0	0	0	0	0	0	0	0	0	3.9089	0	0	0	2.62294	0	0	1204
1205	23321100	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1205
1206	24107010	0.68972	0	0	0	0	0	0	0	0.00774	2.00724	0	0	0	85.16322	0	0	1206
1207	24107010	1.1228	0	0	0	0	0	0	0	0.0126	3.2676	0	0	0	138.6378	0	0	1207
1208	24107010	0.39298	0	0	0	0	0	0	0	0.00441	1.14366	0	0	0	48.52323	0	0	1208
1209	24107010	0.90947	0	0	0	0	0	0	0	0.01021	2.64676	0	0	0	112.29662	0	0	1209
1210	24122110	0	0	0	0	0	0	0	0	0	3.45646	0	0	0	0	0	0	1210
1211	24122110	0	0	0	0	0	0	0	0	0	5.46685	0	0	0	0	0	0	1211
1212	24122110	0	0	0	0	0	0	0	0	0	3.91497	0	0	0	0	0	0	1212
1213	24122110	0	0	0	0	0	0	0	0	0	2.96268	0	0	0	0	0	0	1213
1214	24122110	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1214
1215	24122120	0	0	0	0	0	0	0	0	0	3.03322	0	0	0	0	0	0	1215
1216	24122120	0	0	0	0	0	0	0	0	0	4.44402	0	0	0	0	0	0	1216
1217	24122120	0	0	0	0	0	0	0	0	0	3.45646	0	0	0	0	0	0	1217
1218	24122120	0	0	0	0	0	0	0	0	0	2.64525	0	0	0	0	0	0	1218
1219	24122120	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1219
1220	24124120	0	0	0	0	0	0	0	0	0	2.9197	0	0	0	22.36086	0	0	1220
1221	24124120	0	0	0	0	0	0	0	0	0	3.3271	0	0	0	25.48098	0	0	1221
1222	24124120	0	0	0	0	0	0	0	0	0	2.54625	0	0	0	19.50075	0	0	1222
1223	24124120	0	0	0	0	0	0	0	0	0	4	0	0	0	27.04104	0	0	1223
1224	24127110	1.0668	0	0	0	0	0	0	0	0.0112	3.451	0	0	0	102.8664	0	0	1224
1225	24127110	1.20396	0	0	0	0	0	0	0	0.01264	3.8947	0	0	0	116.09208	0	0	1225
1226	24127110	0.9144	0	0	0	0	0	0	0	0.0096	2.958	0	0	0	88.1712	0	0	1226
1227	24127110	0.86411	0	0	0	0	0	0	0	0.00907	2.79531	0	0	0	83.32178	0	0	1227
1228	24127150	0.84348	0	0	0	0	0	0	0	0.00756	2.61684	0	0	0	81.75492	0	0	1228
1229	24127150	0.94501	0	0	0	0	0	0	0	0.00847	2.93183	0	0	0	91.59579	0	0	1229
1230	24127150	0.71852	0	0	0	0	0	0	0	0.00644	2.22916	0	0	0	69.64308	0	0	1230
1231	24127150	0.88565	0	0	0	0	0	0	0	0.00794	2.74768	0	0	0	85.84267	0	0	1231
1232	24132210	0	0	0	0	0	0	0	0	0	3.84066	0	0	0	46.89846	0	0	1232
1233	24132210	0	0	0	0	0	0	0	0	0	5.01981	0	0	0	61.29711	0	0	1233
1234	24132210	0	0	0	0	0	0	0	0	0	3.16686	0	0	0	38.67066	0	0	1234
1235	24132220	0	0	0	0	0	0	0	0	0	3.35065	0	0	0	0	0	0	1235
1236	24132220	0	0	0	0	0	0	0	0	0	4.51456	0	0	0	0	0	0	1236
1237	24132220	0	0	0	0	0	0	0	0	0	2.85687	0	0	0	0	0	0	1237
1238	24142220	0	0	0	0	0	0	0	0	0	1.55188	0	0	0	0	0	0	1238
1239	24142220	0	0	0	0	0	0	0	0	0	2.04566	0	0	0	0	0	0	1239
1240	24142220	0	0	0	0	0	0	0	0	0	1.19918	0	0	0	0	0	0	1240
1241	24147210	0.4752	0	0	0	0	0	0	0	0.00504	1.82016	0	0	0	57.90528	0	0	1241
1242	24147210	0.6204	0	0	0	0	0	0	0	0.00658	2.37632	0	0	0	75.59856	0	0	1242
1243	24147210	0.363	0	0	0	0	0	0	0	0.00385	1.3904	0	0	0	44.2332	0	0	1243
1244	24152220	0	0	0	0	0	0	0	0	0	1.80336	0	0	0	8.18532	0	0	1244
1245	24152220	0	0	0	0	0	0	0	0	0	2.4276	0	0	0	11.0187	0	0	1245
1246	24152220	0	0	0	0	0	0	0	0	0	1.59528	0	0	0	7.24086	0	0	1246
1247	24154210	0	0	0	0	0	0	0	0	0	2.015	0	0	0	38.6694	0	0	1247
1248	24154210	0	0	0	0	0	0	0	0	0	2.73	0	0	0	52.3908	0	0	1248
1249	24154210	0	0	0	0	0	0	0	0	0	1.7875	0	0	0	34.3035	0	0	1249
1250	24154220	0	0	0	0	0	0	0	0	0	1.729	0	0	0	22.83372	0	0	1250
1251	24154220	0	0	0	0	0	0	0	0	0	2.3275	0	0	0	30.7377	0	0	1251
1252	24154220	0	0	0	0	0	0	0	0	0	1.5295	0	0	0	20.19906	0	0	1252
1253	24157210	0.68112	0	0	0	0	0	0	0	0.00774	2.03046	0	0	0	79.03314	0	0	1253
1254	24157210	0.92664	0	0	0	0	0	0	0	0.01053	2.76237	0	0	0	107.52183	0	0	1254
1255	24157210	0.60192	0	0	0	0	0	0	0	0.00684	1.79436	0	0	0	69.84324	0	0	1255
1256	24164110	0	0	0	0	0	0	0	0	0	0.95168	0	0	0	42.60672	0	0	1256
1257	24164110	0	0	0	0	0	0	0	0	0	0.4461	0	0	0	19.9719	0	0	1257
1258	24164110	0	0	0	0	0	0	0	0	0	1.27882	0	0	0	57.25278	0	0	1258
1259	24164110	0	0	0	0	0	0	0	0	0	0.83272	0	0	0	37.28088	0	0	1259
1260	24167110	0.43463	0	0	0	0	0	0	0	0.0049	1.01087	0	0	0	71.56989	0	0	1260
1261	24167110	0.16853	0	0	0	0	0	0	0	0.0019	0.39197	0	0	0	27.75159	0	0	1261
1262	24167110	0.56768	0	0	0	0	0	0	0	0.0064	1.32032	0	0	0	93.47904	0	0	1262
1263	24167110	0.37254	0	0	0	0	0	0	0	0.0042	0.86646	0	0	0	61.34562	0	0	1263
1264	24198700	0.8398	0	0	0	0	0	0	0	0	1.6264	0	0	1.6264	1.6264	0	0	1264
1265	24198700	1.11605	0	0	0	0	0	0	0	0	2.1614	0	0	2.1614	2.1614	0	0	1265
1266	24198700	0.1768	0	0	0	0	0	0	0	0	0.3424	0	0	0.3424	0.3424	0	0	1266
1267	24198700	0.9724	0	0	0	0	0	0	0	0	1.8832	0	0	1.8832	1.8832	0	0	1267
1268	24198740	0.7956	0	0	0	0	0	0	0	0	1.5408	0	0	2.55696	4.86648	0	0	1268
1269	24198740	0.1989	0	0	0	0	0	0	0	0	0.3852	0	0	0.63924	1.21662	0	0	1269
1270	24201120	0	0	0	0	0	0	0	0	0	0.98756	0	0	0	0	0	0	1270
1271	24201120	0	0	0	0	0	0	0	0	0	0.49378	0	0	0	0	0	0	1271
1272	24201120	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1272
1273	24201320	0	0	0	0	0	0	0	0	0	0.98756	0	0	0	0	0	0	1273
1274	24201320	0	0	0	0	0	0	0	0	0	0.49378	0	0	0	0	0	0	1274
1275	24201320	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1275
1276	24207000	0	0	0	0	0	0	0	0	0	2.0286	0	0	0	22.8366	0	0	1276
1277	24207000	0	0	0	0	0	0	0	0	0	2.14694	0	0	0	24.16873	0	0	1277
1278	24207000	0	0	0	0	0	0	0	0	0	2.7048	0	0	0	30.4488	0	0	1278
1279	24207000	0	0	0	0	0	0	0	0	0	1.62288	0	0	0	18.26928	0	0	1279
1280	24207000	0	0	0	0	0	0	0	0	0	4	0	0	0	42.62832	0	0	1280
1281	24208500	0	0	0	0	0	0	0	0	0	0.30833	0	0	0	22.88286	0	0	1281
1282	24301010	0	0	0	0	0	0	0	0	0	2.1204	0	0	0	143.16804	0	0	1282
1283	24301010	0	0	0	0	0	0	0	0	0	1.5345	0	0	0	103.60845	0	0	1283
1284	24301010	0	0	0	0	0	0	0	0	0	10.6578	0	0	0	719.60778	0	0	1284
1285	24401010	0	0	0	0	0	0	0	0	0	3.5013	0	0	0	96.9903	0	0	1285
1286	24401010	0	0	0	0	0	0	0	0	0	9.73998	0	0	0	269.80938	0	0	1286
1287	25110140	0	0	0	0	0	0	0	0	0	2.8883	0	0	0	12.7755	0	0	1287
1288	25110450	0.8988	0	0	0	0	0	0	0	0	4.186	0	0	0	54.8226	0	0	1288
1289	25110450	0.14124	0	0	0	0	0	0	0	0	0.6578	0	0	0	8.61498	0	0	1289
1290	25112200	0.13665	0	0	0	0	0	0	0	0	0.53667	0.00028	0	0	23.50442	0	0	1290
1291	25210230	0	0	0	0	0	0	0	0	0	1.98303	0	0	0	15.43104	0	0	1291
1292	25210280	0	0	0	0	0	0	0	0	0	1.63704	0	0	0.05193	110.02311	0.57442	0	1292
1293	25220350	0	0	0	0	0	0	0	0	0	2.34005	0	0	0	170.595	0	0	1293
1294	25220400	0	0	0	0	0	0	0	0	0	0.78708	0	0	0	54.6336	0	0	1294
1295	25220500	0	0	0	0	0	0	0	0	0	0.87864	0	0	0	31.65372	0	0	1295
1296	25221250	0	0	0	0	0	0	0	0	0	0.12771	0	0	0.00297	17.43439	0.06437	0	1296
1297	25221250	0	0	0	0	0	0	0	0	0	0.59211	0	0	0.01377	80.83219	0.29842	0	1297
1298	25221310	0	0	0	0	0	0	0	0	0	2.13816	0	0	0	144.1831	0	0	1298
1299	25221310	0	0	0	0	0	0	0	0	0	3.21432	0	0	0	216.75209	0	0	1299
1300	25221470	0	0	0	0	0	0	0	0	0	0.66933	0	0	0	74.05425	0	0	1300
1301	25221470	0	0	0	0	0	0	0	0	0	0.32227	0	0	0	35.65575	0	0	1301
1302	25221850	0	0	0	0	0	0	0	0	0	0.91392	0	0	0.00199	29.35044	0	0	1302
1303	25221910	0	0	0	0	0	0	0	0	0	0.46528	0	0	0	27.26352	0	0	1303
1304	25221910	0	0	0	0	0	0	0	0	0	3.28604	0	0	0	192.54861	0	0	1304
1305	25230210	0	0	0	0	0	0	0	0	0	0.98756	0	0	0	0	0	0	1305
1306	25230210	0	0	0	0	0	0	0	0	0	2.59235	0	0	0	0	0	0	1306
1307	25230210	0	0	0	0	0	0	0	0	0	0.59959	0	0	0	0	0	0	1307
1308	25230230	0	0	0	0	0	0	0	0	0	0.98756	0	0	0	0	0	0	1308
1309	25230310	0	0	0	0	0	0	0	0	0	0.9999	0	0	0.00019	0	0	0	1309
1310	25230900	0	0	0	0	0	0	0	0	0	0.9999	0	0	0	0	3.8569	0	1310
1311	25230900	0	0	0	0	0	0	0	0	0	1.42844	0	0	0	0	5.50986	0	1311
1312	25231110	0	0	0	0	0	0	0	0	0	0.9999	0	0	0	0	0	0	1312
1313	25231110	0	0	0	0	0	0	0	0	0	2.4689	0	0	0	0	0	0	1313
1314	25240110	0.66976	0	0	0	0	0	0	0	0	1.6172	0.00208	0	1.92284	9.88416	0	0	1314
1315	25240220	0.35167	0	0	0	0	0	0	0	0	3.29659	0	0	0.41857	88.2679	0	0	1315
1316	26100120	0	0	0	0	0	0	0	0.01469	0	3.71996	0	0	0	23.36049	0	0	1316
1317	26100120	0	0	0	0	0	0	0	0.01474	0	4	0	0	0	23.44318	0	0	1317
1318	26100150	0.68742	0	0	0	0	0	0	0	0.02278	3.28434	0	0	0	124.31448	0	0	1318
1319	26100150	0.58174	0	0	0	0	0	0	0	0.01928	2.77943	0	0	0	105.20345	0	0	1319
1320	26100230	0.97812	0	0	0	0	0	0	0	0.01368	1.05279	0.00513	0	0.00317	55.10646	3.71518	0	1320
1321	26100230	0.29172	0	0	0	0	0	0	0	0.00408	0.31399	0.00153	0	0.00094	16.43526	1.10804	0	1321
1322	26100230	0.97297	0	0	0	0	0	0	0	0.01361	1.04725	0.0051	0	0.00315	54.81643	3.69562	0	1322
1323	26100240	0.3477	0	0	0	0	0	0	0	0.00399	1.54698	0.00171	0	0.00114	50.4792	1.29707	0	1323
1324	26100240	0.1037	0	0	0	0	0	0	0	0.00119	0.46138	0.00051	0	0.00034	15.0552	0.38685	0	1324
1325	26100240	0.34587	0	0	0	0	0	0	0	0.00397	1.53884	0.0017	0	0.00113	50.21352	1.29024	0	1325
1326	26101110	0	0	0	0	0	0	0	0	0	1.5795	0	0	0.2094	0	0	0	1326
1327	26101110	0	0	0	0	0	0	0	0	0	1.99017	0	0	0.26384	0	0	0	1327
1328	26107120	0	0	0	0	0	0	0	0.01008	0	2.05632	0	0	0.03696	16.19919	0	0	1328
1329	26107120	0	0	0	0	0	0	0	0.02616	0	5.33664	0	0	0.09592	42.04075	0	0	1329
1330	26107120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0.06653	29.15854	0	0	1330
1331	26107150	0.38475	0	0	0	0	0	0	0	0.01275	1.83975	0	0	0.037	69.5925	0	0	1331
1332	26107150	1.00035	0	0	0	0	0	0	0	0.03315	4.78335	0	0	0.0962	180.9405	0	0	1332
1333	26107150	0.58174	0	0	0	0	0	0	0	0.01928	2.7817	0	0	0.05594	105.22386	0	0	1333
1334	26109120	0	0	0	0	0	0	0	0.01488	0	3.04203	0	0	0	23.89635	0	0	1334
1335	26109120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0	29.13813	0	0	1335
1336	26109150	0.5841	0	0	0	0	0	0	0	0.0198	2.7918	0	0	0	70.7553	0	0	1336
1337	26109150	0.60215	0	0	0	0	0	0	0	0.02041	2.87809	0	0	0	72.94228	0	0	1337
1338	26115120	0	0	0	0	0	0	0	0.0208	0	4.2536	0	0	0	33.462	0	0	1338
1339	26115120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0	29.18916	0	0	1339
1340	26127120	0	0	0	0	0	0	0	0.01536	0	3.14112	0	0	0	24.68448	0	0	1340
1341	26127120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0	29.15854	0	0	1341
1342	26137120	0	0	0	0	0	0	0	0.02698	0	4.58802	0	0	0	43.68204	0	0	1342
1343	26137120	0	0	0	0	0	0	0	0.02622	0	4.45878	0	0	0	42.45156	0	0	1343
1344	26137120	0	0	0	0	0	0	0	0.02155	0	4	0	0	0	34.88411	0	0	1344
1345	26137190	0	0	0	0	0	0	0	0	0	0.7054	0	0	0	0	0	0	1345
1346	26137190	0	0	0	0	0	0	0	0	0	0.9999	0	0	0	0	0	0	1346
1347	26151120	0	0	0	0	0	0	0	0.02608	0	5.33825	0	0	0	41.92686	0	0	1347
1348	26151120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0	29.16875	0	0	1348
1349	26153120	0	0	0	0	0	0	0	0.02384	0	4.88124	0	0	0	38.3526	0	0	1349
1350	26153120	0	0	0	0	0	0	0	0.01814	0	4	0	0	0	29.18916	0	0	1350
1351	26155180	0	0	0	0	0	0	0	0	0	2.8216	0	0	1.2736	0	0	0	1351
1352	26155180	0	0	0	0	0	0	0	0	0	1.99981	0	0	0.90266	0	0	0	1352
1353	26155190	0	0	0	0	0	0	0	0	0	2.94504	0	0	0	0	0	0	1353
1354	26155190	0	0	0	0	0	0	0	0	0	1.99981	0	0	0	0	0	0	1354
1355	26157140	0.5307	0	0	0	0	0	0	0	0.00609	2.36031	0.00261	0	0.00174	77.02371	1.97974	0	1355
1356	26157140	0.69174	0	0	0	0	0	0	0	0.00794	3.07654	0.0034	0	0.00227	100.39642	2.58049	0	1356
1357	26213140	0.23663	0	0	0	0	0	0	0	0.00263	1.05338	0.00113	0	0.00075	22.4775	0.88381	0	1357
1358	26303150	0.43758	0	0	0	0	0	0	0	0	1.31631	0.00102	0	0.00057	45.74394	0.69632	0	1358
1359	26303160	0	0	0	0	0	0	0	0	0	2.64525	0	0	0	0	0	0	1359
1360	26303160	0	0	0	0	0	0	0	0	0	6.59549	0	0	0	0	0	0	1360
1361	26305160	0	0	0	0	0	0	0	0	0	1.69296	0	0	0	0	0	0	1361
1362	26305160	0	0	0	0	0	0	0	0	0	3.98551	0	0	0	0	0	0	1362
1363	26305160	0	0	0	0	0	0	0	0	0	4.19713	0	0	0	0	0	0	1363
1364	26305160	0	0	0	0	0	0	0	0	0	1.90458	0	0	0	0	0	0	1364
1365	26309160	0	0	0	0	0	0	0	0	0	2.4689	0	0	0	0	0	0	1365
1366	26309160	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	1366
1367	26311160	0	0	0	0	0	0	0	0	0	5.18469	0	0	0	0	0	0	1367
1368	26311160	0	0	0	0	0	0	0	0	0	5.20233	0	0	0	0	0	0	1368
1369	26311160	0	0	0	0	0	0	0	0	0	3.99962	0	0	0	0	0	0	1369
1370	26315150	0.22308	0	0	0	0	0	0	0	0	0.67002	0.00052	0	0.00029	23.32746	0.35499	0	1370
1371	26315150	0.06864	0	0	0	0	0	0	0	0	0.20616	0.00016	0	9e-05	7.17768	0.10923	0	1371
1372	26315150	0.97297	0	0	0	0	0	0	0	0	2.92232	0.00227	0	0.00126	101.74361	1.54829	0	1372
1373	26317120	0	0	0	0	0	0	0	0	0	3.18749	0	0	0	25.11526	0	0	1373
1374	26317120	0	0	0	0	0	0	0	0	0	0.43849	0	0	0	3.45501	0	0	1374
1375	26317120	0	0	0	0	0	0	0	0	0	4	0	0	0	30.13832	0	0	1375
1376	26317140	0.4087	0	0	0	0	0	0	0	0.00469	1.81838	0.00201	0	0.00134	59.32917	1.52463	0	1376
1377	26317140	0.0976	0	0	0	0	0	0	0	0.00112	0.43424	0.00048	0	0.00032	14.16816	0.36409	0	1377
1378	26317140	0.69174	0	0	0	0	0	0	0	0.00794	3.07768	0.0034	0	0.00227	100.41683	2.58049	0	1378
1379	26319120	0	0	0	0	0	0	0	0	0	2.44543	0	0	0	19.2357	0	0	1379
1380	26319120	0	0	0	0	0	0	0	0	0	0.3373	0	0	0	2.65321	0	0	1380
1381	26319120	0	0	0	0	0	0	0	0	0	4	0	0	0	29.71584	0	0	1381
1382	26319120	0	0	0	0	0	0	0	0	0	1.6865	0	0	0	13.266	0	0	1382
1383	26319120	0	0	0	0	0	0	0	0	0	1.3492	0	0	0	10.6128	0	0	1383
1384	26319130	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	1384
1385	26319130	0	0	0	0	0	0	0	0	0	2.55708	0	0	0	0	0	0	1385
1386	26319130	0	0	0	0	0	0	0	0	0	0.3527	0	0	0	0	0	0	1386
1387	26319130	0	0	0	0	0	0	0	0	0	1.7635	0	0	0	0	0	0	1387
1388	26319130	0	0	0	0	0	0	0	0	0	1.4108	0	0	0	0	0	0	1388
1389	26319140	0.96096	0	0	0	0	0	0	0	0	2.89856	0.00224	0	0.00124	100.4472	1.52918	0	1389
1390	26319140	0.55341	0	0	0	0	0	0	0	0	1.66926	0.00129	0	0.00072	57.84682	0.88064	0	1390
1391	26319140	0.21441	0	0	0	0	0	0	0	0	0.64674	0.0005	0	0.00028	22.41228	0.3412	0	1391
1392	26319140	0.9438	0	0	0	0	0	0	0	0	2.8468	0.0022	0	0.00122	98.6535	1.50187	0	1392
1393	26319140	0.5148	0	0	0	0	0	0	0	0	1.5528	0.0012	0	0.00067	53.811	0.8192	0	1393
1394	27111050	0	0	0.46688	0	0	0	0.46688	0	0	0.71214	0	0	0.79486	20.81889	2.1248	0	1394
1395	27111410	0	0	0.35052	0	0	0	0.35052	0	0	0.86868	0	0.14351	0	25.29459	2.12619	0	1395
1396	27111500	0	0	0.41792	0	0	0	0.41791	0	0	1.56248	0	0	0	46.06101	18.35889	0	1396
1397	27112010	0.6579	0	0.03612	0	0	0	0.03612	0	0.02709	1.80084	0.00903	0	0.02494	65.00439	0.96451	0	1397
1398	27115100	0	0	0	0	0	0	0	0.08906	0	2.61812	0	0	0.53572	0.17568	5.96879	0	1398
1399	27116100	0	0	0.28792	0	0	0.00118	0.28674	0.02596	0	1.76292	0	0	0	109.57716	0	0	1399
1400	27116200	0.08416	0	0.00526	0	0	0	0.00526	0	0	3.56365	0	0	0.00058	4.734	4.95877	0	1400
1401	27116200	0.03712	0	0.00232	0	0	0	0.00232	0	0	1.5718	0	0	0.00026	2.088	2.18714	0	1401
1402	27120030	0.0789	0	0.00526	0	0	0	0.00526	0	0	3.53077	0	0	0.00058	28.08445	4.70228	0	1402
1403	27120030	0.0348	0	0.00232	0	0	0	0.00232	0	0	1.5573	0	0	0.00026	12.38706	2.07401	0	1403
1404	27120060	0.11752	0	0.1469	0	0	0.04746	0.09944	0.14351	0	0.77518	0	0	0.38671	2.18655	15.88747	0	1404
1405	27120120	0.2976	0	0	0	0	0	0	0	0.4068	0.5964	0	0	0	105.6888	0	0	1405
1406	27141000	0.312	0	0.53	0	0	0	0.53	0	0	3.256	0	0	3.55	94.788	0	0	1406
1407	27141000	0.19032	0	0.3233	0	0	0	0.3233	0	0	1.98616	0	0	2.1655	57.82068	0	0	1407
1408	27141000	0.195	0	0.33125	0	0	0	0.33125	0	0	2.035	0	0	2.21875	59.2425	0	0	1408
1409	27145000	0	0	0.0576	0	0	0	0.0576	0	0	3.1168	0	0	0	0	11.33879	0	1409
1410	27145000	0	0	0.0549	0	0	0	0.0549	0	0	2.9707	0	0	0	0	10.80728	0	1410
1411	27145000	0	0	0.0342	0	0	0	0.0342	0	0	1.8506	0	0	0	0	6.73241	0	1411
1412	27146000	0.06273	0	0.00492	0	0	0	0.00492	0	0	3.46491	0	0	0.00055	22.4721	3.6986	0	1412
1413	27146000	0.06706	0	0.00526	0	0	0	0.00526	0	0	3.70436	0	0	0.00058	24.02505	3.95419	0	1413
1414	27146000	0.03774	0	0.00296	0	0	0	0.00296	0	0	2.08458	0	0	0.00033	13.5198	2.22517	0	1414
1415	27146050	0	0	0	0	0	0	0	0	0	0.7248	0	0	0.15451	23.37768	0	0	1415
1416	27146100	0.424	0	0.532	0	0	0.172	0.36	0.52	0	3.128	0	0	6.284	0	56.64	0	1416
1417	27146100	0.13356	0	0.16758	0	0	0.05418	0.1134	0.1638	0	0.98532	0	0	0.43988	0	18.12484	0	1417
1418	27146100	0.265	0	0.3325	0	0	0.1075	0.225	0.325	0	1.955	0	0	3.9275	0	35.4	0	1418
1419	27146150	0	0	0.45	0	0	0.002	0.488	0.042	0	3.298	0	0	0	89.334	0	0	1419
1420	27146150	0	0	0.2655	0	0	0.00118	0.26432	0.02478	0	1.94582	0	0	0	52.7071	0	0	1420
1421	27146150	0	0	0.28125	0	0	0.00125	0.28	0.02625	0	2.06125	0	0	0	55.83375	0	0	1421
1422	27146250	0.63433	0	0.24045	0	0.00687	0	0.23587	0	0.38701	4.46321	0.00229	0	0.00204	204.55425	2.34496	0	1422
1423	27146300	0.82446	0	0.22568	0	0	0	0.22568	0	0.47684	3.05032	0.00364	0	1.18624	59.50854	2.12992	0	1423
1424	27146300	0.72027	0	0.19716	0	0	0	0.19716	0	0.41658	2.66484	0.00318	0	1.03633	51.98823	1.86076	0	1424
1425	27146300	0.48018	0	0.13144	0	0	0	0.13144	0	0.27772	1.77656	0.00212	0	0.69088	34.65882	1.24051	0	1425
1426	27146350	0.86814	0	0.01386	0	0	0.00126	0.0126	0.0378	0.0063	2.13948	0.00126	0	0.36036	110.80314	4.91521	0	1426
1427	27211400	0	0	0.3949	0	0	0.3806	0.0143	0	0	1.1847	0	0	0	71.28	0	0	1427
1428	27212100	0.8217	0	0.41085	0	0	0	0.41085	0	0	2.9133	0	0	0	2.64438	0	0	1428
1429	27212350	1.088	0	0.32256	0	0	0	0.32256	0	0	2.26048	0.00256	0	0.91534	97.92	0	0	1429
1430	27214100	0.40608	0	0.0648	0	0	0	0.0648	0	0.0648	2.43324	0	0	0.243	6.32016	0.1026	0	1430
1431	27214100	0.15792	0	0.0252	0	0	0	0.0252	0	0.0252	0.94626	0	0	0.0945	2.45784	0.0399	0	1431
1432	27214100	0.10528	0	0.0168	0	0	0	0.0168	0	0.0168	0.63084	0	0	0.063	1.63856	0.0266	0	1432
1433	27214100	0.42638	0	0.06804	0	0	0	0.06804	0	0.06804	2.5549	0	0	0.25515	6.63617	0.10773	0	1433
1434	27214110	0.41648	0	0.19043	0	0	0	0.19043	0	0.06713	2.51806	0	0	0.0551	61.68699	1.71463	0	1434
1435	27214110	0.16112	0	0.07367	0	0	0	0.07367	0	0.02597	0.97414	0	0	0.02132	23.86431	0.66333	0	1435
1436	27214110	0.10944	0	0.05004	0	0	0	0.05004	0	0.01764	0.66168	0	0	0.01448	16.20972	0.45056	0	1436
1437	27214110	0.34474	0	0.15763	0	0	0	0.15763	0	0.05557	2.08429	0	0	0.04561	51.06062	1.41927	0	1437
1438	27243300	0.59892	0	0.12276	0	0.0062	0	0.11656	0	0.15004	0.90272	0.00124	0	0.00551	46.28052	0	0	1438
1439	27243500	0.45994	0	0.25	0	0	0	0.25	0	0	1.10898	0	0	0	0	0	0	1439
1440	27246100	0.83326	0	0	0	0	0	0	0	0	1.99958	0	0	0	34.8615	0	0	1440
1441	27250040	0	0	0.01764	0	0	0	0.01764	0	0	1.95237	0	0	0	31.53654	0	0	1441
1442	27250060	0.03196	0	0.01088	0	0	0	0.01088	0	0	2.18484	0	0	0.00068	0.20264	0.00748	0	1442
1443	27250060	0.05335	0	0.01816	0	0	0	0.01816	0	0	3.64676	0	0	0.00114	0.33823	0.01249	0	1443
1444	27250060	0.01927	0	0.00656	0	0	0	0.00656	0	0	1.31733	0	0	0.00041	0.12218	0.00451	0	1444
1445	27250520	0	0	0	0	0	0	0	0	0	2.22201	0	0	0	0	0	0	1445
1446	27250610	1.82784	0	0	0	0	0	0	0	0.32704	2.24224	0.00224	0	1.11353	108.33984	2.36658	0	1446
1447	27311410	0.24444	0	0.80492	0.189	0	0.5	0.11592	0	0	1.78416	0	0	0.50848	0	0	0	1447
1448	27313150	1.27813	0	0.51429	0.0651	0.14973	0	0.29946	0	0	1.19567	0	0	0.90851	2.90997	0	0	1448
1449	27313220	1.08813	0	0.55527	0	0	0.13197	0.4233	0	0	2.10903	0	0	0	2.57715	0	0	1449
1450	27315250	0.16171	0	0.54899	0	0	0	0.54899	0	0	0.89301	0	0	0	25.44615	4.3863	0	1450
1451	27320070	1.20516	0	0.56025	0.27888	0	0	0.28137	0	0.41832	2.50743	0.00249	0	0.00111	120.3417	1.53795	0	1451
1452	27320320	0.78337	0	0.43834	0.10199	0	0	0.33635	0	0	2.52588	0.00434	0	0	18.14337	0	0	1452
1453	27320500	1.1468	0	0.21716	0	0	0.07076	0.1464	0.21228	0	1.16632	0	0	0.56933	2.59128	23.39926	0	1453
1454	27343480	1.12224	0	0.53536	0	0	0	0.53536	0	0.07616	1.34624	0.00224	0	0	43.00128	0	0	1454
1455	27343910	0.9592	0	0.836	0	0	0	0.836	0	0	1.5576	0.0022	0	0.69813	56.628	7.43783	0	1455
1456	27345310	0.70525	0	0.39928	0.22568	0.1519	0	0.0217	0	0.00434	1.38663	0.00651	0	0	62.08587	0.38798	0	1456
1457	27347100	2.43798	0	0.37228	0.18387	0	0.18387	0.00681	0	0	1.46869	0.00227	0	0	220.25583	0	0	1457
1458	27347100	2.70648	0	0.41328	0.20412	0	0.20412	0.00756	0	0	1.63044	0.00252	0	0	244.51308	0	0	1458
1459	27347100	4.87596	0	0.74456	0.36774	0	0.36774	0.01362	0	0	2.93738	0.00454	0	0	440.51166	0	0	1459
1460	27363000	0.488	0	0.57096	0	0	0	0.57096	0	0	1.36396	0.00732	0	0.74393	13.79088	0	0	1460
1461	27363100	0.8296	0	0.33184	0	0	0	0.33184	0	0	3.53556	0	0	0	105.80328	0	0	1461
1462	27420080	0	0	0.39096	0	0.39096	0	0	0	0	0.29448	0	0	0	6.77808	0	0	1462
1463	27445110	0.11745	0	0.2916	0.04779	0.08181	0.05508	0.10692	0	0	0.76221	0.00081	0	0.45882	5.78826	0	0	1463
1464	27445150	0.30806	0	0.09709	0	0.08906	0	0.00803	0	0.00219	0.83658	0.00146	0	0.40604	43.50654	8.66176	0	1464
1465	27445220	0.04617	0	0.16038	0	0	0	0.16038	0	0	1.82493	0	0	2.76048	0	3.54158	0	1465
1466	27446200	0	0	0.18837	0	0	0	0.18837	0	0	1.88916	0	0	2.67398	0.59787	0	0	1466
1467	27450060	0	0	0.19032	0	0	0	0.19032	0	0	2.02696	0	0	2.39547	0.53352	2.0454	0	1467
1468	27450080	0	0	0.1612	0	0.00208	0	0.15912	0	0	2.07792	0	0	2.35618	0	0	0	1468
1469	27450100	0	0	0.16432	0	0	0	0.16432	0	0	1.97912	0	0	2.5926	5.86872	1.77494	0	1469
1470	27450410	0.03159	0	0.41877	0.09477	0.12798	0.04941	0.1458	0	0	0.86022	0.00081	0	0.45252	7.0713	0.80311	0	1470
1471	27460490	0	0	0.36404	0.01976	0	0	0.34428	0	0.13756	0.75544	0	0	0	24.03576	0	0	1471
1472	27460490	0	0	1.2933	0.0702	0	0	1.2231	0	0.4887	2.6838	0	0	0	85.3902	0	0	1472
1473	27460710	0	0	0.0806	0	0	0	0.0806	0	0	0.962	0	0	0	7.27896	0	0	1473
1474	27460750	0	0	0.25883	0	0	0	0.25883	0	0	3.01158	0	0	0	13.33332	0	0	1474
1475	27510210	2.53269	0	0	0	0	0	0	0	0.23968	1.16951	0	0	0.39376	81.72018	12.17425	0	1475
1476	27510240	3.14456	0	0	0	0	0	0	0	0.5152	2.6128	0	0	0.48903	179.94096	15.10322	0	1476
1477	27510300	3.28832	0	0.38304	0	0	0	0.38304	0	0.2576	2.17056	0	0	4.08228	126.06048	17.14862	0	1477
1478	27510300	3.1562	0	0.36765	0	0	0	0.36765	0	0.24725	2.08335	0	0	3.91826	120.99555	16.45961	0	1478
1479	27510360	4.39488	0	0.47808	0	0	0	0.47808	0	0.4176	2.56608	0	0	2.11456	216.40608	21.86098	0	1479
1480	27510500	2.52123	0	0	0	0	0	0	0	0	1.16436	0	0	0.39225	50.0526	12.10809	0	1480
1481	27510530	2.98272	0	0	0	0	0	0	0	0	2.75496	0	0	0.46384	118.25892	14.32628	0	1481
1482	27510540	2.38292	0	0.27388	0	0	0	0.27388	0	0	2.20088	0	0	0.37028	94.49352	21.37856	0	1482
1483	27510700	2.44416	0	0.49044	0	0	0	0.49044	0	0.201	3.60192	0	0	0.58841	142.911	19.55876	0	1483
1484	27513010	2.22264	0	0	0	0	0	0	0	0	3.03849	0	0	0.29531	42.83874	9.10338	0	1484
1485	27515010	2.20952	0	0	0	0	0	0	0	0	3.2092	0	0	0.34364	26.7741	10.61711	0	1485
1486	27515070	3.02328	0	0.1938	0	0	0	0.1938	0	0.56508	2.82132	0	0	1.58168	56.51208	14.52327	0	1486
1487	27520130	3.63588	0	0.36408	0	0	0	0.36408	0	0	2.69124	0	0	3.23517	48.22092	15.51412	0	1487
1488	27520130	3.65066	0	0.36556	0	0	0	0.36556	0	0	2.70218	0	0	3.24832	48.41694	15.57718	0	1488
1489	27520300	2.016	0	0	0	0	0	0	0	0	1.94992	0	0	1.42514	13.88016	8.26483	0	1489
1490	27540110	2.05408	0	0	0	0	0	0	0	0	1.9824	0	0	1.05006	0.17136	8.42867	0	1490
1491	27540110	4.32824	0	0	0	0	0	0	0	0	4.1772	0	0	2.21263	0.36108	17.76042	0	1491
1492	27540140	2.08908	0	0	0	0	0	0	0	0	2.65356	0	0	0.30464	56.73402	9.42082	0	1492
1493	27550000	3.42066	0	0	0	0	0	0	0	0.00423	1.833	0.00141	0	1.55601	54.30051	18.86163	0	1493
1494	27550000	6.1863	0	0	0	0	0	0	0	0.00765	3.315	0.00255	0	2.81407	98.20305	34.11146	0	1494
1495	27560300	1.27072	0	0	0	0	0	0	0	0	1.11144	0	0	0	131.83632	8.9397	0	1495
1496	27560350	0.9673	0	0	0	0	0	0	0	0	1.06505	0	0	0.11617	165.87495	0	0	1496
1497	27560350	0.2276	0	0	0	0	0	0	0	0	0.2506	0	0	0.02733	39.0294	0	0	1497
1498	27560650	2.1336	0	0	0	0	0	0	0	0	0.9128	0	0	0	236.71872	2.56683	0	1498
1499	27560650	1.08585	0	0	0	0	0	0	0	0	0.46455	0	0	0	120.47292	1.30633	0	1499
1500	28110270	0.49608	0	0.89232	0.25896	0.25896	0.25896	0.11856	0	0	2.73312	0.00312	0	0.01387	28.02384	0	0	1500
1501	28110310	0.73944	0	0.97656	0	0	0.78936	0.1872	0	0	2.1684	0	0	0	178.19568	0	0	1501
1502	28141010	1.6848	0.15444	0.90792	0	0	0.90324	0	0.45864	0.00936	4.88592	0	0	0	305.1594	33.39417	0	1502
1503	28141200	1.1218	0	0.47428	0.45724	0	0	0.01704	0	0	2.59008	0	0	0.21458	53.8038	5.44704	0	1503
1504	28141250	0.90134	0	0.44826	0	0	0	0.44826	0.00723	0	2.54737	0	0	0.80494	6.46362	7.99112	0	1504
1505	28143080	1.39298	0	0	0	0	0	0	0	0.02651	2.53532	0	0	0	9.08811	0.94013	0	1505
1506	28145210	0.3276	0	0.69264	0.15912	0	0.53352	0	0.01872	0.0624	3.14808	0.00312	0	0	128.10096	83.62488	0	1506
1507	28154010	1.63176	0	0.5772	0.2964	0.09984	0	0.17784	0	0	1.53192	0.00312	0	0.34528	17.49384	8.36756	0	1507
1508	28310110	0.0192	0	0	0	0	0	0	0	0	0	0.0216	0	0	4.4712	0	0	1508
1509	28311010	0.39524	0	0.11327	0.03133	0	0.04097	0.03856	0	0	0.52056	0.01205	0	0	35.46315	0.66593	0	1509
1510	28315100	1.212	0	0.3816	0.0936	0	0.0936	0.1944	0	0	0.5664	0.0504	0.0744	0.4688	10.6272	2.06751	0	1510
1511	28315140	0	0	0.78153	0.08365	0	0.39674	0.30114	0	0	0.70983	0	0	0	29.16756	0	0	1511
1512	28315150	0	0	0.36414	0	0	0.31416	0.04998	0	0	1.1067	0	0	0	16.72902	0	0	1512
1513	28340310	0.2562	0	0.2074	0	0	0	0.2074	0	0	0.19764	0.01464	0	0	6.17076	5.11611	0	1513
1514	28340550	0.15128	0	0.4758	0	0	0	0.4758	0.04636	0.00244	0.22692	0.03172	0	0.03308	0	23.71654	0	1514
1515	28340660	0	0	0.76002	0.05975	0	0.18164	0.51863	0	0	1.07311	0	0	0	0	0.23308	0	1515
1516	28340670	0.12826	0	0.8	0.18392	0	0.4	0.18634	0	0	0.73568	0	0	0	0	0	0	1516
1517	28340750	0.15128	0	0.24644	0	0	0	0.24644	0	0	1.2932	0.22692	0	0	38.40804	0	0	1517
1518	28345130	1.06384	0	0.00244	0	0	0	0.00244	0	0.00488	0.20496	0.00976	0	0	62.56404	0.07932	0	1518
1519	28355120	0.35464	0	0.06944	0	0	0.06944	0	0	0.50096	0.434	0.0496	0	0	40.3992	0	0	1519
1520	28355250	0.18848	0	0.04712	0	0	0	0.04712	0	0.77128	2.10056	0	0	0	109.74744	0	0	1520
1521	28500000	0.30048	0	0.00179	0	0	0	0.00179	0	0.00416	0.08032	0.00476	0	0.02367	27.3587	0.08704	0	1521
1522	28500040	0.37164	0	0.00117	0	0	0	0.00117	0	0.00058	0.09436	0.00641	0	0.02019	8.61343	0.00947	0	1522
1523	28500100	0.2142	0.00119	0.0119	0	0	0	0.0119	0	0	0	0.00595	0	0	1.46727	0.62862	0	1523
1524	28522000	0.03644	0	0.11395	0	0.00133	0	0.11329	0.03511	0	0.44785	0.00199	0	0.44741	20.73758	0	0	1524
1525	31103000	0	0	0	0	0	0	0	0	0	1	0	0	0	23.9895	0	0	1525
1526	31103000	0	0	0	0	0	0	0	0	0	0.1	0	0	0	2.39895	0	0	1526
1527	31105000	0	0	0	0	0	0	0	0	0	1.00004	0	0	0	37.35936	0	0	1527
1528	31109010	0	0	0	0	0	0	0	0	0	0.66	0	0	0	0	0	0	1528
1529	31109010	0	0	0	0	0	0	0	0	0	0.815	0	0	0	0	0	0	1529
1530	32102000	0	0	0	0	0	0	0	0	0	0.5704	0	0	0.44578	13.72959	0	0	1530
1531	32103000	0	0	0	0	0	0	0	0	0	1.62171	0	0	5.55395	38.97099	0.01804	0	1531
1532	32103000	0	0	0	0	0	0	0	0	0	1	0	0	3.70263	25.98066	0.01203	0	1532
1533	32104950	0	0	0	0	0	0	0	0	0.0774	1	0	0	0	22.9392	0	0	1533
1534	32104950	0	0	0	0	0	0	0	0	0.13352	1.72535	0	0	0	39.57012	0	0	1534
1535	32105000	0	0	0	0	0	0	0	0	0.0775	1	0	0	0	38.4462	0	0	1535
1536	32105000	0	0	0	0	0	0	0	0	0.13375	1.72591	0	0	0	66.3507	0	0	1536
1537	32202010	1.82925	0	0	0	0	0	0	0	0.3429	1.82925	0	0	0.0957	81.4293	3.31338	0	1537
1538	32202030	1.85394	0	0	0	0	0	0	0	0.51516	1.58682	0	0	0.09717	224.9532	3.3597	0	1538
1539	32202030	0.97944	0	0	0	0	0	0	0	0.27216	0.83832	0	0	0.05133	118.8432	1.77494	0	1539
1540	32202060	2.324	0	0	0	0	0	0	0	0	1.869	0	0	0	294.09975	2.81601	0	1540
1541	32202070	2.14353	0	0	0	0	0	0	0	0.42687	1.14597	0	0	0	191.30661	2.58634	0	1541
1542	32300100	0	0	0	0	0	0	0	0	0	0.5002	0.0122	0	0	19.9836	0	0	1542
1543	33201010	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	1543
1544	33201010	0	0	0	0	0	0	0	0	0	1.00011	0	0	0	0	0	0	1544
1545	41101010	0	0	0	0	0	0	0	0	0	0	0	0.5004	0	59.4621	0	0	1545
1546	41101020	0	0	0	0	0	0	0	0	0	0	0	0.49963	0	0	0	0	1546
1547	41201020	0.07874	0	0.2286	0	0	0	0.2286	0	0	0	0	0.32131	0	0	29.86981	0	1547
1548	41205010	0	0	0.07463	0	0	0	0.07463	0	0	0	0	0.5	0.62603	27.59724	0	0	1548
1549	41205070	0	0	0.00105	0	0	0	0.00105	0.00615	0	0.04995	0	0.0723	0.19613	0	0	0	1549
1550	41205070	0	0	0.00431	0	0	0	0.00431	0.02522	0	0.2048	0	0.29643	0.80415	0	0	0	1550
1551	41208030	0.09994	0	0.02657	0	0	0	0.02657	0	0	0	0	0.34155	0.00084	9.49509	19.06033	0	1551
1552	41208030	0.17933	0	0.04767	0	0	0	0.04767	0	0	0	0	0.6129	0.00151	17.03862	34.20313	0	1552
1553	41301020	0	0	0	0	0	0	0	0	0	0	0	0.50024	0	0	0	0	1553
1554	41302020	0	0	0	0	0	0	0	0	0	0	0	0.5002	0	0	0	0	1554
1555	41303000	0	0	0	0	0	0	0	0	0	0	0	0.4998	0	0	0	0	1555
1556	41305000	0	0	0	0	0	0	0	0	0	0	0	0.50042	0	0	0	0	1556
1557	41410010	0	0	0	0	0	0	0	0	0	0	0.99998	0	0.72788	0	0	0	1557
1558	41420010	0	0	0	0	0	0	0	0	0	0	1.00006	0	0	0	0	0	1558
1559	41420010	0	0	0	0	0	0	0	0	0	0	0.28389	0	0	0	0	0	1559
1560	41420300	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1560
1561	41420300	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1561
1562	41420400	0	0	0	0	0	0	0	0	0	0	0	0	0	0	20.7653	0	1562
1563	41420450	0	0	0.00505	0	0	0	0.00505	0	0	0.01268	0	0	0	0	1.96504	0	1563
1564	41430000	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1564
1565	41480010	0	0	0	0	0	0	0	0	0	0	0.16564	0	0.00474	105.37902	65.14863	0	1565
1566	41601010	0.3795	0	0.0759	0.01518	0	0	0.05819	0	0	0.11385	0	0.25553	0	30.01086	2.96083	0	1566
1567	41601070	0.1152	0.1152	0.3264	0.0504	0.1728	0	0.1032	0	0	0	0.0096	0.0432	0.34987	6.3072	0	0	1567
1568	41601090	0.38203	0	0.46805	0	0	0	0.46805	0	0	0	0.00759	0.18975	0.57122	5.19156	0	0	1568
1569	41601110	0.41796	0	0.43011	0.13122	0	0.243	0.05589	0	0	0.71928	0	0.29889	1.08108	0	5.60861	0	1569
1570	41602030	0.09108	0	0.72358	0.18722	0	0.33902	0.19481	0	0	1.06766	0	0.27071	0	8.40213	4.00752	0	1570
1571	41603010	0	0	0.28272	0.0496	0	0	0.23312	0	0	0	0	0.54808	0.9154	0	0	0	1571
1572	41810250	0	0	0	0	0	0	0	0	0	0	0.20167	0	0.39214	0	0	0	1572
1573	41810400	0	0	0	0	0	0	0	0	0	0	0.7955	0	0.49861	19.92825	0	0	1573
1574	41810400	0	0	0	0	0	0	0	0	0	0	1.20916	0	0.75789	30.29094	0	0	1574
1575	41810610	0	0	0	0	0	0	0	0	0	0	1.22112	0	0.96904	0	0	0	1575
1576	41810610	0	0	0	0	0	0	0	0	0	0	2.2048	0	1.74966	0	0	0	1576
1577	41811400	0	0	0	0	0	0	0	0	0	0	2.3478	0	1.05078	42.0966	0	0	1577
1578	41811900	0	0	0	0	0	0	0	0	0	0	2.4689	0	0.83564	0	0.22756	0	1578
1579	41811910	0	0	0	0	0	0	0	0	0	0	2.50417	0	0.84758	0	0.23081	0	1579
1580	41812450	0	0	0.2535	0	0	0	0.2535	0	0	0	0.76962	0.24638	0.42757	11.80719	0	0	1580
1581	41812900	0	0	0	0	0	0	0	0	0	0	1.97512	0	1.09636	0	0	0	1581
1582	42100100	0	0	0	0	0	0	0	0	0	2.00009	0	0	2.02142	0	0	0	1582
1583	42100100	0	0	0	0	0	0	0	0	0	2.48689	0	0	2.5134	0	0	0	1583
1584	42102000	0	0	0	0	0	0	0	0	0	2.46925	0	0	3.72369	0	0	0	1584
1585	42104000	0	0	0	0	0	0	0	0	0	2.00009	0	0	1.7652	4.63608	0	0	1585
1586	42104000	0	0	0	0	0	0	0	0	0	2.29288	0	0	2.02359	5.31472	0	0	1586
1587	42105000	0	0	0	0	0	0	0	0	0	2.00009	0	0	0	0	0	0	1587
1588	42105000	0	0	0	0	0	0	0	0	0	2.52216	0	0	0	0	0	0	1588
1589	42106020	0	0	0	0	0	0	0	0	0	1.64029	0	0	1.18265	0	36.32428	0	1589
1590	42106020	0	0	0	0	0	0	0	0	0	1.30517	0	0	0.94103	0	28.90319	0	1590
1591	42106020	0	0	0	0	0	0	0	0	0	2.00009	0	0	1.44207	0	44.29218	0	1591
1592	42107000	0	0	0	0	0	0	0	0	0	1.9754	0	0	2.62553	0	0	0	1592
1593	42107000	0	0	0	0	0	0	0	0	0	2.38106	0	0	3.1647	0	0	0	1593
1594	42109100	0	0	0	0	0	0	0	0	0	2.00009	0	0	3.62414	0	0	0	1594
1595	42109100	0	0	0	0	0	0	0	0	0	2.36342	0	0	4.28249	0	0	0	1595
1596	42110000	0	0	0	0	0	0	0	0	0	2.50452	0	0	2.90469	4.32923	0	0	1596
1597	42111000	0	0	0	0	0	0	0	0	0	2.00009	0	0	2.15145	0	0	0	1597
1598	42111000	0	0	0	0	0	0	0	0	0	2.57508	0	0	2.76994	0	0	0	1598
1599	42112000	0	0	0	0	0	0	0	0	0	2.00009	0	0	3.36521	0	0	0	1599
1600	42112000	0	0	0	0	0	0	0	0	0	1.90485	0	0	3.20496	0	0	0	1600
1601	42113000	0	0	0	0	0	0	0	0	0	0.60673	0	0	0.95204	0	0	0	1601
1602	42113000	0	0	0	0	0	0	0	0	0	2.3987	0	0	3.76388	0	0	0	1602
1603	42114100	0	0	0	0	0	0	0	0	0	1.02254	0	0	1.11608	0	0	0	1603
1604	42114100	0	0	0	0	0	0	0	0	0	2.25664	0	0	2.46308	0	0	0	1604
1605	42114100	0	0	0	0	0	0	0	0	0	1.0578	0	0	1.15457	0	0	0	1605
1606	42116000	0	0	0	0	0	0	0	0	0	2.00009	0	0	2.93933	0	0	0	1606
1607	42116000	0	0	0	0	0	0	0	0	0	1.76375	0	0	2.592	0	0	0	1607
1608	42202000	0	0	0	0	0	0	0	0	0	1	0	0	1.20181	1.53072	1.89067	0	1608
1609	42202150	0	0	0	0	0	0	0	0	0	1.00008	0	0	0.688	0	3.08371	0	1609
1610	42203000	0	0	0	0	0	0	0	0.01168	0	0.43008	0	0	0.51669	0.65808	13.99664	0	1610
1611	42204050	0	0	0	0	0	0	0	0.01414	0	0.45122	0	0	0.54233	0.69048	0.85334	0	1611
1612	42204050	0	0	0	0	0	0	0	0.05732	0	1.82905	0	0	2.19837	2.79891	3.45905	0	1612
1613	42401010	0	0	0	0	0	0	0	0	0	2.8218	0	0	1.52947	0	0	0	1613
1614	42501000	0	0	0	0	0	0	0	0.1449	0	1.7283	0	0	1.76252	1.0206	0	0	1614
1615	43102000	0	0	0	0	0	0	0	0	0	2.00009	0	0	1.95401	0	0	0	1615
1616	43102000	0	0	0	0	0	0	0	0	0	2.5398	0	0	2.48128	0	0	0	1616
1617	43102000	0	0	0	0	0	0	0	0	0	0.81133	0	0	0.79263	0	0	0	1617
1618	43103000	0	0	0	0	0	0	0	0	0	2.64562	0	0	2.45383	0	0	0	1618
1619	43104000	0	0	0	0	0	0	0	0	0	2.55744	0	0	1.24426	0	0	0	1619
1620	51101000	0.99996	0	0	0	0	0	0	0	0	0	0	0	0.13809	0	0	0	1620
1621	51101000	1.1538	0	0	0	0	0	0	0	0	0	0	0	0.15933	0	0	0	1621
1622	51101000	0.7692	0	0	0	0	0	0	0	0	0	0	0	0.10622	0	0	0	1622
1623	51107010	2.56	0	0	0	0	0	0	0	0	0	0	0	0.00484	10.28736	0.04161	0	1623
1624	51107010	3.04	0	0	0	0	0	0	0	0	0	0	0	0.00574	12.21624	0.04941	0	1624
1625	51107010	1.28	0	0	0	0	0	0	0	0	0	0	0	0.00242	5.14368	0.02081	0	1625
1626	51108010	2.00013	0	0	0	0	0	0	0	0	0	0	0	1.19371	1.65699	0	0	1626
1627	51109100	1.9998	0	0	0	0	0	0	0	0	0	0	0	0.0025	0	0	0	1627
1628	51109100	3.7774	0	0	0	0	0	0	0	0	0	0	0	0.00472	0	0	0	1628
1629	51109100	1.24432	0	0	0	0	0	0	0	0	0	0	0	0.00156	0	0	0	1629
1630	51111010	0.99996	0	0	0	0	0	0	0	0.03068	0	0	0	0.13116	3.82122	4.04855	0	1630
1631	51113010	0.99996	0	0	0	0	0	0	0	0	0	0	0	0.13809	0	4.25985	0	1631
1632	51121010	0.99992	0	0	0	0	0	0	0	0	0	0	0	0.00232	30.60747	0.01414	0	1632
1633	51121010	1.41368	0	0	0	0	0	0	0	0	0	0	0	0.00328	43.27263	0.01999	0	1633
1634	51121010	0.55168	0	0	0	0	0	0	0	0	0	0	0	0.00128	16.88688	0.0078	0	1634
1635	51122000	0.81635	0	0	0	0	0	0	0	0	0	0.00725	0	0.00148	3.34863	0	0	1635
1636	51122000	0.64745	0	0	0	0	0	0	0	0	0	0.00575	0	0.00118	2.65581	0	0	1636
1637	51129010	0.99996	0	0	0	0	0	0	0.01456	0	0	0	0	0.00358	7.6752	3.10614	0	1637
1638	51133010	1	0	0	0	0	0	0	0	0	0	0	0	0.00189	4.0185	0.01625	0	1638
1639	51133010	1.4	0	0	0	0	0	0	0	0	0	0	0	0.00264	5.6259	0.02276	0	1639
1640	51133010	0.6	0	0	0	0	0	0	0	0	0	0	0	0.00113	2.4111	0.00975	0	1640
1641	51150000	1	0	0	0	0	0	0	0	0	0	0	0	0.20253	0	0	0	1641
1642	51150000	1.53553	0	0	0	0	0	0	0	0	0	0	0	0.31103	0	0	0	1642
1643	51157000	2.89238	0	0	0	0	0	0	0	0	0	0	0	0.67993	0	0	0	1643
1644	51157000	4.15395	0	0	0	0	0	0	0	0	0	0	0	0.9765	0	0	0	1644
1645	51157000	2.00005	0	0	0	0	0	0	0	0	0	0	0	0.47017	0	0	0	1645
1646	51160110	0.6678	0	0	0	0	0	0	0.0402	0	0	0.0552	0	0.00813	78.1866	86.12344	0	1646
1647	51160110	0.92379	0	0	0	0	0	0	0.05561	0	0	0.07636	0	0.01125	108.15813	119.13743	0	1647
1648	51160110	0.43407	0	0	0	0	0	0	0.02613	0	0	0.03588	0	0.00529	50.82129	55.98024	0	1648
1649	51160110	0.5565	0	0	0	0	0	0	0.0335	0	0	0.046	0	0.00678	65.1555	71.76954	0	1649
1650	51165060	1.47392	0	0	0	0	0	0	0	0	0.10669	0	0	0.16387	26.3952	29.20535	0	1650
1651	51165060	1.28576	0	0	0	0	0	0	0	0	0.09307	0	0	0.14295	23.0256	25.47701	0	1651
1652	51165100	0.69399	0	0	0	0	0	0	0.01452	0	0	0	0	0.00594	0	42.45464	0	1652
1653	51165100	2.23444	0	0	0	0	0	0	0.04675	0	0	0	0	0.01913	0	136.69106	0	1653
1654	51166000	2.00013	0	0	0	0	0	0	0	0	0	0	0	0.00785	100.1889	21.58694	0	1654
1655	51166000	0.98252	0	0	0	0	0	0	0	0	0	0	0	0.00386	49.2156	10.60411	0	1655
1656	51166000	1.47378	0	0	0	0	0	0	0	0	0	0	0	0.00579	73.8234	15.90616	0	1656
1657	51166000	2.35103	0	0	0	0	0	0	0	0	0	0	0	0.00923	117.7659	25.37412	0	1657
1658	51180010	4.0383	0	0	0	0	0	0	0	0	0	0	0	0.0105	0	0	0	1658
1659	51180010	5.03826	0	0	0	0	0	0	0	0	0	0	0	0.0131	0	0	0	1659
1660	51180010	0.99996	0	0	0	0	0	0	0	0	0	0	0	0.0026	0	0	0	1660
1661	51180010	2.65374	0	0	0	0	0	0	0	0	0	0	0	0.0069	0	0	0	1661
1662	51180030	4.0383	0.21735	0	0	0	0	0	0.0525	0	0	0	0	0.0371	0	14.64323	0	1662
1663	51180030	5.03826	0.27117	0	0	0	0	0	0.0655	0	0	0	0	0.04629	0	18.26917	0	1663
1664	51180030	2.65374	0.14283	0	0	0	0	0	0.0345	0	0	0	0	0.02438	0	9.62269	0	1664
1665	51182010	1.467	0	0	0	0	0	0	0	0	0	0.001	0	0	72.108	8.76091	0	1665
1666	51182010	1.67238	0	0	0	0	0	0	0	0	0	0.00114	0	0	82.20312	9.98743	0	1666
1667	51184000	0.5321	0	0	0	0	0	0	0	0	0	0	0	0.00078	7.2207	0	0	1667
1668	51184000	1.0642	0	0	0	0	0	0	0	0	0	0	0	0.00156	14.4414	0	0	1668
1669	51184000	0.26605	0	0	0	0	0	0	0	0	0	0	0	0.00039	3.61035	0	0	1669
1670	51184000	0.10642	0	0	0	0	0	0	0	0	0	0	0	0.00016	1.44414	0	0	1670
1671	51185000	0.3927	0	0	0	0	0	0	0	0.0255	0	0.0002	0	0.00116	15.5016	4.91683	0	1671
1672	51185000	0.3927	0	0	0	0	0	0	0	0.0255	0	0.0002	0	0.00116	15.5016	4.91683	0	1672
1673	51186010	1.99984	0	0	0	0	0	0	0	0	0	0	0	0.10517	0.03654	3.71436	0	1673
1674	51186100	1.99984	0	0	0	0	0	0	0.06728	0	0	0	0	0.26564	0	33.16531	0	1674
1675	51187000	0.3313	0	0	0	0	0	0	0	0	0	0	0	0.00051	0.5472	0.11378	0	1675
1676	51187000	0.19878	0	0	0	0	0	0	0	0	0	0	0	0.00031	0.32832	0.06827	0	1676
1677	51201010	1	0.97468	0	0	0	0	0	0	0	0	0	0	0.00579	8.29332	20.25248	0	1677
1678	51201010	1.14272	1.11392	0	0	0	0	0	0	0	0	0	0	0.00661	9.47808	23.1457	0	1678
1679	51201010	0.82133	0.80063	0	0	0	0	0	0	0	0	0	0	0.00475	6.81237	16.63597	0	1679
1680	51201150	1.9998	1.99665	0	0	0	0	0	0	0	0	0	0	0.0056	0	0.89966	0	1680
1681	51201150	3.7774	3.77145	0	0	0	0	0	0	0	0	0	0	0.01058	0	1.69936	0	1681
1682	51201150	1.24432	1.24236	0	0	0	0	0	0	0	0	0	0	0.00348	0	0.55979	0	1682
1683	51202000	1.99984	1.99114	0	0	0	0	0	0	0	0	0	0	0.18038	0.56318	1.04806	0	1683
1684	51208000	4.0383	4.0383	0	0	0	0	0	0	0	0	0	0	0.02287	0	0	0	1684
1685	51208000	5.03826	5.03826	0	0	0	0	0	0	0	0	0	0	0.02853	0	0	0	1685
1686	51208000	0.99996	0.99996	0	0	0	0	0	0	0	0	0	0	0.00566	0	0	0	1686
1687	51208000	2.65374	2.65374	0	0	0	0	0	0	0	0	0	0	0.01503	0	0	0	1687
1688	51301010	1	0.3195	0	0	0	0	0	0	0	0	0	0	0.00311	6.696	4.41702	0	1688
1689	51301010	1.2	0.3834	0	0	0	0	0	0	0	0	0	0	0.00373	8.0352	5.30043	0	1689
1690	51301010	0.8	0.2556	0	0	0	0	0	0	0	0	0	0	0.00249	5.3568	3.53362	0	1690
1691	51301700	4.0383	1.14975	0	0	0	0	0	0	0	0	0	0	0.0217	0	0	0	1691
1692	51301700	5.03826	1.43445	0	0	0	0	0	0	0	0	0	0	0.02707	0	0	0	1692
1693	51301700	0.99996	0.2847	0	0	0	0	0	0	0	0	0	0	0.00537	0	0	0	1693
1694	51301700	2.65374	0.75555	0	0	0	0	0	0	0	0	0	0	0.01426	0	0	0	1694
1695	51303010	1.99984	0.8381	0	0	0	0	0	0	0	0	0	0	0.00206	4.37436	2.87533	0	1695
1696	51320530	1	0.40012	0	0	0	0	0	0	0	0	0	0	0.37271	0.8946	4.4601	0	1696
1697	51320530	3.35674	1.34326	0	0	0	0	0	0	0	0	0	0	1.25124	3.0033	14.97318	0	1697
1698	51320530	1.53553	0.61447	0	0	0	0	0	0	0	0	0	0	0.57238	1.37385	6.84944	0	1698
1699	51401010	1	0.36764	0	0	0	0	0	0	0	0	0	0	0.01947	4.42494	0	0	1699
1700	51401010	1.23072	0.45248	0	0	0	0	0	0	0	0	0	0	0.02396	5.44608	0	0	1700
1701	51401010	0.26922	0.09898	0	0	0	0	0	0	0	0	0	0	0.00524	1.19133	0	0	1701
1702	51401010	0.7692	0.2828	0	0	0	0	0	0	0	0	0	0	0.01498	3.4038	0	0	1702
1703	51601020	1	0.71006	0	0	0	0	0	0	0	0	0	0	0.01335	4.82742	9.01414	0	1703
1704	51601020	1.23072	0.87392	0	0	0	0	0	0	0	0	0	0	0.01643	5.94144	11.09433	0	1704
1705	51601020	0.88458	0.62813	0	0	0	0	0	0	0	0	0	0	0.01181	4.27041	7.97405	0	1705
1706	51602010	0.76076	0.16432	0	0	0	0	0	0	0	0.05798	0.0208	0	0.03594	0	8.10977	0	1706
1707	51602010	0.67298	0.14536	0	0	0	0	0	0	0	0.05129	0.0184	0	0.03179	0	7.17403	0	1707
1708	52102040	0.65512	0	0	0	0	0	0	0	0	0	0	0	0	2.45385	0.00741	0	1708
1709	52102040	0.96544	0	0	0	0	0	0	0	0	0	0	0	0	3.6162	0.01092	0	1709
1710	52102040	0.99992	0	0	0	0	0	0	0	0	0	0	0	0	3.74535	0.01131	0	1710
1711	52102040	1.8964	0	0	0	0	0	0	0	0	0	0	0	0	7.10325	0.02145	0	1711
1712	52103000	1.45707	0	0	0	0	0	0	0	0	0	0	0	0	73.56852	1.75738	0	1712
1713	52103000	2.19989	0	0	0	0	0	0	0	0	0	0	0	0	111.07404	2.6533	0	1713
1714	52103000	1	0	0	0	0	0	0	0	0	0	0	0	0	50.4882	1.20605	0	1714
1715	52204000	1.393	0	0	0	0	0	0	0	0	0	0	0	0	75.852	14.05971	0	1715
1716	52204000	0.98207	0	0	0	0	0	0	0	0	0	0	0	0	53.47566	9.9121	0	1716
1717	52206010	1.4763	0	0	0	0	0	0	0	0	0	0.10317	0	0	38.5776	34.76145	0	1717
1718	52206010	1.8389	0	0	0	0	0	0	0	0	0	0.12851	0	0	48.0528	43.29936	0	1718
1719	52206010	1.1655	0	0	0	0	0	0	0	0	0	0.08145	0	0	30.456	27.44325	0	1719
1720	52206010	1.0101	0	0	0	0	0	0	0	0	0	0.07059	0	0	26.3952	23.78415	0	1720
1721	52209010	0.80058	0	0	0	0	0	0	0	0	0	0	0	0.57156	0.93456	0	0	1721
1722	52209010	2.76564	0	0	0	0	0	0	0	0	0	0	0	1.97448	3.22848	0	0	1722
1723	52215100	1.00008	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1723
1724	52215100	1.79181	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1724
1725	52215100	0.44587	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1725
1726	52215200	1.69983	0	0	0	0	0	0	0	0	0	0	0	0.00306	29.20158	0	0	1726
1727	52215200	2.3331	0	0	0	0	0	0	0	0	0	0	0	0.0042	40.0806	0	0	1727
1728	52215200	0.9999	0	0	0	0	0	0	0	0	0	0	0	0.0018	17.1774	0	0	1728
1729	52215260	1.4816	1.0372	0	0	0	0	0	0	0	0	0	0	0.00764	0	0	0	1729
1730	52215260	1.92608	1.34836	0	0	0	0	0	0	0	0	0	0	0.00994	0	0	0	1730
1731	52215260	1.00008	0.70011	0	0	0	0	0	0	0	0	0	0	0.00516	0	0	0	1731
1732	52215300	0.63335	0	0	0	0	0	0	0	0	0	0	0	0	23.33073	0	0	1732
1733	52215300	1.00002	0	0	0	0	0	0	0	0	0	0	0	0	36.83799	0	0	1733
1734	52215300	0.2381	0	0	0	0	0	0	0	0	0	0	0	0	8.77095	0	0	1734
1735	52302010	2.51086	0.0452	0	0	0	0	0	0.16724	0	0	0	0	0	52.58907	72.18239	0	1735
1736	52302010	3.42188	0.0616	0	0	0	0	0	0.22792	0	0	0	0	0	71.67006	98.37246	0	1736
1737	52302010	0.42218	0.0076	0	0	0	0	0	0.02812	0	0	0	0	0	8.84241	12.13686	0	1737
1738	52302010	1.46652	0.0264	0	0	0	0	0	0.09768	0	0	0	0	0	30.71574	42.15963	0	1738
1739	52302100	2.51086	0	0	0	0	0	0	0.08249	0	0	0	0	0	0	69.07836	0	1739
1740	52302100	3.42188	0	0	0	0	0	0	0.11242	0	0	0	0	0	0	94.14219	0	1740
1741	52302100	0.42218	0	0	0	0	0	0	0.01387	0	0	0	0	0	0	11.61495	0	1741
1742	52302100	1.46652	0	0	0	0	0	0	0.04818	0	0	0	0	0	0	40.34665	0	1742
1743	52302500	2.51086	0	0	0	0	0	0	0	0	0	0	0	0.13058	115.49052	42.35435	0	1743
1744	52302500	3.42188	0	0	0	0	0	0	0	0	0	0	0	0.17796	157.39416	57.72185	0	1744
1745	52302500	0.42218	0	0	0	0	0	0	0	0	0	0	0	0.02196	19.41876	7.12153	0	1745
1746	52302500	1.46652	0	0	0	0	0	0	0	0	0	0	0	0.07627	67.45464	24.73794	0	1746
1747	52304010	2.51086	1.07576	0	0	0	0	0	0.24182	0	0	0	0	1.9652	2.08485	54.07251	0	1747
1748	52304010	3.42188	1.46608	0	0	0	0	0	0.32956	0	0	0	0	2.67823	2.8413	73.69174	0	1748
1749	52304010	0.42218	0.18088	0	0	0	0	0	0.04066	0	0	0	0	0.33043	0.35055	9.09184	0	1749
1750	52304010	1.46652	0.62832	0	0	0	0	0	0.14124	0	0	0	0	1.14781	1.2177	31.58217	0	1750
1751	52304040	1.28876	0	0	0	0	0	0	0.0232	0	0	0	0	0	21.78828	43.22426	0	1751
1752	52306010	2.51086	0	0	0	0	0	0	0	0	0	0	0	0	100.33722	20.7731	0	1752
1753	52306010	3.42188	0	0	0	0	0	0	0	0	0	0	0	0	136.74276	28.31024	0	1753
1754	52306010	0.42218	0	0	0	0	0	0	0	0	0	0	0	0	16.87086	3.49282	0	1754
1755	52306010	1.46652	0	0	0	0	0	0	0	0	0	0	0	0	58.60404	12.13296	0	1755
1756	52308010	0.1602	0	0	0	0	0	0	0	0	0.10125	0	0	0	2.89605	0.80415	0	1756
1757	52308020	0.4942	0	0	0	0	0	0	0	0	0.17115	0	0	0	1.13155	0	0	1757
1758	52405010	0.91102	0	0	0	0	0	0	0.06847	0	0	0	0	0	34.91847	47.34205	0	1758
1759	52407000	0.8888	0	0.0752	0	0	0	0.0752	0	0	0	0	0	1.49938	2.6028	35.90184	0	1759
1760	53101100	1.14684	0	0	0	0	0	0	0	0	0	0	0	0	0	65.0017	0	1760
1761	53104260	0.8168	0	0.1104	0.1104	0	0	0	0	0	0	0	0	3.11022	17.9928	118.06906	0	1761
1762	53104260	1.35793	0	0.18354	0.18354	0	0	0	0	0	0	0	0	5.17074	29.91303	196.28981	0	1762
1763	53104260	0.6126	0	0.0828	0.0828	0	0	0	0	0	0	0	0	2.33267	13.4946	88.55179	0	1763
1764	53104500	0.53248	0.26624	0	0	0	0	0	0.00768	0.10112	0	0	0	0	214.39872	107.77052	0	1764
1765	53104500	0.23712	0.11856	0	0	0	0	0	0.00342	0.04503	0	0	0	0	95.47443	47.99156	0	1765
1766	53105260	0.59202	0	0	0	0	0	0	0	0	0	0	0	0	81.8532	119.02317	0	1766
1767	53105260	0.97773	0	0	0	0	0	0	0	0	0	0	0	0	135.1818	196.56856	0	1767
1768	53108200	0.7712	0	0	0	0	0	0	0	0	0	0	0	0.60871	26.4348	51.68772	0	1768
1769	53108200	0.482	0	0	0	0	0	0	0	0	0	0	0	0.38044	16.52175	32.30483	0	1769
1770	53108200	1.23392	0	0	0	0	0	0	0	0	0	0	0	0.97394	42.29568	82.70035	0	1770
1771	53108200	0.53984	0	0	0	0	0	0	0	0	0	0	0	0.4261	18.50436	36.1814	0	1771
1772	53108200	0.73264	0	0	0	0	0	0	0	0	0	0	0	0.57828	25.11306	49.10333	0	1772
1773	53112100	0.2176	0	0	0	0	0	0	0	0.02992	0	0	0	0.00038	35.29404	34.46238	0	1773
1774	53116000	1.78087	0	0	0	0	0	0	0	0	0	0	0	0	116.81397	101.20098	0	1774
1775	53119000	1.13606	0	0	0	0	0	0	0.06536	0	0	0	0	0	89.52858	101.00821	0	1775
1776	53119000	1.59841	0	0	0	0	0	0	0.09196	0	0	0	0	0	125.96463	142.1162	0	1776
1777	53120260	1.08891	0	0	0	0	0	0	0	0	0	0	0	0	127.80468	214.90551	0	1777
1778	53120260	0.65934	0	0	0	0	0	0	0	0	0	0	0	0	77.38632	130.12627	0	1778
1779	53121260	1.43008	0	0	0	0	0	0	0	0	0	0	0	0	106.88976	194.83231	0	1779
1780	53121260	0.86592	0	0	0	0	0	0	0	0	0	0	0	0	64.72224	117.97186	0	1780
1781	53123070	0.16638	0	0	0	0	0	0	0.26078	0	0	0	0	0	33.3999	124.59146	0	1781
1782	53203500	0.82112	0	0	0	0	0	0	0	0	0.35648	0	0	0.36153	31.7376	32.58602	0	1782
1783	53204010	0.6205	0	0	0	0	0	0	0	0	0.08024	0	0	0.11817	33.39072	47.98538	0	1783
1784	53204010	1.1315	0	0	0	0	0	0	0	0	0.14632	0	0	0.21548	60.88896	87.50276	0	1784
1785	53204100	0.69552	0	0	0	0	0	0	0	0	0.05922	0	0	0.08419	53.53992	56.6751	0	1785
1786	53204100	1.01016	0	0	0	0	0	0	0	0	0.08601	0	0	0.12227	77.76036	82.31383	0	1786
1787	53206000	0.25	0	0	0	0	0	0	0	0	0	0	0	0.0198	19.2276	12.56597	0	1787
1788	53206000	0.50625	0	0	0	0	0	0	0	0	0	0	0	0.0401	38.93589	25.44608	0	1788
1789	53206000	1	0	0	0	0	0	0	0	0	0	0	0	0.0792	76.9104	50.26387	0	1789
1790	53206000	0.35	0	0	0	0	0	0	0	0	0	0	0	0.02772	26.91864	17.59235	0	1790
1791	53206030	0.30763	0	0	0	0	0	0	0	0	0	0	0	0	14.91398	13.92038	0	1791
1792	53206030	0.48156	0	0	0	0	0	0	0	0	0	0	0	0	23.34665	21.79125	0	1792
1793	53206030	0.46	0	0	0	0	0	0	0	0	0	0	0	0	22.30128	20.81552	0	1793
1794	53207000	0.33319	0	0	0	0	0	0	0	0	0	0	0	0	16.06878	14.26922	0	1794
1795	53207000	0.64075	0	0	0	0	0	0	0	0	0	0	0	0	30.9015	27.44082	0	1795
1796	53207000	0.05639	0	0	0	0	0	0	0	0	0	0	0	0	2.71933	2.41479	0	1796
1797	53208200	0.77532	0	0	0	0	0	0	0	0	0	0	0	0	117.50076	122.82563	0	1797
1798	53208200	0.33796	0	0	0	0	0	0	0	0	0	0	0	0	51.21828	53.53938	0	1798
1799	53208200	0.56658	0	0	0	0	0	0	0	0	0	0	0	0	85.86594	89.75719	0	1799
1800	53208200	0.38766	0	0	0	0	0	0	0	0	0	0	0	0	58.75038	61.41281	0	1800
1801	53209000	0.24112	0.01507	0	0	0	0	0	0	0	0	0	0	0	20.02077	14.71117	0	1801
1802	53209000	0.06138	0.00384	0	0	0	0	0	0	0	0	0	0	0	5.0962	3.74466	0	1802
1803	53209000	0.28496	0.01781	0	0	0	0	0	0	0	0	0	0	0	23.66091	17.38593	0	1803
1804	53209000	0.19728	0.01233	0	0	0	0	0	0	0	0	0	0	0	16.38063	12.03641	0	1804
1805	53209000	0.6576	0.0411	0	0	0	0	0	0	0	0	0	0	0	54.6021	40.12137	0	1805
1806	53209000	0.15563	0.00973	0	0	0	0	0	0	0	0	0	0	0	12.9225	9.49539	0	1806
1807	53209020	0.33339	0	0	0	0	0	0	0	0	0	0	0	0	6.04544	19.50147	0	1807
1808	53210000	0.30756	0	0	0	0	0	0	0	0	0	0	0	0	14.83272	13.17159	0	1808
1809	53210000	0.45493	0	0	0	0	0	0	0	0	0	0	0	0	21.94006	19.48298	0	1809
1810	53210000	0.15378	0	0	0	0	0	0	0	0	0	0	0	0	7.41636	6.5858	0	1810
1811	53220030	0.25808	0	0	0	0	0	0	0.05536	0	0	0	0	0	9.82368	19.18232	0	1811
1812	53220030	0.91941	0	0	0	0	0	0	0.19722	0	0	0	0	0	34.99686	68.33702	0	1812
1813	53222010	0.25216	0	0	0	0	0	0	0	0	0	0	0	0	1.61208	14.02525	0	1813
1814	53222020	0.21912	0	0	0	0	0	0	0	0	0	0	0	0	2.17188	0.89267	0	1814
1815	53222020	1.58862	0	0	0	0	0	0	0	0	0	0	0	0	15.74613	6.47186	0	1815
1816	53222100	0.434	0	0	0	0	0	0	0	0	0	0	0	2e-05	2.7954	9.80766	0	1816
1817	53226500	0.7161	0	0	0	0	0	0	0	0	0	0	0	0.00653	25.5393	43.07635	0	1817
1818	53233010	0.38714	0.07644	0	0	0	0	0	0.00871	0	0	0	0	9e-05	19.53081	10.78908	0	1818
1819	53233010	0.7445	0.147	0	0	0	0	0	0.01675	0	0	0	0	0.00017	37.55925	20.74823	0	1819
1820	53233010	1.13164	0.22344	0	0	0	0	0	0.02546	0	0	0	0	0.00025	57.09006	31.53731	0	1820
1821	53233040	0.40379	0.05373	0	0	0	0	0	0.03834	0	0	0	0	0.12432	0.00486	10.77396	0	1821
1822	53234000	0.26656	0	0	0	0	0	0	0	0	0.3056	0.0048	0	0.29874	14.2704	18.84424	0	1822
1823	53234000	0.4165	0	0	0	0	0	0	0	0	0.4775	0.0075	0	0.46678	22.2975	29.44412	0	1823
1824	53239000	0.26075	0.06279	0	0	0	0	0	0	0	0	0	0	0	14.32872	3.89462	0	1824
1825	53239000	0.78225	0.18837	0	0	0	0	0	0	0	0	0	0	0	42.98616	11.68386	0	1825
1826	53239000	0.55875	0.13455	0	0	0	0	0	0	0	0	0	0	0	30.7044	8.34562	0	1826
1827	53239000	0.23468	0.05651	0	0	0	0	0	0	0	0	0	0	0	12.89585	3.50516	0	1827
1828	53241500	0.48336	0	0	0	0	0	0	0	0	0	0	0	0	30.00384	16.09016	0	1828
1829	53241500	0.75525	0	0	0	0	0	0	0	0	0	0	0	0	46.881	25.14087	0	1829
1830	53241500	0.27189	0	0	0	0	0	0	0	0	0	0	0	0	16.87716	9.05071	0	1830
1831	53243000	0.27225	0	0	0	0	0	0	0	0	0	0	0	0	19.47033	16.69578	0	1831
1832	53247000	0.10752	0	0	0	0	0	0	0	0	0	0	0	0	5.1192	4.4653	0	1832
1833	53301000	2.004	0	0	0	0	0	0	0.342	0	0	0	0	3.417	5.481	62.22031	0	1833
1834	53301500	1.683	0	0	0	0	0	0	0.633	0	0	0	0	0	121.905	112.95717	0	1834
1835	53342000	1.5768	0	0	0	0	0	0	0	0.32256	0.10944	0	0	0	160.35408	93.71666	0	1835
1836	53347000	1.4938	0	0.13398	0.13398	0	0	0	0	0.20482	0.2156	0	0	0	123.71436	62.88128	0	1836
1837	53381000	1.44261	0	0	0	0	0	0	0.09042	0	0.01781	0	0	0	105.15024	172.26509	0	1837
1838	53385000	1.56294	0	0	0	0	0	0	0	0	1.03854	0	0	1.36217	108.10962	170.43489	0	1838
1839	53400200	0.5754	0	0	0	0	0	0	0	0.0581	0	0	0	0	4.9833	1.1858	0	1839
1840	53400300	0.4452	0	0	0	0	0	0	0.1092	0.0189	0	0	0	0	3.6288	1.9985	0	1840
1841	53410800	1.15649	0	0	0	0	0	0	0.4	0	0	0	0	0	42.34977	69.63792	0	1841
1842	53415100	0.85608	0	0	0	0	0	0	0.4	0	0	0	0	0.59655	29.16945	59.47296	0	1842
1843	53420200	1.58712	0	0	0	0	0	0	0	0.04182	0.13668	0	0	0	123.44346	26.92	0	1843
1844	53420200	1.74272	0	0	0	0	0	0	0	0.04592	0.15008	0	0	0	135.54576	29.56	0	1844
1845	53510000	1.3481	0	0	0	0	0	0	0	0	0	0.0429	0	0.00592	124.75125	45.42993	0	1845
1846	53510000	2.94508	0	0	0	0	0	0	0	0	0	0.09372	0	0.01294	272.5335	99.24692	0	1846
1847	53510000	0.7259	0	0	0	0	0	0	0	0	0	0.0231	0	0.00319	67.17375	24.46227	0	1847
1848	53510000	1.09922	0	0	0	0	0	0	0	0	0	0.03498	0	0.00483	101.72025	37.04287	0	1848
1849	53510100	1.44272	0	0	0	0	0	0	0.16543	0	0	0	0	0	111.63969	60.2752	0	1849
1850	53510100	2.88544	0	0	0	0	0	0	0.33086	0	0	0	0	0	223.27938	120.55039	0	1850
1851	53510100	0.7112	0	0	0	0	0	0	0.08155	0	0	0	0	0	55.03365	29.71312	0	1851
1852	53510100	1.07696	0	0	0	0	0	0	0.12349	0	0	0	0	0	83.33667	44.99416	0	1852
1853	53511000	2.74512	0	0	0	0	0	0	0	0	0	0	0	0.00423	211.64976	29.58228	0	1853
1854	53511000	4.14219	0	0	0	0	0	0	0	0	0	0	0	0.00638	319.36437	44.63755	0	1854
1855	53511000	1.34805	0	0	0	0	0	0	0	0	0	0	0	0.00208	103.93515	14.52701	0	1855
1856	53511500	0.75936	0	0	0	0	0	0	0.00064	0.01216	0	0	0	0.00292	0.48096	41.41779	0	1856
1857	53520110	1.00627	0	0	0	0	0	0	0	0	0	0	0	0	93.89331	38.73166	0	1857
1858	53520110	1.24178	0	0	0	0	0	0	0	0	0	0	0	0	115.86834	47.79651	0	1858
1859	53520110	1.11332	0	0	0	0	0	0	0	0	0	0	0	0	103.88196	42.85205	0	1859
1860	53520110	0.29974	0	0	0	0	0	0	0	0	0	0	0	0	27.96822	11.53709	0	1860
1861	53520110	0.53525	0	0	0	0	0	0	0	0	0	0	0	0	49.94325	20.60195	0	1861
1862	53520140	1.02025	0	0	0	0	0	0	0	0	0	0.02438	0	0	145.37052	45.33875	0	1862
1863	53520140	1.32825	0	0	0	0	0	0	0	0	0	0.03174	0	0	189.25596	59.02591	0	1863
1864	53520140	0.385	0	0	0	0	0	0	0	0	0	0.0092	0	0	54.8568	17.10896	0	1864
1865	53520140	0.693	0	0	0	0	0	0	0	0	0	0.01656	0	0	98.74224	30.79613	0	1865
1866	53521100	0.89531	0	0	0	0	0	0	0	0	0	0.01491	0	0.00205	123.64011	88.49133	0	1866
1867	53521100	0.29003	0	0	0	0	0	0	0	0	0	0.00483	0	0.00066	40.05243	28.6662	0	1867
1868	53521100	1.28622	0	0	0	0	0	0	0	0	0	0.02142	0	0.00295	177.62382	127.12839	0	1868
1869	53521110	1.086	0	0	0	0	0	0	0	0	0	0.018	0	0.00253	119.799	52.77024	0	1869
1870	53521110	0.2353	0	0	0	0	0	0	0	0	0	0.0039	0	0.00055	25.95645	11.43355	0	1870
1871	53521110	1.3575	0	0	0	0	0	0	0	0	0	0.0225	0	0.00317	149.74875	65.9628	0	1871
1872	53521110	1.629	0	0	0	0	0	0	0	0	0	0.027	0	0.0038	179.6985	79.15535	0	1872
1873	53521110	0.5611	0	0	0	0	0	0	0	0	0	0.0093	0	0.00131	61.89615	27.26462	0	1873
1874	53521130	0.91306	0	0	0	0	0	0	0	0	0	0.01491	0	0.00205	122.90526	90.257	0	1874
1875	53521130	1.31172	0	0	0	0	0	0	0	0	0	0.02142	0	0.00295	176.56812	129.66498	0	1875
1876	53521130	0.29578	0	0	0	0	0	0	0	0	0	0.00483	0	0.00066	39.81438	29.23818	0	1876
1877	53521140	0.89375	0	0	0	0	0	0	0.00325	0	0	0.00975	0	0.01098	104.47515	51.7056	0	1877
1878	53530000	1.95	0	0.00728	0	0	0.00728	0	0.02236	0	0	0	0	0.00012	44.7876	37.65402	0	1878
1879	53540200	0.73889	0.2664	0	0	0	0	0	0.00777	0	0	0	0	0.50304	0	49.89198	0	1879
1880	53541200	0	0	0	0	0	0	0	0	0.15368	0.1241	0.07616	0	0.1057	38.36934	31.13551	0	1880
1881	53542100	0.54152	0.54152	0	0	0	0	0	0.00756	0	0.03808	0	0	0.05924	31.85784	27.59344	0	1881
1882	53542200	0.43488	0.28848	0	0	0	0	0	0.04104	0	0.04416	0	0	0.04608	5.65704	32.55741	0	1882
1883	53542200	0.50736	0.33656	0	0	0	0	0	0.04788	0	0.05152	0	0	0.05376	6.59988	37.98365	0	1883
1884	53542200	0.38052	0.25242	0	0	0	0	0	0.03591	0	0.03864	0	0	0.04032	4.94991	28.48774	0	1884
1885	53544200	0.25272	0.21168	0	0	0	0	0	0	0	0	0	0	0.62544	38.87676	63.02001	0	1885
1886	53544200	0.19656	0.16464	0	0	0	0	0	0	0	0	0	0	0.48645	30.23748	49.01556	0	1886
1887	53544200	0.23166	0.19404	0	0	0	0	0	0	0	0	0	0	0.57332	35.63703	57.76834	0	1887
1888	53544450	1.248	0.1729	0	0	0	0	0	0	0	0.10465	0	0	0.12538	0.02925	43.48595	0	1888
1889	54101010	0.63954	0	0	0	0	0	0	0	0	0	0	0	0	16.89822	7.24506	0	1889
1890	54101010	0.71808	0	0	0	0	0	0	0	0	0	0	0	0	18.97344	8.1348	0	1890
1891	54101010	0.1122	0	0	0	0	0	0	0	0	0	0	0	0	2.9646	1.27106	0	1891
1892	54102010	0.50204	0.25102	0	0	0	0	0	0	0	0	0	0	0	11.69532	16.72537	0	1892
1893	54301000	0.13062	0	0	0	0	0	0	0	0	0	0	0	0	6.64659	0.16189	0	1893
1894	54301000	0.57691	0	0	0	0	0	0	0	0	0	0	0	0	29.35577	0.71501	0	1894
1895	54301000	0.17416	0	0	0	0	0	0	0	0	0	0	0	0	8.86212	0.21585	0	1895
1896	54301100	0.1773	0	0	0	0	0	0	0	0	0	0	0	0	0.58914	0.75727	0	1896
1897	54301100	0.13593	0	0	0	0	0	0	0	0	0	0	0	0	0.45167	0.58058	0	1897
1898	54304000	0.52854	0	0	0	0	0	0	0	0.01338	0	0	0	0.00088	29.45236	0	0	1898
1899	54304000	1.11692	0	0	0	0	0	0	0	0.02828	0	0	0	0.00187	62.23896	0	0	1899
1900	54304100	0.68136	0	0	0	0	0	0	0	0.01428	0	0	0	0.01459	6.15924	0.11313	0	1900
1901	54307000	1.897	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1901
1902	54325000	0.17265	0	0	0	0	0	0	0	0	0	0	0	3e-05	2.94948	0	0	1902
1903	54325000	0.3453	0	0	0	0	0	0	0	0	0	0	0	5e-05	5.89896	0	0	1903
1904	54328100	0.07788	0.00014	0	0	0	0	0	0	0	0.03547	0	0	0.04063	2.65939	0.88318	0	1904
1905	54328200	0.30807	0	0	0	0	0	0	0	0.00413	0	0	0	0	12.83688	0.29582	0	1905
1906	54337000	0.20808	0.20808	0	0	0	0	0	0	0	0	0	0	0	5.62752	0	0	1906
1907	54337050	0.23408	0.23408	0	0	0	0	0	0	0	0	0	0	7e-05	3.01369	0	0	1907
1908	54338000	0.68752	0.39584	0	0	0	0	0	0	0	0	0	0	0	28.27008	7.80544	0	1908
1909	54338000	0.6091	0.351	0	0	0	0	0	0	0	0	0	0	0	25.046	6.915	0	1909
1910	54401020	1.84536	0	0	0	0	0	0	0	0	0	0	0	3.02886	0	0	0	1910
1911	54401020	1.17432	0	0	0	0	0	0	0	0	0	0	0	1.92746	0	0	0	1911
1912	54401020	2.68416	0	0	0	0	0	0	0	0	0	0	0	4.40562	0	0	0	1912
1913	54401050	1.1179	0	0	0	0	0	0	0	0.0756	0	0	0	2.3674	9.95085	0	0	1913
1914	54401050	0.89432	0	0	0	0	0	0	0	0.06048	0	0	0	1.89392	7.96068	0	0	1914
1915	54401050	1.9164	0	0	0	0	0	0	0	0.1296	0	0	0	4.0584	17.0586	0	0	1915
1916	54401080	1.51328	0	0	0	0	0	0	0	0	0	0	0	1.65561	0	0	0	1916
1917	54401080	1.32412	0	0	0	0	0	0	0	0	0	0	0	1.44866	0	0	0	1917
1918	54401080	2.8374	0	0	0	0	0	0	0	0	0	0	0	3.10427	0	0	0	1918
1919	54401080	1.4187	0	0	0	0	0	0	0	0	0	0	0	1.55213	0	0	0	1919
1920	54401150	1.29801	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1920
1921	54401150	1.60706	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1921
1922	54401210	0.76656	0	0	0	0	0	0	0	0.05184	0	0	0	0.57099	2.33928	0	0	1922
1923	54403000	2.6664	2.6664	0	0	0	0	0	0	0	0	0	0	4.88126	0	0	0	1923
1924	54403000	0.3333	0.3333	0	0	0	0	0	0	0	0	0	0	0.61016	0	0	0	1924
1925	54403000	0.8484	0.8484	0	0	0	0	0	0	0	0	0	0	1.55313	0	0	0	1925
1926	54403020	2.09528	2.09528	0	0	0	0	0	0	0	0	0	0	4.40724	62.32248	0	0	1926
1927	54403020	0.33334	0.33334	0	0	0	0	0	0	0	0	0	0	0.70115	9.91494	0	0	1927
1928	54403070	3.37722	3.37722	0	0	0	0	0	0	0	0	0	0	0	38.88423	0	0	1928
1929	54403070	0.33334	0.33334	0	0	0	0	0	0	0	0	0	0	0	3.83792	0	0	1929
1930	54403110	0.3332	0.3332	0	0	0	0	0	0	0	0	0	0	0.43657	18.49995	72.82361	0	1930
1931	54403110	0.476	0.476	0	0	0	0	0	0	0	0	0	0	0.62367	26.4285	104.03373	0	1931
1932	54408010	0.5648	0	0	0	0	0	0	0	0	0	0	0	0	2.3796	0	0	1932
1933	54408010	1.58144	0	0	0	0	0	0	0	0	0	0	0	0	6.66288	0	0	1933
1934	54408010	3.3888	0	0	0	0	0	0	0	0	0	0	0	0	14.2776	0	0	1934
1935	54408020	6.6677	0	0	0	0	0	0	0	0	0	0	0	0.55992	0	0	0	1935
1936	54408020	8.29114	0	0	0	0	0	0	0	0	0	0	0	0.69625	0	0	0	1936
1937	54408020	3.59476	0	0	0	0	0	0	0	0	0	0	0	0.30187	0	0	0	1937
1938	54420010	0.36956	0.12195	0	0	0	0	0	0	0.00225	0.11227	0	0	0.12085	5.27006	1.98583	0	1938
1939	55101000	2	0.5472	0	0	0	0	0	0	0	0	0	0	0	14.3136	0	0	1939
1940	55101000	4	1.0944	0	0	0	0	0	0	0	0	0	0	0	28.6272	0	0	1940
1941	55101000	0.65	0.17784	0	0	0	0	0	0	0	0	0	0	0	4.65192	0	0	1941
1942	55103000	1	0.1224	0	0	0	0	0	0.1016	0	0	0	0	0	36.3312	3.60189	0	1942
1943	55103000	0.325	0.03978	0	0	0	0	0	0.03302	0	0	0	0	0	11.80764	1.17061	0	1943
1944	55103000	2	0.2448	0	0	0	0	0	0.2032	0	0	0	0	0	72.6624	7.20377	0	1944
1945	55105200	2	0.5472	0	0	0	0	0	0	0	0	0	0	1.24036	12.9888	9.90844	0	1945
1946	55105200	4	1.0944	0	0	0	0	0	0	0	0	0	0	2.48071	25.9776	19.81688	0	1946
1947	55105200	0.65	0.17784	0	0	0	0	0	0	0	0	0	0	0.40312	4.22136	3.22024	0	1947
1948	55201000	1.05417	0	0	0	0	0	0	0	0	0	0	0	0	25.60896	3.15051	0	1948
1949	55201000	0.22705	0	0	0	0	0	0	0	0	0	0	0	0	5.51578	0.67857	0	1949
1950	55201000	2.02725	0	0	0	0	0	0	0	0	0	0	0	0	49.248	6.05868	0	1950
1951	55201000	1.00011	0	0	0	0	0	0	0	0	0	0	0	0	24.29568	2.98895	0	1951
1952	55202000	1.05417	0	0	0	0	0	0	0	0	0	0	0	0.66725	6.9849	19.51797	0	1952
1953	55202000	2.02725	0	0	0	0	0	0	0	0	0	0	0	1.28317	13.4325	37.53455	0	1953
1954	55202000	1.00011	0	0	0	0	0	0	0	0	0	0	0	0.63303	6.6267	18.51704	0	1954
1955	55211050	1.00011	0	0	0	0	0	0	0	0	0	0	0	0	4.98834	28.64459	0	1955
1956	55301000	1.3052	0	0	0	0	0	0	0	0.052	0.4186	0	0	0.17333	35.1585	15.45674	0	1956
1957	55301000	1.46584	0	0	0	0	0	0	0	0.0584	0.47012	0	0	0.19467	39.4857	17.35911	0	1957
1958	55301050	1.68116	0	0	0	0	0	0	0	0	0	0.15794	0	0.08975	183.49236	75.37793	0	1958
1959	55301050	0.33306	0	0	0	0	0	0	0	0	0	0.03129	0	0.01778	36.35226	14.93336	0	1959
1960	56101010	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1960
1961	56101010	0.32867	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1961
1962	56101010	0.78595	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1962
1963	56101010	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1963
1964	56112010	2	0	0	0	0	0	0	0	0	0	0	0	0	29.7	0	0	1964
1965	56112030	1.9998	0	0	0	0	0	0	0	0	0	0	0	1.00723	40.86	0	0	1965
1966	56112030	2.39976	0	0	0	0	0	0	0	0	0	0	0	1.20868	7.73388	0	0	1966
1967	56117000	2.0007	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1967
1968	56117090	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1968
1969	56133000	2.0006	2.0006	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1969
1970	56200400	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1970
1971	56201010	0.99946	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1971
1972	56201020	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	35.21232	0	0	1972
1973	56203010	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1973
1974	56203030	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0.0013	0.2106	23.65737	0	1974
1975	56203030	1.2483	1.2483	0	0	0	0	0	0	0	0	0	0	0.00162	0.2628	29.52116	0	1975
1976	56205010	1.00014	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1976
1977	56205110	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1977
1978	56205210	1.00035	1.00035	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1978
1979	56205420	1.00001	0	0	0	0	0	0	0	0	0	0	0	0	16.65045	0	0	1979
1980	56207010	1.00023	0	0	0	0	0	0	0	0	0	0	0	0.03375	0	0	0	1980
1981	57101000	1.698	0	0	0	0	0	0	0	0	0	0	0	0	0	42.657	0	1981
1982	57101000	0.9905	0	0	0	0	0	0	0	0	0	0	0	0	0	24.88325	0	1982
1983	57104000	0.5406	0	0	0	0	0	0	0.0132	0	0	0	0	0.0024	3.0699	55.1742	0	1983
1984	57104000	0.48654	0	0	0	0	0	0	0.01188	0	0	0	0	0.00216	2.76291	49.65678	0	1984
1985	57117000	0.61128	0.24444	0	0	0	0	0	0	0	0	0	0	0.26048	0	60.34005	0	1985
1986	57123000	1.0137	0.9804	0	0	0	0	0	0	0	0	0	0	0	0	3.93022	0	1986
1987	57123000	0.70959	0.68628	0	0	0	0	0	0	0	0	0	0	0	0	2.75115	0	1987
1988	57124000	1.25424	0.312	0	0	0	0	0	0	0	0	0	0	0	0	14.58618	0	1988
1989	57125000	0.79838	0.4522	0	0	0	0	0	0	0	0	0	0	0.15158	28.23552	49.72099	0	1989
1990	57125000	0.69333	0.3927	0	0	0	0	0	0	0	0	0	0	0.13163	24.52032	43.17875	0	1990
1991	57128000	0.4272	0	0	0	0	0	0	0	0	0	0	0	0.00033	7.0713	54.27698	0	1991
1992	57135000	0.8015	0	0	0	0	0	0	0	0	0	0	0	0	0	5.75392	0	1992
1993	57135000	0.67326	0	0	0	0	0	0	0	0	0	0	0	0	0	4.83329	0	1993
1994	57206700	2.1162	1	0	0	0	0	0	0	0	0	0	0	0.0048	0	0	0	1994
1995	57207000	1.24515	0.81495	0	0	0	0	0	0	0	0	0	0	0.0004	0	31.61972	0	1995
1996	57213000	0.511	0	0	0	0	0	0	0	0	0	0	0	0	6.73596	50.64031	0	1996
1997	57213000	0.49275	0	0	0	0	0	0	0	0	0	0	0	0	6.49539	48.83173	0	1997
1998	57214000	1.6866	1.6866	0	0	0	0	0	0	0	0	0	0	0	0	44.78302	0	1998
1999	57214000	0.98385	0.98385	0	0	0	0	0	0	0	0	0	0	0	0	26.12343	0	1999
2000	57223000	0.76608	0	0	0	0	0	0	0	0	0	0	0	8e-05	9.84636	61.22947	0	2000
2001	57224000	0.7028	0.2404	0	0	0	0	0	0	0	0	0	0	0	9.864	52.70197	0	2001
2002	57228000	0.88572	0.65636	0	0	0	0	0	0.11834	0	1.4762	0	0	2.09366	0	22.37802	0	2002
2003	57229000	1.1627	1.00705	0	0	0	0	0	0	0	0.0748	0	0	0.07798	9.0981	59.77977	0	2003
2004	57230000	0.84829	0.83385	0	0	0	0	0	0	0	0	0	0	0.00315	0	12.09619	0	2004
2005	57237100	0.9072	0.4308	0	0	0	0	0	0	0	0	0	0	0.29733	0.0108	32.30645	0	2005
2006	57238000	0.55814	0.4466	0	0	0	0	0	0	0	0	0	0	0	0	32.07922	0	2006
2007	57241000	0.5994	0.3189	0	0	0	0	0	0	0	0.0249	0	0	0.02427	0	39.55573	0	2007
2008	57241000	0.55944	0.29764	0	0	0	0	0	0	0	0.02324	0	0	0.02265	0	36.91869	0	2008
2009	57243000	0.63375	0.63375	0	0	0	0	0	0	0	0	0	0	0.00451	3.24675	84.28414	0	2009
2010	57301500	0.84672	0.84672	0	0	0	0	0	0	0	0	0	0	5e-05	0	0	0	2010
2011	57303100	0.67804	0.23782	0	0	0	0	0	0	0	0	0	0	0	0	8.93255	0	2011
2012	57303100	0.55476	0.19458	0	0	0	0	0	0	0	0	0	0	0	0	7.30845	0	2012
2013	57304100	1.24652	0.80124	0	0	0	0	0	0	0	0	0	0	0	0	32.0971	0	2013
2014	57305100	0.5829	0.5079	0	0	0	0	0	0	0	0	0	0	0.00287	0	49.57145	0	2014
\.


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 209
-- Name: food_food_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.food_food_id_seq', 1, false);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 213
-- Name: food_food_nutrition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.food_food_nutrition_id_seq', 2014, true);


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 212
-- Name: food_nutrition_food_nutrition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.food_nutrition_food_nutrition_id_seq', 2014, true);


--
-- TOC entry 3462 (class 2606 OID 24792)
-- Name: food_nutrition food_nutrition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_nutrition
    ADD CONSTRAINT food_nutrition_pkey PRIMARY KEY (food_nutrition_id);


--
-- TOC entry 3460 (class 2606 OID 24744)
-- Name: food unique_food_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT unique_food_id UNIQUE (food_id);


--
-- TOC entry 3458 (class 1259 OID 24809)
-- Name: fki_nutrition; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_nutrition ON public.food USING btree (food_nutrition_id);


--
-- TOC entry 3464 (class 2606 OID 24748)
-- Name: food_nutrition food_nutrition_food_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_nutrition
    ADD CONSTRAINT food_nutrition_food_id_fkey FOREIGN KEY (food_id) REFERENCES public.food(food_id);


--
-- TOC entry 3463 (class 2606 OID 24804)
-- Name: food food_nutrition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_nutrition_id_fkey FOREIGN KEY (food_nutrition_id) REFERENCES public.food_nutrition(food_nutrition_id);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: minhpham
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-07-11 21:07:36 CEST

--
-- PostgreSQL database dump complete
--


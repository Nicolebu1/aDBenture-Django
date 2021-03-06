PGDMP                         y           LokiDB    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24612    LokiDB    DATABASE     e   CREATE DATABASE "LokiDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Austria.1252';
    DROP DATABASE "LokiDB";
                postgres    false                        3079    24613 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    25174    adresse    TABLE     ?   CREATE TABLE public.adresse (
    adressenid integer,
    strasse character varying,
    plz integer,
    ort character varying,
    breitengrad bigint,
    laengengrad bigint,
    landid character varying
);
    DROP TABLE public.adresse;
       public         heap    postgres    false            ?            1259    24629    auto    TABLE     ?   CREATE TABLE public.auto (
    kennzeichen character varying(10),
    zulassungsdatum date,
    fzklasse character varying(30),
    fid integer NOT NULL
);
    DROP TABLE public.auto;
       public         heap    postgres    false            ?            1259    24632    beute    TABLE       CREATE TABLE public.beute (
    beuteid integer NOT NULL,
    bezeichnung character varying(255),
    wert numeric,
    beutetyp character varying(255),
    beschreibung character varying(255),
    verssum numeric,
    fotolink character varying,
    deliktid integer
);
    DROP TABLE public.beute;
       public         heap    postgres    false            ?            1259    24638    delikt    TABLE     T  CREATE TABLE public.delikt (
    deliktid integer NOT NULL,
    erfassungszeitpunkt timestamp without time zone,
    beschreibung character varying(255),
    tatzeitvon time without time zone,
    tatzeitbis time without time zone,
    schadenshoehe numeric,
    status character varying,
    delikttypid integer,
    adressenid integer
);
    DROP TABLE public.delikt;
       public         heap    postgres    false            ?            1259    24644 	   delikttyp    TABLE     l   CREATE TABLE public.delikttyp (
    delikttypid integer NOT NULL,
    bezeichnung character varying(255)
);
    DROP TABLE public.delikttyp;
       public         heap    postgres    false            ?            1259    24647    dienststelle    TABLE     ~   CREATE TABLE public.dienststelle (
    dstelleid integer NOT NULL,
    name character varying(255),
    adressenid integer
);
     DROP TABLE public.dienststelle;
       public         heap    postgres    false            ?            1259    24650    dienststellenzuteilung    TABLE     ?   CREATE TABLE public.dienststellenzuteilung (
    persid integer NOT NULL,
    dstelleid integer NOT NULL,
    von date,
    bis date
);
 *   DROP TABLE public.dienststellenzuteilung;
       public         heap    postgres    false            ?            1259    24653    ermitteltin    TABLE     `   CREATE TABLE public.ermitteltin (
    persid integer NOT NULL,
    deliktid integer NOT NULL
);
    DROP TABLE public.ermitteltin;
       public         heap    postgres    false            ?            1259    24656 	   ermittler    TABLE     ?   CREATE TABLE public.ermittler (
    verwgr character varying(3),
    dstgr character varying(10),
    bg numeric(7,2),
    persid integer NOT NULL,
    vorgesid integer
);
    DROP TABLE public.ermittler;
       public         heap    postgres    false            ?            1259    24659    fahrrad    TABLE     U   CREATE TABLE public.fahrrad (
    rahmengroesse integer,
    fid integer NOT NULL
);
    DROP TABLE public.fahrrad;
       public         heap    postgres    false            ?            1259    24662    fahrzeug    TABLE     ?   CREATE TABLE public.fahrzeug (
    fid integer NOT NULL,
    farbe character varying(30),
    beschreibung character varying(255)
);
    DROP TABLE public.fahrzeug;
       public         heap    postgres    false            ?            1259    24665    freiheitsstrafe    TABLE     ?   CREATE TABLE public.freiheitsstrafe (
    haftdatum timestamp without time zone,
    enthaftdatum timestamp without time zone,
    jva integer,
    verurteilungid integer NOT NULL
);
 #   DROP TABLE public.freiheitsstrafe;
       public         heap    postgres    false            ?            1259    24668 
   geldstrafe    TABLE     ?   CREATE TABLE public.geldstrafe (
    tagessatz numeric(6,2),
    frist date,
    bezahldatum timestamp without time zone,
    verurteilungid integer NOT NULL
);
    DROP TABLE public.geldstrafe;
       public         heap    postgres    false            ?            1259    24671    geschaedigter    TABLE     ?   CREATE TABLE public.geschaedigter (
    beruf character varying(255),
    blutgruppe character varying(3),
    persid integer NOT NULL
);
 !   DROP TABLE public.geschaedigter;
       public         heap    postgres    false            ?            1259    24674    grenztan    TABLE     p   CREATE TABLE public.grenztan (
    nationid character(3) NOT NULL,
    nachbarnationid character(3) NOT NULL
);
    DROP TABLE public.grenztan;
       public         heap    postgres    false            ?            1259    24677    hatalibi    TABLE     ?   CREATE TABLE public.hatalibi (
    vpersid integer NOT NULL,
    deliktid integer NOT NULL,
    beschreibung character varying(255),
    von timestamp without time zone,
    bis timestamp without time zone,
    zpersid integer
);
    DROP TABLE public.hatalibi;
       public         heap    postgres    false            ?            1259    24680 
   hatmerkmal    TABLE     `   CREATE TABLE public.hatmerkmal (
    merkmalid integer NOT NULL,
    persid integer NOT NULL
);
    DROP TABLE public.hatmerkmal;
       public         heap    postgres    false            ?            1259    24683    indiz    TABLE     ?   CREATE TABLE public.indiz (
    indizid integer NOT NULL,
    beschreibung character varying(255),
    funddatum date,
    fundzeit time without time zone,
    zugelbeweis boolean,
    deliktid integer
);
    DROP TABLE public.indiz;
       public         heap    postgres    false            ?            1259    24686    istbetroffen    TABLE     ?   CREATE TABLE public.istbetroffen (
    persid integer NOT NULL,
    deliktid integer NOT NULL,
    rollbez character varying(255)
);
     DROP TABLE public.istbetroffen;
       public         heap    postgres    false            ?            1259    24689    istfreundvon    TABLE     `   CREATE TABLE public.istfreundvon (
    persid integer NOT NULL,
    fpersid integer NOT NULL
);
     DROP TABLE public.istfreundvon;
       public         heap    postgres    false            ?            1259    24692 
   istzeugein    TABLE     ?   CREATE TABLE public.istzeugein (
    persid integer NOT NULL,
    deliktid integer NOT NULL,
    zaussage character varying(255),
    datum date,
    uhrzeit time without time zone
);
    DROP TABLE public.istzeugein;
       public         heap    postgres    false            ?            1259    24695    land    TABLE     f   CREATE TABLE public.land (
    landid character(3) NOT NULL,
    bezeichnung character varying(50)
);
    DROP TABLE public.land;
       public         heap    postgres    false            ?            1259    24698    merkmalstyp    TABLE     k   CREATE TABLE public.merkmalstyp (
    merkmalid integer NOT NULL,
    merkmaltyp character varying(125)
);
    DROP TABLE public.merkmalstyp;
       public         heap    postgres    false            ?            1259    24701    motorrad    TABLE     |   CREATE TABLE public.motorrad (
    kennzeichen character varying(10),
    zulassungsdatum date,
    fid integer NOT NULL
);
    DROP TABLE public.motorrad;
       public         heap    postgres    false            ?            1259    24704    nutzt    TABLE     ?   CREATE TABLE public.nutzt (
    teamid integer NOT NULL,
    fid integer NOT NULL,
    von timestamp without time zone,
    bis timestamp without time zone
);
    DROP TABLE public.nutzt;
       public         heap    postgres    false            ?            1259    24707    person    TABLE     Q  CREATE TABLE public.person (
    persid integer NOT NULL,
    vorname character varying(255),
    nachname character varying(255),
    geschlecht character(1),
    geburtsdatum date,
    telnr character varying(20),
    familienstand character varying(40),
    nationid character(3),
    adressenid integer,
    sprachid character(2)
);
    DROP TABLE public.person;
       public         heap    postgres    false            ?            1259    24713    polizist    VIEW     ?  CREATE VIEW public.polizist AS
 SELECT p.persid,
    p.vorname,
    p.nachname,
    p.geburtsdatum,
    e.verwgr,
    e.dstgr,
    e.bg,
    ( SELECT dienststellenzuteilung.dstelleid
           FROM public.dienststellenzuteilung
          WHERE ((dienststellenzuteilung.bis IS NULL) AND (p.persid = d.persid))) AS dstelleid
   FROM public.person p,
    public.ermittler e,
    public.dienststellenzuteilung d
  WHERE (p.persid = e.persid);
    DROP VIEW public.polizist;
       public          postgres    false    225    225    225    225    208    208    208    208    206    206    206            ?            1259    24717    sprache    TABLE     g   CREATE TABLE public.sprache (
    sprachid character(2) NOT NULL,
    sprache character varying(20)
);
    DROP TABLE public.sprache;
       public         heap    postgres    false            ?            1259    24720    spricht    TABLE     a   CREATE TABLE public.spricht (
    persid integer NOT NULL,
    sprachid character(2) NOT NULL
);
    DROP TABLE public.spricht;
       public         heap    postgres    false            ?            1259    24723    verurteilung    TABLE     ?   CREATE TABLE public.verurteilung (
    verurteilungid integer NOT NULL,
    datum date,
    strafmass integer,
    bedingt boolean,
    persid integer,
    deliktid integer
);
     DROP TABLE public.verurteilung;
       public         heap    postgres    false            ?            1259    24726    taeter    VIEW     a  CREATE VIEW public.taeter AS
 SELECT p.persid,
    p.vorname,
    p.nachname,
    v.verurteilungid,
    v.strafmass,
    v.bedingt,
        CASE
            WHEN (v.verurteilungid = g.verurteilungid) THEN 'GS'::text
            WHEN (v.verurteilungid = f.verurteilungid) THEN 'FS'::text
            ELSE NULL::text
        END AS strafe,
    f.haftdatum,
    f.enthaftdatum,
    f.jva
   FROM public.person p,
    public.verurteilung v,
    public.geldstrafe g,
    public.freiheitsstrafe f
  WHERE ((p.persid = v.persid) AND ((v.verurteilungid = f.verurteilungid) OR (v.verurteilungid = g.verurteilungid)));
    DROP VIEW public.taeter;
       public          postgres    false    229    229    229    229    225    225    225    212    211    211    211    211            ?            1259    24730    tatwerkzeug    TABLE     ?   CREATE TABLE public.tatwerkzeug (
    tatwerkzeugid integer NOT NULL,
    werkzeugtyp character varying(125),
    bezeichnung character varying(255),
    beschreibung character varying(255)
);
    DROP TABLE public.tatwerkzeug;
       public         heap    postgres    false            ?            1259    24736    zeuge    TABLE     ]   CREATE TABLE public.zeuge (
    beruf character varying(255),
    persid integer NOT NULL
);
    DROP TABLE public.zeuge;
       public         heap    postgres    false            ?            1259    24739    tatzeuge    VIEW     ?   CREATE VIEW public.tatzeuge AS
 SELECT p.persid,
    p.vorname,
    p.nachname,
    p.telnr,
    z.beruf
   FROM public.person p,
    public.zeuge z
  WHERE (p.persid = z.persid);
    DROP VIEW public.tatzeuge;
       public          postgres    false    225    225    225    225    232    232            ?            1259    24743    team    TABLE     Z   CREATE TABLE public.team (
    teamid integer NOT NULL,
    name character varying(30)
);
    DROP TABLE public.team;
       public         heap    postgres    false            ?            1259    24746    verdaechtiger    TABLE     ?  CREATE TABLE public.verdaechtiger (
    groesse smallint,
    pseudonym character varying(255),
    bandenname character varying(255),
    beruf character varying(255),
    haarfarbe character varying(255),
    schuhgroesse character varying(255),
    augenfarbe character varying(255),
    blutgruppe character varying(3),
    fotolink character varying(255),
    fingerabdrucklink character varying(255),
    ergreifbel numeric(6,2),
    persid integer NOT NULL
);
 !   DROP TABLE public.verdaechtiger;
       public         heap    postgres    false            ?            1259    24752    wirdverdaechtigt    TABLE     ?   CREATE TABLE public.wirdverdaechtigt (
    persid integer NOT NULL,
    deliktid integer NOT NULL,
    motiv character varying(255)
);
 $   DROP TABLE public.wirdverdaechtigt;
       public         heap    postgres    false            ?            1259    24755    wirdverwendet    TABLE     i   CREATE TABLE public.wirdverwendet (
    tatwerkzeugid integer NOT NULL,
    deliktid integer NOT NULL
);
 !   DROP TABLE public.wirdverwendet;
       public         heap    postgres    false            ?          0    25174    adresse 
   TABLE DATA                 public          postgres    false    238   ?       ?          0    24629    auto 
   TABLE DATA                 public          postgres    false    201   o?       ?          0    24632    beute 
   TABLE DATA                 public          postgres    false    202   l?       ?          0    24638    delikt 
   TABLE DATA                 public          postgres    false    203   ??       ?          0    24644 	   delikttyp 
   TABLE DATA                 public          postgres    false    204   ??       ?          0    24647    dienststelle 
   TABLE DATA                 public          postgres    false    205   ط       ?          0    24650    dienststellenzuteilung 
   TABLE DATA                 public          postgres    false    206   ݸ       ?          0    24653    ermitteltin 
   TABLE DATA                 public          postgres    false    207   ??       ?          0    24656 	   ermittler 
   TABLE DATA                 public          postgres    false    208   )?       ?          0    24659    fahrrad 
   TABLE DATA                 public          postgres    false    209   ??       ?          0    24662    fahrzeug 
   TABLE DATA                 public          postgres    false    210   ^?       ?          0    24665    freiheitsstrafe 
   TABLE DATA                 public          postgres    false    211   ??       ?          0    24668 
   geldstrafe 
   TABLE DATA                 public          postgres    false    212   y?       ?          0    24671    geschaedigter 
   TABLE DATA                 public          postgres    false    213   T?       ?          0    24674    grenztan 
   TABLE DATA                 public          postgres    false    214   ?       ?          0    24677    hatalibi 
   TABLE DATA                 public          postgres    false    215   ??       ?          0    24680 
   hatmerkmal 
   TABLE DATA                 public          postgres    false    216   ??       ?          0    24683    indiz 
   TABLE DATA                 public          postgres    false    217   ??       ?          0    24686    istbetroffen 
   TABLE DATA                 public          postgres    false    218   ??       ?          0    24689    istfreundvon 
   TABLE DATA                 public          postgres    false    219   ??       ?          0    24692 
   istzeugein 
   TABLE DATA                 public          postgres    false    220   ??       ?          0    24695    land 
   TABLE DATA                 public          postgres    false    221   ??       ?          0    24698    merkmalstyp 
   TABLE DATA                 public          postgres    false    222   k?       ?          0    24701    motorrad 
   TABLE DATA                 public          postgres    false    223   ?       ?          0    24704    nutzt 
   TABLE DATA                 public          postgres    false    224   ??       ?          0    24707    person 
   TABLE DATA                 public          postgres    false    225   ??       ?          0    24717    sprache 
   TABLE DATA                 public          postgres    false    227   {?       ?          0    24720    spricht 
   TABLE DATA                 public          postgres    false    228   c?       ?          0    24730    tatwerkzeug 
   TABLE DATA                 public          postgres    false    231   ?       ?          0    24743    team 
   TABLE DATA                 public          postgres    false    234   ??       ?          0    24746    verdaechtiger 
   TABLE DATA                 public          postgres    false    235   ??       ?          0    24723    verurteilung 
   TABLE DATA                 public          postgres    false    229   ?       ?          0    24752    wirdverdaechtigt 
   TABLE DATA                 public          postgres    false    236   3?       ?          0    24755    wirdverwendet 
   TABLE DATA                 public          postgres    false    237   ??       ?          0    24736    zeuge 
   TABLE DATA                 public          postgres    false    232   ??       ?           2606    24761    auto auto_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_pkey PRIMARY KEY (fid);
 8   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_pkey;
       public            postgres    false    201            ?           2606    24763    beute beute_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.beute
    ADD CONSTRAINT beute_pkey PRIMARY KEY (beuteid);
 :   ALTER TABLE ONLY public.beute DROP CONSTRAINT beute_pkey;
       public            postgres    false    202            ?           2606    24765    delikt delikt_pkey1 
   CONSTRAINT     W   ALTER TABLE ONLY public.delikt
    ADD CONSTRAINT delikt_pkey1 PRIMARY KEY (deliktid);
 =   ALTER TABLE ONLY public.delikt DROP CONSTRAINT delikt_pkey1;
       public            postgres    false    203            ?           2606    24767    delikttyp delikttyp_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.delikttyp
    ADD CONSTRAINT delikttyp_pkey PRIMARY KEY (delikttypid);
 B   ALTER TABLE ONLY public.delikttyp DROP CONSTRAINT delikttyp_pkey;
       public            postgres    false    204            ?           2606    24769    dienststelle dienststelle_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.dienststelle
    ADD CONSTRAINT dienststelle_pkey PRIMARY KEY (dstelleid);
 H   ALTER TABLE ONLY public.dienststelle DROP CONSTRAINT dienststelle_pkey;
       public            postgres    false    205            ?           2606    24771 2   dienststellenzuteilung dienststellenzuteilung_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.dienststellenzuteilung
    ADD CONSTRAINT dienststellenzuteilung_pkey PRIMARY KEY (persid, dstelleid);
 \   ALTER TABLE ONLY public.dienststellenzuteilung DROP CONSTRAINT dienststellenzuteilung_pkey;
       public            postgres    false    206    206            ?           2606    24773    ermitteltin ermitteltin_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ermitteltin
    ADD CONSTRAINT ermitteltin_pkey PRIMARY KEY (persid, deliktid);
 F   ALTER TABLE ONLY public.ermitteltin DROP CONSTRAINT ermitteltin_pkey;
       public            postgres    false    207    207            ?           2606    24775    ermittler ermittler_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ermittler
    ADD CONSTRAINT ermittler_pkey PRIMARY KEY (persid);
 B   ALTER TABLE ONLY public.ermittler DROP CONSTRAINT ermittler_pkey;
       public            postgres    false    208            ?           2606    24777    fahrrad fahrrad_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.fahrrad
    ADD CONSTRAINT fahrrad_pkey PRIMARY KEY (fid);
 >   ALTER TABLE ONLY public.fahrrad DROP CONSTRAINT fahrrad_pkey;
       public            postgres    false    209            ?           2606    24779    fahrzeug fahrzeug_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.fahrzeug
    ADD CONSTRAINT fahrzeug_pkey PRIMARY KEY (fid);
 @   ALTER TABLE ONLY public.fahrzeug DROP CONSTRAINT fahrzeug_pkey;
       public            postgres    false    210            ?           2606    24781 $   freiheitsstrafe freiheitsstrafe_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.freiheitsstrafe
    ADD CONSTRAINT freiheitsstrafe_pkey PRIMARY KEY (verurteilungid);
 N   ALTER TABLE ONLY public.freiheitsstrafe DROP CONSTRAINT freiheitsstrafe_pkey;
       public            postgres    false    211            ?           2606    24783    geldstrafe geldstrafe_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.geldstrafe
    ADD CONSTRAINT geldstrafe_pkey PRIMARY KEY (verurteilungid);
 D   ALTER TABLE ONLY public.geldstrafe DROP CONSTRAINT geldstrafe_pkey;
       public            postgres    false    212            ?           2606    24785     geschaedigter geschaedigter_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.geschaedigter
    ADD CONSTRAINT geschaedigter_pkey PRIMARY KEY (persid);
 J   ALTER TABLE ONLY public.geschaedigter DROP CONSTRAINT geschaedigter_pkey;
       public            postgres    false    213            ?           2606    24787    grenztan grenztan_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.grenztan
    ADD CONSTRAINT grenztan_pkey PRIMARY KEY (nationid, nachbarnationid);
 @   ALTER TABLE ONLY public.grenztan DROP CONSTRAINT grenztan_pkey;
       public            postgres    false    214    214            ?           2606    24789    hatalibi hatalibi_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hatalibi
    ADD CONSTRAINT hatalibi_pkey PRIMARY KEY (vpersid, deliktid);
 @   ALTER TABLE ONLY public.hatalibi DROP CONSTRAINT hatalibi_pkey;
       public            postgres    false    215    215            ?           2606    24791    hatmerkmal hatmerkmal_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hatmerkmal
    ADD CONSTRAINT hatmerkmal_pkey PRIMARY KEY (merkmalid, persid);
 D   ALTER TABLE ONLY public.hatmerkmal DROP CONSTRAINT hatmerkmal_pkey;
       public            postgres    false    216    216            ?           2606    24793    indiz indiz_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.indiz
    ADD CONSTRAINT indiz_pkey PRIMARY KEY (indizid);
 :   ALTER TABLE ONLY public.indiz DROP CONSTRAINT indiz_pkey;
       public            postgres    false    217            ?           2606    24795    istbetroffen istbetroffen_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.istbetroffen
    ADD CONSTRAINT istbetroffen_pkey PRIMARY KEY (persid, deliktid);
 H   ALTER TABLE ONLY public.istbetroffen DROP CONSTRAINT istbetroffen_pkey;
       public            postgres    false    218    218            ?           2606    24797    istfreundvon istfreundvon_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.istfreundvon
    ADD CONSTRAINT istfreundvon_pkey PRIMARY KEY (persid, fpersid);
 H   ALTER TABLE ONLY public.istfreundvon DROP CONSTRAINT istfreundvon_pkey;
       public            postgres    false    219    219            ?           2606    24799    istzeugein istzeugein_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.istzeugein
    ADD CONSTRAINT istzeugein_pkey PRIMARY KEY (persid, deliktid);
 D   ALTER TABLE ONLY public.istzeugein DROP CONSTRAINT istzeugein_pkey;
       public            postgres    false    220    220            ?           2606    24801    merkmalstyp merkmalstyp_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.merkmalstyp
    ADD CONSTRAINT merkmalstyp_pkey PRIMARY KEY (merkmalid);
 F   ALTER TABLE ONLY public.merkmalstyp DROP CONSTRAINT merkmalstyp_pkey;
       public            postgres    false    222            ?           2606    24803    motorrad motorrad_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.motorrad
    ADD CONSTRAINT motorrad_pkey PRIMARY KEY (fid);
 @   ALTER TABLE ONLY public.motorrad DROP CONSTRAINT motorrad_pkey;
       public            postgres    false    223            ?           2606    24805    land nation_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.land
    ADD CONSTRAINT nation_pkey PRIMARY KEY (landid);
 :   ALTER TABLE ONLY public.land DROP CONSTRAINT nation_pkey;
       public            postgres    false    221            ?           2606    24807    nutzt nutzt_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.nutzt
    ADD CONSTRAINT nutzt_pkey PRIMARY KEY (teamid, fid);
 :   ALTER TABLE ONLY public.nutzt DROP CONSTRAINT nutzt_pkey;
       public            postgres    false    224    224            ?           2606    24809    person person_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (persid);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    225            ?           2606    24811    sprache sprache_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sprache
    ADD CONSTRAINT sprache_pkey PRIMARY KEY (sprachid);
 >   ALTER TABLE ONLY public.sprache DROP CONSTRAINT sprache_pkey;
       public            postgres    false    227            ?           2606    24813    spricht spricht_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.spricht
    ADD CONSTRAINT spricht_pkey PRIMARY KEY (persid, sprachid);
 >   ALTER TABLE ONLY public.spricht DROP CONSTRAINT spricht_pkey;
       public            postgres    false    228    228            ?           2606    24815    tatwerkzeug tatwerkzeug_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tatwerkzeug
    ADD CONSTRAINT tatwerkzeug_pkey PRIMARY KEY (tatwerkzeugid);
 F   ALTER TABLE ONLY public.tatwerkzeug DROP CONSTRAINT tatwerkzeug_pkey;
       public            postgres    false    231            ?           2606    24817    team team_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (teamid);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    234            ?           2606    24819     verdaechtiger verdaechtiger_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.verdaechtiger
    ADD CONSTRAINT verdaechtiger_pkey PRIMARY KEY (persid);
 J   ALTER TABLE ONLY public.verdaechtiger DROP CONSTRAINT verdaechtiger_pkey;
       public            postgres    false    235            ?           2606    24821    verurteilung verurteilung_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.verurteilung
    ADD CONSTRAINT verurteilung_pkey PRIMARY KEY (verurteilungid);
 H   ALTER TABLE ONLY public.verurteilung DROP CONSTRAINT verurteilung_pkey;
       public            postgres    false    229            ?           2606    24823 &   wirdverdaechtigt wirdverdaechtigt_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.wirdverdaechtigt
    ADD CONSTRAINT wirdverdaechtigt_pkey PRIMARY KEY (persid, deliktid);
 P   ALTER TABLE ONLY public.wirdverdaechtigt DROP CONSTRAINT wirdverdaechtigt_pkey;
       public            postgres    false    236    236            ?           2606    24825     wirdverwendet wirdverwendet_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.wirdverwendet
    ADD CONSTRAINT wirdverwendet_pkey PRIMARY KEY (tatwerkzeugid, deliktid);
 J   ALTER TABLE ONLY public.wirdverwendet DROP CONSTRAINT wirdverwendet_pkey;
       public            postgres    false    237    237            ?           2606    24827    zeuge zeuge_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.zeuge
    ADD CONSTRAINT zeuge_pkey PRIMARY KEY (persid);
 :   ALTER TABLE ONLY public.zeuge DROP CONSTRAINT zeuge_pkey;
       public            postgres    false    232            ?           2606    24833    auto auto_fid_fkey    FK CONSTRAINT     q   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_fid_fkey FOREIGN KEY (fid) REFERENCES public.fahrzeug(fid);
 <   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_fid_fkey;
       public          postgres    false    201    3022    210                        2606    24838 <   dienststellenzuteilung dienststellenzuteilung_dstelleid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dienststellenzuteilung
    ADD CONSTRAINT dienststellenzuteilung_dstelleid_fkey FOREIGN KEY (dstelleid) REFERENCES public.dienststelle(dstelleid);
 f   ALTER TABLE ONLY public.dienststellenzuteilung DROP CONSTRAINT dienststellenzuteilung_dstelleid_fkey;
       public          postgres    false    205    206    3012                       2606    24843 9   dienststellenzuteilung dienststellenzuteilung_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dienststellenzuteilung
    ADD CONSTRAINT dienststellenzuteilung_persid_fkey FOREIGN KEY (persid) REFERENCES public.ermittler(persid);
 c   ALTER TABLE ONLY public.dienststellenzuteilung DROP CONSTRAINT dienststellenzuteilung_persid_fkey;
       public          postgres    false    3018    206    208                       2606    24848 #   ermitteltin ermitteltin_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ermitteltin
    ADD CONSTRAINT ermitteltin_persid_fkey FOREIGN KEY (persid) REFERENCES public.ermittler(persid);
 M   ALTER TABLE ONLY public.ermitteltin DROP CONSTRAINT ermitteltin_persid_fkey;
       public          postgres    false    207    3018    208                       2606    24853 !   ermittler ermittler_vorgesid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ermittler
    ADD CONSTRAINT ermittler_vorgesid_fkey FOREIGN KEY (vorgesid) REFERENCES public.ermittler(persid);
 K   ALTER TABLE ONLY public.ermittler DROP CONSTRAINT ermittler_vorgesid_fkey;
       public          postgres    false    208    208    3018                       2606    24858    fahrrad fahrrad_fid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.fahrrad
    ADD CONSTRAINT fahrrad_fid_fkey FOREIGN KEY (fid) REFERENCES public.fahrzeug(fid);
 B   ALTER TABLE ONLY public.fahrrad DROP CONSTRAINT fahrrad_fid_fkey;
       public          postgres    false    209    210    3022                       2606    24863 3   freiheitsstrafe freiheitsstrafe_verurteilungid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.freiheitsstrafe
    ADD CONSTRAINT freiheitsstrafe_verurteilungid_fkey FOREIGN KEY (verurteilungid) REFERENCES public.verurteilung(verurteilungid);
 ]   ALTER TABLE ONLY public.freiheitsstrafe DROP CONSTRAINT freiheitsstrafe_verurteilungid_fkey;
       public          postgres    false    211    3058    229                       2606    24868 )   geldstrafe geldstrafe_verurteilungid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.geldstrafe
    ADD CONSTRAINT geldstrafe_verurteilungid_fkey FOREIGN KEY (verurteilungid) REFERENCES public.verurteilung(verurteilungid);
 S   ALTER TABLE ONLY public.geldstrafe DROP CONSTRAINT geldstrafe_verurteilungid_fkey;
       public          postgres    false    229    3058    212            	           2606    24873 &   grenztan grenztan_nachbarnationid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.grenztan
    ADD CONSTRAINT grenztan_nachbarnationid_fkey FOREIGN KEY (nachbarnationid) REFERENCES public.land(landid);
 P   ALTER TABLE ONLY public.grenztan DROP CONSTRAINT grenztan_nachbarnationid_fkey;
       public          postgres    false    3044    221    214            
           2606    24878    grenztan grenztan_nationid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.grenztan
    ADD CONSTRAINT grenztan_nationid_fkey FOREIGN KEY (nationid) REFERENCES public.land(landid);
 I   ALTER TABLE ONLY public.grenztan DROP CONSTRAINT grenztan_nationid_fkey;
       public          postgres    false    214    221    3044                       2606    24883    hatalibi hatalibi_vpersid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hatalibi
    ADD CONSTRAINT hatalibi_vpersid_fkey FOREIGN KEY (vpersid) REFERENCES public.verdaechtiger(persid);
 H   ALTER TABLE ONLY public.hatalibi DROP CONSTRAINT hatalibi_vpersid_fkey;
       public          postgres    false    235    3066    215                       2606    24888    hatalibi hatalibi_zpersid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hatalibi
    ADD CONSTRAINT hatalibi_zpersid_fkey FOREIGN KEY (zpersid) REFERENCES public.zeuge(persid);
 H   ALTER TABLE ONLY public.hatalibi DROP CONSTRAINT hatalibi_zpersid_fkey;
       public          postgres    false    3062    215    232                       2606    24893 $   hatmerkmal hatmerkmal_merkmalid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hatmerkmal
    ADD CONSTRAINT hatmerkmal_merkmalid_fkey FOREIGN KEY (merkmalid) REFERENCES public.merkmalstyp(merkmalid);
 N   ALTER TABLE ONLY public.hatmerkmal DROP CONSTRAINT hatmerkmal_merkmalid_fkey;
       public          postgres    false    222    3046    216                       2606    24898 !   hatmerkmal hatmerkmal_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hatmerkmal
    ADD CONSTRAINT hatmerkmal_persid_fkey FOREIGN KEY (persid) REFERENCES public.verdaechtiger(persid);
 K   ALTER TABLE ONLY public.hatmerkmal DROP CONSTRAINT hatmerkmal_persid_fkey;
       public          postgres    false    216    3066    235                       2606    24903 %   istbetroffen istbetroffen_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.istbetroffen
    ADD CONSTRAINT istbetroffen_persid_fkey FOREIGN KEY (persid) REFERENCES public.geschaedigter(persid);
 O   ALTER TABLE ONLY public.istbetroffen DROP CONSTRAINT istbetroffen_persid_fkey;
       public          postgres    false    213    218    3028                       2606    24908 %   istfreundvon istfreundvon_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.istfreundvon
    ADD CONSTRAINT istfreundvon_persid_fkey FOREIGN KEY (persid) REFERENCES public.verdaechtiger(persid);
 O   ALTER TABLE ONLY public.istfreundvon DROP CONSTRAINT istfreundvon_persid_fkey;
       public          postgres    false    235    219    3066                       2606    24913 &   istfreundvon istfreundvon_persid_fkey1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.istfreundvon
    ADD CONSTRAINT istfreundvon_persid_fkey1 FOREIGN KEY (persid) REFERENCES public.verdaechtiger(persid);
 P   ALTER TABLE ONLY public.istfreundvon DROP CONSTRAINT istfreundvon_persid_fkey1;
       public          postgres    false    235    219    3066                       2606    24918 !   istzeugein istzeugein_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.istzeugein
    ADD CONSTRAINT istzeugein_persid_fkey FOREIGN KEY (persid) REFERENCES public.zeuge(persid);
 K   ALTER TABLE ONLY public.istzeugein DROP CONSTRAINT istzeugein_persid_fkey;
       public          postgres    false    232    220    3062                       2606    24923    motorrad motorrad_fid_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.motorrad
    ADD CONSTRAINT motorrad_fid_fkey FOREIGN KEY (fid) REFERENCES public.fahrzeug(fid);
 D   ALTER TABLE ONLY public.motorrad DROP CONSTRAINT motorrad_fid_fkey;
       public          postgres    false    210    3022    223                       2606    24933    nutzt nutzt_fid_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.nutzt
    ADD CONSTRAINT nutzt_fid_fkey FOREIGN KEY (fid) REFERENCES public.fahrzeug(fid);
 >   ALTER TABLE ONLY public.nutzt DROP CONSTRAINT nutzt_fid_fkey;
       public          postgres    false    224    210    3022                       2606    24938    nutzt nutzt_teamid_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.nutzt
    ADD CONSTRAINT nutzt_teamid_fkey FOREIGN KEY (teamid) REFERENCES public.team(teamid);
 A   ALTER TABLE ONLY public.nutzt DROP CONSTRAINT nutzt_teamid_fkey;
       public          postgres    false    234    224    3064                       2606    24943    verdaechtiger persid    FK CONSTRAINT     w   ALTER TABLE ONLY public.verdaechtiger
    ADD CONSTRAINT persid FOREIGN KEY (persid) REFERENCES public.person(persid);
 >   ALTER TABLE ONLY public.verdaechtiger DROP CONSTRAINT persid;
       public          postgres    false    3052    235    225                       2606    24948    ermittler persid    FK CONSTRAINT     s   ALTER TABLE ONLY public.ermittler
    ADD CONSTRAINT persid FOREIGN KEY (persid) REFERENCES public.person(persid);
 :   ALTER TABLE ONLY public.ermittler DROP CONSTRAINT persid;
       public          postgres    false    208    225    3052                       2606    24953    zeuge persid    FK CONSTRAINT     o   ALTER TABLE ONLY public.zeuge
    ADD CONSTRAINT persid FOREIGN KEY (persid) REFERENCES public.person(persid);
 6   ALTER TABLE ONLY public.zeuge DROP CONSTRAINT persid;
       public          postgres    false    232    225    3052                       2606    24958    geschaedigter persid    FK CONSTRAINT     w   ALTER TABLE ONLY public.geschaedigter
    ADD CONSTRAINT persid FOREIGN KEY (persid) REFERENCES public.person(persid);
 >   ALTER TABLE ONLY public.geschaedigter DROP CONSTRAINT persid;
       public          postgres    false    225    213    3052                       2606    24968    person person_nationid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_nationid_fkey FOREIGN KEY (nationid) REFERENCES public.land(landid);
 E   ALTER TABLE ONLY public.person DROP CONSTRAINT person_nationid_fkey;
       public          postgres    false    3044    221    225                       2606    24973    person person_sprachid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_sprachid_fkey FOREIGN KEY (sprachid) REFERENCES public.sprache(sprachid);
 E   ALTER TABLE ONLY public.person DROP CONSTRAINT person_sprachid_fkey;
       public          postgres    false    225    3054    227                       2606    24978    spricht spricht_persid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.spricht
    ADD CONSTRAINT spricht_persid_fkey FOREIGN KEY (persid) REFERENCES public.person(persid);
 E   ALTER TABLE ONLY public.spricht DROP CONSTRAINT spricht_persid_fkey;
       public          postgres    false    225    3052    228                       2606    24983    spricht spricht_sprachid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.spricht
    ADD CONSTRAINT spricht_sprachid_fkey FOREIGN KEY (sprachid) REFERENCES public.sprache(sprachid);
 G   ALTER TABLE ONLY public.spricht DROP CONSTRAINT spricht_sprachid_fkey;
       public          postgres    false    228    227    3054                       2606    24988 %   verurteilung verurteilung_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.verurteilung
    ADD CONSTRAINT verurteilung_persid_fkey FOREIGN KEY (persid) REFERENCES public.verdaechtiger(persid);
 O   ALTER TABLE ONLY public.verurteilung DROP CONSTRAINT verurteilung_persid_fkey;
       public          postgres    false    229    235    3066                       2606    24993 -   wirdverdaechtigt wirdverdaechtigt_persid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wirdverdaechtigt
    ADD CONSTRAINT wirdverdaechtigt_persid_fkey FOREIGN KEY (persid) REFERENCES public.verdaechtiger(persid);
 W   ALTER TABLE ONLY public.wirdverdaechtigt DROP CONSTRAINT wirdverdaechtigt_persid_fkey;
       public          postgres    false    236    3066    235                       2606    24998 .   wirdverwendet wirdverwendet_tatwerkzeugid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wirdverwendet
    ADD CONSTRAINT wirdverwendet_tatwerkzeugid_fkey FOREIGN KEY (tatwerkzeugid) REFERENCES public.tatwerkzeug(tatwerkzeugid);
 X   ALTER TABLE ONLY public.wirdverwendet DROP CONSTRAINT wirdverwendet_tatwerkzeugid_fkey;
       public          postgres    false    231    3060    237            ?   A  x??Y?n?H??+xs?y??'???vbXy`s?ı5Ј4??f?߳????????E??????BwWu???????????ϟ???:??om?8??uy??????????1<?6C?N?ut~r?Cl???«?M???M???????yMO?????kNNJ)I????Eߧ??aT+??K%??Z?g_>????Շ??'??????͌?<v8????Pr??6?Q?t???8?#C|a???!?#F*?d12?TƘ:??w}{@?<A??n<6Z0%M?Ǵ?v?%??}?;?/K?޻???s???J#>#	????cG??? ???q?'7?_e?@?X??L??Xu??f?b?G?;??u?ǩ???r????mØ??????0lv??Kv?\Th??lB=M!ε??2P?Tqr?????D%?7m??և?? ??N]??:?????m?=?!~??vwTs ?P?!I9??҂p??f]???????s˙?6???J?F?({????iF???HfQ?????,?ڢD????[烇?4??t>????V??"?zm???????????HJ4?Hfcm??$???l|?-??f?a1??8U?(?Ӳ??`m?v?ۨ?S0*?W2?n_L$?	?%@<?????.?"?:?t÷?a??Ƽ??j????{Nc??B]??i]???î?~Ϋ~???\L.$?Mo??$s?????x?G?_ǃW??rm,ɫ?[?Ժh1?<z???Xb?jt??ʅu???T??$Q*???=?|?m	?-??s????)??ۤ$?????h?o<-??K3?=?3?1Hjf??????[(%?d?|{???0t	??*ωC?jb"????J????qQR?????<H?(?F?6?D???????.6?^tM7???.?[bI?V#(??Vg?'??/??"??8?2?
ŉ+.Mu?c2????g?B???%???\??p???o˹?bB%?ϫP??) ?O?JU????x?S??j???\x??PHc????B՞K$vY??9??v????L?Mͩ?^C?%;???5????h(??????#?W:	?!??y"?#X?????????QD?3?O?@??.??-?^	f(?N??rRa??>?i?|?!?Z??p??9ۏS;?x	??lu?Lm%?9y?pr?	?Jl9?#7XK????yQ?z=q?LCK??Tbt?a??~<(?d??Kk???il{??M'g2?? B?C.?+??N?ab?5?-'a?}1?bV?mt?1w?!{x?l픉?]??a)K(?w-??yS*?":Ƌ?????)܌T?w???FAb?-?????MԆ?ĕe?ïn?????|?YJr??W%z?}2e?z?á????g+?t??K???z??q?B???Kk??8????C????9?=>C?i??r*?T???3?g???	?|?y?y@/??eytM?'p?g*????8?]?????O??"?????I???l??SW	?Ie?W??	e0i?p??!N/??0xFIy??????L ?<;?R??	?O?:?}[?@????!CԔ?l?5!՟??P^?a?h??S?[wp??B??2?S+$?]It#W???I>PE	w??????
|?@)I ?|???CE?      ?   ?   x????n?@E?|?ۡ	?aF(W???ji"?=?T'?)LL?#?????'??=osr????????Oh????Rw
fw.e???ƥ??ʶ???^?N?|?w{?&?????+`??+?????K}BѧHK[U??D?K'?V?a??`?6B????Q^?4??z?$???Q !HK;Q?VHn?????t\????v?#KoJ7?O????kL???Ԕ?y2	-??醩?7۱????      ?   e  x??W?r?8??+pcR?ĤhE??!gm?+?????? Y 8???C?!????(K???u
.|`7f??yy5=?|M.????F?J>9??<s'??dw???ER?G?N}k?U;_H?3??+ȶ?UHX?ꒋ"$)??P<}N???ܜMɳ8$??Zf ?ZB'Q???????>
?J??S?[?A???ި?R????????h???e:;?͹????y??????8@??T?8??"??!G?KYKsV???%?=(eI??|Q?yaIe5?@? RqE?ⴢB?˫???	z`8????	?O,??C?V?mA+???x???????7?7??c??c?	?????u`??"UWr	w??_Ǣ;&~??r?P?ݾZ|5??qtG 	fp'}?'~ ??g.?5?^޷??5B??????ı?.$???z?c??+ (7&	?1?B3?	?T-?(q??$??8?y?Di??Nzm???l???.P?\L????$c?Q??ȴ4??"kp?+??b?wBU[qW?g%ⵥ]??Qf?KR?%=)Vl???????????l4HDEEvX??t {???<I[<X?l?C???/*??ʻ?L y?x?P?`ţ+NO??-MFj?????@?l?z??=????_?V?m??B??a??????=N?2?d??????_??/??d??fHN?(ꊪ?JoK3j??E?	?Y_{`??9]HIWm?uܦ?*????5_?6r~????Z5?=?`;ϛ??]pN9??????Q?u??!b???S????r???3??T?Q?????'?}???w?Q??Ǳ?N??u???M&'??yK=??st????K??N??? ^???z??X?GG?<|??      ?   ?  x??VMs?0??W?F2cw,?㞒i:?a?LI۳?[?-IN??-=?7???+h??3,Z???}z??????=???#?*)??C
?Xr?|??!?V\?Jf?	??Vrm??^?
D??1????F?q"?CpOA?|9?W?U???6???<OhR?????????S???ǨK?K}?yq??򵐉??9??\??JjSV?Ҧ=???걘??c?p?Q@
?W???,Ab??	?g????:6??e??$X'/?(ɢڂ*?Z??,??v???&-<ɠ?̴???`?~?~?RzRwJ<p??J??q?1?u?-??2m?????=x? ~Η??,ᒀ?P?ϼ? ???????è??&??G<8?LC???\?PW\?w???SEQ???-?q??4l ??{?V?X??x???.Sñ0??w?Rr?{Qh?
0O??????????g?@?]0?^c?NNؠ=???@=rt???iL;l<i??;???????Τ%?$`T????λ??d?&hA?zڃ?????/?????Td?t{4Nx?{U?w???????!_??????`?_????䰆w O+??!S@?????΅_?G,*k䱪g"??M?4f??4????A????????z;??aƸ?hxz ?Ҿ?	???[f??      ?   4  x???MN?0F?=?wm?
?
bE?"?HM۽Ob+?DcDΓ3??.î??Y?????)?e?ٲb?}a]FW'?n?????????	?AW??????i??l?-ش???*5R7?<??N???"??W?	?	?? ?G?????zJ??}F~?C?P /#rÃ???P@?~r??MJ??2?B?^C? I??|??|4?{??7?Bn????D??4??! *m=`??j?Y?,??
??ɰx4??U???S?A8??dI??7?$?$T??sT?L:??6?)Z????????:?|x??C      ?   ?   x???=O?0??=?ⶶR?b'ō?@T(
?????hO5n句?? 1?z???9[׭?˷t???Soi?2?.??Z???9?)??O,A?!?#3?????rSQ???d???{???=???㤄???]I??%k?p???v??֮?W$??V??m?v?????aC?ٌ9^_@(5?3N/??'?x?tr?Hf??Q???<S?8.N?????=????΄?DU?+?dSZV:?B??p??q?k??????h      ?   ?   x???v
Q???W((M??L?K?L?+.).I??Iͫ*-I??)?KW?(H-*?L?QH?H??e?y:
I?Ś
a?>???
?:
?:
?FF??@???36T״?򤲕f:
F`K-?V!?49?VZ­? [i???R?؀V????	?Nc???)?NCs???P;AL??\\ ???      ?      x???v
Q???W((M??L?K-??,)I?)??S?(H-*?L?QHI???.?L?Ts?	uV?0?Q0Դ??$? 3#???Q0?? C?L0?Q0??`0?Q??????hIq0 ??? ????      ?   ?   x???A?0????⽩0dSH???0H??:d`&s???i????yn??,I?K,???E#KO??Ժ
?Q?g?T????tB??B0>T-?s?z?y??c?~a#????d?w??????yu???w[??????v?p３b?q???BЅ#??9.m??hM#A?sn4?z?{?G      ?   g   x???v
Q???W((M??L?KK?(*JLQ?(J??M?K/?O-.N?QH?L?Ts?	uV?02?Q0ִ??$W?????-t(q?? ?| 2?h  ?4cp      ?   1  x???Kj?0?}N??0?Σ?J?)?ԅ汗??-,d3??e??1???*?????J?Ň???J?m??ci?{c?Zor^?l????!?9
???X"(aM1c??f?l?4
Y?u?c? <?L0{?????N,A??o????X[#	???5h???|???* ???s?O?^~U]?Ҽm)??#??tY7I w?t?傦??3O??O?o???G??p??v???2D?{?/?H?LcG?ׅ?!T?2.vI!?U,\???"I/??eS.??i?????c?ۖh??rT??T$w^?<|5&?݃??      ?   ?   x?????@?w????\M[@E'???;??g?<|~O8?t???_?6N??&?8?????Ws??6gm??i???0<?=??)?w??.?B?KWue?????9?`?L???!a?? ??;?X???G/?9????1?͘??;O?LH-??6I\}? ??^?Q????G?t? ????E?????'N	?~?{?b??      ?   ?   x???1?0?w~?ې?5??
???@B0Qp/R??????Ԑ?H?ro??????R????.????Tu??F???,U?J??5U?	䪗????{x??k????YV??C??gX1?F$`s????2a??????7w?V??;Q??2N??6
??[????Rt)?S??M??bјd,c?$?☀????????3e??? ɋ??      ?   ?   x???v
Q???W((M??L?KO-N?HLM?L/I-R?HJ-*M?QH?)-I/*-(H?Q(H-*?L?Ts?	uV?P?=?-/9C]GA??IH?kZsyR?䐢?̼?"??N?@҂j&;??????@w9?Ѐj??^RTu????fT3?+??(/1'??l:????? t?R      ?   |   x???v
Q???W((M??L?K/Jͫ*I?S??K,????L?Q?KL?HJ,?	h*?9???+h?????(?;{??kZsyRj?ch?8???0.8?d?Tj??2d*5??8??@㸸 ?&|?      ?   U  x??U?n?@}?W??d"???'???R)?T??O?
{??B%~&????Y?6??H+{ul???9gg8?<?Na8?????R9{L???$ܯ?????1??w?Y?QFN?X?? iX?}???????g, Z???E?*?hRQ0????(??k?9?3N8??!?܀??????nXU??@??GhT0??2"?ށ?T?"?o?$_.??ק??ga??;????<??Q):???q?d#?rpS????E??K???U?A?????Z%{??֩??.4)?Dl?J??P?D4??b??"?o?Qk??,??s??J??$?z????? {?i??c??S$??'???D?h?z? ?\??7p???D???᧴V??R?f??ۍ?!?Fy???(#?[R<?5Z?v.??b#??*?B?W?xE? Y`???1?8
?	?(?????v{?܏#?o#+2D??j?I?%?&?7c???;???m???)i??l`?,??????^H??8?	o?/N7T?R???
?0IG???;?????Np???,??ٵ????'?*A?σ??,??26?~?<c}Wq~
??=q?[???zw?	IBG      ?   t   x???v
Q???W((M??L??H,?M-??M?QЀ22St
R??3S4?}B]?4u?4??<?6?HG?А"??&P??'(2?he? $?!idBiHS??@?? ?_??      ?   Q  x????J?0???????K???jBŁN?????ְZ%m?l??bf??\???B?]???b???+?X?ч?+U\?Z??t?%<?˦(?T??7Z?Zޚ????????ld??O?	Y?m?????_?M?C??(M?s?M?ۛ
(?? H??}??H??z?p?F?????D|L??)J?u?Ĭ???7R#!?.60??????Me???u$0??ּj,??
jf??x??kY??_V??G1?,#? ϙ+?`ر}????A??+??"? C8`??1tY??pU??в????@?-?-?\??S??"	;c?]1?o[?;???'???K7? ???R      ?   
   x???          ?   ?   x???v
Q???W((M??L??,.I+J-?K)??S?(H-*?L?QH?04?}B]?4u?5??<?6?HG??"?N0?????(󅁎?!e?0??Ђ2#?1?0:L(?Pc?#(?#S??@#?? Ijя      ?   +  x????n?@??<??H$;?=5H!?
?}?????G??2?????2???k??????????z?c?????P?;e]?>G????ƪ,??w????Z?#?q???45*w??O?k?F?"诹:5<)h????#??K???O??I?b??lVl8K???_z???5? ?*???Ѐ??O ??{??ϖ?3n?Z??r???5???E?X??l???<?*A7'??c%???Vhr?s
eA{?`?!|?BU??EE?Jx?:????ǌ?+?u????b??JBϾ/K???7{?D<???3t=z?.]Hw?z2t??D?>sq??Ux?Bht-??IC?C|U??D???4NZ?m"?%???)|9???I?=<T??h]??????}?E%?T??{?:s?~^w?{?Ӯ;pLU??7`???W:r'?D?s?1?U2???]???9?????(??t?{?uzޞg???WǓ,??4?U????gA߶?+?0?lN???";[??)"uK?? RkK??B?>"Yɏ?{=\???N????      ?   ?   x???v
Q???W((M??L??I?KQ? ??):
I?U???y?y??
a?>???
???A?:
?.??%?? ????\???2?????Ԣ"?
???_?????G?Q?!? ?<Ks(3??????????*?A\\ {?u?      ?   ?   x???v
Q???W((M??L??M-??M?).?,PЀr2St?L???B??O?k??????z@fjQrf^???5?'e??9??$?hf)U?4??X??J?L?f?????e?`?)?<?ԤԢ????l??\\ ?!??      ?   ?   x???=?@FўUL&|????+h??(?DDҰz!??[???a?E	??d?>??,???????4c?3??./????YזiӴս??o??٭?f?????i?B?pת?TA???/1[*?TJ|???8#C?Y}?)?3?c?W????L?????A 	a????L?ba/???????(??+??      ?   
   x???          ?   ?  x?͙?N?H???s?V"+?x><?+إ???'??8;D????X?M??????Nܚ^??A????????˛???????????[??b}???<????n}m6???f???V?Y?+?\?x????)M?ۜ??V??!?f?*g??5u??lݶƋ??ۦ???y?pEW~$?W??s򁞐??5??4???wo????P??YV̘?W?,
?
M2Ad?MeK???[8??(y???w?IA2??ykM???egǌtFٌ?1#J(?a9?????u޴?ŗ??wp`???Hj?	Z?|??GJ1??,????2R?]??;?N?<QH?u??x??\?l?c-sԒ*|?1^E	-?D??DF?}u!\????,ƈ??11???S?fo??HT?}=??m\????S?+˲,-?X%m!	?0????????T?v?we????n???HR	Q?y????I?'$?`U??U???s?A??=??*$S??@?)?De??T?*t?j??g ?9?(Z?29??Pke?	?1l'???
?2?G?W?)??ϐ???;?y???U?0?I.I&ߤM?=̕????%???+??V
?G????"???8Z?d]??ϦvuH?3???~AWD? ??1;??_`??"?N????]f?Y?+o?TH5=?H??5bhi?Tf??'P?i?Q9V?>S??r!??I^??tS5IM?}??r?w{?vd?E?E??՚(ę"?Mei??@6??ː???~i??F?L?ӌ??P??K?ُy??"?ګ1Kw?m:?k??-??W???????9zBO?????v??|?\=???E0H???D2N@U1U??uH??Rl}???k??K?+\?U5?UP^0???3HUR?e??4UTl??r?I{???w?`R??"
??.?\6I^???n]?~3RU??S?+??l?*??Q?=?b<?BpK?k??W?|?{Mvp??Q?<??M4ՖJE????[ ]?????N???+d+=l?r??A?z;?E?1??????f[o??9#Qh??M?C??2Fr?cGu?T?Ş?Ŵ?C?????vo_G"ǥo????????	v?$?D?e?=?????C4[7RVC??dX??FSSv"ٔeaa??#Ƞd????t??U%??t????ZĮj~$9?o??A?(?L	?S+?(j??*??gx?[?B?׈?0?Ѿ?@PN?*Mu?ɳ?N7??D?R$;?@?\?S???T?
????=?b?b??b-?QF	UH??8??Q?IvV?Ã6????SUg34,E?]>??K|????72&+%??0???<p??????4?W? v5??^Yp+???k?͋?-??{6??R??<?y???]???????cU?q???a2xJo?*(&?%??? ?q]??????y?????????{??ZE?`      ?   ?   x????
?@??O?7$Z??????RX??}?E?MeU???g???K????0?????C/???#???鬩Ms???(.??ttv?"M?H5??e]ۤ??o?'dJ(?՝?в~?B-[ZѠ?a?9?ˌ
(???^T??R+Iyeơ?ZJ???_???????),)A?d?i)/?!Ŷ?TZN???vl?T???'|Ag?v?????[RQ> 9b9      ?   ?   x????
?@?|?vI ??M??Hq L?׋??#??7???.??v?k??ҋk??????j?S??[????0??~C.????t?i!?J??o??@~????7??!_A????P??.?*?PKz?P??Z??0?Qw!-C?&5?~}?$_???      ?   z  x???KN?@??=?wm???W?
D?UiA???L?$V?i5E?,?]/?'???؎5?'???W??????3??):sҕhv?z?????? @a?e??4$6?????ۧ??zC݅T?+?1?.?kgH?B?wFE???t??????a?f?8??H?????$0Em??k??v?@???????T9:??2(?X???H?1?o?????6?B???H.X??`?!Y?A}a(?1??v!????ɠ?]?*??fLS?6e;????q?ؕ]?PW?Y??{?x?Z???xq?j??g?(???????>?,??&kNO3iF??-e??.~A????Ki)?8???5??K???R??ߏ_&?????t?`???      ?   
   x???          ?   O  x?՗?n?8??y
?Mm׎cgF??8i??{?#??D
Yǹ?]?1zھX???H??m?^t?)??ȟ??fxvy????;????e?%??}E??Ȉ??"?
??,G˕\??QJH??????? 4??܏lTO?\?a?5??YF?@?SKH?0???]?C?"`??wQ炿??9]|y??x39:??_GJ??sj-h??{?!T2w??$?k?R???]st??,?~O???OdL????/???A?%??Uگ?ѣ?[??3eL?}	Hi??`??7/??;? ???C?GRi-ܦ?Ҕ?BR?\`?K?,Q?????]C??7??WR??[!˴?
I???8F(9c?n???ha????a*e??Ƹ?U?G??[HD?)?כ?3?k??%X??????R??I?n??)?i?G}?r????5?n?????f4A`@?F?aG?NF??%c\Ut?,[yeW??4S&???1~?@????4??Z??g??>?[????U?w??%?ag?<v?Aa׸???$???$K9??{S?%??-???y-??} ?t???1?M??-jX1?X?q???r??P?w޹t/*aK{\?Ǐ???z??vy⬗?Y?;6?bx?Q???B??D???AR??]	N?]???ٯtێ???bAh???({ʺI?i[??Z?TJ???+K???$?;??<?(??1m?Ҧ?e????H?5?w+m?Z+???i?ΰ???aV5n??2?)m?H ??1????~?3?$wE??;??^??qW?	?Lm?????_'??:ִ_??9?F^?OE??a???5ώ?<v?QZ?|???j??ߖ?[??v?/Qm?l?ɷVm??AG????\?,/זF?B????Z*|??_5?z?e??????r?B?<??????[A=ex?Qb?I???&??Ѣ?.?=?]Ӧ*??Rf??&?ɠ???´?5???Z??_f??D ?[?xu6*?????{sW?????V1? XG#??B???QP??r?Qd?a+,[?.h?tl\????????:{?|Bi??6?-E???_?mnE?lZ*?n???n?X?6?̕m{{??sG      ?     x??Իn?0??=Oq6@?+۹????)J??Cc?Հ?/<mc"?{??????t????n??p???M?`?6c??`9?2????L?y?Ͻsz0??'p?????G??Ͱ??u??la?	,??2E?ZP?? ???׬I?s?@F?o?I??u2I%5?%<??&E$??RP??r?Gw?`??R?Ze????"zX2L5??l????Q??R?.j?)8"??"??p*ؿ?6U?,*f?W?[T?(x?T2g?J9Y?*??%b??vi?F      ?   ?  x???Mn?@??>wN #??tՠna??@????DI?F????P??g?*;]?o????bf!~|?????6????F?Tx)/F???V9.?(M??=[?jE{?b??C??9??t?}?????p?_?6$!R???)?$?K4?q?/???Y?W+?Y^O??C}!??RI%(Ԥ9qk(|?O?8?3m????Þ+?1Y??p?C?Y??B?kp?p??ΩF??'?ɢLIJ?3}q??,??4?rEo??.?i;?"??.ّ??˞n?;̉??o??C?z??ܰR??f???E??)[M.????k?l?m??V?f]?? I+\RFw}??9??{?w1Uyg??Z??m??K?nN,??!?!??CĎ>?|??5??9??e?E/?oK????ap6=l/? ???53o=Ҹ?????]?o?K??T?????Å?O      ?   ?   x???M
?0?}N?-[??q墋?T?ս?AB?HHxz{???a???0??^??{?????>??r@n!????>?%X^??Mq=/??D?t???SN?e????L%???*????m?d????L-???:B%3???l?R??l??      ?   ?   x???v
Q???W((M??L֫J-MOU?HJ-*M?Q(H-*?L?Ts?	uV?P?I?(J-R?Q0Ѵ??$Y?ojrFb^f6?C??QZ\???1Œ,S܊2?o`L?a?Eه????a
4?? ݡh?     
PGDMP         *                y           WinDBoe    13.2    13.2 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41612    WinDBoe    DATABASE     f   CREATE DATABASE "WinDBoe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Austria.1252';
    DROP DATABASE "WinDBoe";
                postgres    false            �            1259    41684 
   bestehtaus    TABLE     W   CREATE TABLE public.bestehtaus (
    pid integer NOT NULL,
    rid integer NOT NULL
);
    DROP TABLE public.bestehtaus;
       public         heap    postgres    false            �            1259    41697    collaboratore    TABLE     �   CREATE TABLE public.collaboratore (
    nome character varying(255) NOT NULL,
    cognome character varying(255) NOT NULL,
    gd numeric(7,2),
    paese character varying(255)
);
 !   DROP TABLE public.collaboratore;
       public         heap    postgres    false            �            1259    41666    filiale    TABLE     �   CREATE TABLE public.filiale (
    fid integer NOT NULL,
    bezeichnung character varying(255),
    strasse character varying(255),
    plz integer,
    ort character varying(255)
);
    DROP TABLE public.filiale;
       public         heap    postgres    false            �            1259    41654    firmenhandy    TABLE     q   CREATE TABLE public.firmenhandy (
    fhid integer NOT NULL,
    telnr character varying(20),
    mid integer
);
    DROP TABLE public.firmenhandy;
       public         heap    postgres    false            �            1259    41613    kunde    TABLE     �   CREATE TABLE public.kunde (
    kdid integer NOT NULL,
    vorname character varying(255),
    nachname character varying(255),
    strasse character varying(255),
    plz integer,
    ort character varying(255)
);
    DROP TABLE public.kunde;
       public         heap    postgres    false            �            1259    41679    menge    TABLE     e   CREATE TABLE public.menge (
    menge integer,
    vid integer NOT NULL,
    pid integer NOT NULL
);
    DROP TABLE public.menge;
       public         heap    postgres    false            �            1259    41646    mitarbeiter    TABLE     ?  CREATE TABLE public.mitarbeiter (
    mid integer NOT NULL,
    vorname character varying(255),
    nachname character varying(255),
    strasse character varying(255),
    plz integer,
    ort character varying(255),
    bg numeric(7,2),
    taetigkeit character varying(255),
    fid integer,
    vorgesid integer
);
    DROP TABLE public.mitarbeiter;
       public         heap    postgres    false            �            1259    41626    produkt    TABLE     �   CREATE TABLE public.produkt (
    pid integer NOT NULL,
    bezeichnung character varying(255),
    einkaufspreis numeric(7,2),
    verkaufspreis numeric(7,2),
    lagerbestand integer,
    kategorie character varying(255)
);
    DROP TABLE public.produkt;
       public         heap    postgres    false            �            1259    41634    rohstoff    TABLE     {   CREATE TABLE public.rohstoff (
    rid integer NOT NULL,
    bezeichnung character varying(255),
    allergentyp "char"
);
    DROP TABLE public.rohstoff;
       public         heap    postgres    false            �            1259    41689 
   teilnehmer    TABLE       CREATE TABLE public.teilnehmer (
    tid integer NOT NULL,
    vname character varying(255),
    nname character varying(255),
    adresse character varying(255),
    plz integer,
    ort character varying,
    idee character varying,
    gewinnspiel character varying
);
    DROP TABLE public.teilnehmer;
       public         heap    postgres    false            �            1259    41674    verbindlichkeit    TABLE     �   CREATE TABLE public.verbindlichkeit (
    rechnungsnummer integer NOT NULL,
    lieferantenname character varying(255),
    rechnungsbetrag numeric(7,2),
    rechnungsdatum date,
    zahlungsdatum date,
    fid integer
);
 #   DROP TABLE public.verbindlichkeit;
       public         heap    postgres    false            �            1259    41621    verkauf    TABLE     �   CREATE TABLE public.verkauf (
    vid integer NOT NULL,
    verkaufsdatum date,
    rechnungsbetrag numeric(7,2),
    trinkgeld numeric(7,2),
    kdid integer,
    fid integer,
    mid integer
);
    DROP TABLE public.verkauf;
       public         heap    postgres    false                       0    41684 
   bestehtaus 
   TABLE DATA                 public          postgres    false    209   �9                 0    41697    collaboratore 
   TABLE DATA                 public          postgres    false    211   �9       �          0    41666    filiale 
   TABLE DATA                 public          postgres    false    206   o:       �          0    41654    firmenhandy 
   TABLE DATA                 public          postgres    false    205   �:       �          0    41613    kunde 
   TABLE DATA                 public          postgres    false    200   �:       �          0    41679    menge 
   TABLE DATA                 public          postgres    false    208   �:       �          0    41646    mitarbeiter 
   TABLE DATA                 public          postgres    false    204   �:       �          0    41626    produkt 
   TABLE DATA                 public          postgres    false    202   �:       �          0    41634    rohstoff 
   TABLE DATA                 public          postgres    false    203   ;                 0    41689 
   teilnehmer 
   TABLE DATA                 public          postgres    false    210   %;       �          0    41674    verbindlichkeit 
   TABLE DATA                 public          postgres    false    207   ?;       �          0    41621    verkauf 
   TABLE DATA                 public          postgres    false    201   Y;       e           2606    41688    bestehtaus BestehtAus_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT "BestehtAus_pkey" PRIMARY KEY (pid, rid);
 F   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT "BestehtAus_pkey";
       public            postgres    false    209    209            i           2606    41704     collaboratore Collaboratore_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.collaboratore
    ADD CONSTRAINT "Collaboratore_pkey" PRIMARY KEY (nome, cognome);
 L   ALTER TABLE ONLY public.collaboratore DROP CONSTRAINT "Collaboratore_pkey";
       public            postgres    false    211    211            _           2606    41673    filiale Filiale_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.filiale
    ADD CONSTRAINT "Filiale_pkey" PRIMARY KEY (fid);
 @   ALTER TABLE ONLY public.filiale DROP CONSTRAINT "Filiale_pkey";
       public            postgres    false    206            ]           2606    41661    firmenhandy Firmenhandy_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.firmenhandy
    ADD CONSTRAINT "Firmenhandy_pkey" PRIMARY KEY (fhid);
 H   ALTER TABLE ONLY public.firmenhandy DROP CONSTRAINT "Firmenhandy_pkey";
       public            postgres    false    205            S           2606    41620    kunde Kunde_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.kunde
    ADD CONSTRAINT "Kunde_pkey" PRIMARY KEY (kdid);
 <   ALTER TABLE ONLY public.kunde DROP CONSTRAINT "Kunde_pkey";
       public            postgres    false    200            c           2606    41683    menge Menge_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT "Menge_pkey" PRIMARY KEY (vid, pid);
 <   ALTER TABLE ONLY public.menge DROP CONSTRAINT "Menge_pkey";
       public            postgres    false    208    208            [           2606    41653    mitarbeiter Mitarbeiter_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT "Mitarbeiter_pkey" PRIMARY KEY (mid);
 H   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT "Mitarbeiter_pkey";
       public            postgres    false    204            W           2606    41633    produkt Produkt_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.produkt
    ADD CONSTRAINT "Produkt_pkey" PRIMARY KEY (pid);
 @   ALTER TABLE ONLY public.produkt DROP CONSTRAINT "Produkt_pkey";
       public            postgres    false    202            Y           2606    41641    rohstoff Rohstoff_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rohstoff
    ADD CONSTRAINT "Rohstoff_pkey" PRIMARY KEY (rid);
 B   ALTER TABLE ONLY public.rohstoff DROP CONSTRAINT "Rohstoff_pkey";
       public            postgres    false    203            g           2606    41696    teilnehmer Teilnehmer_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.teilnehmer
    ADD CONSTRAINT "Teilnehmer_pkey" PRIMARY KEY (tid);
 F   ALTER TABLE ONLY public.teilnehmer DROP CONSTRAINT "Teilnehmer_pkey";
       public            postgres    false    210            a           2606    41678 $   verbindlichkeit Verbindlichkeit_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.verbindlichkeit
    ADD CONSTRAINT "Verbindlichkeit_pkey" PRIMARY KEY (rechnungsnummer);
 P   ALTER TABLE ONLY public.verbindlichkeit DROP CONSTRAINT "Verbindlichkeit_pkey";
       public            postgres    false    207            U           2606    41625    verkauf Verkauf_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT "Verkauf_pkey" PRIMARY KEY (vid);
 @   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT "Verkauf_pkey";
       public            postgres    false    201            s           2606    41751    bestehtaus bestehtaus_pid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT bestehtaus_pid_fkey FOREIGN KEY (pid) REFERENCES public.produkt(pid);
 H   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT bestehtaus_pid_fkey;
       public          postgres    false    2903    209    202            t           2606    41756    bestehtaus bestehtaus_rid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT bestehtaus_rid_fkey FOREIGN KEY (rid) REFERENCES public.rohstoff(rid);
 H   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT bestehtaus_rid_fkey;
       public          postgres    false    209    2905    203            o           2606    41726     firmenhandy firmenhandy_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.firmenhandy
    ADD CONSTRAINT firmenhandy_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);
 J   ALTER TABLE ONLY public.firmenhandy DROP CONSTRAINT firmenhandy_mid_fkey;
       public          postgres    false    204    205    2907            r           2606    41746    menge menge_pid_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT menge_pid_fkey FOREIGN KEY (pid) REFERENCES public.produkt(pid);
 >   ALTER TABLE ONLY public.menge DROP CONSTRAINT menge_pid_fkey;
       public          postgres    false    208    202    2903            q           2606    41741    menge menge_vid_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT menge_vid_fkey FOREIGN KEY (vid) REFERENCES public.verkauf(vid);
 >   ALTER TABLE ONLY public.menge DROP CONSTRAINT menge_vid_fkey;
       public          postgres    false    2901    201    208            n           2606    41731     mitarbeiter mitarbeiter_fid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 J   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT mitarbeiter_fid_fkey;
       public          postgres    false    2911    206    204            m           2606    41721 %   mitarbeiter mitarbeiter_vorgesid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_vorgesid_fkey FOREIGN KEY (vorgesid) REFERENCES public.mitarbeiter(mid);
 O   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT mitarbeiter_vorgesid_fkey;
       public          postgres    false    204    204    2907            p           2606    41736 (   verbindlichkeit verbindlichkeit_fid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verbindlichkeit
    ADD CONSTRAINT verbindlichkeit_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 R   ALTER TABLE ONLY public.verbindlichkeit DROP CONSTRAINT verbindlichkeit_fid_fkey;
       public          postgres    false    207    206    2911            l           2606    41711    verkauf verkauf_fid_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 B   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_fid_fkey;
       public          postgres    false    2911    201    206            j           2606    41706    verkauf verkauf_kdid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_kdid_fkey FOREIGN KEY (kdid) REFERENCES public.kunde(kdid);
 C   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_kdid_fkey;
       public          postgres    false    201    200    2899            k           2606    41716    verkauf verkauf_mid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);
 B   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_mid_fkey;
       public          postgres    false    204    201    2907                
   x���             �   x��н�0����VH�i���P�(@�K�!��%my߄������ΗsiV�y�hV�Q�UR��R�J�*��q݌��c�2��[r��
��0��r�c�sm��a�"dA��PǤ ��m@���`�AJ�U`~����6ubC�/>����Zof�.�k<ځ�͆�
�������� � [�      �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���             
   x���          �   
   x���          �   
   x���         
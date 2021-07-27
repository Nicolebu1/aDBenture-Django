PGDMP     &                    y           WinDBoe    13.3    13.3 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25004    WinDBoe    DATABASE     f   CREATE DATABASE "WinDBoe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Austria.1252';
    DROP DATABASE "WinDBoe";
                postgres    false            �            1259    25005 
   bestehtaus    TABLE     W   CREATE TABLE public.bestehtaus (
    pid integer NOT NULL,
    rid integer NOT NULL
);
    DROP TABLE public.bestehtaus;
       public         heap    postgres    false            �            1259    25008    collaboratore    TABLE     �   CREATE TABLE public.collaboratore (
    nome character varying(255) NOT NULL,
    cognome character varying(255) NOT NULL,
    gd numeric(7,2),
    paese character varying(255)
);
 !   DROP TABLE public.collaboratore;
       public         heap    postgres    false            �            1259    25014    filiale    TABLE     �   CREATE TABLE public.filiale (
    fid integer NOT NULL,
    bezeichnung character varying(255),
    strasse character varying(255),
    plz integer,
    ort character varying(255)
);
    DROP TABLE public.filiale;
       public         heap    postgres    false            �            1259    25020    firmenhandy    TABLE     q   CREATE TABLE public.firmenhandy (
    fhid integer NOT NULL,
    telnr character varying(20),
    mid integer
);
    DROP TABLE public.firmenhandy;
       public         heap    postgres    false            �            1259    25023    kunde    TABLE     �   CREATE TABLE public.kunde (
    kdid integer NOT NULL,
    vorname character varying(255),
    nachname character varying(255),
    strasse character varying(255),
    plz integer,
    ort character varying(255)
);
    DROP TABLE public.kunde;
       public         heap    postgres    false            �            1259    25029    menge    TABLE     e   CREATE TABLE public.menge (
    menge integer,
    vid integer NOT NULL,
    pid integer NOT NULL
);
    DROP TABLE public.menge;
       public         heap    postgres    false            �            1259    25032    mitarbeiter    TABLE     ?  CREATE TABLE public.mitarbeiter (
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
       public         heap    postgres    false            �            1259    25038    produkt    TABLE     �   CREATE TABLE public.produkt (
    pid integer NOT NULL,
    bezeichnung character varying(255),
    einkaufspreis numeric,
    verkaufspreis numeric,
    lagerbestand integer,
    kategorie character varying(255)
);
    DROP TABLE public.produkt;
       public         heap    postgres    false            �            1259    25044    rohstoff    TABLE     {   CREATE TABLE public.rohstoff (
    rid integer NOT NULL,
    bezeichnung character varying(255),
    allergentyp "char"
);
    DROP TABLE public.rohstoff;
       public         heap    postgres    false            �            1259    25047 
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
       public         heap    postgres    false            �            1259    25053    verbindlichkeit    TABLE     �   CREATE TABLE public.verbindlichkeit (
    rechnungsnummer integer NOT NULL,
    lieferantenname character varying(255),
    rechnungsbetrag numeric(7,2),
    rechnungsdatum date,
    zahlungsdatum date,
    fid integer
);
 #   DROP TABLE public.verbindlichkeit;
       public         heap    postgres    false            �            1259    25056    verkauf    TABLE     �   CREATE TABLE public.verkauf (
    vid integer NOT NULL,
    verkaufsdatum date,
    rechnungsbetrag numeric(7,2),
    trinkgeld numeric(7,2),
    kdid integer,
    fid integer,
    mid integer
);
    DROP TABLE public.verkauf;
       public         heap    postgres    false            �          0    25005 
   bestehtaus 
   TABLE DATA                 public          postgres    false    200   |9       �          0    25008    collaboratore 
   TABLE DATA                 public          postgres    false    201   �9       �          0    25014    filiale 
   TABLE DATA                 public          postgres    false    202   e:       �          0    25020    firmenhandy 
   TABLE DATA                 public          postgres    false    203   �;       �          0    25023    kunde 
   TABLE DATA                 public          postgres    false    204   H<       �          0    25029    menge 
   TABLE DATA                 public          postgres    false    205   v=       �          0    25032    mitarbeiter 
   TABLE DATA                 public          postgres    false    206   �=       �          0    25038    produkt 
   TABLE DATA                 public          postgres    false    207   ?       �          0    25044    rohstoff 
   TABLE DATA                 public          postgres    false    208   %@                  0    25047 
   teilnehmer 
   TABLE DATA                 public          postgres    false    209   ?@                 0    25053    verbindlichkeit 
   TABLE DATA                 public          postgres    false    210   zA                 0    25056    verkauf 
   TABLE DATA                 public          postgres    false    211   �B       S           2606    25060    bestehtaus BestehtAus_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT "BestehtAus_pkey" PRIMARY KEY (pid, rid);
 F   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT "BestehtAus_pkey";
       public            postgres    false    200    200            U           2606    25062     collaboratore Collaboratore_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.collaboratore
    ADD CONSTRAINT "Collaboratore_pkey" PRIMARY KEY (nome, cognome);
 L   ALTER TABLE ONLY public.collaboratore DROP CONSTRAINT "Collaboratore_pkey";
       public            postgres    false    201    201            W           2606    25064    filiale Filiale_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.filiale
    ADD CONSTRAINT "Filiale_pkey" PRIMARY KEY (fid);
 @   ALTER TABLE ONLY public.filiale DROP CONSTRAINT "Filiale_pkey";
       public            postgres    false    202            Y           2606    25066    firmenhandy Firmenhandy_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.firmenhandy
    ADD CONSTRAINT "Firmenhandy_pkey" PRIMARY KEY (fhid);
 H   ALTER TABLE ONLY public.firmenhandy DROP CONSTRAINT "Firmenhandy_pkey";
       public            postgres    false    203            [           2606    25068    kunde Kunde_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.kunde
    ADD CONSTRAINT "Kunde_pkey" PRIMARY KEY (kdid);
 <   ALTER TABLE ONLY public.kunde DROP CONSTRAINT "Kunde_pkey";
       public            postgres    false    204            ]           2606    25070    menge Menge_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT "Menge_pkey" PRIMARY KEY (vid, pid);
 <   ALTER TABLE ONLY public.menge DROP CONSTRAINT "Menge_pkey";
       public            postgres    false    205    205            _           2606    25072    mitarbeiter Mitarbeiter_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT "Mitarbeiter_pkey" PRIMARY KEY (mid);
 H   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT "Mitarbeiter_pkey";
       public            postgres    false    206            a           2606    25074    produkt Produkt_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.produkt
    ADD CONSTRAINT "Produkt_pkey" PRIMARY KEY (pid);
 @   ALTER TABLE ONLY public.produkt DROP CONSTRAINT "Produkt_pkey";
       public            postgres    false    207            c           2606    25076    rohstoff Rohstoff_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rohstoff
    ADD CONSTRAINT "Rohstoff_pkey" PRIMARY KEY (rid);
 B   ALTER TABLE ONLY public.rohstoff DROP CONSTRAINT "Rohstoff_pkey";
       public            postgres    false    208            e           2606    25078    teilnehmer Teilnehmer_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.teilnehmer
    ADD CONSTRAINT "Teilnehmer_pkey" PRIMARY KEY (tid);
 F   ALTER TABLE ONLY public.teilnehmer DROP CONSTRAINT "Teilnehmer_pkey";
       public            postgres    false    209            g           2606    25080 $   verbindlichkeit Verbindlichkeit_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.verbindlichkeit
    ADD CONSTRAINT "Verbindlichkeit_pkey" PRIMARY KEY (rechnungsnummer);
 P   ALTER TABLE ONLY public.verbindlichkeit DROP CONSTRAINT "Verbindlichkeit_pkey";
       public            postgres    false    210            i           2606    25082    verkauf Verkauf_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT "Verkauf_pkey" PRIMARY KEY (vid);
 @   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT "Verkauf_pkey";
       public            postgres    false    211            j           2606    25083    bestehtaus bestehtaus_pid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT bestehtaus_pid_fkey FOREIGN KEY (pid) REFERENCES public.produkt(pid);
 H   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT bestehtaus_pid_fkey;
       public          postgres    false    200    2913    207            k           2606    25088    bestehtaus bestehtaus_rid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.bestehtaus
    ADD CONSTRAINT bestehtaus_rid_fkey FOREIGN KEY (rid) REFERENCES public.rohstoff(rid);
 H   ALTER TABLE ONLY public.bestehtaus DROP CONSTRAINT bestehtaus_rid_fkey;
       public          postgres    false    200    2915    208            l           2606    25093     firmenhandy firmenhandy_mid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.firmenhandy
    ADD CONSTRAINT firmenhandy_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);
 J   ALTER TABLE ONLY public.firmenhandy DROP CONSTRAINT firmenhandy_mid_fkey;
       public          postgres    false    203    2911    206            m           2606    25098    menge menge_pid_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT menge_pid_fkey FOREIGN KEY (pid) REFERENCES public.produkt(pid);
 >   ALTER TABLE ONLY public.menge DROP CONSTRAINT menge_pid_fkey;
       public          postgres    false    207    205    2913            n           2606    25103    menge menge_vid_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.menge
    ADD CONSTRAINT menge_vid_fkey FOREIGN KEY (vid) REFERENCES public.verkauf(vid);
 >   ALTER TABLE ONLY public.menge DROP CONSTRAINT menge_vid_fkey;
       public          postgres    false    211    2921    205            o           2606    25108     mitarbeiter mitarbeiter_fid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 J   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT mitarbeiter_fid_fkey;
       public          postgres    false    202    206    2903            p           2606    25113 %   mitarbeiter mitarbeiter_vorgesid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_vorgesid_fkey FOREIGN KEY (vorgesid) REFERENCES public.mitarbeiter(mid);
 O   ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT mitarbeiter_vorgesid_fkey;
       public          postgres    false    206    206    2911            q           2606    25118 (   verbindlichkeit verbindlichkeit_fid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verbindlichkeit
    ADD CONSTRAINT verbindlichkeit_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 R   ALTER TABLE ONLY public.verbindlichkeit DROP CONSTRAINT verbindlichkeit_fid_fkey;
       public          postgres    false    202    210    2903            r           2606    25123    verkauf verkauf_fid_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_fid_fkey FOREIGN KEY (fid) REFERENCES public.filiale(fid);
 B   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_fid_fkey;
       public          postgres    false    202    2903    211            s           2606    25128    verkauf verkauf_kdid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_kdid_fkey FOREIGN KEY (kdid) REFERENCES public.kunde(kdid);
 C   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_kdid_fkey;
       public          postgres    false    204    2907    211            t           2606    25133    verkauf verkauf_mid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.verkauf
    ADD CONSTRAINT verkauf_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);
 B   ALTER TABLE ONLY public.verkauf DROP CONSTRAINT verkauf_mid_fkey;
       public          postgres    false    211    2911    206            �   
   x���          �   �   x��н�0����VH�i���P�(@�K�!��%my߄������ΗsiV�y�hV�Q�UR��R�J�*��q݌��c�2��[r��
��0��r�c�sm��a�"dA��PǤ ��m@���`�AJ�U`~����6ubC�/>����Zof�.�k<ځ�͆�
�������� � [�      �   "  x���Kn�0�}N��D+�#%�� (�l�";����  ��Yz����b����,�/{��Äb��0Iw��9;=����쬣#t�N�������ΛtT�NG׺��W/�0Eӹ�4Z�&�kZ�w�������]�8KRL"�_���k��I8��V��\	��[�Ur�0e�2[)��xGi����,y��Z��1k;�܊�#�qd�,������M&9�"Ԉ{�}@��w]^�ܹ���k�}�>#Q�Jp���\	"V�J�����4xY@�٨Γ�7[Ǟ      �   �   x���A�0��⽩4���F��0H�^Mq�R��}���_���SVuqjPV���mp�m�汝��d�H��Y�g;L3��l���p.j$C���hH��1����[�_5)�CU�RŢ�oU&�\��b+V並 �^�T��s��j��(� ��v�      �     x����j�0����k2:�������ڵ��5D9�+��w������'9��9�NEr���t�d�Xv�zR��6JH�o���0ͫvV�!����=f�m���%�<l���k%�k�W�@��ou�_Q��!Y)��.����U�(G8q��z��*��b�@X�l��ю�c��\��Ԡ��|��T��gH;S�_�D? �0X�1� �%<x��33��P1���h	Ӕ�kἺ����(��d�`��?,�wOP*���y,gcm�Qy�(��LN�5�u�ܼ���*��      �   
   x���          �   x  x�͓Kn�0����;@�P�*uU$�"���I2I�8�N�r���I9B�����ǋM4���b�{�:V2Tҁ�Q:4�W�����BOhH�&�΀����<�p�N�%]�D�^��ʴ/ޟV�y$zCOt#Щ�.E3�Z��p�!� ��-�J�*J�ƾ?�}>}9'%����W+O������F�e	�H�����<�@*˜�d
?|�S�JY�#Z�w4%��"�Ę���$�X���k�����7��gTUѓL=
�����± T��Z�jh"�Rg�Rd��Q����tؤ !1Ug��d� E�Њ5hȱB���l!�|)l���.g�ZEJp���e>�>I�3���ឥ��غ�����HD����Cg      �   �   x��ѱN�0�=Oq[Zɲ��*&���"��n���rp,�f�eX�ly1�sXN�Y��_���/5�����l����+3#�~�l��� J���Ƣ|��}�x�V��w��V��n_��2�-7�7R�)F���^�Q����բ��A�t~��S�.��F�vG]�e�1������U�٣�](h�p��Ԯ<~m��I���q��Ť�cgb<4�W[��w'�ٕ�?\I����      �   
   x���              +  x���KN�0��=�wm����B�(*jQ(i�zO�g�	����p/�)�k���y����7��q�֛탪��R~Q#YFS�S��t�^
��.��Q�6R��#E%>�1�����u�[�j0�T��A��-xG�H~�/� �Ij:ǡ�ęd%��%��^���L:��i����J��	*A֕����q�ZA��i�3N:4��0L�A�:Bmʃ���vs2��8)�s�Ne�q�k��p��e���R��/�t>��͹9��P�n�+t?��2�h5�0͂�)�6k���^���"           x����N�0�;O��� miē&�%�y��1�Й4�ټ�b�}n��=��%��iQ���k�7��yC�ײ����V
�����"��EeASc�*�J��h�t#�Ne��F�u}k�GV5�X���o��6�#�,0�Թ+ϪE	a�ߛ��;��#F�	�	5g��:���-a������jP0��ջ6���=�b�g���;�~���]'�8֯�3��c�nB-d�*����/��$��|�m�;bw�]x���at�#�i�a|�x-~         �   x����
�@�O1�
v���;t��A���-�Ĕ0��[+�^@>��_���x��{w�g�̚2�.0����H���4��Zwu�8em��ڦ��<���2�.}TE���::;���iB��D�	 �
I +�]
p�!�+/��C�Ǘ��V���t"3ǌ+59ZVĿ�I뱣��^����q<;���$�<L�� ��|���#Վ     
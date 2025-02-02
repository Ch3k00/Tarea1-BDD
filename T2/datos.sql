PGDMP     6    :                {            tarea2    15.2    15.2 ?    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    24824    tarea2    DATABASE     y   CREATE DATABASE tarea2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE tarea2;
                postgres    false            �            1259    24884    ReinosDefensas    TABLE     k   CREATE TABLE public."ReinosDefensas" (
    reinos_id integer NOT NULL,
    defensas_id integer NOT NULL
);
 $   DROP TABLE public."ReinosDefensas";
       public         heap    postgres    false            �            1259    24827    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            �            1259    24878    defensas    TABLE     f   CREATE TABLE public.defensas (
    id integer NOT NULL,
    defensa character varying(45) NOT NULL
);
    DROP TABLE public.defensas;
       public         heap    postgres    false            �            1259    24877    defensas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.defensas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.defensas_id_seq;
       public          postgres    false    226            U           0    0    defensas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.defensas_id_seq OWNED BY public.defensas.id;
          public          postgres    false    225            �            1259    24889 
   diplomacia    TABLE     y   CREATE TABLE public.diplomacia (
    id_1 integer NOT NULL,
    id_2 integer NOT NULL,
    es_aliado boolean NOT NULL
);
    DROP TABLE public.diplomacia;
       public         heap    postgres    false            �            1259    24866    karts    TABLE     �   CREATE TABLE public.karts (
    id integer NOT NULL,
    modelo character varying(45) NOT NULL,
    color character varying(45) NOT NULL,
    velocidad_maxima integer,
    id_personaje integer NOT NULL
);
    DROP TABLE public.karts;
       public         heap    postgres    false            �            1259    24865    karts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.karts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.karts_id_seq;
       public          postgres    false    223            V           0    0    karts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.karts_id_seq OWNED BY public.karts.id;
          public          postgres    false    222            �            1259    24845 	   personaje    TABLE     �   CREATE TABLE public.personaje (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    fuerza integer NOT NULL,
    fecha_nacimiento timestamp(3) without time zone NOT NULL,
    objeto character varying(30) NOT NULL
);
    DROP TABLE public.personaje;
       public         heap    postgres    false            �            1259    24872    personaje_habita_reino    TABLE     �   CREATE TABLE public.personaje_habita_reino (
    id_personaje integer NOT NULL,
    id_reino integer NOT NULL,
    fecha_registro timestamp(3) without time zone NOT NULL,
    es_gobernante boolean NOT NULL
);
 *   DROP TABLE public.personaje_habita_reino;
       public         heap    postgres    false            �            1259    24844    personaje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.personaje_id_seq;
       public          postgres    false    217            W           0    0    personaje_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.personaje_id_seq OWNED BY public.personaje.id;
          public          postgres    false    216            �            1259    24838    personaje_tiene_trabajo    TABLE     �   CREATE TABLE public.personaje_tiene_trabajo (
    id_trabajo integer NOT NULL,
    fecha_inicio timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_termino timestamp(3) without time zone,
    id_personaje integer NOT NULL
);
 +   DROP TABLE public.personaje_tiene_trabajo;
       public         heap    postgres    false            �            1259    24859    reinos    TABLE     �   CREATE TABLE public.reinos (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    ubicacion character varying(45) NOT NULL,
    superficie integer NOT NULL
);
    DROP TABLE public.reinos;
       public         heap    postgres    false            �            1259    24858    reinos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reinos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.reinos_id_seq;
       public          postgres    false    221            X           0    0    reinos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.reinos_id_seq OWNED BY public.reinos.id;
          public          postgres    false    220            �            1259    24852    trabajo    TABLE     �   CREATE TABLE public.trabajo (
    id integer NOT NULL,
    descripcion character varying(45) NOT NULL,
    sueldo integer NOT NULL
);
    DROP TABLE public.trabajo;
       public         heap    postgres    false            �            1259    24851    trabajo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.trabajo_id_seq;
       public          postgres    false    219            Y           0    0    trabajo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.trabajo_id_seq OWNED BY public.trabajo.id;
          public          postgres    false    218            �           2604    24881    defensas id    DEFAULT     j   ALTER TABLE ONLY public.defensas ALTER COLUMN id SET DEFAULT nextval('public.defensas_id_seq'::regclass);
 :   ALTER TABLE public.defensas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24869    karts id    DEFAULT     d   ALTER TABLE ONLY public.karts ALTER COLUMN id SET DEFAULT nextval('public.karts_id_seq'::regclass);
 7   ALTER TABLE public.karts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24848    personaje id    DEFAULT     l   ALTER TABLE ONLY public.personaje ALTER COLUMN id SET DEFAULT nextval('public.personaje_id_seq'::regclass);
 ;   ALTER TABLE public.personaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24862 	   reinos id    DEFAULT     f   ALTER TABLE ONLY public.reinos ALTER COLUMN id SET DEFAULT nextval('public.reinos_id_seq'::regclass);
 8   ALTER TABLE public.reinos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24855 
   trabajo id    DEFAULT     h   ALTER TABLE ONLY public.trabajo ALTER COLUMN id SET DEFAULT nextval('public.trabajo_id_seq'::regclass);
 9   ALTER TABLE public.trabajo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            M          0    24884    ReinosDefensas 
   TABLE DATA           B   COPY public."ReinosDefensas" (reinos_id, defensas_id) FROM stdin;
    public          postgres    false    227   M       @          0    24827    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   5M       L          0    24878    defensas 
   TABLE DATA           /   COPY public.defensas (id, defensa) FROM stdin;
    public          postgres    false    226   �M       N          0    24889 
   diplomacia 
   TABLE DATA           ;   COPY public.diplomacia (id_1, id_2, es_aliado) FROM stdin;
    public          postgres    false    228   hN       I          0    24866    karts 
   TABLE DATA           R   COPY public.karts (id, modelo, color, velocidad_maxima, id_personaje) FROM stdin;
    public          postgres    false    223   �N       C          0    24845 	   personaje 
   TABLE DATA           Q   COPY public.personaje (id, nombre, fuerza, fecha_nacimiento, objeto) FROM stdin;
    public          postgres    false    217   3O       J          0    24872    personaje_habita_reino 
   TABLE DATA           g   COPY public.personaje_habita_reino (id_personaje, id_reino, fecha_registro, es_gobernante) FROM stdin;
    public          postgres    false    224   P       A          0    24838    personaje_tiene_trabajo 
   TABLE DATA           h   COPY public.personaje_tiene_trabajo (id_trabajo, fecha_inicio, fecha_termino, id_personaje) FROM stdin;
    public          postgres    false    215   `P       G          0    24859    reinos 
   TABLE DATA           C   COPY public.reinos (id, nombre, ubicacion, superficie) FROM stdin;
    public          postgres    false    221   �P       E          0    24852    trabajo 
   TABLE DATA           :   COPY public.trabajo (id, descripcion, sueldo) FROM stdin;
    public          postgres    false    219   yQ       Z           0    0    defensas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.defensas_id_seq', 6, true);
          public          postgres    false    225            [           0    0    karts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.karts_id_seq', 7, true);
          public          postgres    false    222            \           0    0    personaje_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.personaje_id_seq', 7, true);
          public          postgres    false    216            ]           0    0    reinos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.reinos_id_seq', 6, true);
          public          postgres    false    220            ^           0    0    trabajo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.trabajo_id_seq', 6, true);
          public          postgres    false    218            �           2606    24888 "   ReinosDefensas ReinosDefensas_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."ReinosDefensas"
    ADD CONSTRAINT "ReinosDefensas_pkey" PRIMARY KEY (reinos_id, defensas_id);
 P   ALTER TABLE ONLY public."ReinosDefensas" DROP CONSTRAINT "ReinosDefensas_pkey";
       public            postgres    false    227    227            �           2606    24835 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            �           2606    24883    defensas defensas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.defensas
    ADD CONSTRAINT defensas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.defensas DROP CONSTRAINT defensas_pkey;
       public            postgres    false    226            �           2606    24893    diplomacia diplomacia_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.diplomacia
    ADD CONSTRAINT diplomacia_pkey PRIMARY KEY (id_1, id_2);
 D   ALTER TABLE ONLY public.diplomacia DROP CONSTRAINT diplomacia_pkey;
       public            postgres    false    228    228            �           2606    24871    karts karts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.karts
    ADD CONSTRAINT karts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.karts DROP CONSTRAINT karts_pkey;
       public            postgres    false    223            �           2606    24876 2   personaje_habita_reino personaje_habita_reino_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_pkey PRIMARY KEY (id_personaje, id_reino);
 \   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_pkey;
       public            postgres    false    224    224            �           2606    24850    personaje personaje_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.personaje
    ADD CONSTRAINT personaje_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.personaje DROP CONSTRAINT personaje_pkey;
       public            postgres    false    217            �           2606    24843 4   personaje_tiene_trabajo personaje_tiene_trabajo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_pkey PRIMARY KEY (id_trabajo, id_personaje);
 ^   ALTER TABLE ONLY public.personaje_tiene_trabajo DROP CONSTRAINT personaje_tiene_trabajo_pkey;
       public            postgres    false    215    215            �           2606    24864    reinos reinos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.reinos
    ADD CONSTRAINT reinos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.reinos DROP CONSTRAINT reinos_pkey;
       public            postgres    false    221            �           2606    24857    trabajo trabajo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.trabajo
    ADD CONSTRAINT trabajo_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.trabajo DROP CONSTRAINT trabajo_pkey;
       public            postgres    false    219            �           2606    24924 .   ReinosDefensas ReinosDefensas_defensas_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ReinosDefensas"
    ADD CONSTRAINT "ReinosDefensas_defensas_id_fkey" FOREIGN KEY (defensas_id) REFERENCES public.defensas(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 \   ALTER TABLE ONLY public."ReinosDefensas" DROP CONSTRAINT "ReinosDefensas_defensas_id_fkey";
       public          postgres    false    227    226    3236            �           2606    24919 ,   ReinosDefensas ReinosDefensas_reinos_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ReinosDefensas"
    ADD CONSTRAINT "ReinosDefensas_reinos_id_fkey" FOREIGN KEY (reinos_id) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Z   ALTER TABLE ONLY public."ReinosDefensas" DROP CONSTRAINT "ReinosDefensas_reinos_id_fkey";
       public          postgres    false    227    3230    221            �           2606    24929    diplomacia diplomacia_id_1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diplomacia
    ADD CONSTRAINT diplomacia_id_1_fkey FOREIGN KEY (id_1) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.diplomacia DROP CONSTRAINT diplomacia_id_1_fkey;
       public          postgres    false    221    228    3230            �           2606    24934    diplomacia diplomacia_id_2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diplomacia
    ADD CONSTRAINT diplomacia_id_2_fkey FOREIGN KEY (id_2) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.diplomacia DROP CONSTRAINT diplomacia_id_2_fkey;
       public          postgres    false    3230    228    221            �           2606    24904    karts karts_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.karts
    ADD CONSTRAINT karts_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personaje(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.karts DROP CONSTRAINT karts_id_personaje_fkey;
       public          postgres    false    3226    223    217            �           2606    24909 ?   personaje_habita_reino personaje_habita_reino_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personaje(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_id_personaje_fkey;
       public          postgres    false    217    224    3226            �           2606    24914 ;   personaje_habita_reino personaje_habita_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_id_reino_fkey FOREIGN KEY (id_reino) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 e   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_id_reino_fkey;
       public          postgres    false    224    3230    221            �           2606    24899 A   personaje_tiene_trabajo personaje_tiene_trabajo_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personaje(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 k   ALTER TABLE ONLY public.personaje_tiene_trabajo DROP CONSTRAINT personaje_tiene_trabajo_id_personaje_fkey;
       public          postgres    false    215    217    3226            �           2606    24894 ?   personaje_tiene_trabajo personaje_tiene_trabajo_id_trabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_tiene_trabajo
    ADD CONSTRAINT personaje_tiene_trabajo_id_trabajo_fkey FOREIGN KEY (id_trabajo) REFERENCES public.trabajo(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public.personaje_tiene_trabajo DROP CONSTRAINT personaje_tiene_trabajo_id_trabajo_fkey;
       public          postgres    false    219    3228    215            M   !   x�3�4�2�4�2�4�2�4�2�4����� '�      @   �   x�m�M
1��u{
/�!I���Cx��O*�PA�?θ����4 P��S���hhR�\�;QAWrA�L�"��e�2r�l4�լC��8�xjǞ%fI'����  ^�W�pIX��_��市��~���z��z��>1�m����0      L   }   x����0�᳷
W�ī @��bO"K���dsH7@i'������Y�>�w]���ۧ�tr�1X�-q�
�݃s�h��6ס�i���f��Ϊʄ0�2]��t'5!���lC��@��,S-�      N   %   x�3�4�,�2�4�L�&@��.�2�K�b���� aU      I   �   x�M�A
�0����S����Хn"*�MjB�������.��?����w�u<�R�JJ(�8.Ӑ�������g��j�ա�h��-�ㄍy�)��R-������8L�cJ닁���ްZ��#�/2�-�      C   �   x�U�M�1��u��@���t'�t��v`6�'�5��
�J<��na�>��`k.@�@�S�C�A�fc��j��)����|�.B�v������qd"&��up8�*�<��X��}͗1�&�)��ϑ[f���c����k������)��*���ɲ6�W��a�+�Q�J���U��t��1�
~�iN�"����$=�      J   L   x�U��	�@D��
�L&���x���E��o�aQ錧�<�p��y�*�lI?�60Z��M�Z��3����;�}      A   Q   x�m��	�@DѳS�D�Lb-�_��݅���0��:EmlW��}��^�M���d��h��o��i�| �<�6�6q ��'n      G   �   x�U��
�0���S�	d�<��@���0+���X�#��,�8�)	_�?J��z��E�Z;<��[�� 8��:�hҵǆ�PUK�Y����C1��EY$r�%��;�=v�/\�<�k�ސXa���w��YV���:�h�쵉mK�dQ~�>M��oݦQ�      E   �   x�5�A
�0EדS������#���Dڙ2I�UW=B.&\~�{�n��T`tΙ�������dg�z�Ē솊,��B	.`�{ ��,u��t�gx�L�/���M)a�^8e-��z0t}�G����7j�;��Z2&�<c��1:�     
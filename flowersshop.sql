PGDMP         )                {         
   flowershop    13.12    13.12 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16415 
   flowershop    DATABASE     g   CREATE DATABASE flowershop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE flowershop;
                postgres    false            �            1259    16477    Details    TABLE     �   CREATE TABLE public."Details" (
    "details_ID" integer NOT NULL,
    "flower_ID" integer NOT NULL,
    quantity integer NOT NULL,
    "priceForDelivery" bigint NOT NULL,
    "flowersSum" bigint NOT NULL
);
    DROP TABLE public."Details";
       public         heap    postgres    false            �            1259    16475    Details_details_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Details_details_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Details_details_ID_seq";
       public          postgres    false    205            �           0    0    Details_details_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Details_details_ID_seq" OWNED BY public."Details"."details_ID";
          public          postgres    false    204            �            1259    16426    Flowers    TABLE     �   CREATE TABLE public."Flowers" (
    "flower_ID" integer NOT NULL,
    name character varying(100) NOT NULL,
    category character varying(50) NOT NULL,
    color character varying(30) NOT NULL,
    "pricePerOneFlower" integer NOT NULL
);
    DROP TABLE public."Flowers";
       public         heap    postgres    false            �            1259    16424    Flowers_flower_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Flowers_flower_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Flowers_flower_ID_seq";
       public          postgres    false    203            �           0    0    Flowers_flower_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Flowers_flower_ID_seq" OWNED BY public."Flowers"."flower_ID";
          public          postgres    false    202            �            1259    16498    Orders    TABLE     	  CREATE TABLE public."Orders" (
    "Order_ID" integer NOT NULL,
    "DateOfOrder" date NOT NULL,
    "TotalSum" bigint NOT NULL,
    "Status" character varying(30) NOT NULL,
    "AddressOfOrder" character varying(100) NOT NULL,
    "details_ID" integer NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16496    Orders_Order_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_Order_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Orders_Order_ID_seq";
       public          postgres    false    207            �           0    0    Orders_Order_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Orders_Order_ID_seq" OWNED BY public."Orders"."Order_ID";
          public          postgres    false    206            �            1259    16418    UserData    TABLE     �   CREATE TABLE public."UserData" (
    "UserData_ID" integer NOT NULL,
    mail character varying(50) NOT NULL,
    password character varying(30) NOT NULL,
    "currentAddress" character varying(100) NOT NULL
);
    DROP TABLE public."UserData";
       public         heap    postgres    false            �            1259    16416    UserData_UserData_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."UserData_UserData_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."UserData_UserData_ID_seq";
       public          postgres    false    201            �           0    0    UserData_UserData_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserData_UserData_ID_seq" OWNED BY public."UserData"."UserData_ID";
          public          postgres    false    200            �            1259    16511    Users    TABLE     �   CREATE TABLE public."Users" (
    "user_ID" integer NOT NULL,
    "UserData_ID" integer NOT NULL,
    "order_ID" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16509    Users_user_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_user_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Users_user_ID_seq";
       public          postgres    false    209            �           0    0    Users_user_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Users_user_ID_seq" OWNED BY public."Users"."user_ID";
          public          postgres    false    208            <           2604    16480    Details details_ID    DEFAULT     ~   ALTER TABLE ONLY public."Details" ALTER COLUMN "details_ID" SET DEFAULT nextval('public."Details_details_ID_seq"'::regclass);
 E   ALTER TABLE public."Details" ALTER COLUMN "details_ID" DROP DEFAULT;
       public          postgres    false    204    205    205            ;           2604    16429    Flowers flower_ID    DEFAULT     |   ALTER TABLE ONLY public."Flowers" ALTER COLUMN "flower_ID" SET DEFAULT nextval('public."Flowers_flower_ID_seq"'::regclass);
 D   ALTER TABLE public."Flowers" ALTER COLUMN "flower_ID" DROP DEFAULT;
       public          postgres    false    203    202    203            =           2604    16501    Orders Order_ID    DEFAULT     x   ALTER TABLE ONLY public."Orders" ALTER COLUMN "Order_ID" SET DEFAULT nextval('public."Orders_Order_ID_seq"'::regclass);
 B   ALTER TABLE public."Orders" ALTER COLUMN "Order_ID" DROP DEFAULT;
       public          postgres    false    206    207    207            :           2604    16421    UserData UserData_ID    DEFAULT     �   ALTER TABLE ONLY public."UserData" ALTER COLUMN "UserData_ID" SET DEFAULT nextval('public."UserData_UserData_ID_seq"'::regclass);
 G   ALTER TABLE public."UserData" ALTER COLUMN "UserData_ID" DROP DEFAULT;
       public          postgres    false    200    201    201            >           2604    16514    Users user_ID    DEFAULT     t   ALTER TABLE ONLY public."Users" ALTER COLUMN "user_ID" SET DEFAULT nextval('public."Users_user_ID_seq"'::regclass);
 @   ALTER TABLE public."Users" ALTER COLUMN "user_ID" DROP DEFAULT;
       public          postgres    false    209    208    209            �          0    16477    Details 
   TABLE DATA           j   COPY public."Details" ("details_ID", "flower_ID", quantity, "priceForDelivery", "flowersSum") FROM stdin;
    public          postgres    false    205   �1       �          0    16426    Flowers 
   TABLE DATA           \   COPY public."Flowers" ("flower_ID", name, category, color, "pricePerOneFlower") FROM stdin;
    public          postgres    false    203   2       �          0    16498    Orders 
   TABLE DATA           s   COPY public."Orders" ("Order_ID", "DateOfOrder", "TotalSum", "Status", "AddressOfOrder", "details_ID") FROM stdin;
    public          postgres    false    207   �2       �          0    16418    UserData 
   TABLE DATA           U   COPY public."UserData" ("UserData_ID", mail, password, "currentAddress") FROM stdin;
    public          postgres    false    201   c3       �          0    16511    Users 
   TABLE DATA           O   COPY public."Users" ("user_ID", "UserData_ID", "order_ID", "Name") FROM stdin;
    public          postgres    false    209   �3       �           0    0    Details_details_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Details_details_ID_seq"', 4, true);
          public          postgres    false    204            �           0    0    Flowers_flower_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Flowers_flower_ID_seq"', 3, true);
          public          postgres    false    202            �           0    0    Orders_Order_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Orders_Order_ID_seq"', 6, true);
          public          postgres    false    206            �           0    0    UserData_UserData_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserData_UserData_ID_seq"', 3, true);
          public          postgres    false    200            �           0    0    Users_user_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Users_user_ID_seq"', 3, true);
          public          postgres    false    208            D           2606    16482    Details Details_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Details"
    ADD CONSTRAINT "Details_pkey" PRIMARY KEY ("details_ID");
 B   ALTER TABLE ONLY public."Details" DROP CONSTRAINT "Details_pkey";
       public            postgres    false    205            B           2606    16431    Flowers Flowers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Flowers"
    ADD CONSTRAINT "Flowers_pkey" PRIMARY KEY ("flower_ID");
 B   ALTER TABLE ONLY public."Flowers" DROP CONSTRAINT "Flowers_pkey";
       public            postgres    false    203            F           2606    16503    Orders Orders_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("Order_ID");
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    207            @           2606    16423    UserData UserData_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."UserData"
    ADD CONSTRAINT "UserData_pkey" PRIMARY KEY ("UserData_ID");
 D   ALTER TABLE ONLY public."UserData" DROP CONSTRAINT "UserData_pkey";
       public            postgres    false    201            H           2606    16516    Users Users_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("user_ID");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    209            K           2606    16517    Users fk_UserData_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "fk_UserData_ID" FOREIGN KEY ("UserData_ID") REFERENCES public."UserData"("UserData_ID");
 B   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "fk_UserData_ID";
       public          postgres    false    201    209    2880            I           2606    16483    Details fk_flower_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Details"
    ADD CONSTRAINT "fk_flower_ID" FOREIGN KEY ("flower_ID") REFERENCES public."Flowers"("flower_ID");
 B   ALTER TABLE ONLY public."Details" DROP CONSTRAINT "fk_flower_ID";
       public          postgres    false    205    2882    203            L           2606    16522    Users fk_order_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "fk_order_ID" FOREIGN KEY ("order_ID") REFERENCES public."Orders"("Order_ID");
 ?   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "fk_order_ID";
       public          postgres    false    2886    209    207            J           2606    16504    Orders pk_details_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "pk_details_ID" FOREIGN KEY ("details_ID") REFERENCES public."Details"("details_ID");
 B   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "pk_details_ID";
       public          postgres    false    207    2884    205            �   1   x��A 0���fJە���X^��MQ�ډ��)���.Ò�k�#���      �   �   x�-N��@���p���P��!F4���|`���lG�g�3;O)�!c@;�xj�Iz�E�T:��H����U���0�_
�_��B,���>�dG��}k�V��Z6�����;|H�3Z�l3�ӄ�fLQ�6K���w      �   �   x�3�4202�5��50�4430�0I�����]l���b���[9��s�3+�S�
J3�ˊ�A<C�$N.S�@d�ijh 2cޅ�v_�p����{/��(�s�NLI���NTp�2#?=_��ґӈ�j����9���)#�K�|R�2�,�9��b���� �;G�      �   �   x�m�1� @�N�dd1&t��.��k�X��"�W�����J@�OO���2�	Cl'a��ֽ���N9dlN�M���_�b��@��J�>��q�c[��f0R�-X^as̱�ǟ.o13ϑ�1�N����8�h���7M      �   4   x�3�4�4�N-����2�4�4��O�L�2�4�4�.I-�H������ �
"     
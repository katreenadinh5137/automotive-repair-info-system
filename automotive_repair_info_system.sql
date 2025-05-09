PGDMP      1                }           Automotive Repair    17.4    17.4 M    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    25111    Automotive Repair    DATABASE     y   CREATE DATABASE "Automotive Repair" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
 #   DROP DATABASE "Automotive Repair";
                     postgres    false            �            1259    25211    customer    TABLE       CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    phonenumber character(10),
    email character varying(100),
    address character varying(200)
);
    DROP TABLE public.customer;
       public         heap r       postgres    false            �            1259    25210    customer_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.customer_customerid_seq;
       public               postgres    false    218            �           0    0    customer_customerid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.customer_customerid_seq OWNED BY public.customer.customerid;
          public               postgres    false    217            �            1259    25260    employee    TABLE     �   CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    "position" character varying(100)
);
    DROP TABLE public.employee;
       public         heap r       postgres    false            �            1259    25259    employee_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.employee_employeeid_seq;
       public               postgres    false    226            �           0    0    employee_employeeid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.employee_employeeid_seq OWNED BY public.employee.employeeid;
          public               postgres    false    225            �            1259    25282    invoice    TABLE       CREATE TABLE public.invoice (
    invoiceid integer NOT NULL,
    mileagein integer NOT NULL,
    mileageout integer NOT NULL,
    dateprinted date,
    datepaid date,
    type character varying(100),
    repairorderid integer NOT NULL,
    employeeid integer NOT NULL
);
    DROP TABLE public.invoice;
       public         heap r       postgres    false            �            1259    25281    invoice_invoiceid_seq    SEQUENCE     �   CREATE SEQUENCE public.invoice_invoiceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.invoice_invoiceid_seq;
       public               postgres    false    229            �           0    0    invoice_invoiceid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.invoice_invoiceid_seq OWNED BY public.invoice.invoiceid;
          public               postgres    false    228            �            1259    25310    invoiceitem    TABLE     e   CREATE TABLE public.invoiceitem (
    invoiceid integer NOT NULL,
    lineitemid integer NOT NULL
);
    DROP TABLE public.invoiceitem;
       public         heap r       postgres    false            �            1259    25299    lineitem    TABLE     �   CREATE TABLE public.lineitem (
    lineitemid integer NOT NULL,
    description character varying(100),
    quantity integer,
    price numeric(10,2),
    procedureid integer NOT NULL
);
    DROP TABLE public.lineitem;
       public         heap r       postgres    false            �            1259    25298    lineitem_lineitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.lineitem_lineitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lineitem_lineitemid_seq;
       public               postgres    false    231            �           0    0    lineitem_lineitemid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.lineitem_lineitemid_seq OWNED BY public.lineitem.lineitemid;
          public               postgres    false    230            �            1259    25341    note    TABLE     �   CREATE TABLE public.note (
    noteid integer NOT NULL,
    notetype character varying(100),
    description character varying(100),
    repairorderid integer NOT NULL
);
    DROP TABLE public.note;
       public         heap r       postgres    false            �            1259    25340    note_noteid_seq    SEQUENCE     �   CREATE SEQUENCE public.note_noteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.note_noteid_seq;
       public               postgres    false    234            �           0    0    note_noteid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.note_noteid_seq OWNED BY public.note.noteid;
          public               postgres    false    233            �            1259    25234    proceduredefinition    TABLE     u   CREATE TABLE public.proceduredefinition (
    procedureid integer NOT NULL,
    definition character varying(100)
);
 '   DROP TABLE public.proceduredefinition;
       public         heap r       postgres    false            �            1259    25233 #   proceduredefinition_procedureid_seq    SEQUENCE     �   CREATE SEQUENCE public.proceduredefinition_procedureid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.proceduredefinition_procedureid_seq;
       public               postgres    false    222            �           0    0 #   proceduredefinition_procedureid_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.proceduredefinition_procedureid_seq OWNED BY public.proceduredefinition.procedureid;
          public               postgres    false    221            �            1259    25241    repairorder    TABLE     �   CREATE TABLE public.repairorder (
    repairorderid integer NOT NULL,
    originationdate date NOT NULL,
    completiondate date,
    vehicleid integer NOT NULL
);
    DROP TABLE public.repairorder;
       public         heap r       postgres    false            �            1259    25240    repairorder_repairorderid_seq    SEQUENCE     �   CREATE SEQUENCE public.repairorder_repairorderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.repairorder_repairorderid_seq;
       public               postgres    false    224            �           0    0    repairorder_repairorderid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.repairorder_repairorderid_seq OWNED BY public.repairorder.repairorderid;
          public               postgres    false    223            �            1259    25266    repairorderprocedure    TABLE     s   CREATE TABLE public.repairorderprocedure (
    repairorderid integer NOT NULL,
    procedureid integer NOT NULL
);
 (   DROP TABLE public.repairorderprocedure;
       public         heap r       postgres    false            �            1259    25222    vehicle    TABLE     �   CREATE TABLE public.vehicle (
    vehicleid integer NOT NULL,
    make character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year integer NOT NULL,
    customerid integer NOT NULL
);
    DROP TABLE public.vehicle;
       public         heap r       postgres    false            �            1259    25221    vehicle_vehicleid_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicle_vehicleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vehicle_vehicleid_seq;
       public               postgres    false    220            �           0    0    vehicle_vehicleid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vehicle_vehicleid_seq OWNED BY public.vehicle.vehicleid;
          public               postgres    false    219            �           2604    25214    customer customerid    DEFAULT     z   ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq'::regclass);
 B   ALTER TABLE public.customer ALTER COLUMN customerid DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    25263    employee employeeid    DEFAULT     z   ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq'::regclass);
 B   ALTER TABLE public.employee ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    25285    invoice invoiceid    DEFAULT     v   ALTER TABLE ONLY public.invoice ALTER COLUMN invoiceid SET DEFAULT nextval('public.invoice_invoiceid_seq'::regclass);
 @   ALTER TABLE public.invoice ALTER COLUMN invoiceid DROP DEFAULT;
       public               postgres    false    229    228    229            �           2604    25302    lineitem lineitemid    DEFAULT     z   ALTER TABLE ONLY public.lineitem ALTER COLUMN lineitemid SET DEFAULT nextval('public.lineitem_lineitemid_seq'::regclass);
 B   ALTER TABLE public.lineitem ALTER COLUMN lineitemid DROP DEFAULT;
       public               postgres    false    230    231    231            �           2604    25344    note noteid    DEFAULT     j   ALTER TABLE ONLY public.note ALTER COLUMN noteid SET DEFAULT nextval('public.note_noteid_seq'::regclass);
 :   ALTER TABLE public.note ALTER COLUMN noteid DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    25237    proceduredefinition procedureid    DEFAULT     �   ALTER TABLE ONLY public.proceduredefinition ALTER COLUMN procedureid SET DEFAULT nextval('public.proceduredefinition_procedureid_seq'::regclass);
 N   ALTER TABLE public.proceduredefinition ALTER COLUMN procedureid DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    25244    repairorder repairorderid    DEFAULT     �   ALTER TABLE ONLY public.repairorder ALTER COLUMN repairorderid SET DEFAULT nextval('public.repairorder_repairorderid_seq'::regclass);
 H   ALTER TABLE public.repairorder ALTER COLUMN repairorderid DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    25225    vehicle vehicleid    DEFAULT     v   ALTER TABLE ONLY public.vehicle ALTER COLUMN vehicleid SET DEFAULT nextval('public.vehicle_vehicleid_seq'::regclass);
 @   ALTER TABLE public.vehicle ALTER COLUMN vehicleid DROP DEFAULT;
       public               postgres    false    220    219    220            k          0    25211    customer 
   TABLE DATA           `   COPY public.customer (customerid, firstname, lastname, phonenumber, email, address) FROM stdin;
    public               postgres    false    218   �^       s          0    25260    employee 
   TABLE DATA           O   COPY public.employee (employeeid, firstname, lastname, "position") FROM stdin;
    public               postgres    false    226   w`       v          0    25282    invoice 
   TABLE DATA           {   COPY public.invoice (invoiceid, mileagein, mileageout, dateprinted, datepaid, type, repairorderid, employeeid) FROM stdin;
    public               postgres    false    229   �`       y          0    25310    invoiceitem 
   TABLE DATA           <   COPY public.invoiceitem (invoiceid, lineitemid) FROM stdin;
    public               postgres    false    232   �a       x          0    25299    lineitem 
   TABLE DATA           Y   COPY public.lineitem (lineitemid, description, quantity, price, procedureid) FROM stdin;
    public               postgres    false    231   Vb       {          0    25341    note 
   TABLE DATA           L   COPY public.note (noteid, notetype, description, repairorderid) FROM stdin;
    public               postgres    false    234   �c       o          0    25234    proceduredefinition 
   TABLE DATA           F   COPY public.proceduredefinition (procedureid, definition) FROM stdin;
    public               postgres    false    222   �d       q          0    25241    repairorder 
   TABLE DATA           `   COPY public.repairorder (repairorderid, originationdate, completiondate, vehicleid) FROM stdin;
    public               postgres    false    224   �e       t          0    25266    repairorderprocedure 
   TABLE DATA           J   COPY public.repairorderprocedure (repairorderid, procedureid) FROM stdin;
    public               postgres    false    227   /f       m          0    25222    vehicle 
   TABLE DATA           K   COPY public.vehicle (vehicleid, make, model, year, customerid) FROM stdin;
    public               postgres    false    220   rf       �           0    0    customer_customerid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.customer_customerid_seq', 8, true);
          public               postgres    false    217            �           0    0    employee_employeeid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.employee_employeeid_seq', 6, true);
          public               postgres    false    225            �           0    0    invoice_invoiceid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.invoice_invoiceid_seq', 10, true);
          public               postgres    false    228            �           0    0    lineitem_lineitemid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lineitem_lineitemid_seq', 26, true);
          public               postgres    false    230            �           0    0    note_noteid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.note_noteid_seq', 5, true);
          public               postgres    false    233            �           0    0 #   proceduredefinition_procedureid_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.proceduredefinition_procedureid_seq', 10, true);
          public               postgres    false    221            �           0    0    repairorder_repairorderid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.repairorder_repairorderid_seq', 10, true);
          public               postgres    false    223            �           0    0    vehicle_vehicleid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vehicle_vehicleid_seq', 10, true);
          public               postgres    false    219            �           2606    25220    customer customer_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_email_key;
       public                 postgres    false    218            �           2606    25218    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public                 postgres    false    218            �           2606    25265    employee employee_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public                 postgres    false    226            �           2606    25287    invoice invoice_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoiceid);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public                 postgres    false    229            �           2606    25314    invoiceitem invoiceitem_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_pkey PRIMARY KEY (invoiceid, lineitemid);
 F   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_pkey;
       public                 postgres    false    232    232            �           2606    25304    lineitem lineitem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT lineitem_pkey PRIMARY KEY (lineitemid);
 @   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT lineitem_pkey;
       public                 postgres    false    231            �           2606    25346    note note_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pkey PRIMARY KEY (noteid);
 8   ALTER TABLE ONLY public.note DROP CONSTRAINT note_pkey;
       public                 postgres    false    234            �           2606    25239 ,   proceduredefinition proceduredefinition_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.proceduredefinition
    ADD CONSTRAINT proceduredefinition_pkey PRIMARY KEY (procedureid);
 V   ALTER TABLE ONLY public.proceduredefinition DROP CONSTRAINT proceduredefinition_pkey;
       public                 postgres    false    222            �           2606    25246    repairorder repairorder_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.repairorder
    ADD CONSTRAINT repairorder_pkey PRIMARY KEY (repairorderid);
 F   ALTER TABLE ONLY public.repairorder DROP CONSTRAINT repairorder_pkey;
       public                 postgres    false    224            �           2606    25270 .   repairorderprocedure repairorderprocedure_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_pkey PRIMARY KEY (repairorderid, procedureid);
 X   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_pkey;
       public                 postgres    false    227    227            �           2606    25227    vehicle vehicle_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicleid);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public                 postgres    false    220            �           2606    25293    invoice invoice_employeeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);
 I   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_employeeid_fkey;
       public               postgres    false    229    226    4804            �           2606    25288 "   invoice invoice_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid);
 L   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_repairorderid_fkey;
       public               postgres    false    4802    224    229            �           2606    25315 &   invoiceitem invoiceitem_invoiceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_invoiceid_fkey FOREIGN KEY (invoiceid) REFERENCES public.invoice(invoiceid);
 P   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_invoiceid_fkey;
       public               postgres    false    232    229    4808            �           2606    25320 '   invoiceitem invoiceitem_lineitemid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_lineitemid_fkey FOREIGN KEY (lineitemid) REFERENCES public.lineitem(lineitemid);
 Q   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_lineitemid_fkey;
       public               postgres    false    232    4810    231            �           2606    25305 "   lineitem lineitem_procedureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT lineitem_procedureid_fkey FOREIGN KEY (procedureid) REFERENCES public.proceduredefinition(procedureid);
 L   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT lineitem_procedureid_fkey;
       public               postgres    false    231    4800    222            �           2606    25347    note note_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid);
 F   ALTER TABLE ONLY public.note DROP CONSTRAINT note_repairorderid_fkey;
       public               postgres    false    234    4802    224            �           2606    25247 &   repairorder repairorder_vehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorder
    ADD CONSTRAINT repairorder_vehicleid_fkey FOREIGN KEY (vehicleid) REFERENCES public.vehicle(vehicleid);
 P   ALTER TABLE ONLY public.repairorder DROP CONSTRAINT repairorder_vehicleid_fkey;
       public               postgres    false    220    4798    224            �           2606    25276 :   repairorderprocedure repairorderprocedure_procedureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_procedureid_fkey FOREIGN KEY (procedureid) REFERENCES public.proceduredefinition(procedureid);
 d   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_procedureid_fkey;
       public               postgres    false    227    222    4800            �           2606    25271 <   repairorderprocedure repairorderprocedure_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid);
 f   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_repairorderid_fkey;
       public               postgres    false    4802    224    227            �           2606    25228    vehicle vehicle_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);
 I   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_customerid_fkey;
       public               postgres    false    220    4796    218            k   �  x�M��n� �����<�U�7����l͔���i����BL�Iڼ�Nre��$>Ώ�/я���7�Y���_ɽ?���t .�t��?R�1��z�a��'�8��}��0U	�v1yظKL�6Ze5�����i첟�9�\�5���Z7�����J���_`�rX.������f2�t�/���|���O���T�z�J
�+m��n|�e�ͭ6ʀsW2s.��mʉ[w��яt��h�`��й\H�ڧRHƸQ\(�t%3���!ƒ��z?�J���m��pJ����'x��'��]������lV�B�w���g�s�d�Ư+�t�W�a��]J{��l�\O`�].��я��k|�%?�O��o4���@{�);x�1^����������tR.���������j+��o-JF�z����?����      s   m   x�3��H�+��t*�/���MM�H��L�2�����L�����-(�G�3��/O���IM���2��)M���/�K�M9}3sR�9���R���8]�����=... �R(!      v   �   x�e�;n1D��)r����.R� i�0�6��p��G^�Z2�_Ar�d��65I�Ğ���5���q��v��B�C�:2���>�c�z�@�"rʴ��`^�㋙B] K)�Z�{g�	+η����sY��,�8=�e/:��c0��hش�}ųv���"�K`�^[ɭ����XF�T�2
馻קˈ�I�>���d�V���)�8����+�dM��(�Q߮z��O��?�rqV      y   Y   x���D1C�5.fȧ��cgq����A0RMU��B�N��nҤ����A�Uh�����`�6;���	^�7�&���z�s���wu      x   �  x�u�MN�0���S�@���Y�BWHH����N�U׉l��3��6Eb�,�}�y~c/j�;���kÛ/e;yv�e ��g�i��
%T���+��6�B�r��w�|P�p0���@�:6�����m�r�ĢLb���T6�8�ń�r�to	����>&e����� �$��y���c�`"[�N��T,��Ök�l��H�LHx������Dyr���D#(m�!W���p�����|0c�/7��(�	���a�L6��F4�k���[3����_�ԱǊ	J������n�(��>����2���j�5�l��mB)G"��U���ҫ����޷;�g$�'��i�h���zA{?Ѿ���:�[�w�1Y��Y^�
�}o��Ĩ�y��-�ڏ      {   �   x�M�Kr1DךSp�����*�|���1e؀���\Yx��V?`[f]/Y�|v]���$A���~ɰA�+<�X N���,/@~������fmn�i���vO�{Ģ����M{m�������W��`��Ÿ�:=��p��;��d�iM%;+6�$���zgK�TQ#plz�cDd{�����=ғ��!{��pk�M�O�ϋ��R�]4�$���4rϮ'Zh��0}o�i�7�=      o   �   x�U���@�뽧�Ј��@�� ��f�x,��0����h��|�MW�����5d�ތ7����R�k0(�1}� �"i�YҊ�2
��wF� �y��DB��;��L��ڈ2����1����w�}��Q꘾5Gx��S+���O��ɦz73&��dE�0�^Kc�q�M�      q   o   x�M��C!C��Ջ3������� �m�E�BՃN%�'�G�d�Pv6�TXA��=��Z�8åd��g���{��X���:�Y��2)�g���d����Z�1�~� ��,�      t   3   x�ʹ  ����#�߅��Z
�$m4;��p2],7��1*Q����-����      m   �   x�=ͱ�0���ܧ�4���#���&2�4@L�&M��]���Ϲ7�x48��M��� H�����]�!I��}=�}������bW{��I�l������v�BMɏ/�|5>VH(š�Cm����&R�-ux�������V�F��V\�
��ǎ����5�     
PGDMP                      }            Premier League     17.4    17.4 *    S           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            T           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            U           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            V           1262    33276    Premier League     DATABASE     �   CREATE DATABASE "Premier League " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.utf8';
 !   DROP DATABASE "Premier League ";
                     postgres    false            �            1259    33510    player_possession    TABLE     ,  CREATE TABLE public.player_possession (
    player_id integer NOT NULL,
    player text,
    team text,
    touches integer,
    attempted_take_ons integer,
    successful_take_ons integer,
    takeons_tackled integer,
    carries integer,
    total_distance_carried integer,
    received integer
);
 %   DROP TABLE public.player_possession;
       public         heap r       postgres    false            �            1259    33509    player_possession_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_possession_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.player_possession_player_id_seq;
       public               postgres    false    226            W           0    0    player_possession_player_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.player_possession_player_id_seq OWNED BY public.player_possession.player_id;
          public               postgres    false    225            �            1259    33500    player_salaries    TABLE     �   CREATE TABLE public.player_salaries (
    player_id integer NOT NULL,
    player text,
    team text,
    weekly integer,
    annual integer
);
 #   DROP TABLE public.player_salaries;
       public         heap r       postgres    false            �            1259    33499    player_salaries_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_salaries_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.player_salaries_player_id_seq;
       public               postgres    false    224            X           0    0    player_salaries_player_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.player_salaries_player_id_seq OWNED BY public.player_salaries.player_id;
          public               postgres    false    223            �            1259    33490    player_stats    TABLE     �  CREATE TABLE public.player_stats (
    player_id integer NOT NULL,
    player text,
    team text,
    nation text,
    "position" text,
    age integer,
    played integer,
    starts integer,
    minutes integer,
    goals integer,
    assists integer,
    penalty_kicks integer,
    penalty_kick_attempts integer,
    yellow integer,
    red integer,
    progressive_carries integer,
    progressive_passes integer,
    received_progressive_passes integer,
    born integer
);
     DROP TABLE public.player_stats;
       public         heap r       postgres    false            �            1259    33489    player_stats_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_stats_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.player_stats_player_id_seq;
       public               postgres    false    222            Y           0    0    player_stats_player_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.player_stats_player_id_seq OWNED BY public.player_stats.player_id;
          public               postgres    false    221            �            1259    33329 	   standings    TABLE     �   CREATE TABLE public.standings (
    team text NOT NULL,
    rank integer,
    win integer,
    loss integer,
    draw integer,
    goals integer,
    conceded integer,
    points integer
);
    DROP TABLE public.standings;
       public         heap r       postgres    false            �            1259    33322    team_possession_stats    TABLE     [   CREATE TABLE public.team_possession_stats (
    team text NOT NULL,
    touches integer
);
 )   DROP TABLE public.team_possession_stats;
       public         heap r       postgres    false            �            1259    33315    team_salary    TABLE     b   CREATE TABLE public.team_salary (
    team text NOT NULL,
    weekly bigint,
    annual bigint
);
    DROP TABLE public.team_salary;
       public         heap r       postgres    false            �            1259    33308 
   team_stats    TABLE        CREATE TABLE public.team_stats (
    team text NOT NULL,
    players integer,
    age_avg double precision,
    possession_avg double precision,
    goals integer,
    assists integer,
    penalty_kicks integer,
    penalty_kick_attempts integer,
    yellows integer,
    reds integer
);
    DROP TABLE public.team_stats;
       public         heap r       postgres    false            �           2604    33513    player_possession player_id    DEFAULT     �   ALTER TABLE ONLY public.player_possession ALTER COLUMN player_id SET DEFAULT nextval('public.player_possession_player_id_seq'::regclass);
 J   ALTER TABLE public.player_possession ALTER COLUMN player_id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    33503    player_salaries player_id    DEFAULT     �   ALTER TABLE ONLY public.player_salaries ALTER COLUMN player_id SET DEFAULT nextval('public.player_salaries_player_id_seq'::regclass);
 H   ALTER TABLE public.player_salaries ALTER COLUMN player_id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    33493    player_stats player_id    DEFAULT     �   ALTER TABLE ONLY public.player_stats ALTER COLUMN player_id SET DEFAULT nextval('public.player_stats_player_id_seq'::regclass);
 E   ALTER TABLE public.player_stats ALTER COLUMN player_id DROP DEFAULT;
       public               postgres    false    222    221    222            P          0    33510    player_possession 
   TABLE DATA           �   COPY public.player_possession (player_id, player, team, touches, attempted_take_ons, successful_take_ons, takeons_tackled, carries, total_distance_carried, received) FROM stdin;
    public               postgres    false    226   #6       N          0    33500    player_salaries 
   TABLE DATA           R   COPY public.player_salaries (player_id, player, team, weekly, annual) FROM stdin;
    public               postgres    false    224   Ke       L          0    33490    player_stats 
   TABLE DATA              COPY public.player_stats (player_id, player, team, nation, "position", age, played, starts, minutes, goals, assists, penalty_kicks, penalty_kick_attempts, yellow, red, progressive_carries, progressive_passes, received_progressive_passes, born) FROM stdin;
    public               postgres    false    222   L�       J          0    33329 	   standings 
   TABLE DATA           Y   COPY public.standings (team, rank, win, loss, draw, goals, conceded, points) FROM stdin;
    public               postgres    false    220   r�       I          0    33322    team_possession_stats 
   TABLE DATA           >   COPY public.team_possession_stats (team, touches) FROM stdin;
    public               postgres    false    219   �       H          0    33315    team_salary 
   TABLE DATA           ;   COPY public.team_salary (team, weekly, annual) FROM stdin;
    public               postgres    false    218   �       G          0    33308 
   team_stats 
   TABLE DATA           �   COPY public.team_stats (team, players, age_avg, possession_avg, goals, assists, penalty_kicks, penalty_kick_attempts, yellows, reds) FROM stdin;
    public               postgres    false    217   ��       Z           0    0    player_possession_player_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.player_possession_player_id_seq', 1, false);
          public               postgres    false    225            [           0    0    player_salaries_player_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.player_salaries_player_id_seq', 1, false);
          public               postgres    false    223            \           0    0    player_stats_player_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.player_stats_player_id_seq', 1, false);
          public               postgres    false    221            �           2606    33517 (   player_possession player_possession_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.player_possession
    ADD CONSTRAINT player_possession_pkey PRIMARY KEY (player_id);
 R   ALTER TABLE ONLY public.player_possession DROP CONSTRAINT player_possession_pkey;
       public                 postgres    false    226            �           2606    33507 $   player_salaries player_salaries_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.player_salaries
    ADD CONSTRAINT player_salaries_pkey PRIMARY KEY (player_id);
 N   ALTER TABLE ONLY public.player_salaries DROP CONSTRAINT player_salaries_pkey;
       public                 postgres    false    224            �           2606    33497    player_stats player_stats_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.player_stats
    ADD CONSTRAINT player_stats_pkey PRIMARY KEY (player_id);
 H   ALTER TABLE ONLY public.player_stats DROP CONSTRAINT player_stats_pkey;
       public                 postgres    false    222            �           2606    33335    standings standings_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.standings
    ADD CONSTRAINT standings_pkey PRIMARY KEY (team);
 B   ALTER TABLE ONLY public.standings DROP CONSTRAINT standings_pkey;
       public                 postgres    false    220            �           2606    33328 0   team_possession_stats team_possession_stats_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.team_possession_stats
    ADD CONSTRAINT team_possession_stats_pkey PRIMARY KEY (team);
 Z   ALTER TABLE ONLY public.team_possession_stats DROP CONSTRAINT team_possession_stats_pkey;
       public                 postgres    false    219            �           2606    33321    team_salary team_salary_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.team_salary
    ADD CONSTRAINT team_salary_pkey PRIMARY KEY (team);
 F   ALTER TABLE ONLY public.team_salary DROP CONSTRAINT team_salary_pkey;
       public                 postgres    false    218            �           2606    33314    team_stats team_stats_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.team_stats
    ADD CONSTRAINT team_stats_pkey PRIMARY KEY (team);
 D   ALTER TABLE ONLY public.team_stats DROP CONSTRAINT team_stats_pkey;
       public                 postgres    false    217            �           2606    33524 &   player_possession fk_possession_player    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_possession
    ADD CONSTRAINT fk_possession_player FOREIGN KEY (player_id) REFERENCES public.player_stats(player_id);
 P   ALTER TABLE ONLY public.player_possession DROP CONSTRAINT fk_possession_player;
       public               postgres    false    226    222    4780            �           2606    33341 (   team_possession_stats fk_possession_team    FK CONSTRAINT     �   ALTER TABLE ONLY public.team_possession_stats
    ADD CONSTRAINT fk_possession_team FOREIGN KEY (team) REFERENCES public.team_stats(team);
 R   ALTER TABLE ONLY public.team_possession_stats DROP CONSTRAINT fk_possession_team;
       public               postgres    false    4772    219    217            �           2606    33519 "   player_salaries fk_salaries_player    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_salaries
    ADD CONSTRAINT fk_salaries_player FOREIGN KEY (player_id) REFERENCES public.player_stats(player_id);
 L   ALTER TABLE ONLY public.player_salaries DROP CONSTRAINT fk_salaries_player;
       public               postgres    false    222    4780    224            �           2606    33346    team_salary fk_salary_team    FK CONSTRAINT     }   ALTER TABLE ONLY public.team_salary
    ADD CONSTRAINT fk_salary_team FOREIGN KEY (team) REFERENCES public.team_stats(team);
 D   ALTER TABLE ONLY public.team_salary DROP CONSTRAINT fk_salary_team;
       public               postgres    false    217    4772    218            �           2606    33336    standings fk_standings_team    FK CONSTRAINT     ~   ALTER TABLE ONLY public.standings
    ADD CONSTRAINT fk_standings_team FOREIGN KEY (team) REFERENCES public.team_stats(team);
 E   ALTER TABLE ONLY public.standings DROP CONSTRAINT fk_standings_team;
       public               postgres    false    217    220    4772            P      x�m��v�����Sp�U݃yX�T�j��r�i���D��� $$����_$@��N��v�̌��)z_��ͮ���l��m�m�u��^{�x���^�F^�����.�jvu����c�y��j[W^��>�"ȼ<(�0����_���j^�O>�r}�{����(��0,�<,����n�4]u״���H��^�%Z%�����2)�Իm�-$�桫��]�ص/�J/)�(�"-�f^�d�瑟yo��j�׫���]5o{�W�z��ڷvF�ȴ��N�y��w�]p���f�nj��ow�j��ZU��W�c/���J�j6��������ֳwmWow^���Y�ő�^^�剗��/n�t�v����R�ԝNSov��n��E!Z/�Rq���KR�~��Y��柆��+�����n�E��l��&K���8��ػ��U��]����?�-��ۅan4Ə�G~���}�;>�u(�׵3�/�C?L��A���ͼ�^]u�v5�>7"}lەn����N?���e�Ī��2�j�l�Z�HQf�	\�K�R����/!�լ����us?e���;
�(�>T]��]���vʳ���� 6{�A��"J|I�m�6N��WW�z_=�r,3�XK4�C-�w�fI� AŹ��#��ү�~ѬgWpi[o�ELLr$ɰ�s_L��zׯ�OPxn?a�o�\�M���zoW���4�����Y�IJ��K)uR"�җ2}i�U#6lt��~�f��E�e��ă>h�(
�>ޟs:B��h�(��?����_5�������!�v�a�}�;�Jۼ��u�!�@wr1qag��HD���逑��C���B�aݮ��i8���L�C/MS?��ysמ����ɑ�$�V�$��D{�A����y�?�HQQ��)2?NLJ��k�u.
%�\�a���~��џ�N��P��� ����NKY�$+|q�K�ݷ�+��Vwz%3���%u������ڟ���m�����l����nWo@���5��8���j��ȳ�f߼`�D˔� ��q��]�S�W]s��2f���_Y"J��"�@7���}�|�Ha4�*�W�rrӯ��F�q��}T!����4|�����_K��	�R�+E�N���X6>9���ժ���+s�q8)V0��A���~�[h���ZI�8�%��#�K�	��T��� ~����nU���9F���eu5IPH#m1�WO'�n��hR}��#n������a����_��M����P$�@ж�k��ܗ��\ˢ��u��M��ey<%֢�����Ը�|q�S]m^�h�7�)�뇪�ף'/$6Y�VŸؚ霺q�G;�[�mv�G}7�[)�	r�#�oB@r�o�Mc��츅a�l�1����|]ɭy;}�=�#C4	��u�w�d�W���>�����Z�&;*d��0���Vǉ�RG�}�4����Z[f�[�>�p�����v2-�K��"O|���z��J"`e\�#-!p�����hV���$Op�Դ$�L�,Ȼ M��]�H�˃��j��@NAgr���hZY���o[�������Τ#���"�}]��j-���������OB�K�
R�v��0De>^)���Ko�jIx�v<S�Hj�]���f_��w;ѳn��Ye	��D��\�1�0/R_q�n�Ү�#eGؓɏK_C����V�l�j��jv��F�1v��\ʝ�ܼ���INS������e�d���~�N��ӅDe��]�g�J�ᴤ'/�w�K7�
 a���+t�{��B����Ȋ�5��/���l����qĸ_)� ��w�,2Fo�����4�H[�Dd��6�ĺS	��T
�-��M{��(6���eW�d������{�S�n��|�i:�U
�@���eS!H���R^��B�'�(��5%r6�fx���3,$rcD��ł�Y��
�{9�f4g�ĩy��G�w�Uv_vo��^t����y���
`Y����BC?���j�胓�"
	���T\����V��#�P��[�ˮr�l"���c�!2�2⸜R��i��2�dAMs.��Z ��M�n6�=D�ͫ�����(B�t�4	�	/�NR_>�MS?�^�Ĕ�9ۓ�#CH
-�P(X�D�{�N��(1���@���P�ն^7]{���M[H����\��妪W�(�krz-!�n�W��� 9���'�ٌYCݘ�p�mӹ�^�OPq=���
�
��TĽ[���as�oa�8��?:�";�~&��0�]̮ժ���L�Yt�w	|y��!��s�"L"\�����$g@E�(/u)���� �9B!n_����;�EUw�f�L�� �s�_��N��5��׋��V��Z��J�L��XM}�zN����
Ş�k,�)8.�����7���&��_h2�K�t�*�n��}����A0��y2ʡ/��c�=/)ԧ<Ή���_LZĠ<W���J�L��p�f3�b���Su�|�$�2 !�%����8*Dv�u��_f[���	e��_����j.����]梊-�A��v��l���0�, �,�R��e2�w{��+�<����;1	.����S�s�,�	a�I	c��8 �������g;��ƙ�,tB")��(ɽg8����i�����,ק�����%Э"o��h8DF&�|�B�=�]5mM�V)+���Q	`�0X�I{%Ҝ]��ݠ�#�%У�� ��BD�CST��:؛4�H���r.u/���������)k�HN��
Vȼ�Վ@�M���%��fƥ�����mo�V�⍌��B̃�a,
��Bב�?U��,���7�z�P��M$/,�25�W\W }I3<U>�R��U{C���=H�I.$B��O�~^s��|�|;XmK��MM����g:~�-�'�cHb1@�zm?�$C8����C���/�fl����mg�$$����-�'iC��lB,�]�<��{���,�&�YPE�s(*�zl�E ����LP!�97��lE{�@���z��n��a>%�;*�Sە�7��7r؏��E���Ek��8�X�*�x[?>Ξd��,���H�X���)NK"8I�%�ȿh=�(�����b�a8�~cY�ܛF�c���NN�Շjb��ЁNKe�"DzWk�o}�~�	3,�іӠ ��F�nWx��Y 9�JYݐ$�D�'�f�}t���o��	�I�ȥǟ��x��³�!��J4��h2� �R
�9d!gʽ����Ͷ�6�$B��휴#xYB&Q�ҌL��xL�ɐ��-���z�5�n���(9V�4&���6�P|%�">��<,�82D�`A���foZ���h�F�2���%��KB]�'�ok�v��/Ԣ,H�%��cyH-��s���B>Kw��ݧv�>�Tg>]wz���Ԑu�xN>1c�:�;�~qK:���Y	���c��2`%1�Mb62��U��DF����H�����7�#�,����+�gA��W&��3��[|H+JŢ��;���|���Z�#�����뒇*��y��9�˓Q�%�1�#�"W�%<ˇ��j���$/b��f�h7��[�/��m%>����!��t9CNѕvOS*p�ZQ[aQ&F���F�����g7
�����c�)'�����������F>�Y�@WfU	�Gf ���>��	��>�!�Ǿ���N�z��]��"��S�d�@s.�D�+f[	��ۮY�e;S�����IJ���0K����o����9-u;Ŗ���	���d3K� ��p���'�������OR���� ��y��h�,�Q8�/Qx{'�q�hfo�\�B��� Q7�a0$�%.����w���g�Js�XkȗӃ�2�v*����nޯD�����|Q�l����Q�0� �-��!+����;9�ޠ���f<�j�VR$�8�� F�����k�ץ��~�������D�>�lK�8�h��R���7P���5X+��n���;NIr(f�PT���ݪ��L�B�n0(,$�	j��p����҈���$    ���@p�[e�V��w��js����	��M�TXa���H�Z�L�����PF1_כț|�y�
������?D�X�%|H*��(\,��N�F�ܮKr������ǻ��ˇ�Yq�.I8,Td�*�31ຝ�g����J	�GlZ��?"K��G-�x/V����~��5�u�n�0lyQpS��<�ժ�G�е"�T�/^�XD0p�dT'��UX;���/�e\������)�P��}����g�US,��!Tmt�T��̽/�H����m_�Z�k�C
��gM8g̈��dP^[��}��Q�J���,!9I)A_�b�o翻z��(6;/��@j!+���=�����R04��OCW̮�tEɹa	�D�G�[1� 1�S�^$�,U��'��ҲkN�Y���l&/��~f�e�LKŘ�v!��A�����'P9O+r��G�K�:rZT��vS��]��A��~1u��oq
B�v��0��ϐ��\A����w#�T
J�%��(��%��wu�j����R�*����a�am�"m��F�����9�� +d1���|Rm�:�kTp�ܺ$����{���}�"X=FY�\�ká[!,]FC��;�1q���ybXT_Ip�M��R���N�g��I��e��v�IZ\>v3�`X�O�$�I���^��n-�;
�G�����)��| 3E@�fv���ռ9��(̣v�k�\�@�RT��.��
���X�����h� ��z B�O��+z�����m篨�6��2JhZq�f�YN�*/a~��T��Y�ϡ���q(��$x�@��4�H�-c�y��T�\:���EVQZ�{%���P�/�	M���iF$Ĵ��4��}x���~%�t�p�S�*�gI�B�E�{S�*c�E���:����S��d�~��e����̅�N`9ߒM��fkjq/Օ)W	r<я�퓎�m�^�yx�>�	IX�N� �,-&�h���ȏN�/	�!�l�!�I���IS��J���IS�	�p�:J�c����C#�qfO���A{��ǈ$����v�PM
��.��,	�\���r������4��K^K=���COh��ۼ}�/FȀ$~����&����5�}�$�2`$.�''(Y��甃u��7�p�'=VAP������6�(K!��m]uҤ~'㿹g�Ќ�YH�4d"�u_E"�KT>>�S�%C�")ɖ�*�=d*��������5$�"�ULi*A��}������C�TV:[X�8O�(���j#D��{��>��QOq�)=bC��ů�ƴ,@� B�g���5�(�����]s�ZDʆ���8ټ �Hh2���*�\U�bmz=��L�����GC[�e��[����zf�s��u��+��))ʂ��DT��Fr���^����en�{���-B�ɮ��]UO���i"�`j�j�����.󩾻kΣX*��e�]G$��uKr��l�$Q`�K¡���bО����sm����G��Q�'goP��	Y��F��I{��j��C�O�TPLxw	�t�� U���k,X%�->�l �O��R=���"�T�I����CIY��ؑr�D���E@���%t	#G��5y���Z���
>�{�c1�%�v�Bk��<�nt�%#OB��#��(:>�BI��CM�S�;-�F�����/�SFߥ�/��eC_���4� X��G�b�y3�ViV������ �������F��$� ����.,.˰�)�od5�6�)H��*z� ���Dt�[D� m�D� �1���T�fFoXu�<pD$�!2���iQ|[ MI)/,,��H#�~�Ov���%��Z��ϫv?��+��N[K�G����/2!�M�-�����֩F3]�\E�!!y}b�[mO gC��⦑��J^$ �s	�H)=đ傖�����ڴO�8a�b���H/&\)b�v�Q�YMr@��%��"kk�>���d�z��O�;�������h�Z�w�𹑃;��x�o�B�.���z*67�ٝ���,��e�c�\���J��9��v�=@�\k\��C(!��'��$���Ƕ[\�|8����>���F7�U���3�W��d]�2˒>q�K+��k	T?�n�K`�����q� B�vӯ�m��]6�혙5ՉٹK*fֹQ��%���F~�suߵ��.�U�&�de��(b�#�l8s=ٟ��g�T��bld!%X�5��b�0�k�+"}X�'�&Bʱe�i{��$^�QD��h���R����F��J�~�rM;�\���Y��Շ&zˈ��"�	 ����`sHu(�{RK�.�я;��f��H��Mc׈�X/� sf}�d,j���2s�-���@��	Dal(��3{�H_}���I]���b�5ܔ����e��gp��K3U�z��
����U(eB^8?�b���\+7��y�)��h�KN>L�S�}�I�}nևK�[#h-��c��_R��4���:y1���p["�FCc�!D���@�[���VPwW��}F�Āw\m�٢X�>��>�k�DO�P���H|f�!�(|�6k���bg��C~�|��$�>jk_�j�23�e�*ljT��^!�/���0�� <cb]��Mږ��"�� Pq�9�A�?4Į)�:���)��v�@���z��ӳ�#!)s��(��������w�k>,�u5NR�����A����������� 
�0kQ��{7��p-J��eb7���b��A��xO���i��t��Ή�h�^����Hֵ����;��a�ڔ�K*w�I�ұ(�:���8"��\�i3|���FF
/��!�J
�Tf�FQl�k�LtcZK��]G�5��4E�a5#Ǵ���Ő�%	��ib�+�)�ʓ��aL����3)@&���IX�xC��`j��̄MK����fP8)�8~��ӝ־�d�x0rӅ�-�zz�E�d�m���ջ_�wF�V<@������%w��{���q{����\�#[Q�F�ɭ�Y$֊㠈]e���~��G����6��[��J��R8:��}�U���Um�\��yf)
��H̬��~��u�H����=)`�_��f|)of��!2�����^���
����5ۋۺ�ZgEu%���Mxɫ��5n�F'. �kI���������B2A��B2��o6gjP�ˇ�=*�	��\͛g$\�_�fu�+gGP��ҵ��`*$������M$?i{�.��f���~���-C�<�{}���c_�s�8�I��<m_�NuD�Y�Bq���������_K��ٗE�/'݀�����ոl��:o�O�f��1CBNJ�զ�d���P�T�ݗ�M�U��&�4���L�l�l�"n��M����t
	!����BI
�4z1�����>-����"��^h	�Jk���@_�/K��։�7U�����!�3L-}U�)���%�/�/
%'���AJ.�!����/-�!gJ�@�96b�� ^j��(V��N��3�.�l�,DdeB��]���_L�K�|��9q��j�n{V��&u(� "'�� ���ā�/���}��a�pr"N
@��,R�_�~s��d%�!�
�Z�2fh6�"IXW�U�����Tj�엌ж"�w��1��::a��=Yye�������m�C��Ps=V�N��(����ĕ)E����ՀKk�s:�u2�W]� ���%��U�1�H��#:
��X�_�^jC-���s�x�@�e���á�'Z9��zeTZ'�M��L���K�Ҳ��$m�lg�ǹ5�K貽C ��N��q��z�u�T�B|@�;��$1HF�l*�D�J���)����_u"��pݪ*b� ����ng_k��9�$FM��3�{��xKIn�g�ۖ$,y� �gF�a�����%4֝���!�����м��ɜNfo�Px.d�uY��	Z����~zVT��R�R(�:��GI���e�&�)�Ș�f�$[
�'��Z=i�=���{Gג�+�߸�n��e?o�-(�����I������Y2>� J�l��%�@�)3���   k���/Y��X�OY N�0t\H%&oD��|�15ZO���5[ߧ_�M%���_�1�Ԭ����LqI�@g��׋ƚg��W��۪a"�E�0^;,CD��m�ޑt��k[Y��yWf�vH�䌘sV|��7g�Ԣ�û���X�����ӉMG��ɷ���N����"�<��0,���yj��m?��!�3�����2����zm��R�=5�o���_����n*X����:9{Q���i�86~"J�6��U�u��K'��[ ׉~�-�����K�A���������"��\�d�m��gY�r� '|I|��(Zkg�z�)��)i)ߛu �0Z�� A���k��ӎ̃��#$���<�qײ�#ͱ�<pω�����2��>6���yltuR��'5p3�I��	���p�]Gb�`r��ty$	���y*L��x����Դ��W�)��t�O�V;�jVLr=N��^; B?X�)f�0�;�)Ƒ�|��H\q�j��FB{6�O��񬷂�z�S�.A0�G��&;Tڡk�����;~��$�M�H9.��m^�=��p�o��|�b���A��B��G'��h���m�$M6X����IT�6�I��Q�Xx(1~��������B�d��ڊ��{����>��k�:�˿����:Q�>N�F	��R��J��~o�n:/�c3?Q���RKeSEO" ��r�o_m���Lv��D�-`+���a��z;�i=�/F=���(���0�dgOG�A��s���qI)�kI ���Qmv�h%/K�dff�ivA;]5r�PC��|�����0����Wǩc�]�V2@�ʲ1L,��������>3>�$�G�Ч���"}�}�F�ԜV�O�����l����"���A�F�w����GS�/���O`��i�;���&��s4��X6�39�,6I�d�aA��&��1(q@���JE��e���<����lk�"UR�l/s�y��0���K� Z�	C̐N�[�c�w�3?u=3/>��bMA$w��t�т�����D'M]�'�ܓ?����7w�'�R�z�Z����źV~U?M;��t$��xN*Q|��SM�?d ��t@�&�2�o��ʻ@:���O]�0$�e��s �������D�Ĭ��4��G?H�$��3f4X�_%�JՒ�{�/�};�el�Liv3fʍ�'�h(�)����L-����֝ܳ*YDқ�e����q���;.��B�b���}E_�W���w�]��R�*�0ғdrx���^ݭ8����#|]n�z����}���P%�c����u|�x�kEߕK�^hR����@�D��K��ɾ����V�|Uo��n�?R�T#��k����wS�=��)�w⯖u3��Rד�?�4�E_�(Aڡ��M1��T��z٪|�H�cU �',t6�3-mxb	-��4�9.����@��e�gv��{ihh����8�ė8&��$4��^כ�i�f�{d�>��ZQ��b�@r�9'�nE���9{K��&�f���@�[̴2�m����IX�Z�I��cl�7
����n�󹗣5�N`{������mV��՛^��n�i��^d8���R��@�=]b}�|����9���^Rх� m:j���tq<D١k}���9��x�5���@K�0��-�c�~��+��z!]������= �b�Q<���5n��U<�F�[Y5�=8h�p��Aם�O���d�F�|>�T���Hl���`��`�i]�Vw4C��v�յ#b[���1�>j} ��F�:���2��G����n�#jG#;�<y�,��Ix�xV�N�L�wIn[��4W����0;$p���#�P��4"�g8���Aӡe%��c9H�$7�N�~Ȭ��>I�7��EO����0@7�� H_P��ow�֫�:S�FS�[����1ͭ{Co�����8TP��x�YA��PޏjQ�k�c��{b��[���/ݛj�xV�x�P��/$�R�I>����N�����//*H١���k�2t���]�R�
������9&����_6�mo��Ꙑ���5�[�cJL���,�x������~U��[\Yh����hD���Fڈ�0 A�Z(�I�5� ����'2�U�d�n������Ϻ�7����A��)��]>(�.�O{�n���f�N�~O�K4�E��j����{�Yuxٳ��!x��C�t�Ґ��3=G��,
V�'�+��[���1�����3Ţ)��*��YBٛ��Ч5��0x=sc��:ۣA(W��I�*�cn�;���_8����4�^����ȑj�d��H&�
Qn�Z{��?��Č�%�2E*s^�����.x2k��M�.����ѧ�yU���xN$Ά	k8�����?�%	�O���zG�	{)���tV���*�ID\�{r�?y�`������8��IV}�^Q��)Y�k�Mk�"�u�弳BH&���G�?~���/?�r���t�����Z֋�kgi�ն?�G@A<׷�,�ܾ���\H3�7��$� ����y��{Ջ��N�r=�m��1)uI/�A���¥=���!��=fR��~<_���OfǺ���������p6�=�f�{!�O����k� г��k&�L�ӂ���ʟ���}��u2�<�r�{�WQxi���P����4Kk�ͺYVӶ�ܺ���$�?&�tOddx��g_m��w珚����9���m�K�iɩ�����=o��kS����
4	s�y����d��?���h���i����q��m$�tC��~h����4�]z5rk��hkLs(�F�mz�������P��/,Ī��1�%�5K+���.��U!�D�=^+c2��9���ir���۵��j�8d��|X
ٲ�y�3��y��N�I���UM^�
 ���O��+�uw���fZO��ׅxu4& }j	�haZ�����{.�*�+x�Rɨ!Im������j���n���Л�Q=%�'�+7{���j�<}k��S�hx�1���r��H�'d���$���m$�Z��	c�����������<Ct�i�Pj���+?����d_y���ı�ڦ�B{��M�ڣ4x�T"����ϯ���?.�)Sd�6���,�=�`���Q�ǃ���W�;��z����3q}�<~�$/P�[~����Pp��RE4��_�n�l�_�yԘ�yh"�c�ɯ�n{���,��X���k�-�#���]}?y��ss�?tY��N��Bg_o��HF��V4� �c�V�����Iƛf��=�a������
�[�9��v�s�E���h�7�֣���2ά1���B�rI�"����4��<I��T����2 #�郗���:�_Hj�M��KW{(�=��4��c�ӦM��o�}��E�Z�._S�8�d��C��ugDt���4G]��|�l\�~�؜�����Ҭ�_��p9Ł`����1�#q�_��Q7������wIO*��z������-I�_���/��w�'���։!QΆ���/�9�o&�����H��T
�Ʒ���0���^�����Oה���n�������C� ����m4����N�r�j�i��(u��V�N���h����v�K�4{��巀�D�)�D�����^:~��\?{f�^�e�Ef��8}A���!�Y�wjy�
y��
�#�=�OuWu�}s��`,����r+���JY�z����Ӱ=zt���	�;��_=���R[6h�[��/��µĄ����=p%l����������b	      N      x��\�r�:�}���o��S�|�5Nl��WN�HD$X�����ן� %���ٕ���ҽzu��GΝ���{%܋�ݖ�y��|)�FT�l�N����?
=����uU�r��r^�2%Y�9~��0d�$��K^������&wB?	����O�d�$�A-�Z���/�{�!�w���%��I�ʽU����>�� ��y��pb���������U��$Ư��U�ܩ,>�h��'>c�>_��*�Y/��E�g��W.&�V�W_d�燎�EY���|q�%� ��|:�U-J^8AȲ�9,I���?����g���C�m}@�A��SGM���*�Ֆ�h_�(`�â4��$�����;mTi�|7ar����N�v.����Ε�ð�g9���Y�`�,�C��Ʉ��󴔅{�rQ�~���X]����D~����|`�+�����q9,����Ȝg�Wr<���R�e�ּv�xՈ�a�!��s��x��	&p^b�����@��Ϋ���������F�a�\�+��e�?���<��4�dx1~�i��vs�����|Gߤ�[ɺQ�K`~��r��b��0u^eQH�&Ǖ��l|~�|/��ć�3�W�־he%�S1?��:S��h���Z�΋jQ�&ƃ����L�,&u��Rp �ox��&,r^*Q6�y!�!
��ΫR��8�oM����x����XDA��m��b%�/�A�2��,�����v�V���,h�G����;�/�ɵ�$����%��$�Rk>�Y�%@�q�0�Da�ȵr_�~��qd��9/�Jl0�tD�8�)�`����  o?��R�OѨ��l�WPt"?/�{�|�7r�t_Ԧ�iq�����6��.D�.es��KS'��(��I:,Ī�aW��J:�r���Y�^@{v]�Um�٫�M'�}��t�7��!���T�^�F��7�����&*��V�9�e{����:	�E΍��˹r/�R��8����[���
��)ϗ'�I�\�v��iw�t &)�_���>X�o�V�}�ߊ5/�Sp��T����±Ɵb3�u�b�}D�J@�4��6����;���48@@��$�ĩ8>s�I�˒!�	�w%�B�?Tclt�e�(i�y	�'�j�|�sպ�%��1��� ��R�� O�ν@�<��=2h�'�E�%	�ϊ�V��3AN%��$ =&WD���r�'�<�q���V�$�kV�>?��A�h) �~�_��Ћ�K�Cx�X�@ָ�R-w��z��V�G���%L�{���q�8I���+~��`�Or��J�,ȂBf@�̵@��f�#Uu�8,�#�l�/f�@�Wؚg��sXB[�`��zh0x�;��y%��0aʠ�.U��w5�/kY�E�+w��f��,�<�B��y�o��L�:��?^pY�:�dA��gA�-�t���s����^��&>�=�N�
�R��w��/ DN)(���<kĤ��6�j;�`����whH8�ĿZ�+��9�1_�簛Z*ˁb$ �̓�ۂ>���Ξ*���Д�'�N��I�C^�s���V���^�
�A��̗B@�Bi���Az4�$M}z�^x�B��-��g�(� Ğ�C���C��T�x�m->�H{\�㇪�-G�V�b�!����8�S/ ^GV�!�G9U��^�p��MRQ�؀�Ghx�񒈜>�?d���/��NDH�O h^�J,�6����=�u�I���S����%�s��,h�ן�/p_s�?�,n�c�\I� b�
e��	���1�Λڎ��N��o�	U%Na϶�K�>H���0Ku���j!���ck���^�;;
?��^|H1h#�voM6����j	�S�C�W��1��O�H�}�_CqP_�)�y�݋��=��ې��}X��HG�A� 'AA�4�]ȴFD�x��[�#0<Y,z)I�~��&aج�O+�C����e��(������~mS�E�C������K���X� �p�9��ϕ�n_�\��#��C�+/�.��W�8k��,�*TT��k�>
a�O|VPvN��*`=�@��	�,W�Hƙhh�)8��<�2rkH������U#�ڕ�:?�JW4��{ӱ�H\׬�sMP�`=��¾2p@�$E�3j��UNܜC"�sQ�Ų��8�='"�H��^E_�B������NdgЍ�]���Q��@�{��K�� �B՚d��I���]]�A���	ş�u CY�ϡ�2a�׉�-�U���0�b0�O�Dq&t�!��)#�z����� [���EK?��1�!ҝ��������1qiǬ[0P�48��1�Q-���$�>˚�b����h�(0����5���M,:XR�Ol�Y[m�n���M|��︪ZęF����q��D�P�m�:���N�8݁���A\�ԋv�޶9l��1W�8��l��������9�U��/`�QA�ZP�.g���������"Is��7j&w^k�i{���?t�Q�a�6t"? �E�P��d>��v܌E��~�R�\�\��Cc7p%���}��'W)�BY;7��{X�����[�@2[���,Չ9t�bP������Ct��Α�U�ϰ�d�=��}�N!t�j��+^��ڳ�Y�C�-�U��z�xV0�	,�
Ie�໊���wT�I�Ǝo�D��L'w�2��ᔣ|:ې�}n:���X�?��"/y%VF~�F��`4r
��|r^ə:C���%q	�¦����n�����(6Dd�^�Lx�t�5��ي?:v/��(�1?���]_���Y3�p��j��V�nm6�v���O�3P\�S5&�!��N�/����B�� ���[U,x3`I�Iy��Ԇ���dC1ztɧ�0NȐ� {%6��`�Xnc���޷ �)̊ƫLo4љ����N��~]&&p��[ϫu�@W.�)~9�#�b��O�N�ˢ}�O���!��ХR+s��(!�
����h_��la���4aQ@&RR����'eoy��8��rV�_��
���a�W�^E1�Ad�V�݅�,�!	X���*�H�}�.D��^KLj�����9����A~�U;Cμ���'5���ăGO�f��$�On]$�PUt��3le�o�K9�j����ҤA�����a��e@ym��Ob�M�gnm���3_�޽��X�)lF:�?�ٰ�5Q�ߙ����E�8]r��\���n�`�Kb���nh�ʵ��&��@z�a�EB�+o]��J�ɨ�#��7,��(��T�x�6�wQ·���E�;H��V���_�$�{gtc%߻0 �Q�_�y�?4���+%�9�C(�	�E�B4WP���2Fלj�`��i6Ή����٠JK166s'�P�l�N$֢�*�nL4��+�]T��2��fJNry˘���г����s��b�4������J�s���'3y�x޺�e>,�[C�����mv	�1d]��J-�۽]��Fu��'ǩ�6_"�����1��ǂ&�NW0��hF{��p1*:XC^7�j�=�v���*,����1�`�U��a!'?btр�q�Ŧ��Q��D#l>�t�x�f��`�H��KI�6Q��̄���z���C�����S)�ʽ+q� ?����i�2Jk�>�v����M���:�(�m�._���,�"�=H�<V�7�\����"*O��r���z�0Zx8�֚�Aw����F����v��ZFM� uP�M_S��$]�����AE�B�]��
\���0�O�k$J^D#�`�x���v�#�Ƒ�'��8�xM����{G3���;�G��A�<���=��Kࡀ��?��,#���i#ޗ���ȧ� �Y����/�զ=O�.�A��*hH�&�!����\ ���6��2Q�G��4�,�,�"sz��v��j}�X�@�o�A'�����P-b����ıP"�7t�F't�Ԏr�kʑz{�P-��CbQL�گ��@�������V+Q�� �
  �$��!��m����5G$F��'Rv�쏘�aw��>�/y��ư���w~��:�O=C�K��������ي\@1N[���O|@mzۺ�ɡ�w���T#/���KNLZ�e���A6���6�����=�&o�~�s�	 �ٮ�y?"�����n.��'�����4�ᑛ���)&�k�;�2aQ�v9�����6������b&���	N#熮����ˡ�Z;�9w���R2��Mg_C��߼D������g"*¾rE���Ӭ%�p�zI��[� ��a~�t���k�[��Z=$wω�Nc_k�-$u�Y.�;�j�w.S3(�y8�S��a+A�1\�O�3}�����)d3�Q�к�&���$s&�Z(�����V���ԃ�B��%uh�3}M��}}jT�%^ȏK�V�X`�_0�>6A�F�D��ƨ�O�3A�$���n�K�;��g ٱ+�	�kkm���{�,0���JB4���rn��N3�{�!�K�SP�e0���GgO�/����$���x+�j{и�%$�լj-�w^j��%�}��/4�s�s�E��Y	,
q��4aq�;'9%���.D�8v�/`U��������'�x1V��t�����۠���wx�nգ��p# 
�����^ d!�aj�ķ*VeL(�߸���.�-�_�1B�{� a�:7Ŷ,!K6t#w�H�x[��eˡ&O@AU4�\�ϒ���Ă��֗V��dm��4�H����J|��B}���jڮ!e>@ǃ�)���V_Z�A�6ޢ��Dw�5��%PK��=�X���%]��nhmް~��Ϸbs�8����v� �� FH,�f��)`Ȑ�P��}��G]��ٗe2)�K�ro
�ZٵD�� W�Nz���� {Q_䢾��zJ�A�(�j�[�(�h�#�/���~����J�Țl�;0�)�.w�b� vS�\� d�<�d���_0�uJ0���Hx��ZC(H�^ד����G�U^IN#�O{"	�nnNR�l��HP�N�Cϋv����Yw+'�[Yaj�9Q�A�=���ix�
\L/��Ԓ� �(f$hf�C���$Ĝ�P��\�>m@�[��>$0�}3���%��зVt�C�0�^�� �V�z���Gy
 �A�)f��J�Q~���V��V���E��$Ȉ����'"��b���:2O�tiᲀw�����E�y���קFa�G���D���l��}��V����t�Z����I�֢��P}��4d{pp�N��v��Y���Cr��7n��jC����������m���3���uc*0wKw�6��x�X��w!e�����u�ؤ�Yޮ���r[��>�zf�(.f\=�5�s����M\��f3I�$�T#b���v�ݰ����ٓ r2�����:�]l^���)=��k��m jO@#
d�^�5Le&&6��28��94��� �>ܟ"��J} f��
��V�g{^�7ND]�P���c{�}�[����؃f��Q8����T}0*}%
�~
껑�v������L��x��J}�x�\
8`Q����o��J�Ŭ-qJ{�5���7S����8�Ƥ���l:šS����[�{��O`�k��{Ea+e��)���{ϰBs��CP����ꍨig&
yҫ�*���p��&{�A���P���y,�'Iz@-�r�&��Hs�����;� �y7��@�d�#�d�"r���^�}3~�u�����kԔ���u�<1hB�<�P���p�����u""t.۪�����V�����%}w�\z�����b�Hs��F�����{��=h>����a8����gˢK�	X~���\7,�]'�Ο�3B���-A���JP�_Æ��tA�jpGo��'�D�T�� sXGuzaW��_�����)�8�&��q.�e��O׃]���޿S�}�&r>��w���	90�!�����H��
��	3��f�6
�n��]�|��D+�R百D=��w�]W~ȯ:�����煄b��ȁ6��X���������<���}��82�jy Cҋ�{�:N�຿�>A#]�3�koӾ�Y.4��z�gL3�u!=�|�`c�D���;��.uۘ�$�KB��.� ���W�½P]������~�)^׵ >�������3����թo� ��|O����t!jkW�d�o�_�my%���Ĺ����{1L�}s�U����H7�!׀j-�ѰߋӮ����b}���]�{x�3�QZ����S=��&�Eݫ}�*R����Wx�z�e1�h�Х�m)?������%�Y����+5()������7��}g��7ş	�w�[ݵo�Vx��~3���*���v�06�C��!ݹ��.!{p\�wj�j��N4���:�E�x��
,	�L��=$=P^ӝ�mI!�e2�#�s��Q�)5�u�gH��k�>˛
�	��� C|�Ed4;��(���J�ݻ�����!����/xA2e�`1f���f[]QۚŮ#�km����:_�����a�C0�~�䬰��1l������n���"����
���άd�[����=�+����t����l1�z[w)�	◵ ��J��4�X�KJ��͕��V��E�ѩ��J�|!a"R��/�L��=*�=/W���*e]�,��	��(:AM)ݾ<5 ����?�4V�?����L&�f�      L      x��}�r�Ȳ�3�|;/�	�<ږ��Em�ݎ�1/%a��7HHM���|��¬�U�*���	��j���K�seV\��/U�6��U�wM�o��&x���T���QD��*��0(�`���7�x�æW˗w�J���}�zS����%�dADA��D�g�q������˵ڏ��gS���樎�!�Ƣ2�+A1� ,�4�
I)'�8�� \-��[{����mݞڹ��
��~&�c��Yi�A�o,��޷�U7��
^u����6���X-��ں������bn6
�"��_��s�5aT,���~����-_�ߪu����v9��-2L�w٣�
�E�<lx���u�6U�;�j���v�v}m/$�e���	E�y�K������Q��۶�������j%�*��,���J}d��0��J��\��WuR8����w[ۍ��9brlag�{�� ��k��V�"�*��Շc��w���pUs��vk,�{T'wh	��2�cw�h���d�K�6��U�Ϛ�n>A�u}<7�����)I7��v�(��|g�0
�P����Έ�Q7��Dq�B4�8dy1���\-p��U�k˗�;0�SpC�ܑ_v�8^�0�L��W#j	n��Li�y��1�ϖ0�=i�q�I��_�/��@�����/��ݭ�O5�j��H�2}9��ID��'�ZH"|��LRX�#�
�w����yЉD�w�ON�d�E^��rû}����S��Z�y\_���\��{�$���|D�+�>���@m�{P]�|ǽ.W�����k���Zῃ0+�Aݑ2�4״��{���(�����{^X�G6��{�\��W]wZ�ܫ���6n�W�	��
�X�KHZ�7j/ǵo_��W'�8�4�����h���^���9n����PsV�����)�L~b�
!�Zu���˗d�C�L��U��U��5y��,)�q%����;lp�9���i��?�<�4��ݮn��l�5=�k�Z_f1H�/)U�P�U�E���5,�Q���=]��g^r9���

d����q�n�n�~P{U�)����\�������O껂Zg TNS�2�z+�����0�*�b�/@�C���;��lG�ވ�g���dJ'���,6���k��:Jc�5u��<~���-���ϲ�����NQ�U�S���j'�3��I$}zG�R߶�eYz��7ߊF\E���bG�l'K�_�@o8v��.�䵥�$\n��	Eks�a����F-�l�k-��0�kK�l6>V��3�ړ��Hޫ����Ru#g���&��+_���]`�ת�k�/!���K��f�t�2���)��"���	cͱZ���q��srh���,��j(�v�X��+'Jc����~S�#��Q:�]#�����WX�l��3�Y�+���x�'�h�)o�u��G~Xa�0h����S_��
�֭)Q��q�������.-�Q8�GmH �>��E�#��C��-R��7l\�"Z$Q�jZ�~�ԺV�M����b�h�3����Ń���-��B�N#�p��7��&Z��bs�sKQyv;xA�Ԯ��{�*�w	wL�M��0��� ���Dl�k{ �n;]�'L����N�+��K%�,◌��P�H���;-�n3ۥV�e<��� �",�E�c_���Gx8`����>}�� D�~��Y��I�3�����Sݬ�nj���A�2�8[�ωV� �{U�xTۑf�Ҏ=��j�4��*�օ^2|G�2x/�*���c{��5"���x�|+��4���y�B"*ռ�Z�5��V��[vy�b~�]X�6�匉r�z�RQ.���vnkA�9�B�yz�Ϯ��g�T��b5욊��Ji\����7G��Y���,�QC���M�	�?z1��@`�V]��*����������Ll0>��W��v;owN�Y��Ti��h�F��<�9�Y�W}wleY�q��>=����=8�k��3�(��|��9�ӛ.�迪��`���uS��+�w"V���T I�
FZh!y��j�W����%�1�m�]ٵ碊�,���Z�1�_���AYG��w��jW�t�@P��x$��!^@2>�-_�������]��Z��4�_�,>A�v(i)��8���ӝ4I�(ʩIPY.�H� ��vw:���d=8��Rӱw���,n*���1���I�m�UFD����+�Gjנ�n��9�+#�;(p⹆ƙ����E�bSy�Sk
��lq\^�|�U��3w+[��U d@Ǹ�L��֤
	yT��:s�<��%\���Ŕ"�5�i��4�d���f]M?1��W��Sϙ�\n+��
� $�U��x�^�C0�N�y��$)Gw���MòJ�Uyյj���:x����0g��}�����26R��eA���	$u2q���`�A$͟�eBv�P��dm�{b��@n��J=Լ��ݎӘzY���X�*��c9�ˊ�7�z���`]�H��T���`�ޱ{����j
��[k���r2���Y��]���8o�]/�շ�j���*�,��2�2S�ͮ��aw�h���ܫ4���������������h��%�+%䦚��c��F6�%+�ZFvY�9�_���N�Dl�#�ޠ�����#�ˋ��{��{������������ŋ�0z}j��2�n��v?�Z{��^����6��w���g,i��)[�;��U<ś��8��F�s�4��8�t�q�^*�>5��˫Ƈ�:�拉��� ��%�M�>1X2�|Y��n;wb��xn]$�7�s�83��$�r��_�����H�b��S��q�7!��J�q�t��#M��Y.`̯���ch1��!U2�$�[�c�#: �M!k��P��i�D�X��{�diS$r��J��p��P1z!�s�d���W.H�h (�">*ڨ%I�������%�W03x<��ftN���"i��,�hRf2^_e���r6��!��Z��ow����ȪI���.�r�M��}{�����a� �u�U9�L̖;yZ��c9��U�f�z�v���\*�xA$�^e�QJ(�4V��%�ќ�pYb��B8�h�Z��KJ�෎��Ů���2c\�}DzmR�[@�����2�&��XR5�]�#
{�#A���(� ���� 
��:(�e�2�����Ydz���L�z�㞻cQ��(-G�C��|���f���ƼD�%�KqyRXNۯ7}w�Z�W�ZW����)Q�$Xe'U_Yi{������|�m
N�.��T�����&ͥ<�����;�.�<gx	�\x��I�kA�@�m�%ex"1�gI �af��f3Xi��4[0ӭ�(#�׻�座H�Ղ8 "�|�0Й�4i��yv-��`����B�dd�b.�`��R�V��U�I�$\PNL��E!ɰ(�DH��'�� �كg.�dd�c� �ҥ�γ�e)����ۓ�>Ug���a�W|��W�,o=�>�$�XS�f���ot)9^��/
�*���&�G�ng�~Z=�e�2/�¥|�L�%��d�Ď��d\�w�6h���b��E���������`_?U`w{;��$�/h/�.U��"�(V�����$w�-Uބ-�T�	�DM��q������5b�(�9.��B��)���X��bb�$뗯���c�m�a���뽩�XK�Q�\?HR�$���Ы�t��9�2��:�c�+)p�+J\�l�Y	M�Mu�t��EXMCV	�\T|QG�I��VM��_j[����"�$3u��29��½�[x�W0�ǩ��ĻNV�h]�"XyR�E�ܗ�(�z�+_���^�M���K?�����u�"���S^����΀n)��]{�����/��(OG�	/���N����J�0)�s�cy�X1�*��K�I�hDs%��шD�56Iyb�����x�w�3�Z�$V�UH���D�C(.[I�җ�����Q3�<s�0�!S�=>��<��Z�,u�����aS:#�GQjO�Z��z�i    �������.d�tS��x08a&O��nԋ�U��ʇ_l�&3���$��#��i�A6��]�x���(8���|�G&cY9�R,(0¿~-`1�~�K���I^��+S�w�k�ə)Y�R�fUK}���4u?�Rz^a�ۛ;Z��<v�||��?�H��p���jƀ�K�R��z]�m|�W��UJga����6���Up�#-�i�6h#8�o)M�:�q�H��"��#�JX�W������'OW��h��u�>W�Uq���_��� ��[��_.�[%D�(@�d�pp�YdIPB�c[긪$�q�3ʶ�bOiX�VR��bB�W�?�����󌻋��H;�n���~:�/����P_X�͏
ȫyG�,g��?|J3�[C�j"ΒQ��r� ���{2r�O{�^�
f��D����"������M�mݨ�[uh��6�i�MȈ󓄒vX^����P'���|H��[�rI���#��N��C�U{h�v�_T��|���I���*Ic��5�тe�W �ݑ����﫧3;|���(��(]�8�9�w��бAh��j��f�HϠ҆��	� �C�r���H��ry�爋���%gW�#͂��kx��Dr��}W԰50kR�MMY2�l*DPY��Tz���DYe5��T���ї,,
|��8��0K`�9U����[e��>eT$Q	�%s��@�QS���"��8��n@�Vt��U�U���Q���Ed���F֭�&{�u^(L)+�����S[5ɢ��`�����rf�Q���Fy�� �]��֥�β�\WYL��䖈J�Ӈ]򞉿��km�C:�|+�+�9�$xc�{g��𦶀n���^rbA��JB�7�}�,z�!�%��/^���I�!���K?a�1 �V�%Q0���-͔�|,�K���(e���EA쩾T+��s��P����+��h��K{������V�������8-���ϱ��0��3b�!���D��G�� ���q���(�߱N�I,�`�,&2��Q�w� Z}���ǶQ[�55H��W��5��>x#Y, �v����aG�7���M�&�ru��CF��L
�V�}���^�'Nh9��n� �$����z�[���}P�TcR8C�%�4���P���
x��["B.�0�����U�r�hNb��֗���|�gz)���s���u�z!����C\b��̴W��:ϕ2��D�����0��z������O�e�'8��A�U�0�R���K�x9��-d�����W�B�@Sm NZN�`C�R����7Ĺ�u)���24K�p��6����3�1�|%�#y|�h���r&�r�[uxZ�ʆ�nk�3(�|���"5"�Xr�(m���;��΁�~�(w~S�(��?	�Rz>���_2"�(���N�Ҽ�W'E8g\fF�{�|[�����d\������\-Q�����FIQ�Ûs��.�Dn�vm"�gx�c����<��|%c�-����x��w�hz]�1�_� ʩnk�F)%$�U3�'��b�H�iFGy�]��A��|[�T-�8��$�.�i��r�E��|l:?��Hs)`X����꠾�`t���]��Vͅ����$DX�#r���`G�չ�4�G�g4�zyF�˥|�G�\J���v��o���K0a�)"�{9�\+����� {a�o3����9	�%U+�ʸ ���m�ȭ"˙�}�v�yiْ���q:��yLɈ����.]�����P�3���DO�Oa��II�-Mr�mW�N|�	h�>I�eSO�]�!�9BWF�o��n���NGX��$h$�C��E��R!���i�Nm�.��������7��˗C裸�(x�}2���|�W'^�TMeU���ęV	y�<ٍ$sPаi�9�bw7�m��K �x8i[�R���t�{�ZRl���,iw�[M#���d���B��25(?���~���Ѭ�[#�`D�.�&X�o���w_-u t���a<X�E<�}��C��پ�σ��շ���7D3>�Ue��~���@t����e�,������z���Z/�
���>�Θ	}p���k�?:8�χx�pu���q��G[�t�M j�M��;���)J&+b�?�r��"���/9s�"ˌ�bJ|�w-8d��3?	���A�i�Je����}D�K	���7�E��w��i)Z���X_$�T�Ĭp��Z�/�A)5P-�z�j\�J�~|J��R&�^��|˫I�R�p��$�A%�T�4OjJg��C�M��aw����]�<�b�߱<s	�c.B-@l+���R�nŌW`p&�:�P5���64�Y��n�L�LdeN|�"
	Ņ�_��i6k���,�u�N3�6\oh�&�J�j�h.x*f��Ey�I��%��`�&�mo�.y�yH��T9B��ZJ��4�� V?�<��ׅdm�X���2�"^�τ���/w��#��ͭ����`x|�2�!q�6뒳8��wj��@��]^�\�l�ҝ��K�?�������6�s,[�v���jVsB(*�R$z��;b�*�e��A�IX��E���:��P�A���+O��+��~�HC�G�������'�o]"��;�[D������y}�Νn�*�{�v�׺�� �{`���]�Wx)s޶�������LGtm���d��T����|ݵ�8�=S����}����̽A4��X��m*m�.7�X���aY*��X���L�J�%��Ih��^ą��2e9h.�a����G,z�˗;r�Z�c��S�vm��{mZ#�1��|�\�.���U���k"�Q�5���l�uNA؎c�<k�� ;`O��#�Ƕ]�`7\}9Gk�9�eO/�!�	fR*@|�Qՠ��=pn"�Y�H���4w�j�X��B���K���N��\c�������Pz��~'؁߫�m�T�7�8?�[�\m��>�����Q����\�����r1�Z�M���g$-�l���W���"��^ٕY��W�E��
ńx�����6��`���iR0����?�}>Ӳ�ey�qB��\V��>����~T㚜�^�'1�T��,���+�]O��xi,�� I�U8
�I��ӒW7�UJ�\��7/����CVV]�R,{����	
SW�����{)\��J��YSn��d
s�B�~ow�j�[̄�4�� �#Ih¿��$<�&M\�3��hh��ϯ�������ũ���y����i����"�_� ����{�ᄥ��|��#}ϱ��K�H21���?�����$���XUIڄ�?y�i�R 5��7��ף`�9�N�sL�Pt�,��������c��G|DU8L7�VJL������$�߷^��Z[��;��+��$�}I"LSR���}s��Ti%W�p`���Tj"V����}�V��}C"�,�&�Tz�}?F0����f�%u��E�� �q6�h��-X�� -��vZ3�uGW��i�,����:߇8����z]�lo�i��d��y6i(��`�dT�G��ԡJ���VX��$���)G?4\g��.pA̋���RT�]�:�Ud8�h~�G*�!��_5�:@��vG��x~�W��"ɑ��%�`ܱ��{�X=v��և�N0�4A��3�PZ������no�i	�w�,߉u���nJ��z@���8��u>@̂V� :K��d�u�����Lyu�b�����O�3�P�G��C�C<Y�3zhWM+�"�@���/�M�����i��~�Q�Ml[�y�f��ԥ��g&+��Zw���k���.-X�0R,�Y���E,��"��Yvd������Q��8H�]��[��������n.+�+�A��N��ũSq��n!�y��c#Ԓ�b�= �5^��U�r�a�a	>����
�#��L�0i���(˃�}wD ��%j�w�D�Q&�ATug1.=�
A�KWո��_���r�S�E�L���h�~��W�t�i��8���2�x    :R�G�Q��4���"7��:8�-d�=BD�VfDH���23�������u����þ��l/?"�l�w��+]�?��Q�T�O��Ya�� ��2e�~�(E��݂0oB��d�J�Vq�ivj��v��6��%�W�"��S�>�S��5�=]��v��0>:� �lH��X��<��ڈ⑳"�?;��ii��-x��c�����i9h]35)���Z��^��I3i�8x�>��*���Ey|ڵ���==��pĘu	fݻfq�c>{������O����	S�35���x��"dQ����p�a��Tڮۮ��	������,rۊ:��RU�Ȣ�)���/n��jڇ�LҟO�ն�7n�@ω5����L��X���7�=��i�}ϓ�F��:�f��G����7�MF�8KH�*�[�kH�=-=+1��gN��nQ��"���k��V%{��!�Y��h�_(6̢��6�����|1͸b�_ƍ��J#h&�/Qh�ɠi�"x�)��R2s�g�B��gl��UI)d/�1�:��)^^��fz�l�M�5c�W�0��� ���ҹ��ve�XsX(�z�=�x�D�Ԭ�sf��㯶ۜ����i�_TC)�F w��!�1��c-D�<��8�@hh��ܶ��h�u�v��8��W��$�`~H{��%�l�F>���P=�53I�w��>`�*���l=%�-3%�O�X~Rw][�sU��l�BD�dJ����Zfz@�'Ni�%8����q,�3����d$����7���5P�N^MH�ч����jp7d�2\)�R I��j��M���+����v8M�yY�8�˟�C��9���AjRi��&��ם/b]�A���`�OD.���S���k�Y�{Ag/
A
���5H5C��F��b�l?��nO[G"�>T(�|�'���D�Y�E�EZR�R(�s@�2[ЂJU�+�~&0��w9���� �$WC�}�7���g��L��5n��L��XrE1n���h�нي�0�H�k�����+AG��2}s�I�ͦ�yX��������|&�0�G��f��-�c��Ā ��v�NR����dW���N��T7�j����lF�1�̼v��#$�\t�Ui��c������A?�f�>=�]#Ϝ���V�frhy�{�χ��3ޛ7]��o�]�IT� �c������������� =4�!����o�A-?�[��C�v�i��В�q UI�0B��%	�Ah��hs�t$�>3V2�5]�á���zl��4N��5��N�&*7�e�ǉ]+ud�vy���
 �6qH�KJ,#ΫA_���K�ӎ#������$��Ԩ1�1��9�^�k+�j�����fm4j�.M��	�c	;]��<K���,�k���z�I�~B.�u$���T�
1��u�I�ʟ��Gp�Y<��Ͱ:�X����|�޷���n�~��ՌJ������=��	M[� �^:b/������aD�!��c{{[W 	�>�����!�yS�ǋ��ľ����Є�"7��ԫ�ѼXѦ$�Z�Wms24��tl� �K�M\i/"+�)}�ΓMor�\ꃊ�9�;aė;7���=l�AO錼N;�#��%H��Rʹx�ԟ���nI�f���u\�6(_�2�f���3�q6V���K)	��9 ����q4w��昡L2��E�����N����"�y��O�(	kׅ�KM�'M��AD��ڒ}�0��{����=0ΐ  ���ѯ͋�W���&��nb� �h�r
"��/����󽁔�Q�C��T�fYϷވ(�( x
g+c���WM�:�y��κa@M�\m��2�/�h��ͱ��!G=�k�z�k"4X7� ��q#�c���dF�G%�%�k�����cMg��Awe�
��5�@5���U�o�:�����l�'�mV�I�#%��%b{[�{��0��+j����3`��eL.d�7.����m�Ƙk����\O׮x4���G�ɗ �Moj��ŗ5֭8�N2Y6�������"迆Dl.�G�.5�	�ͨTv���ݻ�+y��)3Al���<(���6q�%���#��QA��@ʽk2/�i$^�2&�U��$����7v����'F��a<��AM�k3�U5�f����p25ָo��bf�\W���Iz����ϼ1��\W$pP��;�;��D�	��L&-�(X�M��ة����jfN���΁�����v"5,��}���g�O?_395��1�{`����]�����ƀД`?�Gk�&6�-Nd�R[;7����F����Mf	�D9E��ZD��5Q2}C�>ѳ�Ո\.�?P���U��oytͱ�,���|([�Ԡ�<)��oMJ�S��S�H;���`��GZ�gP֫(�'�A��������ڮ'Uͼf���3~B���ӱ�µ�h0�J�	X/�I��v�߇I{��8�c�����Q2�3�[�j_4p ��Yc�qJS~ғQX��-xv6��A�̍ȐM��iR�l�N/��2=]���e�;|D.fC�hn�tsN���_�EӶ�k�4o�-�>d������y,(���Xi5�lPP���u�=���:�^�3ɯ�K����)1�iYv���Y�gf6��i����� �`����kH�^]��~?h���u�.��Ӗ�"�����i;(�?���K�b�'���&�A��{�(�I}S��v��������hq3��t}���A���s�&r� ��6�G?��t�`ER�x�����L�t1��>d�� ����#9��}�/��'�7�ji�p�C�Ўʑf��D_�k�W��.���ߒ����K�>W�)Eq��Є�|���!k$��#�Q
��a�$Y���F!�P"'�DZ������k^��w�f�;!�%)���]�9H�k5�k8�bȠ�L��Mm.���x�	�?�jMr�A�{gj��Y,Q�a>�.q9�1�E��j]�~j�?r�o��؋i7w&w��߭P�9s��-",XcMn�<�8k�s$�J_8Ǚ&�9��󑏙a	��|�i��	g!3�;�W�t�e4H�3�}�����U�Z������q��N'z���^&bar�YEh�a�����ɴ����@��tIX%J�7�Q����=�M变�	,+� k�r���x�|֔��7�������tS�2y�
�-(�6��Ɓ���;���npd�X� ��79�4x#3u�x����f�����#]z�t���r���,D�O'����Fr�ү�`�� ��
�&���tN���_��8L���"rn�Ѧb̘���i� �U�����1��/n\����ۈ��!�"��_70��P\Zf�kј@���iͼ���nˤ������N=�h�N�~/f�M �˅�.�T���-[�<q�w Z��vM���F�{�)7����v��g�!3e�s<�^�s>u��3LҙΟ���o]���ZX�E���-���nZ�0�/�K�ün�E�Xɶ_~nX�=z�eh����^|5������@�<~i�M�Tڄ�z6|3�#U:x>7������1zy�(�ぢrH��s ��+�/��w��~���a�d_�VU���s'?|� �]ɵ��n�@o��h���n���@/�j��L���6���ÎX?��t�_ɴ�fQ�q8���#���j?�P0�l�?�ѯ"�1!e>�V� ���vj����Tׇr�� #�F��3�قf	�`��a��ݡwJ��Rv�mb|�	Gf��dc�����.�NC�{�;�+>��3R�i���~��醓�{�[�e���"��L-���Յ�Y?�KPM���a®̪H������a$��2��	de�0�w���i0�Q� 7<��E��/9?_��wS�`5��xA���B�ꪮ�;5�����HW��ش0��zP�,'���k�_���&�؟G`�\ʄ�q2Jb|n��~���]��?�}�C�+v��9�9�n��$���-_�k��sy��<�9�<w�-�/;���=L_z�a�4Ǘ��l    �
+�S����n�3���0�(���g�೫ڙ�R7M{�Գ���1m��{'˱�/bC��=��.5��!��\�@N���z>��9�= �|����$d��n���U]t=ܓ}��{:
jQ�4�F��Q?�o@JE�{�t�d,�1�J���9�ͅI�`3��t�.�����]m��_��!����={Z³�g9*�/����jX�m�T-�x��,���&��,�]x�uҁ���i�z赐�K&�h�����:ld��e���t�/ߵ��{��<휸6���rE��.B#��WH��on����NjR����r?11S�R�'��V�z�lS4�����D(3L�~�W&�A���
\[_l��Osn(7Uw_��v�C�5�r`l��O�qߟR!SFm�d���٫�<{'�A�u��Z����~���_���lyw��~�� )��I@{=��(�q:��5Y�J�.�Β�F��NV�gS���樎��}��<����uD�sh��	Ti�k-�9<����0"!7<.�J GjN	�n�`CL��tHU'+�����8K����ZJ��e���k�%�~��#z�j�K_r�AD�G��>3��{=-'��'������3�s#�l���|�'H?IV|�>��Bs����`h��"=?:�BU���iHd�����{�U3���2���t���F��`
��Dv(�Wx�|�n<^��$_n�A �8E�z¾��6GCt����KLf��ݤ��6��:T��J�7�\�N�kv8A�Ϥِ�B��S�'t���F�9^���撚��O��lmթ������f��f%s�uC��Hd2}�5؟ ��{Lr@� S���2�I_��rry�C�	���[��K�&����g���(2�Fd�i2yg0���C�=j� <��=�k���ig��6���6��Y�+y��o΃�M�
���az��c����Jc5��Y����/�v���8���&�w̃B�x�e�J-���Z�4	9>�W��\�݊z=M����;�1Vs��l��n&f����H.��!%����f<�7��g�>n�v˲ �|�,���#�.oԱ�v���f�C"U�r@s})T���x����ݩ��ǒ��0o���6�Z��ޛ�2�^�Y�kM���u,��N����������ɍ��	ib��Lp�'��D���ׯ�E�2 6�cl����f�$П��9�G?�4��Ĩ�!�8�ku|Z�@h�K�&7y�QĮj�Y�B��������!���4�d|�Y�:K�%]���r�i\�rӝ�z1���Ʉԙ��<q�C�2P��%��P�(�͙u��H��7��4T�|g4��^��:��f����	��U�ţ��@6�bc�1�ņ7���&���$'���8. �P����zGFyq�C�sN����9�]ut�@z���Ji'���>�gS'��D�[��{�2F[��Xpx$[��)+^�Ko]�?۫X@�A3�t��rm�
����)yo���8�<i헣aN9�@w���'�|��>�c��+-|٘ �D�sN7��Hb�
�^��!�xf�v'TK��%Y彭�z.O<�W�TQS絊kn��I�:/d�v�[�G�O q6���]�F J��M��;f�{~Ɣ����?�<}�E�/A�q���r�_����K&�$���̠Fo8"�bx�������0�Ld_��@���OiGq�a7V��(��T:Wnn�~Y� �"��Qhb�t����l�=�3�U����Ì@�)�n�^�r2G����E�7|7��Uۋo���=?%���p!�@�3��� ���N$���8�b���ig+�i�B;���iV��w�%���7��S+z3������!�E*�,B���vs��_�վ�n.��XU���I;m�[^Fj$�{(����8��Ʊ�~�ek�0"�Y,|R�O6U�'EGy!x��L$1��Y�@�z�LR{T����vWg�q)]wpG�2�˛#ĵ�{:m�kC��\'��"�3NjP�ͱ��i�V��ʫ�+��Z�袁d�_t%Q��z�I�����M��:�y^�h��Jp�0Op���Y7�`�`6YV��Q�Y��r��I<p���U��	��Q%�u����X�쨋�祈:#�����9�2!�C1����{>��ysj�MU�v�R�ag#ґ���y2�1���i߮���i��;��&�2/G��BidKx&�1�����=<�T��v��of4h�Y��q�3�iP2*)��c�ǿ���T������]��m9!�� ���k�(Y�h�(:՝�L��4Ҧ��Ig-��M�
�} ��LSf1�Y-���R,0�(�Q���V���!�/��e��H��@���A'�i���j7����S�r�=��ډ�kd�:�}���K2mE�wk�(�Aa��V!xKy+i�mS����J�v6�K� ��+q��Q?7��J�y�g�.�����a�Ψ��`�)a/L/��������@��E�~�|E���O�zEt/w����,�r<SSn'��uڎ(1��#8�=��-�+�CoB��M�4 9\�N��;�x}�ιm�"��ͻ�b_���Ң���m������Π�gt��Y��m#W�Km�MݵK6�ԡ6mm��(��HiS����;��6|r����d��2�}��^��X@�I	�|h�����ς��]���e<Z�LJb�Ґ����D౳��	�6/,�0��"�)v�����G��[��*1zo}2XR<�0㭚s��,e�?��=�2�����+��s}��*�Ʒ��H�>; �^7�� 9�o]�P�3[�[�*HΨ��խxv�5i.��O�OE��8[o��e� �ߧ�p[��ѡwx6�et?<�R���v`�>�:#�?��z���|^O��WI���Θ��8\_�� �֫橺��<^s�����_��M#'���Jy���T��:-�\���}8�}#W��a��HŽJ������j����-�ַ4�4�d����G`��(���Y�9`�O�U�?�ۻM�}����g-&i�\�"Ԗ$�ù^�)7����GoN'�-��K[!�xX�CL��ZO'��n/���t]��h�3�ܥ��TpU�/���6f�,�VD�ģL��%��=�{�������7��獫n��bȽ�U�9��Ɖ�-���jw��/)��ִ+s&�����k��#�����'�6<�%��	Oejg�qPH"f'�Tw���.,s��6����/3���E�W�IބF�_���g����(�0i�o�O|���)��q1����,z��(�
�C<��1S�T�_L ���d�R��]`�8��+΃�'���j���}&�h�� �KoY� �ɨ�|�|�"����]3��<��d�Q�������ԏ��z��3=�]X���&۪����A��s+,͈ǖ�hhfm��=<��X��98U*㐼�3���P�R������$6!)���!j�f��C�A?;�9��d��=z��g��d�2$+߅u	<�y�;�k��q[7��#��4���� �T�{�UI���^��s��W�I0�y9�r��3P��V���n�!�a@��=|�j��h��< ���wA���}� K�cAҙRF���jC��z{��ɋrN�L^�p�����&�^��8�]N����{��4���=�5�Y8;�� e�~Snf��Ze#_������qj�T�t������f ��i�rh�L�]>�ǥ��x�����z��V�_�IWn<��3� P"XHS�h��I%�'��B���`�6t��4��\�D$��~��	Qى���-H���e���|�LӦ����>�&1�=�IC�����=*���|e�fflJh��h5ۋ�({�]��m�~}^�~,�;Gt�p��K+����+�$�"�V��-Q�i#�Y(��_�I�Dj)^���9��r�����w>T2�:\��_�_�{�/�9z� �il:�,��t_�G�}�ݾi7��!���:�z�|���|u��d���)
�����j�h�   oNY�ս�m�>\C+��k4!NYI���3%��[@��=Zim�.�e4���5_z�B�J�����<��^����N=��<$�J����Æ��m���fKe~��["x���X��AP���{j��ԭ��n�wI{n.��"�B&bqu%�n���O���+���v$��\����	e�{�UJ�]�+���O��(����7�^*��cO�td�<�ow�y��n��dӕ��U�a'EFF�_EaK\*#8���Z,�f��8      J   �  x�MR�N�0<wEn{C�+q��hѮ�ׅ���G��O��%���RU����cΉiG�<y�Z�w���H��(K]O�P��&,���f?�O2�[@�[���|�c�J��cy�R�"�g��)�-r�.Wg�Av[�K�4�@�Ax�����?S84Wy��eB�pq�9�\��	XS\Y-����R���*띄�A!בs|uJP5���o-9P-_�Ӻ�C>�I����|��<��~��JH�]Ha�5uҐk��/�_��u]+i�:~��#n?ʨ�L�K�3�6�ę��^�R���͐�%f<�[�Nf�����Sƥp��qm&�i)F6��\���v�ǩy����4��8�Қ菱p8J:xG�ADy��/������      I     x�M��N�0��٧������Q�T*$
�p�#9vd����l�K�3�Y�K��������%�5zo+����/)�/�U�69	C��釴n���Q���z�>#�UK�>�r���[o��1���+���������s^���S\��Fr8�8`.�X?�a���a�s���F����Ou�1��g!^i:G\�������Ky 
�������-|���4o�Vp��W��3���*���_1b�8|?�?�	g       H   �  x�M�?o�0�g�Sx�V���Gcsh�IP�i�t1.jπcl_������������~:�ں��;�!��@�k%7J��:~l�PT�K*dV�-Nm\[�t ƬT�ӧemS?Bac�0%+LU%��m9���$$hT��B�n���ƱS��q���mkө�ŰD-k5̔��د���IIU1�"���Qz�ݗ]�����%}��]*�g���m����֏��E=��TI��e�a�Tj5�茎5ݵ���^1����h��"ǇPv��}���_��Xr��f��ޑ�X� �M�9}�/[(���R�T��3%M7�e����E$�����񵭱+9�{�=�Ŭ6m���0[��QCAI_��u8����:�;3(R�TJ�>������z      G   �  x�U�O��0��ϟ"7nV��>.+��{�bu���U�n�ߞyNA KiS�:�ތ��-/i&eI9��:�Y����ɉ�����>�s"Hy v Jƒ&Gސ��e]�\�H*BPF2A����[�R���i��aAg�h���@���[Ҋ�<YE�'�3@��c�������K�(B(�gqX߶���K��17��S�@*@�">����X�`th�����<��_�*i8'c��(��]���=��>zۯ�tڴ�q""y:��;L�����"^��,��a�l�RP���,��pbe)�9-������,��.ֳ��[}i��Y-�����c��V���f������{_}=�Z�!��&�[�LZ|�]�S��7$�έ\��\���}1h��~�b^8p��r�V���e�� �a�}�V</m�m	��C�\�׼�"��;	j�W�WI�R��
��     
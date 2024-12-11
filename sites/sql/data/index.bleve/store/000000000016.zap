�t � t� t� t� aggregate_functions��aMore SQL Please :  Aggregate Functions users | id | name_first | name_last |       email_address  |
|----. . > 4|
| 1  | Marcu	R$| Crawford m@mc.cav  x 2#Elen| �no#| e4@hellocorp.com< 3<SimonChe s8@sqlanalytics.iWx 4/PriyxAminiI| p@a$consulting~� 5<Zar; |2< zarV; < 6/ CharlotteNULLw |> |
 dona)�-�!� _%� dA| amountw!�
. �%� 1KP| 2024-04-12 09:10:01!0%� 3�049 12:40:15 | 10%� 5:0 ,5-01 19:51:40 40%� 2F0 3 14:�� 7	Q� 5�99	1� 6`01:11:44�a0%�>� 6-04�01:59 |�   The  }�| topic introduces the concept ofA�,ple/scalar fq�$, which ac) zero or ma�Dinput values and p	\0 a single out#0 per row.				�(k�  are categorized differently because�y operALon	�than one`�@data at a time. cAi()  is ar7 t�column���a?*  as	� . Insteada returning	k$though, it	OA�of�0 total number rows.  Ifg0is specified,3�,all0 i�e table1	� ed. Think,it�ask�for a;L"includT	�s".  ru��reset	�	)F�  r% edY iIO�non- �/�2c �'9�can-�%,DISTINCT  cl%�I�Es dupliA,_D to be ignored by A�[. Here)Usecond "�N" last�not )"ed1l%�>!<Another commonly��d agg��y!(  max() . I.lm!.fand-X)NmaximumiaaK!�!�MS)Xa�6* $is determi!�M4same wayE0n  ORDER BY :!.followA!8curau  � l��  ELthatM� ype. To imfind=��� ,  () 2usA�Keep� m	? a!�Rite%)ha�bases,L%OY$have versip��� m�0ple argumentsMH�l actually >�	C perform a�� task>!�  sum2� calculat�ksum!�!�.�>�
every�m!�!�qD t9dwi�e�"4. Unfortunatela isArequi}�	standard%D several aB�s be%Y tLway�gVa*�0useful if you%Texpec� a�erical�Y(ult so some9� likC
!�m i��!�aR!+���tal2e%�)
s 0.0AL� c�
M�V�avg2K =�an a!ge)� across%�a!izIt!a!`valent��run�� /�C�NoA�gae�at �<F%H�	ide!�/�IQion. Iu'stra�II)can't�conver!Kinto!�bers, su�� "�
" ,utrea.0 z11#����4Theraee ofte�built-inR]toA>kwell![abilitydefineAYr owVE simi�toB� .Rea�powerA�tool!�:but�iA�ev�M� wa�comb�Wwith0   GROUP�K6�wei�expl.	8next. previous:.�	 hr  # :Pu� _�Q s�8"_ /J' �t �+ t�+ t�+ t�+ case�+�More SQL Please :  CASE products | id |  name  category�price | remaining_stock | vendor_N
|----V 2 . |
| 1�DCool Splash Cologn�(| Toiletrie�$49.99 | 25�� 2U 2U)' p�-)ChipsFood- 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:�  |�� 5@Super Glide Floss!>T 1U19!	 |�U 6:,Big Bark Dog.� $ | Pet Car!| 3%L |!�2 . U 7:0Soft Purr Cat.V �U  8UHTiny Fresh Scent Tr)�(| AutomotivA�I9 |�2 6� m
A�a*>Z~'�E�4Quicky Express	�Co %E� GA�<Times Distributo� 
%� | Natural) nD!EWHyALogisticU !E#0Vend-tertainm!$|
 ordem	�Z�	  quantity�G  date_. eiS%arrivJ�Z �6 4�e� 4ErH2024-06-01 07:58:05Ay3 09:04 
E�.�*H2K (14 19:30:10!	a26 14:2	 
-�v�  7�9:01��7-1	�	 
E} |!�| 5>� 7-�1:00:07�07-09 12:50:129� 2I���24 06: 3(30 15:05:00K�3 �5K 8-15 16:42� 8-19!�Ke� 6J!�>�  9%, 8%, 1A�ULL1	!,e� 7	| fK 5:0�AVK    Th���O ei��ion allows you to add conditional logicyour que��8. It is similar t]\if ... else  or   switch.q $s in othera|\gramming languages. Mostagabengines	� a .� 0to return any:, type but eaD WHEN  "branch" of�state�mustE� sWE. In�ite^ can be0ediHthese examples will!Q from�  	��This; sh!�(a common usp<se where we want�Lcreate custom groups!v0"buckets" for}$data that ��not part1%k,schema.  runAnresetE8U!� s�x9�9E-0compounded us%�AEal opera��likA�AND  an�^OR . AnIth7to�e about�1�sis	� iE� evaluatedEd��)ntopN(bottom, lef%A r�. ForI'rowI.� a!ult%Konly�first maA�,it encounteraEZre-j	%A�ndaD  supply a!aELSE.� ,	�� e	�bepre�. IfDdon'tFJ ,  m�isM{ed. Not)
howL "F�	 "a�`D could technically	�E�m4"Crit ReM", "Urg�e%� " Soon"� iA�,However once!A%JesJ\ �resU�QisA=�!a$we move on!�a�next�. YouE�utiliz!\ is behavi��or%_A�design�� such)�none1q�As�%�overlapNOprer s�Q y�E�$ed alphabe%aly beca��newlye] uA�columAFneeds_!$� has a t�aم�E:�:ed! aI��=!4query/!	also.�y�to�4  ORDER BY  cl�Ux�w t!i�	S���{kddaݜdirecta/fte���keyword;	[is A�!A "base"G��� c�H�+  :8 . When a >=[�
A�	:�eE� a��beginb6Pa� em�ofBv  determ��0which integerw��a�As! a�y ,�et!way!�structurM�-�eɁ? o�B  C�OTable�ions Det up%ˉlq dI��rula�An5Ņ%w�se!=)  �i  	%e page.:V�!�be�E�check�k��a�(display a m$human-read�valuA� n�pl�- s�b!��HCOALESCE()  perform�8�func�V� Y�Ad�usAi s�Eaggreg�!}���  GROUPe�(s�  avg() V� !%e�1*a�n inpuɘJX  .T��queAPusefulH��e!�H&7of�;h b�PI	`� �W	� a��separ!}�ra�q<familiar with sp!�sheetsa�� e�q�2V
 a��mpivot t%�  ��S�Nus�� m
of��class�	�2*	sal���/ i�	*�	 wE��$LEFT JOIN m�5includeYAc$at have no{ sl�� ">� "	S�t�E�D  p.	�-�, seƱ'.�,to fall backtheir   �i	_�� 0B� H�!� h�#�
  �	ve ��y�� 
n}a  UNION��be easi��=	in�&un�tand��stead�I�� o�	�� us labelsA��<�-� s� m�	on,1�@�{  i d-�reduc?he�^lih�of��D error by misspell�9 o&)�some��ra%���re-��b���^,multiple pla� ie��� ry�]�)�limi��am�
�duplia� code2� writB�� :-�!�Set O"�  ho�|	P: PIVOT caseCASE/case�
t �. t�.
 t�.
 t�/ data_types�/�XMore SQL Please :  Data Types profiles | id |  username   | active | friends | rating | p	:_imag#$created_at\  | data_storage |
|----	
	> 	: |
| 1|lilacsky�| 40!4.64| x'89504E...'H2024-04-12 09:10:01!sdf0f 2,lucyloop| \	 | NULLo	 |f1-01f50:12�234#  f 3E$max_pixels 1	!| 67
4.3�703AFC6� T3-29 19:30:53 | 567.892f 4Xr.patel� | 35
4.f12529B6f \6-24 23:29:29 | X'F00BA3&!2 5O$ilikecats0�f 2�| 4.f571AFA@527-0512 09a	8|
   RelationalE��bases typically require you to define which&e of8!would �,Aˠe in each column. This is done at the timItableiio,i�StandardHs over 20 different	� te�$for things	�4numbers, text,*(es and more� e various%x vendors such as PostgreSQL, My	icrosoft�2Server,XOracle�;!O8 may not suppor�m all-they"-[8their own extra	��,is example u!�$a built-in�ite func!9  !�,ed   pragma_%X8_info()  on our��-yto show.��it)� .n!�58in that insteadAexposing�of�se=�%�0, it simplifiAy)�)��r by uIjust f�fbasic	B$: INTEGER 6whole1�. REAL	flo��<-point (decimal),TEXT	,A) -!� dE. BLOB	binary��� represent�$the absencE�any�!�� .�Pm_aWcan1�i% s!�,allow or dis	  	p s-L  Constraints . ANY !�@a special keyword� a\)�sacceptJ� SQENis unique�)�t also	�s dynam	� -!� dcs. See�; sAU  !-ax detailsA�!%"s. E�,64 has a maximum�Mage siz�bya� w��(will limit A� ma�Torbig!|a valu��!6�(row. Depend!�on!�r voc�e	reasons�learn*0!�a�ora�need!�know thoA�	� ,@q�A-��	�of a	�!<. Don't worry ifp dunders�  wa� a	Eis —-�nform	ơ|ncluded��a starE�i!�	�who want��%�. BeA��%wsee!�9	0complete list��s from�!)��,and/or avail��to��A+other�a� enginA run��ait Numer�@TINYINT ,   SMALLf    MEDIUM�smaller �� tive/nega	��=H; takes less space.�k  !�  
�uzJ . BIGlargerVl %Hl6� FLOA	�<DOUBLE PRECISION� RB�-�N���a  \} 4EEHs (around 6 digits)!�aZ ,8F� yW 8:C 15D�$  ��fsukjval��toa	�$. SometimeɇE�use� (n)  wher n�a]a� a�:!�A`af�cusaZ$ECIMAL(p,s��NUMERICA38exact-precision�M-bb�|p aWnd�) "7 "E����� eu�amouni6otal--R s6R scale�N )�!Q!righ	ehe �	�. Bothm�exa��hi!?���but mosdernE!�s t�   -SQ�-O  �qsynonym�# y�AP@ '
cument��to be su�	6(Text/string	�: CHARE�0fixed-length 	(s.  A9~�+�$characters%$0��(have. Every�"	! e	,am��	9 regard�6offe�0inserted,s areE!�@�Wbe pad���
runc-. VAR2� �
�?~� `�fYk��
%Pa�	�&	Zf  without=pecA�d f.� t�
���%N).���kes�	Q .:�Date/T2Ss: DATEYda��E4he year, monthaday. TIM3�W� y:: hou:inut)�second	>STAMP��Rj	 m'
�of baY��q"Ddoes.	�" yI�al�E�Ap�D sE� ;;
  =�%lpurpq!QZ s several&6"0 s)>workg!�lAm>�Bi-�BINARY6  m  .3   6�!�B�!�Y���5rowAzllM���c��* i"�~�:A�a�1A r6:�dq>� �y�&�aq�aobject!���� "� "2�M L� O�".��
d�f&9u/�
�)| oVook [ifeed�� aW
�  -C. In��lity,2N in � n�	!c�be reQ�a�garbleda�0display squar�
 T��x'�[�n �!�act� b�#�E	hexa��"[5".into:�6*Booleanu�OOLEANi� true/fals lu	� is means �.�� mweit� b�TRUE��FALSE�	4�no�c  r�+; b������-p h�	te  ���!�  1�>� O�es: JS>
 -)��wAP. M�� m>��� featur�nd�  t�al�� f	ly�(aWXMkXMLBt  S!Pal~w �H� y�2�b	�UUID)
nID\	ome)X	 s	�� aax"7!. sI?WE�s	tored���!
� a!��(efficientlyb n�. -e�X. prevU: DELE� h�(  next: JOI): _0 s&i(/data_types�t �* t�* t�* t�*	 group_by�*�More SQL Please :  GROUP BY products | id |  name  category�price | remaining_stock | vendor_N
|----V 2 . |
| 1�DCool Splash Cologn�(| Toiletrie�$49.99 | 25�� 2U 2U)+ p�--ChipsFood- 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:�  |�� 5@Super Glide Floss!>T 1U49!	 |�U 6:,Big Bark Dog.� $ | Pet Car!| 3%L |!�2 . U 7:0Soft Purr Cat.V �U M�A/A�>~��E�4Quicky Express	�Co �Ej GAO<Times Distributo� 
%� | Natural) nD!EHy!�Logistic5� |
 ordeL	�m�e��	quantitya�  date_: eI�%arrivJ2�V�!�%: 4�ih| 4E H2024-06-01 07:58:05A'3 09:04 
E?.C*G| 2FW (14 19:30:10!	m26 14:2	 
-���  7�9:01��7-1	�	 
eB |a�| 5>� 7-�1:00:07�07-09 12:50:12E3e��2���24 06: 3(30 15:05:00We�9�~W  8-15 16:42� 8-19!�We�6 6 1> 9%\ 8%\ 1a<ULL<!\ 8� 7EJ9� |jW 5:0�CVW    Th���U�< statement is used when you want to group results together so&Tcan find things out abeach	= .��hmostmful	opaia�twith an aggregate function lik�<sum() , which invs c, will oper8once for�h instead of on all the rows�.  run!p reset You�,use multipleJ�  s�  .� to) m�informa�> s��by>� )�(HAVING  cla�!t$be appliedj2{ 1)$nly includ�%6 e)�( that match%	a. IEsimilaraWHERE�but	�<key differences:(filt��%bbef!they �G gAUed an���23 after	) s4!Ced. Bec%of%�, �!�  J	�%*accept!� eIVd values>ly-aealong%�otA�	Z sQ�(JOIN . In l��, lAhtimeA�how D it takeAo0 receive somee:���in-U this examAz w1�by�� n�	    avg() y7eR!�of e�j!�m� e average,uB+. W� a '��id .a  � b-�	@s mia
hav	� s�� as one an)eA]I,lways	24a unique id. T%nsur!QA�ouU.contaM�correct�data�P	�(. julianday!D0is a built-in9Rkhelp�/ perA�( arithmetic�\fes!�itB�If�<supply�ZcolumnE :�e/. ba�����combin�j s!�	� rom thosed. Here2Rbot��	&Fa�AEmonth4mad!�-TA&%w0.   count(*) �� t�Vemany��inI��, tellaus,E� sGreF4 >� Nasets say���seIx m��rec��Z0 totals first�ORDERw��mat� en�I!queryaIsor	%( s�descend�h>� ��DISTINCT�\��add��n%V()���0� e2� ��%v�� tM� s!!e�!ȅBto make an/�negoti�m!bestks. With  F� e�is-9@it would return aA	�A� a���%V�Qm even i� e�Qi�!�ea�t񹡑� eq����$we had two&�	I s�reallEN�o=onB�z	�a!Raxeir ownI�	N�� r�und��2���schema	EA has+	h�ala� e!it!n't	ed yet�-I� sA4us unfulfilled	_ s���6_ E�  �
>6  .��Mqed �� m��"��� o display�A"Not A�" or "Pi0",Q cE�ELcoalaR��"
>T A��ual,�6�A�::	nyAgthese%# iA$�^A0���
J2^�by)8-��also%��7��a&�be�0} tnB� ny selec!o�7�ATnot pari@R;or
 di�=* 	h
LcaE"bare"k. M!8data�� a�reat )(ENn error"E� c,e ambigu�in�e;�r�y
-A, "2 "�Ap�
	7a%sing�rbitrary�Dr� e associa%J8BisaK v��us�to us.�� does��ow.�  s�$it's gener�8recommen��!�to1�� m!  y�a�E�6�(previous: A"FuAIho(next: UNIONEUSet Oors��_by1� /group_by�t �( t�( t�( t�( join�(�More SQL Please :  JOIN users | id | referrer_i,name_first |	la	0email_address	 |
|----2 . . > $|
| 1  | 2[| Marcu	n$| Crawford' m@mc.ca2  �E| NULL| Elen#| !no	 e4@hellocorp.comJ 3m6J Simon Che s8@sqlanalytics.ie!( 4/ 5	8| Priy�Amini p@a$consulting�!( 5J6� ZarI |2J zarVI , |
 donationUAIcharity	dategamount�!�
B#�%� 1YEP| 2024-04-12 09:10:01"= 2� 3
]>=$9 12:40:15`=%�1� |=,5-01 19:51:4= 4=%�p^= 3 14:�� 7	k�%�99	oR�  6z01:11:44# 0{|
-�ie5�a�	!�%`2 z%n4Homes for Pets2�(| Ocean LifL2%&8Learning Ladder�  A �V8 clause can be #8d to statements$combine reA�s from mA�`ple tables based on a relI�hhip between them. This exam:uses twoC:   rs  and  ]�. NoticeF{ has aEq column�indicA�which" madHatI. I�( query you �Ospecifyv!�s of all	f%!<retrieve. Prefix!pthe#with�	G�is not required but it's good pract� o%� b!f,o easily see��come)�	�%. A��INNER�C mea���	� will only� urn rows %Dhave a match in bo� s5�how�!��%`a ��( yet so she�includedT�MXAer& func��0al differenceUN!��E+ a:�  ,)M(just   synt%Q  sugar   j   ONuis w~!�.�^�)f-*5want� mAybe joine	n data typeADtheavE�s needEH%j.  ru�!et Youe�aliaoza%	CMVto make� r.�A9er,read. Eithera):AS / followA�I�x, or)P!�. BAversŋare valiI�choosaonfd be�istent� sE��>�  A�2�0%�ally�ful�long)��or!� n�RI��samq�.. A.<!3i
enc�er�y often�  z	>�}]...IO�Jrepeated�' i��toE m�	tha2� toge!�>g ��	^�� d�YaWHEREU� ta? rK, narrow down)	etA�e�rea�edNp LEFTmb(some	�calle��OUT�\ )E�be!� d)�y oj�!�=of���K!��q("left")-�6� ����e-A0second ("righC. R1g_]��do����anythEt),J.�')1  �	in placeҝ�`	a�isu��qis!#A� w�
!%a9�9su��%re	q��or%>!-%in> r-:���HS�� o�j5 m1�o��a_� wnow�d1��who��v���ADA�RIGHQ7isYilar� i��Ap s�RV�sv�N>. It�rare�:�q�]�tmay!dus9�experi�A
��) i��6�If!3!k5	fin	 l�7peo�)+ve., ,8a�{	V�K!�Qkvalu�	z	ou��e� JN� FDR�2�I�V��Ew�*
AȅjtheyM�or�m!>]E� r��at��M? ,!2 ]\, Au*�je�q6<currently associ�v%� aT�e  cQis�W mIP eH d�1E
n "orpha�record",6	A!�cn
  was deleA a�me point�out also	#Dir�ds. is gener���*de
 a*
inKo$ design. Ei��
�	to prev�f ta�Albe foune$  CASCADE F<�I2.!itself�E�E^ ,	�kn�`!C "SELF"��%~ y%�.e ag4
	I� r.>%� oE`(�� s���B� ,i r%!�Q6��tform��X!�s Ab<get a free crediQ�techniqu q� s�eto		h�	���
 tn!�2�	�,CROSS)F�Y	JD  Cartesian produc�
�1R�!bisE�s each'i�! �	� AAb6TF1 ��	2B,�A��possiblL	���A< gE�te vRlarge�.%�dependZ o�psiz�L�inpu�| s?caua��advil�AdeciDto!�E�=Z� b�to�test	�si_ ia� l2�F.*  e��scenari��wo s�ofQ>Ya�8ious: Data Type h�2   next: F�8s joinJOIN/join�t � t� t� t� limit��More SQL Please :  LIMIT users | id | name_first | name_lasage | 	0email_address	$last_login	|
|----. 		V V |
| 1u7Marcu�$| Crawford25 m@mc.ca	�T | 2024-01-01 09:10:01� 2Elen+| !;no9| 40 e4@hellocorp.com  	X,2-12 19:29:1	X 3!Simo)| Che	�w s8@sqlanalytics.iy | NULLb. ! 4Priy�Amini'| 3%' p@a$consulting�103-24 16:40:00X%AZarW |6X %zarVW j�  6Jame%�Mitc!L	Xjm@eAl.net�"^ 7 j.X weber8| 4w w Uorg |bX  8X _CharlottaDavi	� |� c@zapzoop1�5`E09:49)`   The q�t clause limits the maximum num�Lof rows returned by !��}SELECT  statement. Other databases can have different syntaxes such as   SELECT TOP ,   FETCH FIRST  and   WHERE ROWNUM . Somef$also allow��]�E�INSERNDELETE�s which.<effect of those �s to%&$specified 10amoun4!0.  ruef8reset Without aORDER BY� ,3  %,4no default sora04 order in most�(. This mean!�at usingJ w}  .z 0an produce ina�istent�}\ets. It is best practice!always- y2X Din your queries, e%+ally w�yyou arMs�Aureu. 69OFFSET  �be appl!vto.� to off!hMY�-)helps�scenario!�ere�needGI� r�	34maller paginata a�=stead ofA��a at once>� If	\u�,reaches past>total]NNto� ,$!]$y will jus!�a�R? as if.1was not1OJ� I�-}�� -Vno�>n You%�computeǍ~A-supply!�x6�M�Trithmetic,   Functions�PSub!.�9and o��	k a	'as loa9aG e-�A�a valid�0eric type. SeE3��$'s documen	R for, shatiblee�5�>��ti��but)�ec, adda%F� to!ii y%@<improve performaE TE�aq aȭ�factor�$at influenaہQincluu: how�lex u�y is,,many tables b)id, wW  Inde��pres�` oM�7, !�whe%�N�< actu�1 mae.z orA�thel ye���sca	Xentire	�R$ways. Fewey��3 m�8e sizea�WenI�ed over!8,etwork conneE\AlessI  P9s�EXPLAIN Emor�d%�Ar(. previous:��H home   next: Opera%��(LIMIT/limit�	t � t� t� t� where��More SQL Please :  WHERE users | id | name_first | name_lasage | 	0email_address	 |
|----. 		V 4|
| 1  | Marcu	X$| Crawford25 m@mc.ca� 2#Elen| �no#| 40 e4@hellocorp.com  � 3#SimonChe 2a s8@sqlanalytics.ic! 45PriyaBAmini| 3� p@a$consulting�|
| �ZarA |6B �zarVA  |
   A 1��> clause can be added to statements to filter the outcome of the(` based on a condition. In' cAVof �HSELECT , this means$re� set iss	�,only include'3at match> ct�an also�ppli	OL  UPDATE  and   DELE6� limit[rowo@ey affect. Note t��<lumn does not ne	fbe�d as.� ed c	5 t� u!9 i!9�%�.  ruE^re!i�-� s%�!��operators besides   =  : >  Greater�n. < La�th>=.$ 8 or equal to. < 1: >   !&Not E: .�Tage BETWEEN 30 AND 40;q M%� wa<Dbetween two values?6KLIKE "%�_a "H]{0pattern.   % AH typically%�8wildcard characA�%~to IK 0� m�A�ny)�4id IN (1,2,3);��ny	�)�listM	�_(a subquery.=)IS NULLRor  OT Check for . See   O5��exampl!K�Bhave m�dxple predicates separated by log!G]lsuchA�  %�  iKOR .  Th��0E��am�bef!e!,�Jabove0�wnegaeiem���  previous:�r  h��<  next: ORDER BYA�0reWHERE/where�	t � t�	 t�	 t�
 functions��>More SQL Please :  Functions users | id | name_first | name_las	0email_address	 |
|----. . > 0|
| 1  | NULLP  Crawford marcus@mc.ca(
| 2#Elen| �no#| e4@hellocorp.com  � 3<6x henLsimon@sqlanalytics.iW� 4#PriyxAmini=| p@a$consulting~� 5<Zar; |2< zarV; $ |
 transa-�-�!� _%�date]amountz!}
. �%� 1LP| 2024-04-12 09:10:01!0%� 3z049 12:40:15 | 10%� 5:0 ,5-01 19:51:40-41`%v 2F0 3 14:�� 7	Q0 5�99	1� 6`401:11:44 | -10a4|
   Most relaaal!Kaba1�engines support the ability to create and call fuq],as part of ae�$statement.	nDalso have commonly!�d ut	^K<lready built-in.}�Pthat accept zero or ma�,input values�Lproduce a single out#, per row are�(ed "simple"S"scalar"�. There14other types of$	� work with	�than one	ot a time�theyQtgenerally grouped into  AggregA��: Window .!� e[()  is��� in!�ite�!�turn� e currentDaI ./and most�da:-Hwill publish   docu!�E]A�on5��(s availableAYuse.  ru0reset� c!Bper!	on%Ire�n)� bESbined �nests longA�A��9�E3	CI s%�A� compatiblz� {alA>in alm!%anyf6� It!�imakant!	�Hider  ���Q� i2A$nd understhow�IRTinterpreted. For examp!l h�4lengthA*qw[SQE rM� , not  0 >�coalescYq6�Z ta�ndlyɇm�byl i!�$ "default"	  if�-you��ly e?atesZ�>� Some�)�capEn���A	vvari a�@rgE�i� si�-�	0dic^. A�5g�Xstrcformatn1s lik!printf!�(o!�	,() )�p(y often tak!4 a "template" _� describesE!, wEPheM�.o begted,!b nE�number2� 	\�ly)mDo fa�itA4��|. In this case,   "%s"  means we	� a�ype�appearE� spot, and@.2fJB floa!J-point�roa dA<two deicmal placI%Jj !�fun face��� i��ch a1�problem_solve	, ma�programm!�languag!���  =�or sA�similar%�!jitR�da:a!���lcustom�$	 u��%�L  CREATE FUNCTION ) �� O��s, E�u�quireE8 t!@fin�:d out�� oi��and loadm sepa��ly whichE A0�Fcover �IA�isu0giv� ideab w��  �	-d�d/:�  would�� ia�y look	�Tin PostgreSQL, a diffe��.�, so ignD$the syntax0ce�is5l c	vhen be��vyw� aF�ž)by�H!�  Eat_t&�
(...) .B��2*  
�Y�fi�TEXT, l���@NUMERIC
)
RETURNS',
AS $$
BEGING	{("%s %se�drew a�."	q�: �	�`t);
END;
$$; previous: JOIN   ha.  next:R	�J"	$/functions�t �  t�  t�  t� 	 order_by� �<More SQL Please :  ORDER BY users | id | name_first | name_laage | 	0email_address	-_login	|
|----. 		V V |
| 1u7Marcu�$| Crawford25 m@mc.ca	�T | 2024-01-01 09:10:01� 2Elen+| !>no9| 40 e4@hellocorp.com  	X,2-12 19:29:1	X 3!Simo)| Che	�w s8@sqlanalytics.iy | NULLb. ! 4Priy�Amini'| 3%' p@a$consulting�103-24 16:40:00X%AZarW |6X %zarVW j�  6Jame%�Mitc!L	Xjm@eAl.net�"^ 7 j.X weber8| 4w w Uorg |bX  8X _CharlottaDavi	� |� c@zapzoop1�5`E09:49)`   The }�� clause allows you to sort the re!��>s of a query based on a particular column. Rows have no defined	ODorder in most dataJs by( ault. If E�'�8is specified, r�ar�turned�Lspeed and efficiency,should not b9li	�to rF	Vin�same�ev�time. T-�,in ascending,!J=]... ASC �1Win de�8 DESC .%�method!)which a )n%0orted depends!�!�!^ type!�	1. B5m� m.� enginEb�will)�$  INTEGER T`s numerically from lowest�highest,AjEXT2alphabet	5 ,%  DATE)simiAG�s chrono��dolddnen. Referu�]��A\�E�!�!�$ee how oth;ypesEI)G. It!U bipractice7L always  be explicit� include a�SY�inu re2@ies. For brevity,� rcofexample-�is�Csite)�A�g]\L unless it's relevan%�!R.  ru�oet�can�appeto m��pleM+ sQl" sV!%A�e$at i� w�PU�has du!"ate valu�^� is�after-���Ds like   WHERE  bu��re-�me) t��	� dNit sua1 s  LIMIT >��	�A�aP ifferentla1a\� o�>`used.�!�treat�e	[,as "smaller"�n non- 	y, meanathey)�8appear first ifAO.��Z. S!:� s,M2TSQ�, supp��  e�� S LAST  o���p	FIR1��u l!�A]de��)�bof �E�_�7>nLCapitalized letters,��cial��ac	 whitespacaZ d�p b/
 inside stw s�g2�!�	���R�. Be sure�find oI`F� �N4comparison rul!bHor "collation", for) a��%�A�us���1;8	6ex��)�a��,ed   BINARY !chE's /��).d	�.	�their binary (ASCII/Unicode) representa�. Seah%  tZ O�  ņis�why "� "M�s ae� bottomAA$Ie)�ed� y>�COLL�operator�� ugto Yy96%�)<he cura�$ statementu��8��re��)�` sequences: RTRIM : Ignor+railA8Y�. NOCASE&casAC)�: CE eB���-	��e� itself1!� iA8with extensions�� language-*	 c91s. O��U����cMy�  !�$   Postgre� m�built-in2Z 6�!
 uIX s���!����)aisѯ�	ws"i
���d!�e table2R0 total lengthA{ aA6r's�8a�T .(() A� an unrela�� funca  	vA��� d�demonstr��AqZ_If we w� sh.D�!�- �sth	��	 i;	5!�ccept�alias c�d ed earlieU[} ApplyA�o s�.Bei!�lever w�+	�-A0) w.?possi!�E�|)I�>� p�ous:�� h��  next:�%_by� /order_by�
t � t� t� t� select��More SQL Please :  SELECT users | id | name_first | name_laemail |
|----. . > 8|
| 1  | MarcusV$| Crawford m@mc.ca&x 2#Elen| �no#| e4@hellocorp.com< 3<SimonChe s<@chenanalytics.i	X
| 4/Priya<Amini| p@a$consulting~< 5<Zar; |2< zarV;  |
   A 5�x statement is a read-only query!��<d to retrieve data from a table. It's typically the most commKused	P.  ru%�reset You can specify individual columns } , or   * 2� al->_ Most� bA�engines1ow youGXperform computations on��+1(. Sometimes4bining*�be�ful. IH~<of SQLite,   || !p%Pto concatenate. Other�ma%�$   + , and)\�include A	F ()   func�4  which serves�Psame purpose. Here we<� firstke�aΐ with a space in between. Single quot![ r�E3beginG(end strings<SQL>�Th�!�	o4returned above!+$difficult Ead.5keywe� AS =�alia!�X s� ny customi>� If%�wanh	A a-�B( value that1 s)(s, surround%k n!k%:doub-&Ec�� kB��LDISTINCT6�  w�XA��)$  ibnique	�0s. Notice how!p$the exampl� e=� "�q" appearA�cei(re previous:!�Ek$d both peoP�aEWlast�>XSome^�A�SE�F clausInout�c!�al}�U� rbitrary 2�in!) r�dultsA*is]ful a��test���Z%busing�8UNION  operator%U!@at iI&8don't supply anM.for�edM9s,%#�O%  will�4defaM�5M vEg ai�row>T h!T�  next: WHERE selectSELECT/select�t �- t�- t�- t�- union_and_set_operators�-�<More SQL Please :  UNION and Set Operators products | id |   name4   |  category�price | remaining_stock | vendor_id |
|----|-R 2 . |
| 1�DCool Splash Cologn�`| Toiletries | 49.99 | 25�| 2U 2U): p�-<ChipsFood1| 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:� �`� 5@Super Glide Floss#:T 1U19!	 |�� 6U,Big Bark Dog.� $ | Pet Car!| 3%L.�	. U 7:0Soft Purr Cat.V �U  8UHTiny Fresh Scent Tr)�(| AutomotivA�I9 |�2 6�  orderA�a  mje  quantityaW  date_. eIce�arrivJP}Z qF 4�| 4%�e�H2024-06-01 07:58:05!�3 09:04 
%�.�*H2K (14 19:30:10!	a26 14:2	
|i2]�| 5>K 7-�1:00:07K07-09 12:50:12E)e( 2�	}� |�7-24 06: 3(30 15:05:00Key1NK  8-15 16:42� 8-19!BKe6 | 1>�  9%w8:�1 | NULL0|
 archAI;s_202��n�nVne���!��!�3-12%B 0A#!w20A#!�)�e�2���501-28 08:45:222-02 11En 5%� 9!�j3-08-2505:5	� 9A#30�aOA� 8�E�10�5 7a09��K7-18 10� 3	� 1!�2#u56-A�4:55:2m�3-a 5M����7 >n3-05-12A���,5-16 13:25:4!,   Th��J opC� allows you to combine two sets of result r',into one. A �$ is differ�tPthan a   JOIN . ThinkG  as a way.q hcolumns "horizontally" from.] ,ables, whereG.� Ustack	�"vertic	Non top�8one another. In�� for�-$Hto succeed, the que�bef�	�	Hafter it must have * s}	numbern�. Most�0abases requir3at8 data type%yJ)}$s match up!=well.!
0ite's dynamic8(ing feature:�mix.^ withinb�	�. S�1 D� T�% m�(information!� e4i
 s)��first%+y used k	��setE0is example shA`!�use c�
!�1�$. SometimeI�(will encoun!� separate I"A�>�struc!%� t| scenario,I �0previous year�mo��e M9	l!�A�� copy�techniqu� n improve%�!� per%Rnce%� larg	 e{by limi%0!Zam�AP r!+A0LneedsA�check%:Q�againsA` i	�'s�.  run�\resetM� A�� ia�modifier)N p%$rves dupliN sZ�m@ignor.0 	�<by default. Both)Hs ca�in some�)�E�  .�	e�  &�	, so+Iwtreated!��by]QAs%� side, not6howD�I Q�had!&ul�
ed	N*
�EY6s no meadful	�M I�usv a9�eng��E�typ�� return)C in whatev�`���decid!�s m�heffici����Ppute unless we supply!H  ORDER BY  clause.RP can be chained multia�i�4to keep appenda�I�%�-=�(9M�-16also-!���z   SELECT A*stan%����az�C���Dthem!*�yI�hMbe a&!�y�@to include ad-hoc%�i 0doesn't exist	X�m>, A9%diedY�v�  cE��� "utility"	o sA��Here!�con�� a	$  ��vPshelf_life  which mapa�M�&to aݳdayńA  A. Note�O)we only�}@lia�{�Aa��input(�� becAr tho��%��Tebe!� d��all=EX2T� t�I�WELdem%#at!?(   Common TO Ex��sion �9N	�%-C%��la�wAg�A� y>s	����zI��`��f���ny �]� statement�� i!�e��Y�� aggreg��i�s lik�	GROUPa�M�qa�ya\ wA, nA0cu��,total purcha�"�of items���>� INTERSe��A n*f
vail%n��da	%�is	�to��E[!%�%Psha�| b�<IU�0�&k
-ias be��e�sive��growc e��G ,a' l
  :� exclBshrinkFA ^ermE�!�<Venn Diagram   ,FY quival���area�
�8circles overlap	g.� wD	%�2� help!^  find out�chɋ�made!� | ident�x!��a>(  3>�For receF� func;
�  6� !$-M�    DISTIN�� l�o e	 nA���>� ap  EXCEPT*��; sIJS!e���E]do��#second$]^itA?&mubtraca	��1Jh �
]���  %� o�  MINUSV�� -��%�	�id��9�-plac�h>9�
 :�4  h�	h  next: CASE union_and_set_� sil�x2� /Z/               �      �      $E      0�      <[      C�      H�      Q�      \;      a��                ������������������ ����������� ������� ��� ��������
����A���������������������D���  �   �
  �   �	  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �   �   �#)/4V=GLwusoljgfdca       �       �������������������������;��� ��'�' ��  �� ��+�+ ��
�
 ��� ����:0                 �	��� ����:0              ��������� ��� ��� ��� ��� ��� 6�� W�� 7�� X�� @��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ����:0               
 ����	��	����#4�� C�� U�� V�� `�� Gs�
�
 ��� ��� ��� ��� ��� ��� ��� ��� �� $�� %�� Gj�	�	 ��� ��� ��� ��� ��� ��� ��� ��� 7�� H�� \�� ]�� �� �� �� /�� >�� P�� Q�� �� �� �� 'a�� ��	�	 ��� ��� ��� ����":0                    
 	���'�� S��  �� T�� ��� ����:0             
 ���������wL�� y�
�
 ��� ��� 2�� p�	�	 ��� ��� R�� 2�� G�� 3�� g�� �	�	 ��
�
 ����":0                    
 �������T0�� 9�� ^�� {�
�
 �� r�	�	 3�� =�� +�� 4�� i�� ����:0                  
 ��������B�� K�� 6v�
�
 |�
�
 ��� ��� ��� ��� ��� O�� 6m�	�	 s�	�	 ��� ��� ��� ��� ��� G�� Q�� =�� F�� >d�� j�� ��
�
 ��� ��� ��� ��� ��� ����:0                  
 ��������T�� ]�� .r�
�
 x�
�
 ��
�
 ��� ��� ��� @�� ,i�	�	 o�	�	 y�
�
 �
�
 ��� ��� [�� O�� 4`�� f�� o�	�	 u�	�	 ��
�
 ��
�
 ��� ����:0                  
 �����Ot�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� N�� Ok�	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ^b�� ~�	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0              
 		�	��s ��� ��� ��� ���  ��� ��� ��� ��� 0��
�
 ��� ��� ��� ��� ��� ����:0             
 ��������	��2�� N�� _�� 7z�
�
 ��� ��� ��� ��� ��� ��� �� &�� P�� 7q�	�	 ��� ��� ��� ��� ��� ��� 5�� T�� �� U�� -�� I�� �� V�� h�� ��	�	 ��� ��� ����":0                    
 !	�������������� -�� .�� [�� 1�� �� #�� $�� V�� n�
�
 ~�
�
 +�� �� ,�� :�� H�� ��+�+ A�� �� $�� %�� N�� d�	�	 u�
�
 ��� ��� *�� /�� 0�� 1�� Y�� d�� �� �� 
�� (�� )�� �� 
�� 2�� �� &�� '�� \�� l�� ��� ����&:0       
              	 
 �	��
�
 ����:0             	���3�� 4�� 6�� ����:0             
 �	��	�������3�� >��  ��
�
 ��� ��� ��� �� R�� }�
�
 ��
�
 ��� ��� 6�� B�� �� .�� 9�� �� >s�	�	 y�	�	 ��� ��� ��� ��� ��� ��� ����":0                    
 ����!Y�� `�� T�� ��� ����:0               
 �����	�^O�� W�� U�� ^�� #�� J�� R�� $��  ��� ��� ��� ��� ����:0                 
 ����������1�� ;�� ��� ��� �� (�� ��� ��� 4�� ?��  �� T�� ,�� 6�� !�� U�� 8��	�	 ��
�
 ��� ��� ��� ��� ��� ����":0                    
 �)�� ����:0             �>�� ����:0             	������ ��� ��� ����:0             
 ������`M�� ��
�
 ��� z�
�
 ��
�
 S�� H�� &p�	�	 w�	�	 ��� ��� ��� ����:0                 
 ��������=�� ��� ��� ��� ��� ��� A�� 8�� @��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ڀ�:0                  
 �����;��� ��� 4�� 5�� ��
�
 ��� ��� ����:0               
 �	��� ����:0            
 ����������:�� D�� 4�� ��
�
 ��� 4�� {�
�
 ��� >�� I�� !�� 5�� ?�� "�� 7�� q�	�	 ��� ��҃":0                    
 !�������������� 6�� I�� G�� �� >�� ?�� H�� I�� P�� [�� }�
�
 ��� �� G�� �� ?�� @�� I�� J�� S�� t�
�
 v�
�
 ��� *�� �� 9�� ;�� N�� h�� �� �� �� 1�� D�� �� �� H�� �� A�� B�� K�� L�� S�� k�� ��
�
 ��� ����&:0       
              	 
 �������o5�� �
�
 ��� u�� w�
�
 ��
�
 8�� 0�� .m�	�	 x�	�	 ��� ��� ��� ��� ��Ĉ:0                  
 �qp��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�) ��,�, ډ߉:0            
 �����	��	���*/�� 8�� A�� J�� S�� \�� nq�
�
 w�
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� #�� #�� 1�� ?�� M�� lh�	�	 n�	�	 x�
�
 ~�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� #2�� <�� F�� P�� Z�� �� �� 1�� R�� #*�� 3�� <�� E�� N�� �� �� 2�� S�� c_�� e�� n�	�	 t�	�	 }�	�	 ��	�	 ��
�
 ��
�
 ��
�
 ��� ��� ��(�( ��,�, ���":0                    
 ����)'�� �� (�� ��� ��� ŏӏ:0              
 �B�� ����:0             ������3��� A�� ��� 3�� 4�� ��
�
 Őِ:0                
 �����	�H�� �� �� �� �� �� ��� ��� ��� ��ő:0                
 	������ ��
�
 v�	�	 ����:0             
 �	��� ����:0            
 	����63�� C�� D�� I�� "�� #�� ��� ����:0              
 ���� ��� ����:0             !����������	���� 7�� ?�� %�� -�� _�� ��� ��� *�� 4�� .�� W�� f�	�	 ��
�
 ��
�
 ��� *�� :�� C�� E�� O�� k�� $�� �� �� 2�� :�� %�� ��  �� 0�� z�	�	 ��
�
 ��ؔ&:0       
              	 
 	����� �� �� ����:0             
 	��	������=�� G�� ��
�
 ��� 5�� >�� H�� |�
�
 ��� :�� A�� O�� &�� ��� ;�� B�� P�� E@�� J�� r�	�	 ��
�
 ��� ��� ��� ��� ��� ٗ:0                 
 	���.��  �� /�� șә:0              �;�� ����:0             !�������������� H�� 3%�� 5�� R�� b�� o�
�
 ��� ��� 8�� ��� D&�� 6�� Z�� e�	�	 ��
�
 ��� ��� ��� ��� �� M�� +�� �� �� C�� ,�� �� ,(�� 8�� U�� ]�� ��
�
 ��� ��՚&:0       
              	 
 �.�� ����:0             �<�� ����:0             ��� ؝ݝ:0             �J�� ����:0             ���������	��<�� G�� b�� p�
�
 ��� ��� �� g�	�	 ��
�
 ��� @�� L�� �� 5�� �� ��� 7�� B�� �� 6�� ^�� ��
�
 ��� ��� ��Ȟ$:0       	              
 	���X�� _�� S�� ����:0               ����)F�� K�� A�� ��� ��� ���:0               
 ��H�� I�� ʡҡ:0             	���5�� V�� W�� ����:0              	����� �� �� ��̢:0             
 !���	�	���������� @�� Q�� %,�� .�� e�� ��� ��� F�� -�� /�� ��� ��� �� #�� D�� W�� 7�� #�� �� ;�� L�� 8�� �� %/�� 1�� {�	�	 ��
�
 ��� ����&:0       
              	 
 ����A��� ��� '�� Q�� ��� ��� |�	�	 ��	�	 ����:0              
 	���E�� J�� @�� ����:0               �6�� ��:0             �	��� ����:0            
 �7�� ����:0             �L�� ݧ�:0             	���u�
�
 l�	�	 c�� ����:0             
 �a�� Ǩ̨:0              ������	�x$�� Z�� 6�� ��� ��� ��� 7�� ��� ��� >�� ?�� 9�� ��� ��� ��� ���:0                  
 	���"�� #�� %�� ����:0             
 	���H�� ��� ��� �� ��� ��� �� ��
�
 ��
�
 ��:0             
 �-�� ٫ޫ:0             	����	�f@�� Q�� ��� ��� A�� ��� ��� E�� F�� C�� T�� ��� ��� ����:0               
 �0�� ����:0             	���P�� V�� K�� íέ:0               ���� �� ����:0             ������JJ�� ��� ��� ��� L�� M�� M�� ��� ��� ��ή:0                
 	���+�� ,�� .�� ��ȯ:0             
 ��� ����:0             �	��� ����:0            
 	���R�� X�� M�� а۰:0               ��M�� N�� ����:0             ����� [�� Ǳϱ:0              �	��� ����:0             �	��� ����:0             �����S'n�� ��	�	 ��� ��� ��� ��� ��� s�� ��� ��� ϲ�:0                 �	��� ֳ۳:0              �	<B ����:0             	������ ��(�( ��� ����:0               �����3��� s��	 ��� .�� ��� ��� ���:0               
 ���� ��� ѵֵ:0             �	��&�& ����:0             �`�� ����:0             	���"	?B 	?B ��� ��� 
BE Ӷ޶:0              �	��� ����:0             ������< |�� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" (��� ��� ��� ��&�& ��*�* ��	�	 ��� ��$�$ ȷٷ:0                
 	����L ��� ��� ��� ��#�# ��� ��	�	 ��	�	 ��� ��!�! ����:0             	 
 �	��� ����:0             ��������m��� ��� ��� ��� ��)�) ��'�' x�� ]�� L�� ��� ��� ��� ��� ��Ժ :0                 	 
 �	��� ��:0             �	��� ����:0              ���� ��#�# ����:0             ����� ��� ����:0             �n�� ����:0             ��������m��� ��� ��"�" ��� ��%�% ��� ��!�! w�� ��� S�� h�� ��� ��"�" ̽� :0                  
 ���� ��� ����:0             	���#��� ��� ��� ��� ����:0              �	��'�' ����:0             �������y�� !�� ���  �� &�� -�� 9�� �� %�� ��  �� .�� :�� ��  �� ��� ����:0                  	 �������i�� #�� "�� (�� 0�� <�� "�� (�� �� "�� 1�� =�� �� "�� ����:0                  	 ����	�	���,�� ��*�* (��� ��� ��� ��#�# ��%�% .�� ��� ��%�%  ��	�	 ��� ��� ��� '�� ��� ��� ��� ��� ����:0                  
 ����4��� ��� ��#�# ��� ��� ��� ����:0               
 �	��� ����:0             �	��� ����:0             �	��� ����:0             ����4�� �  ��� ��� ��� ��� ��� ����:0              	 �	��� ����:0            
 �����|��� ��� ��� ��� ��$�$ ��� ��� U�� ��� 0��� ��� ��� ��� ��� ��� ����:0                ����(�( ��� ����:0            	 �	��� ����:0            
 �	��� ����:0            
 �	��(�( ����:0            
 ����� ��� ��� ����:0              ����� ��� ����:0             ���� ��� ����:0             	�! ��"�" ��"�" ��#�# ��#�# ����:0             �)(��
�
 ��� ��� ��� ��� ����:0             �	��	�	 ����:0             ���� ��� ��� ����:0             ��� ����:0             ����� ��� ����:0            
 �	��� ����:0              ����(�( ��� ��� ����:0             ��O�� R�� ����:0            
 	������ ��� ��%�% ����:0             
 ����� ��� ��� ����:0              	������ ��!�! ��� ����:0               �	��%�% ����:0             �	��&�& ����:0             �	�� �  ����:0             	�! ��'�' ��'�' ��(�( ��)�) ����:0             	���8�� 9�� ;�� ����:0             
 ������k��� ��� ��� ��� |�	�	 8�� ��	�	 ��
�
 'f�� ��� ��� ��� ��� ����:0                 �	��� ����:0             �	��� ����:0             �	��� ����:0              	������ ��� ��� ����:0             	 �	��� ����:0              �	��� ����:0             �~�� ����:0             	������ ��� ��� ����:0              �	��� ����:0             ����!7�� ��� 8�� :�� ����:0              
 �	��� ����:0             �	�rP��� ��"�" ��"�" ��"�" ��$�$ ��%�% ��&�& ��'�' ��'�' ��)�)  ��� ��� ��� ��� ����:0             	�! ��� ��%�% ��&�& ��'�' ����:0             	�! ��)�) ��)�) ��*�* ��*�* ����:0             ����� ��� ��� ����:0             ���� ��� ��� ����:0             �	��� ����:0             ���� ��"�# ����:0             �	����T���  ��	�	 ��!�! ��*�* ��-�- ��� o�� ��� ��� ��� ����:0                 �A@��� ��� ��� ��� ��� ��� ��#�# ��%�% ����:0             	��* ��� ��� ��� ��� ��$�$ ����:0             
 �������n��� ��	�	 ��'�' ��� ��� '_�� ��� ��� ��� ��� ��� �� �  ��+�+ ����:0                 
 !��������������� P��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" H��� ��� ��� ��� ��� ��� ��%�% ��(�( ��.�. H��� ��� ��� ��� ��� ��� ��� ��� ��$�$ _q�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��%�% ��&�& 'h�� ��� ��� ��� ��� %,�� R�� {�� ��� ��� ��� ��� ��� (��� ��� ��� ��� ��� &<�� Y�� ��	�	 ��
�
 ��� 8��� ��� ��� ��� ��� ��$�$ ��$�$ ����&:0       
              	 
 �	��� ����:0             �	��� ����:0             	���5<�� F�� =�� G�� ��!�! ?�� I�� ����:0             
 �	��$�$ ����:0             �	�� �  ����:0             �!������������ } ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��&�& ��� ��� ��� >�� ��� ��� ^�� ��� ��-�- ����":0                   	 
 	���C�� D�� F�� ����:0             
 ��� ����:0              	���RDL ��� ��#�# -	HP ��� ��� ��� �� �  ��)�) W_ �� �  ����:0             
 ����� ��&�& ����:0              �	��&�& ����:0             �	��� ����:0            
 �	��� ����:0             	��	�C��� ��� ��	�	 ��
�
  ��� ��� ��� ��� ����:0              �a�� ����:0             �,�� ����:0             	���%�� P�� Q�� ����:0               	������  ��� ��� ����:0             
 �������8�� �� &�� �� �� '�� �� ����:0                  	 ��� ����:0            	 	����� �� �� ����:0             
 �	��� ����:0             �	��� ����:0             �	��(�( ����:0            
 �	��$�$ ����:0             ���	��	�������� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��$�$ ��'�' p�� ��� ��� ��� .Z�� {�� ��
�
 ��
� ��� ��� +�� v�� z�� ��� &\�� z�� ��� ��� ��� ��� ��� ��$�$ ��*�* ����":0                   	 
 �	��� ����:0             ��Z�� R�� ����:0             	����� �  ��$�$ ��� ����:0              �	��*�+ ����:0             	���  �� ��� !�� #�� ����:0             
 ��B��� 8��� ��� ��� ��� ��� ��� ��� ����:0              	����� �� �� ����:0             
 	���������� ��	�	 ��� ��� ��� ��� ��(�( 7f�� ��
�
 ��� ��� ��� ��'�' ��)�) 8��� ��� ��&�& ��'�' ��'�' ��(�( ��)�) @��
�
 ��� ��� ��� ��� ��� ��� ��� d�� o�� 'j�� ��
�
 ��� ��� ��� D?�� F�� S�� X�� ��� ��	�	 ��	�	 ��� ��� 8��� ��� ��� ��� ��� ��!�! ��!�" ����":0                   	 
 �������e��� �� �  ��� 'w�	�	 ��� ��� ��$�$ ��%�% ��� W�� ��� ��� ����:0                 	 
 �	��� ����:0             	���3��� ��� ��'�' ��� ��� ��"�" ����:0             
 ����*��� ��� j�� ��� 6�� ����:0               	 ����.�. ��� ��� ����:0             �	��� ����:0             ����� ��� ����:0             �	��� ŀʀ:0             �	��� ��:0             �	��� ����:0             �	��� ��Ł:0             �����\��� ��� ��� ��� ��� ��� P�� ��� ��� ��� ��� ���:0              	 
 �n�� ����:0            	 �d�� w�� ����:0            	 �h�� ЃՃ:0              �� ��� ��� ;�� P�� ����:0             �	��� ��:0             ����$��� ��*�* �� �  ��� ��:0                �	��� ����:0             �	��� ��:0            
 �	��� ����:0             ��� �  ��"�# ����:0            
 ����� ��� ��:0            
 �	��� ����:0              	����� �� �� ŇЇ:0             
 �	��� ����:0            
 �	��� ����:0             �	�Z8��	�	 ��
�
 ��
�
 ��� ��� ��� ���  ��� ��� ��� �� �  و�:0              �	��� ؉݉:0             �������8�� �� �� �� �� �� �� ����:0                  	 ��	���T��� ��"�" ��)�) ��'�' ]�� ��� ��� ��� ��� ���  ����:0               
 �lv ����:0             �o�� ����:0             �	��#�# ͌Ҍ:0             ���� ��� ����:0             ���#�# ��&�& ����:0             	���&�� '�� )�� ؍�:0             
 ����$��� ��� ��
�
 ��� ����:0                	���3��� ��� ��� ��� ��� ��	�	 ���:0             	 ����� ��� ��!�! ʏҏ:0            
 ��5�����������	�	 ��
�
 ��� (��� ��� ��� ��#�# ��#�# � ^�� w�� ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��$�$ ��$�$ ��$�$ ��'�' ��'�' ��)�) ��+�+ ��,�, ��,�, ��-�- ��-�- ��� ��� 8��� ��!�! ��"�" ��%�% ��&�& ��'�' ��'�' 0��� ��� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��� .�� (��� ��� ��� ��� ��� ����$:0       	             	 
 �~� ����:0             �����	��������� ��� ��� ��� _U�� ��� ��� ��� ��� ��� ��� ��� ��&�& ��+�+ ��,�, ��-�- ��'�' �� �  g�� v�� ��
�
 ��� 'W�� ��
�
 ��� ��� ��� ?s�� ��� ��� ��� ��� ��� ��� ��� J�� ��� 0��� ��� ��� ��� ��%�% ��+�+ ���$:0       	             	 
 �	��� ����:0            
 �	��� ����:0             ������r+�� 7~�� ��� ��� ��� �� �  ��!�! ��"�" ��� ��"�" -�� &�� ��
�
 ��� ߘ�:0                  	��� m�	�	 c�� [�� ��� ����:0             
 	��� l�	�	 b�� Z�� ��� Ԛߚ:0             
 ���� �  ��	�
 ����:0             ��N�� O�� ՛ݛ:0             �	��,�, ����:0             ����&�& ��� ����:0            
 �)(��� ��� ��� ��� ��� ��:0             �����L��
�
 ��� 'u�� ��� ��� ��� ��� ��� ��� ��ĝ:0              	 
 �	���A��� Z�� s�� ���	 ��� ��� ��� n�� ����:0                �	��� ����:0             ����*��.�. ��� ��� �	�	 Y�� ̟ڟ:0               ����� ��"�" ����:0            
 	���+��� ��%�% ��
�
 ��� ��� ܠ�:0              ���
�
 ��� ����:0             ����� ��
�
 ��:0             �	��� ����:0             ����� �� �  ¢ʢ:0             ���� ��� ����:0             ����� ��� ����:0              �	��'�' ��:0            
 ��������~��� ��� v�� ��
�
 ��
�
 ��� ��� ��� ��#�# j�� ��� ��� ��� ��� ��� ���� :0                   
 �	���	 ˥Х:0            	 	�! ��� ��� ��� ��� ����:0             �	��� ����:0             �	��� ަ�:0             	����� �  ��(�( ��#�# ����:0              ����,��� ��� ��� ��
�
 ��*�* ̧ڧ:0              	 
 ��^�� V�� ����:0             	������ ��� ��� ܨ�:0              	���9�� :�� <�� ����:0             
 ��p(�� g)�� ��
�
 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��:0              �i�� ����:0             ����� ��� ��
�
 ����:0            	 ���	�<��� ��*�* ���  ��� ��� ��� ��*�* ߫��:0               
 ����� ��� ʬҬ:0            
 �	��� ����:0             ����(�( ��� ��� ����:0             �	��� ��:0             �n�� ����:0             �	��	�	 ����:0             	�����.�. ���	 ��� ��:0             
 ����*�* ��� ����:0             �������i�� �� �� �� �� �� �� �� �� �� �� �� �� �� ߯��:0                  	 �	��*�* ����:0            
 	�! ��� ��� ��� ��&�& ����:0             �	JO ���:0            	 ��C�� D�� ����:0             ��J�� K�� ˲Ӳ:0             ������,
S` 
R_ 
KX 
KX ��	�	 	IV N[ ����:0                  	������ ��� ��� ��:0             
 	������ ��� ��� ����:0             	 ��	��	������ ��� X�� ��
�
 ��� ��� 0��� ��� ��� ��� ��� ��� K�� f�� k�� ��� ��� ���:0               	 
 �	��� ����:0             �	��� ܶ�:0             ���� ��� ��� ����:0             	���#��� ��� ��'�' ��)�) ��ɷ:0              
 ����)�) ��'�' ����:0             ����� ��� ¸ʸ:0             ��"��� ��� ��� ��� ����:0             ����� �� �  ��ȹ:0              ����4��� ��� ��#�# ��*�* ��'�' ��	�	 ����:0                �	��� ںߺ:0             �	��	���	����8��� ��� ��� ��� ��$�$ ��%�% ��'�'  ��	�	 ��� ��"�" ��&�& ��� ��%�% ��(�(  ��	�	 ��� �� �  ��"�" ��� ��� ��� ��� ���  ��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��"�" ��$�$ ��(�( ��,�, ����":0                  	 
 �	��*�* ����:0            
 �	��'�' ����:0            
 ����� ��� ��*�+ Ͼ׾:0            
 �	��� ����:0              �	��� ����:0             �	��� ��:0             �	��� ����:0             �	��� ����:0              �	��
�
 ����:0             	���q_X�� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��'�' P�� ��"�" ����:0             
 �	��� ����:0             �	��	�	 ����:0             �	��� ����:0             �	��� ����:0             �	��&�& ����:0             ���)�) ��*�* ��+�+ ����:0             �	��#�# ����:0             ����,�, ��,�- ��� ����:0            
 �p�� ����:0             �	��� ����:0             �	��� ����:0             ��(��� ��� ��%�% 2�� H�� ����:0             �����E��� ��� ��� ��� ��� ��� ��� ��(�( ����:0                
 ������	����� ��� (��� ��� ��� ��� ��$�$ q�� ��� ��� ��� x��  ��� ��!�! ��*�* ��+�+ ����:0                	 
 �	��� ����:0             ���� ��"�" ����:0             ��B8��� ��� ��� ��� ��� ��� ��� ��� ����:0             	���1�� 2�� 4�� ����:0             
 ����� ��� ����:0              	���z*�� !�� *�� :�� D�� Y�� *�� "�� +�� ;�� E�� Q�� #�� $�� -�� =�� G�� ����:0             
 ��"��� ��� ��!�! ��� ����:0             �	�J(��'�' ��(�( ��+�+ ��,�, ��-�-  ��� ��� ��� ��� ����:0             ���� ��� ����:0             	�����.�. ��!�! �� �  ����:0              �	��#�# ����:0             ��L�� O�� ����:0            
 �
EL ����:0             �	��#�# ����:0             ���� ��� ����:0             �	��� ����:0             '������5������& d�� l�� }�� ��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��	�	 ��!�! ��,�, @��� ��� ��� ��� ��� ��$�$ ��&�& ��*�* ��� ��'�( ��� � `�� m�� q�� ��� ��� ��	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� o�� ��)�) ����$:0       	             	 
 �	��(�( ����:0             	�	��3��)�)  ���  ��%�% ��&�& ��'�' ��	�	 ����:0              �	��"�" ����:0             �	��� ����:0             	���0�� 1�� 3�� ����:0             
 	���'\�� a�� T�� Y�� ��� ����:0              ��� ��� ����:0             ��3������� ��� ��� ��!�! ��#�# � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��&�' ��	�	 ��$�$ ��,�- ����:0                
 �	��&�& ����:0            
 �	��� ����:0             �	��� ����:0              �������8�� �� �� �� �� �� �� ����:0                  	 	������ ��� ��(�( ����:0             
 �	��)�) ����:0             �	��� ����:0             �	��� ����:0             ���� ��� ����:0            
 !�����������j��� ��+�+ ��.�. ��*�* e�� ��'�' ��� ��� ��� �� �  ��� ��-�- ����&:0       
              	 
 �	��� ����:0            
 �	�� �  ����:0             �	��� ����:0             ��� �  ��)�) ����:0             ��c�� [�� ����:0             !�	���	��������/1 )�� #% T�� i�� ��)�) )+ ��-�- #') L�� ^�� ��� ���  " *�� b�� ��� !# !# ��
�
 %' $�� $& "$ 	68 W�� ��� ����&:0       
              	 
 �	��� ����:0             ���)�) ��,�, ����:0            
 ����,��� ��� ��� ��� ��� ����:0               
 �G�� ����:0             �	��"�" ����:0             �	��� ����:0              �	��� ����:0             ����� ��� ����:0            
 ��������	������ ��� ��%�% (��� ��� �� �  �� �! ��!�! ��� ��&�& ��)�) ��� ��� ��� K�� j�� (��� ��� ��� ��� ��� l�� ��
�
 ��� ��� ��� ����$:0       	             	 
 �	��&�& ����:0            
 �	��� ����:0             �	��� ����:0             �	��
�
 ����:0             �>�� ����:0            	 �	��� ����:0             ����,��� ��� ��#�# ��� ��� ����:0              
 ���� ��� ��� ����:0             ���	��[r�� ��	�	 ��� ��"�" ��&�& w�� ��� ��� ��� ��!�! ��&�& ����:0                
 ��!��� ��#�$ ��(�( }�	�	 ����:0             ����� ��� ����:0             �����E��	�	 ��� ��� ��(�( ��
�
 ��� ��� ��� ����:0                 �	��� ����:0             	���3��� ��(�) ��� ��� ��+�+ ��� ����:0              �	��� ����:0             �)(��%�% ��'�' ��'�' ��(�( ��)�) ����:0            
 �f�� ����:0              �	��%�% ����:0            
 ��&?�� F�� @�� G�� ��� ����:0             ��B�� C�� ����:0             ���)������%�% ��.�. ��� � o�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��#�# ��&�& ��� ��� ��� ��)�) ����:0                
 ���+�+ ��+�+ ��,�, ����:0             �	��� ����:0             	���#��� ��� ��� ��� ����:0              ����� ��� ����:0             
 �	��� ����:0             	������ ��� ��	�	 ����:0             	 �	��� ����:0             �	��!�! ����:0             ���(�( ��)�) ����:0             �m�� ����:0             	������ ��� ��� ����:0              	���;(��� ��� ��#�# ��&�& ��&�& ��%�% ��� ����:0             
 �	��� ����:0             ����;��� ��� ��� ��� z�� ��� ��� ����:0               	 ��eo hr ����:0             �	��#�# ����:0            
 ���� ��� ��� ����:0             ����� ��� l�� ����:0             ��B��� ��%�% 0��� ��� ��� ��� ��� ��� ����:0             	���K0��� ��� ��� ��"�" ��$�$ ��%�% ��� ��� ��� ����:0              	���#��� ��� ��� ��� ����:0              �	��� ����:0             �	��� ܀�:0             ��j�� ��!�! ����:0            
 �	�	�	���������  ��� �� �  ��!�! ��*�* a�� {�� ��'�' ��.�.  ��� ��� ��� ��#�# ��	�	 ��� ��� ��� ��� ��� ��$�$ ��Ձ :0                   
 �	��)�) ����:0             ��� ΃Ӄ:0             ���������*�* ��� b Y�� [�� z�� ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� \�� ��� �� �  ��� ����:0                
 ����� ��
�
 ǅυ:0             �	��� ����:0             ����� ��� ��� ����:0             ��d�� \�� ��� ��:0             ����$��� ��� ��� ��� ����:0               ����'�' ��(�( ��� ����:0             �	��� ����:0             ��� ވ�:0             	���+��� ��
�
 ��� ��(�( ��)�) ����:0             
 		���2 ��� ��� ��� ��� ��� g�� ۉ�:0             	 �	��	�	 ����:0             �	��(�( ���:0             ����� ��� ��� ����:0             ��	��D��$�$ ��� ��+�+  ��� ��� ��� ��'�' ��� ȋ֋:0               �	�� �  ����:0            
 �������T�� �� �� �� �� �� �� �� �� �� �� ���:0                  	 �	��
�
 ����:0            	 �������(��� ��� ��� ��� ��(�( ��� 8��� ��� ��� ��� ��� ��� ��� ��� 'N�� ��� ��	�	 ��
�
 ��
�
 ��� ����:0                
 ���� ��� ����:0              �+�� ����:0             	���r��� ��� P��� ��� ��� ��� ��� ��� ��� ��$�% ��%�% ��&�& ]�� ��	�	 א�:0               �������8�� �� �� �� �� �� �� ���:0                  	 ������]��*�* ��� ��� ��$�$ ��
�
 ��� C�� ��� ��� ��� ��� ���:0                 �	��� ����:0            
 �	��� ����:0             �	��
�
 є֔:0             �	��� ����:0             �	��� ����:0             ���� ��� ̕ѕ:0              �	��� ����:0              �	��� ����:0              �	��+�, ϖԖ:0            
 �	�� �  ����:0             �	��)�) ����:0             ��@�� A�� ʗҗ:0             	��� )�� *�� ,�� ��� ����:0             
 ���� ��+�+ ��,�, ɘΘ:0             �	��� ����:0            
 �	�*���  ��� ��� ��#�# ��%�% ����:0             �������8�� �� �� �� �� �� �� ����:0                  	 ����� ��� ���:0            
 �	��� ����:0             �������^��� ��*�* ��� ��� �� �  z�	�	 ��� ��� ��� ��� ��� Л�:0                  
 	���'�� (�� *�� ���:0             
 	������ ��*�* ��� ����:0             
 ����� ��� ���:0             �QP��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��$�$ ����:0             	�������� ��	�	 ��� ��� ��� 26 U�� ��(�( ,6: M�� ��� ��� ��(�( ��(�( ?c�� ��� ��� ��� ��� ��� ��� ��#�# ��� 7{�� ��� ��	�	 ��
�
 ��� ��� ��� 
EI ��� ��"�" ����:0                 	 
 �������:4> 3= &0 &0 *4 ��� ��� )3 '1 ԡ�:0                  	 �������:	AJ 	@I 3< 3< 7@ ��� ��� 	6? 4= ̢�:0                  	 �	��� ģɣ:0             �	��'�' ���:0             ��`�� X�� ����:0             ������U��"�" ��)�) ��+�+ ��� ��� ��� ��� g�� ��� ��!�! ˤߤ:0                
 ���� ��� ��� ٥ޥ:0             ���� ��� ����:0             �	��� æȦ:0             �	��� ��:0             �	��� ����:0             �	��� ��ç:0             �	��� ��:0             �	��� ����:0             !�����������s��� ��� ��� ��+�+ ��.�. ��*�* ��'�' ��� ��� ��� �� �  ��� ��-�- ��ܨ&:0       
              	 
 	��� �� ��� �� !�� ����:0             
 �	��� Ȫͪ:0             ��"��� ��� ��� ��� ���:0              �	��� ����:0             �	��� ��:0              �����4��� ��� a�� ��� ��!�! ��"�" ����:0               	 
 ����<��� ��� ��%�% ��
�
 ��� ��� ��� ���:0             	 
 ����� ��� ݭ�:0             �����	������6&�� '�� ��� ��� ��� ��� ��� (��� ��� ��� �� �  ��&�& %!�� "�� S�� ��� ��� (��� ��� ��!�! ��"�" ��#�# %�� �� $�� ��� ��� *�� =�� D�� K�� ��� ��� ��� .�� �� ��� ��� ��� ��� L+�� >�� E�� L�� ��� ��� ��� ��� ��� ��� ��� ����$:0       	              
 ���������
�
 ��� ��� ?|�� ��� ��� ��� ��� ��� ��� ��� ^�� ��� ��� ��� ��� ��� ��� �� �! ���:0                 
 �����=��� ��� ��� ��� ��� ��� ��� ȳٳ:0                 ���%�% ��&�& ����:0             �i�� ��:0             �	��� ����:0             ���� ��� ��� ����:0             	������ ��� ��� ����:0               �	��� ����:0             ������N��	�	 ��)�) ��� ��!�! ��� ��	�	 ��� ��� ��� ���:0                 
 �������������	 ��� ��+�+ ��� ��*�* ��� /}�� ��� ��� ��� ��� ��� ��� ��� ��� %!* ��� ��%�% ��*�* ��+�+ ���":0                   	 
 �	��� ׹ܹ:0             �����3������ 7h�� ��� ��� ��� ��� ��� ��(�( g]�� ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�# ��#�# ��%�% (��
�
 ��
�
 ��� ��� ��� ��� � Z�� p�� x�� ��	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� gV�� ��� ��� ��� ��� ��� ��� ��� ��� ��(�( ��)�) ��,�, ��,�, ����:0                  
 �	��� ƾ˾:0             �	��� ���:0             �4�� ����:0             ���� ��� ��ſ:0             �� x�� }�� ��� ��� ���:0              �	��� ����:0             ����� ��(�( ����:0            
 ���� ��� ��� ����:0             �	��&�& ����:0             ���� ��$�$ ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             	���*��� ��!�! ��&�& b�� ��� ����:0              �i�� ��� ��� ����:0             ���� ��� ����:0             �	��	�	 ����:0             �	��$�$ ����:0             ����� ��� ����:0            	 ��z�� �� ����:0              ������=��� �� �  ��� ��� ��� O�� ��� ����:0                	 
 ����=;�� E�� <�� F�� ��!�! g�� >�� H�� ����:0              
 ���$�$ ��+�+ ����:0             ����$��*�* ��� ��� ��,�, ����:0              
 �	��"�" ����:0             !�����������W	 	 �� 	 	 �� 	 	 	 	 	 	 	 �� ����&:0       
              	 
 	���;(��� ��� ��� ��� ��� ��� ��� ����:0              ���� ��� ����:0             ����%�% ��'�' ��� ����:0             	������ ��� ��� ����:0              �	��� ����:0              	���+��� ��� �� �  ��� ��� ����:0              �	��	�	 ����:0             	�! ��� ��� ��� ��� ����:0             �	��� ����:0             �	��� ����:0             ����� ��� ����:0             �	��� ����:0            
 �	�� �  ����:0             !�����������{��� ��� ��+�+ ��.�. ��*�* ��'�' ��� ��� ��� �� �  ��� ��� ��� ��,�, ����&:0       
              	 
 	���"	PU ��$�$ 
TY ��� ch ����:0             
 ���� ��� ����:0             �������q�� �� �� !�� ��� ,�� /�� �� !�� �� �� -�� 0�� �� �� ����:0                  	 �	��� ����:0             	���u�� ��� z�� ����:0               ����c%  ��� ��� ��$�$ ��%�% %$ ��� ��� �� �  ��(�( ��$�$ +3 �� �  ����:0              
 	��	�0j�� _�� X�� ��� ��� ��� ����:0             
 �& ��	�	 ����:0             �Xe ����:0             ����� ��� ����:0             �	��
� ����:0             �	��%�% ����:0            
 ����!�! t�� ����:0            	 	���B�� C�� E�� ����:0             
 	��	�0k��	 a�� Y�� ��� ��� ��%�% ����:0             
 ����	����8��� ��� ��� ��� ��� ��!�! ��*�* (��� ��� ��"�" ��%�% ��*�* (��
� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� ��� e�� ��� ��� ��� *�� 8�� ��� (��� ��� ��� ��� ��#�# ����:0                	 
 ��W�� O�� ����:0             �	��� ����:0            	 �	��
�
 ����:0            	 �9�� ����:0             �	��� ����:0             �OU ����:0             �	��)�* ����:0             ���� ��� ����:0             ��!��� ��� (�� ��	�	 ����:0            	 �	�� �  ����:0             ���� ��� ��� ����:0             �	��'�' ����:0             �	��!�! ����:0             ���� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��)�) ����:0             ���� ��� ����:0             �	��)�) ����:0             	���+��� ��!�! ��"�" ��� ��)�) ����:0             
 �%0 ����:0             ���� ��#�# ����:0             ��T�� V�� ����:0             ��	�	 ��� ��"�" ����:0             �	��� ����:0             �	��	�	 ����:0             	���
Xg \k kz ����:0             
 �	��(�( ����:0             �	��� ����:0             �	��� ����:0             ��"��&�' ��)�) ��� ��� ����:0             �����4��� W�� ��� ��#�# ��� ��� ����:0                
 !������������0��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ 8��� ��� ��� ��� ��"�" ��)�) ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��*�* H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' 0��
�
 ��� ��� ��� ��� ��� x�� ��� ��� 0��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� �� �  6:�� H�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, ����&:0       
              	 
 ����� ��� ����:0             	�! ��� ��� ��� ��� ����:0             �	��'�' ����:0             ���	����������� ��� ��� ��� ��� x�	�	 ��� ��� ��� 0��� ��� ��� ��� ��� ��� E�� L�� ��� b�� ��� ��� ��� P��� ��� ��� ��� ��� ��� ��"�" ��#�# ��&�& ��'�' ����$:0       	             	 
 �	�.��� ��� -�� A�� D�� U�� ����:0            	 ����������8��	�
 ��
�
 ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��&�& ��&�' ���  ��(�( ��(�( @��� ��� ��� ��� ��� ��� ��#�# ��%�% ?a�� ��� ��� ��� ��� ��� ��� ��� (��
�
 ��� ��� ��� ��� �� ��	�	 ��� ��� ��� ��%�& ��*�* ����":0                   	 
 	��	�3��� ���  ��� ��� ��� ��� ����:0              �	��� ����:0             !�����	���	����O{�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� 0��� ��� ��#�# ��#�# ��%�% ��*�* 0��� ��� ��� ��� ��� �� �  h��� ��� ��� ��� ��� ��� ��� ��� ��� ��$�$ ��$�$ ��$�$ ��%�% `�� ��	�	 ��
�
 ��� ^�� ��� ��	�	 ��� k�� }�� ��	�	 ��	�	 ��� H��� ��� ��� ��� ��� ��� ��"�" ��&�& ��*�* ����&:0       
              	 
 �t�� ����:0             �	��� ����:0             ����� ��� ��� ����:0             !������������8��� ��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ 8��� ��� ��� ��� ��"�" ��)�) ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��*�* H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' 0��	�	 ��� ��� ��� ��� ��� w�� ��� ��� 0��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� ��� 69�� G�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, ����&:0       
              	 
 	��: ��� ��� ��� ��� ��� ��� ��� ����:0             �	��� ����:0             ���$�% ��%�% ����:0             ��)k�� ��� ��� ��� ��
�
 ��:0              �	��� ����:0             �	��� ݅�:0             	�����'�' ��� ��� ����:0             
 ��M�� P�� ˆӆ:0            
 ����� ��"�" ����:0             ����<��� �� �  ��� ��� ��%�% ��+�+ ��+�+ ��Ň:0               
 �������w��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����:0                 
 �	��� ׉܉:0             ���	��]��&�& d�� n�� A�� m�� ���  $�� ��
�
 ��� ��� ��$�$ ����:0              	 
 �	��!�! ����:0             ����,��#�# ��� ��� ��� �� �  ��ȋ:0              
 �	��� ����:0             �q�� ��Ì:0            	 �	��� ��:0             ���������� ��+�+ ��*�* ��� ��'�' ��� ��� F�� U  ��� ��� ��� ��&�& ��&�& ��'�' ��*�* ��+�+ ��+�+ ��+�+ ����:0                
 ����� ��!�! ��,�, ��:0              �	��&�& ����:0            
 �	��!�! ˏЏ:0            
 ��� �  ��#�# ���:0            
 	��� �� ���  �� "�� ����:0             
 �����}��� ��� ��$�$ ��
�
 ��&�& ��"�" ��%�% ��� ��� 0��� ��� ��� ��$�$ ��(�( ��,�, ���:0               
 �	��(�( ����:0             �	��'�' ɒΒ:0            
 ���� ��� ���:0             ������>��� ��� ��$�$ ��� ��� ��� ��� ����:0                  �������b�� �� �� �� %�� (�� �� �� �� &�� )�� �� �� ����:0                  	 	���j�� �� �  ��� ��ŕ:0               �	��
� ����:0             �	��&�& ����:0             ����*w�� ��� ��(�( |�� ��� Жޖ:0               	 	���C0��� ��� ��� ��� ��#�# ��&�& ��%�& ��� ����:0              	������ ��� ��� ����:0              �	��� ۘ��:0             	���A�� B�� D�� ����:0             
 �	��� ƙ˙:0             ���� ��#�# ���:0             �����4��� ��� ��� ��� V�� ��� ����:0              	 
 �	��)�) ����:0             �	��� ����:0             	���i��� ��
�
 V`�� o�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ڛ�:0              ��)��� ��� ��� ~�� ��
�
 ���:0            	 ����� ��!�! ��� ��Ý:0             ����,�, ��-�- ��� ����:0             ���������
�
 ��� @��� ��� ��� ��� ��� ��#�# ��$�$ ��%�% ��� ��� ��	�	 ��� |�� =�� ��͞:0                 	 �	��� ����:0             	����� �� �� ����:0             
 	����� �� �� ���:0             
 ���� ��� ����:0             �	��#�# աڡ:0             !������������ ���  $ q�� ��� ��� ���      e�� ���   ���  ����&:0       
              	 
 ������0�� �� )�� �� �� *�� ѣ�:0                  ����	�������� ��� ��� ��� 8��	�	 ��
�
 ��� ��� �� �  ��'�' ��*�* ��� ��)�)  ��
�
 ��
�
 ��� ��� (��� ��� ��� ��� ��� `�� ��� ��Ԥ :0                  	 
 �	��(�( Ŧʦ:0             �	��� ��:0            
 ���� ��� ��&�& ����:0             ����� r�� ��� Чا:0              �	��� ����:0             ����������(��� ��� ��� ��� ��*�* ��� u�	�	 ��� ��� e�� ��	�	 ��	�	 0�� 7�� Z�� f�� ��� ��� ��� ��� %�� ��$�$ ��Ԩ":0                  	 
 �	��(�( ����:0             �	��� ۪�:0             ���� ��� ����:0             �POc�� ��� ��� ��� ��� ��!�! ��#�# ��'�' ��*�* ��.�. ����:0             ��	������� P��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�)  ��� ��� ��� ��� ��� ��� ����:0                	 ����� ��� ��:0            
 ����� ��
�
 ����:0             �	��+�+ ծڮ:0            
 �	��� ����:0            
 �	��� ����:0             ��"��� ��� ��� ��� Яد:0              	���/�� 0�� 2�� ����:0             
 ������N��� ��� ��� ��� ��� ��� ��� ��� ��� ٰ��:0               	 
 	���"��� Y�� ��� ��� ��:0              ����$��� ��� ��� ��� ����:0               �	��
�
 ����:0            	 �	��� ����:0             �	��� ѳֳ:0             �	��� ����:0             ��k�� ��� ����:0             ���7��������
�
 ��� ��$�$ ��'�' n�� ��	�	 �{�	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" ��#�# ��$�$ ��$�$ ��%�% ��&�& ��� ��� ��� ��� 1�� ��� H��� ��� ��� ��� ��� �� �  �� �  ��"�" ��#�# ٴ� :0                  	 
 	���#��� ��� ��� ��� ����:0              �	��� ���:0              �	��� ����:0             	���;��"�" ��#�$ ��*�* ��#�# ��� ��� ��� ¹͹:0             
 �	��� ����:0             �	��� кպ:0             �	��'�' ����:0            
 �g�� ��&�& ����:0             ����&�& ��� һڻ:0            	 ���	����� G}�� ��� ��� ��� ��� ��!�! ��&�& ��(�( ��.�. ��� ��� ���  ��� ��� ��� ��� ����:0               	���"��� z�� ��� ��� ĽϽ:0              ��"��� ��� ��&�& ��+�+ ����:0             
 �	��
�
 ׾ܾ:0              �	�� �  ����:0             �	��� ����:0             �����������	�	 ]�� 7l�� ��� ��� ��� �� �  ��!�! ��"�" /U�� ��� ��� ��� �� �  ��%�% ��� ��	�	 ��
�
 ��	�	 ��� ҿ� :0                   
 �	�� �  ����:0             ��K�� N�� ����:0            
 �	��� ����:0             ��"��� ��� ��&�& ��� ����:0             	���-�� 2�� �� 3�� �� 5�� ����:0             
 �	��� ����:0              	������ o�� ��� ����:0             
 �e�� ����:0              ������V��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��%�% ����:0                 
 ����!(�� )�� ��� +�� ����:0              
 �#�� ����:0             �����5��� ��� ��'�' ��� ��� ��#�# ����:0                
 ��N�� Q�� ����:0            
 ���)�) ��*�* ��+�+ ����:0             ���� ��$�$ ����:0             �����U��!�! (��	�	 ��� ��� ��#�# ��'�' ��	�	 ��� ��� ��(�( ����:0               
 ��7�����	����� (��� ��� ��� ��� ��� � \�� x�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��)�) ��*�* ��+�+ ��-�- ��.�. ��� ��� ��'�' ��� ��� ��� ��� ��� (��
� ��� ��� ��� ���  ��� ��� ��� ��� ���� :0                   
 �����S'V�� ��� ��� ��� ��%�% ��	�	 ��� 3�� ��� ��� ����:0              	 
 	�����(�( ��� ��� ����:0              �	��� ����:0              ���"�" ��%�% ����:0             ���� ��� ����:0             �������'�' ��+�+ ��*�* ��� u ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��#�# ��&�& ����:0             	 
 	���+��� ��� ��� ��� ��� ����:0             	 ����� ��� ����:0            
 �	��� ����:0             �W�� ����:0             �	��� ����:0             !������������(��� ��� ��� ��� ��� x��� ��� ��� ��� ��!�! ��!�! ��"�" ��"�" ��#�# ��$�$ ��%�% ��'�' ��(�( ��(�( ��*�* @��	�	 ��� ��� ��� ��� ��� ��!�! ��(�( `��� ��� ��� ��� ��� ��� ��� ��"�" ��$�$ ��&�& ��)�) ��)�) `��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��&�& ��
�
 ��� r�� |�� ��	�
 /k�� ��� ��� ��� ��� ��� 8��	�	 ��
�
 ��� ��� ��� ��� ��� K+�� 7�� [�� b�� h�� ��� ��	�	 ��
�
 ��� ��� X��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��%�% ��(�( ����&:0       
              	 
 ���������', ��� E ��	�
 ��
�
 ��� ��� ��� ��� ��"�" ��"�"   " ��� ! ���  ���� :0                   	 	��� *�� +�� ��
�
 %�� ����:0               �/7 ����:0             ����� ��$�$ ����:0             	������ l�� �� �  ����:0             
 ���-�- ��-�- ����:0             ����� ��� ����:0             ����������Fs�� y�� ��� ��� ��� ��� ��� ��� ��� (��� ��� �� �  ��&�& ��'�' ��� ��)�) ��*�* ��� ��!�! ��(�( ��� ��	�	 ��
�
 ��
�
 &x�� ~�� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��� ����":0                    	 �	��$�$ ����:0             �	��� ����:0             ���� ��&�& ����:0             	��* ��� ��� ��$�$ ��%�% ��� ����:0             �	��� ����:0             �	��� ����:0             �f�� ��%�% ����:0             		���yS�� ��$�$ ��%�% ��%�% ��� ��� GK�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ����:0              	���js nw `�� }� ����:0             
 �	��'�' ����:0            
 ����� ��� ����:0              �	��� ����:0            
 �	��� ����:0             ����<��� ��� ��� ��� ��� ��� ��+�+ ����:0               
 ��	��������� ��� ���  ��� ��� ��� ��#�# (��� ��� ��� ��� ��� ��� ��� ��� ��� ��	�	 ��� ����:0                 	 ��G�� H�� ����:0             �	��� ����:0             ����� ��� �� �  ����:0             
 �	��� ����:0            
 �	��� ����:0            
 ����� ��� ����:0             ���� ��� ����:0             	�! ��� ��� ��� ��� ����:0             �	��	�	 ����:0             ����	���	������� ��� (��� ��� ��� ��%�% ��&�& @��� ��� ��� ��� ��� ��#�# ��#�# ��$�$ (��� ��� ��� ��"�" ��'�'  ��� ��� ��� ��� ��� ��� ��
�
 ���  ��� ��� ��� ��� ��� ��� ��� ��"�" ����$:0       	             	 
 �	��	�	 ����:0             �	��� ����:0             �	��� ����:0            
 �����=��� ��%�% ��� ��� ��
�
 ��� ��� ����:0               	 ��I�� J�� ����:0             ����!�" ��-�- ��	�	 ����:0             �	��� ����:0             �	��+�+ ����:0             �%$�� /�� =�� K�� ��(�( ����:0             �E�� ����:0             ���,�, ��,�, ��-�- ����:0             ��"��� ��� ��� ��%�% ����:0            
 ����"�" ��� ����:0             ��Q�� R�� ����:0             �������i �� "�� %�� '�� 8�� ;�� $�� '�� �� !�� 9�� <�� �� !�� ����:0                  	 ��o�� t�� ����:0              �3                �  W	"�FO.���� 1           9876543210.K �,�� �� Z 0A � ��� `853B  ��^�
iq�{ =        986543210.,KJ    43 �2A  ��Y�,��         f98654320I  ��PR    �510.DxP(     9653 B�.A  ��P��<     96540.F���� ����  ��g?� � ~       98765310H �J  �70.C ���� ���� �n0 m50C ���� tH 9.!B > 9A �������� �:��T+  sli�� ��� ��A uiW1 trc� b9 vdBH��� ���� re -gA / sA� ��k�� ��� 1gA�{���� ���� � �����c��1�   #'+wtsrpomli	��� ������������� �cA�����-�   oib ��) [eha) 
wt/ yo/ �tna� �leɎ�����O ������������ )eA���\��Ӹ������ �e$� � } +     	  � + roigecb" b)�+ieB ����'� � �        skidc"� ����� �N �ǄA  gea��^��
�	(�X��      G � � � � Nafr�vusrpnmlgfdcb" �>   ke3 *  ie! ��Fj )    tsrdc �ȗ �� )iA��A   �ti!� �-� n A       �tshgc" /�i!A� L ng!� �M��ϵ �= tow�� ���) ea �� �� ic� �  n�+�rk�) &7;L�yurolieaH� ��  lc� �) � ia!r���-  te~ �   ec x iA��� ,eA���+  tsx�@�f)  *7 Eutsrpnl� �(  yi� ��iA �lia!C)  1ri!� ���������� 4aAn  }nc! �\ �1 ����ğvIi  	-roiea� ��R  ��us"" ��  ea� ���� �� �� �� �@   	uol W^l!A���� +iA`  tr)   xt� �   � �
 uolia"(� 5    6   �pmeb" /e!A�W ! ea!G �/ K  sd!� �1  ua!)  �ra!X tiS �y ��$�� �     
 34 8 vtsndc"S �  "
�	z	Q	$	��� p C � � n � � �� vurponmlfda"Kl ���� �� V.� ie!B� �da, �� ��˫m<�    �  % uoiea"� �_ � sr!{�	�	�    U u���uroliha"� ���< �� �  5�9  � 	 tsb_"D; ��J �oa� � �Pt_B�  ea#     vti"K   md�# �r � ia!� ��A ���Ę �� � `5 �re!B�  ic!� ��5  Zea!w�z'��� 5     ) - �4 9 G �tspmlifca"	r ���x�7  �ie!�� ����� �Ͽ �	 �� �����9 	ri�A tpa}T+�    ) (0 > srgfa"*   �ea!@� B   �   cungc"� �ɀ�x=�
,    	 ) � yuoiea"H ��+ WNle!�= srA x�ie!�k ��b �v5    sie!� �5  �on!� ����� �3	_.B���\ �� �_6E       tsgdc", �I  Nia!�	 �� �ɕ �_ �  rn!7 eax �j   �mc"r �)  zle!) �rc!` �R) " �oia!d� R   � �  role"� �) ; re!�4	�    sA O tpica"���|l�3� �    z � � � � � � �   xvsrqnmlifda" )�o!A�9   sl� ���ȴR mlc5 �S* �W wta!K �  tl!��~�     �
 xvrnl"@ r�sa!�S ������ 3_A� oaA��� �   x Cgurol"3 �  se![ � ie!1   Blf!� �  CcAZ nl�*/�m�   3`k��urolieaC �-   �tn!?	 �C	 ��� �� �1   �wu!8  oer>� � Y   "&0roliea]	 �ˬ ��� jcAķ  pl� ����� xl#	 ��) : sg!� ��Ȁ	 �7� �    	 �	  wurmc"T �;	 �+��6)   	.=ayuoiea1 �	  na! =eA� �1 ��������� ��	 �^)  � rol!)  �	pa!;   sd��	 ���d ol �h
 ��(  vc) ieF
 ��	 �U old
 �v ��7  �	�tie!�	 �I 3
 sp!-  rg�
 ��� �YreBIn"��    & 8 
< L d tspnfdc"
 ��� �   ����tnmlgd�
 ��
 �����^
 ����I �
 sl!��B5    ��  usoma"9 �l+    �yie! ) nA�ę 	ne�
 ��	 �� -�
e!A�+	 ��� 5_A��_� i (   �
    q tsrndb"< Y	  rd!�
 � )�
t!A�c�    o � tsnfa"v ��� 7lA�4 ����C=�   �t  �smlkf"= �  sc!�7� =   Q�	� swonga"� ����ʲS��  	/^�uoiea� � V- anl!B5   Ukc!M ��� �� �(i_BX�^� \    B
   �a axtrpnkid"� ���������1 � 3iA�3 ���] ��\ tda� ����Ǩ � ) tA {R)r uidC� �ƢZ'Z )     �    xtsngc"�
 �d �) iej ��#� v     vrnd"� ��� �    -snlc" ��Q
����  !L���yuoieca� ��� �x lf x_A�� �3 �Cui!N%  trm� ������� CsA� R)�oa!B� ���) 5le!A� t   �  �  xwtsge"! �� ����� T+ seBm   ie!�� E       �wtnc"s uteb!�  ml!  E	��4-FJ�uoieaE� �9 ��se! �z tf� �� �o:   ��
pda"�t1 ����spec!��
 ����*V.�]u� Q (      �  0 4 	J vutrpnlfcb"
� ����) �  ie!s ��� <iA�� ��a8� { )    � E   tsrigd"� � nfAHj 5      v�tron"| �!�/  /tc!� �	 ea!U � ��׀=   6tsi!�5 � pwsi!� ������������-  `
gc!- �+ Jorn!£ ��  �ie!ۇR)    �
Jvsfdc!, ��5  �ync!� � \B_!A �tA��# ��� &eA�ȸ]?   �	   gfdb"k^n   8J}oiea ��Ϡ
 �t4   � rpc!) rb  j��c�Z )  ! � � 	)euroliea."H� �ː � )Na!A���c   	 C oiea"ӄ ���& ��tr! +�a!A R)�li!B+� D   �  �sldc") ��ni!�
 �1 B rm!R oe� �� *rA�²	 ����^ ����� :iA��c   � iea!p ������� E,e!A��)  ?re!�	 �� �� lC �ro!B�I   � 'ute"� ��  V ur"  
��*���1�1   2 6 	I S p w �� � tsqpnmlgfdca"L <In!A   Swu" ��    �nl"�U��x )      �$ /9utoiea."1 �  li!+   Nea!T  nl� �7  ta�^ ���   hea� � 5 nA1   �fe! )�e!A�=J"�m�   �   ��		   vtrqplec"i �� �� 1_A�� 1 nA�x �ȧM� )     �  roiea" -�i!A��  q�poi!S �  gc!o�m   �  �znmd"- �4ie!���`   ih!� � wt!§^ -   �� ��romlf" � iA?  �fa!�(  � ec" �� ������E��?    '
 v vroliea"  zs ��ia"B�  	 ul" <�a!A�9   6ue!�� 9    s �trnc" �p   >ea!�= ~ui!H�  roia� �� �+ tqR IBol!�  Cpe!� �/  re&� } T       �4! rpmgcb"� ��M ��4   xc!�) to�  ��I����
M
��� +    p � � 'Wd��Jywutqpomiheca"M�W v^skb!a �  qc!��ι ��0   tm!�E� � �   ��  � xsrmlc"I   kg�
 ���� ��t roiU ��� 7sA�+ �  yi!j nm �� ��� ,(i!As� � U   � �  tpoig". zni!;   %ea!e �1  ne�   uea� x  ie!��
�9r���    � : f � � � ywroihea"B �����e ���� ��1 uo�   �xeqoc"�� -   �
�  % rlifd"� �� � ~T�[n_!B�  �� � ue"Bo:x^5  uK   # utsrpn"X    �ui"� ��� �+   db! �MO oa!BZ) icb�  *rl D�_!A� �oA   nd+ ^Ots!E  rnU�  @ - oea"� �  ni!+ Cse!h � lb!� �
 �5 � tr!� ������ �ґ) oiea� �f   ldq �v �ǒ) }� oid!���  tnl �+ �  rk!�m ��s4��  Ht�rojiheai ����� a(0 m'!B7   �ta!�� ����� � rp!� �� ea{�z�y�s8o�g�[�A5/-� Q���� �� �� 0� � � �� �� �� K� �� � �� 7� �� z�  � �� [� S�  � �{ �p   ) < � g��)�A	"
Q2T��T5��~fpv����
V�zyxwvutsrqponmlkjihgfedcba_9876543210#%      �      �������������������������;��� ��'�' ��  �� ��+�+ ��
�
 ��� ����:0                 �	��� ���:0              ��������� ��� ��� ��� ��� ��� 6�� W�� 7�� X�� @��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ����:0               
 ����	��	����#4�� C�� U�� V�� `�� Gs�
�
 ��� ��� ��� ��� ��� ��� ��� ��� �� $�� %�� Gj�	�	 ��� ��� ��� ��� ��� ��� ��� ��� 7�� H�� \�� ]�� �� �� �� /�� >�� P�� Q�� �� �� �� 'a�� ��	�	 ��� ��� ��� ׮��":0                    
 	���'�� S��  �� T�� ��� ����:0             
 ���������wL�� y�
�
 ��� ��� 2�� p�	�	 ��� ��� R�� 2�� G�� 3�� g�� �	�	 ��
�
 ɲ�":0                    
 �������T0�� 9�� ^�� {�
�
 �� r�	�	 3�� =�� +�� 4�� i�� ����:0                  
 ��������B�� K�� 6v�
�
 |�
�
 ��� ��� ��� ��� ��� O�� 6m�	�	 s�	�	 ��� ��� ��� ��� ��� G�� Q�� =�� F�� >d�� j�� ��
�
 ��� ��� ��� ��� ��� ����:0                  
 ��������T�� ]�� .r�
�
 x�
�
 ��
�
 ��� ��� ��� @�� ,i�	�	 o�	�	 y�
�
 �
�
 ��� ��� [�� O�� 4`�� f�� o�	�	 u�	�	 ��
�
 ��
�
 ��� ��ҷ:0                  
 �����Ot�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� N�� Ok�	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ^b�� ~�	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0              
 		�	��s ��� ��� ��� ���  ��� ��� ��� ��� 0��
�
 ��� ��� ��� ��� ��� ���:0             
 ��������	��2�� N�� _�� 7z�
�
 ��� ��� ��� ��� ��� ��� �� &�� P�� 7q�	�	 ��� ��� ��� ��� ��� ��� 5�� T�� �� U�� -�� I�� �� V�� h�� ��	�	 ��� ��� ����":0                    
 !	�������������� -�� .�� [�� 1�� �� #�� $�� V�� n�
�
 ~�
�
 +�� �� ,�� :�� H�� ��+�+ A�� �� $�� %�� N�� d�	�	 u�
�
 ��� ��� *�� /�� 0�� 1�� Y�� d�� �� �� 
�� (�� )�� �� 
�� 2�� �� &�� '�� \�� l�� ��� ǿ�&:0       
              	 
 �	��
�
 ����:0             	���3�� 4�� 6�� ����:0             
 �	��	�������3�� >��  ��
�
 ��� ��� ��� �� R�� }�
�
 ��
�
 ��� ��� 6�� B�� �� .�� 9�� �� >s�	�	 y�	�	 ��� ��� ��� ��� ��� ��� ����":0                    
 ����!Y�� `�� T�� ��� ����:0               
 �����	�^O�� W�� U�� ^�� #�� J�� R�� $��  ��� ��� ��� ��� ����:0                 
 ����������1�� ;�� ��� ��� �� (�� ��� ��� 4�� ?��  �� T�� ,�� 6�� !�� U�� 8��	�	 ��
�
 ��� ��� ��� ��� ��� ����":0                    
 �)�� ����:0             �>�� ����:0             	������ ��� ��� ����:0             
 ������`M�� ��
�
 ��� z�
�
 ��
�
 S�� H�� &p�	�	 w�	�	 ��� ��� ��� ����:0                 
 ��������=�� ��� ��� ��� ��� ��� A�� 8�� @��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0                  
 �����;��� ��� 4�� 5�� ��
�
 ��� ��� ����:0               
 �	��� ����:0            
 ����������:�� D�� 4�� ��
�
 ��� 4�� {�
�
 ��� >�� I�� !�� 5�� ?�� "�� 7�� q�	�	 ��� ����":0                    
 !�������������� 6�� I�� G�� �� >�� ?�� H�� I�� P�� [�� }�
�
 ��� �� G�� �� ?�� @�� I�� J�� S�� t�
�
 v�
�
 ��� *�� �� 9�� ;�� N�� h�� �� �� �� 1�� D�� �� �� H�� �� A�� B�� K�� L�� S�� k�� ��
�
 ��� ����&:0       
              	 
 �������o5�� �
�
 ��� u�� w�
�
 ��
�
 8�� 0�� .m�	�	 x�	�	 ��� ��� ��� ��� ����:0                  
 �qp��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�) ��,�, ����:0            
 �����	��	���*/�� 8�� A�� J�� S�� \�� nq�
�
 w�
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� #�� #�� 1�� ?�� M�� lh�	�	 n�	�	 x�
�
 ~�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� #2�� <�� F�� P�� Z�� �� �� 1�� R�� #*�� 3�� <�� E�� N�� �� �� 2�� S�� c_�� e�� n�	�	 t�	�	 }�	�	 ��	�	 ��
�
 ��
�
 ��
�
 ��� ��� ��(�( ��,�, ����":0                    
 ����)'�� �� (�� ��� ��� ����:0              
 �B�� ����:0             ������3��� A�� ��� 3�� 4�� ��
�
 ����:0                
 �����	�H�� �� �� �� �� �� ��� ��� ��� ����:0                
 	������ ��
�
 v�	�	 ����:0             
 �	��� ����:0            
 	����63�� C�� D�� I�� "�� #�� ��� ����:0              
 ���� ��� ����:0             !����������	���� 7�� ?�� %�� -�� _�� ��� ��� *�� 4�� .�� W�� f�	�	 ��
�
 ��
�
 ��� *�� :�� C�� E�� O�� k�� $�� �� �� 2�� :�� %�� ��  �� 0�� z�	�	 ��
�
 ����&:0       
              	 
 	����� �� �� ����:0             
 	��	������=�� G�� ��
�
 ��� 5�� >�� H�� |�
�
 ��� :�� A�� O�� &�� ��� ;�� B�� P�� E@�� J�� r�	�	 ��
�
 ��� ��� ��� ��� ��� ����:0                 
 	���.��  �� /�� ����:0              �;�� ����:0             !�������������� H�� 3%�� 5�� R�� b�� o�
�
 ��� ��� 8�� ��� D&�� 6�� Z�� e�	�	 ��
�
 ��� ��� ��� ��� �� M�� +�� �� �� C�� ,�� �� ,(�� 8�� U�� ]�� ��
�
 ��� ����&:0       
              	 
 �.�� ����:0             �<�� ����:0             ��� ����:0             �J�� ����:0             ���������	��<�� G�� b�� p�
�
 ��� ��� �� g�	�	 ��
�
 ��� @�� L�� �� 5�� �� ��� 7�� B�� �� 6�� ^�� ��
�
 ��� ��� ����$:0       	              
 	���X�� _�� S�� ����:0               ����)F�� K�� A�� ��� ��� ����:0               
 ��H�� I�� ����:0             	���5�� V�� W�� ����:0              	����� �� �� ����:0             
 !���	�	���������� @�� Q�� %,�� .�� e�� ��� ��� F�� -�� /�� ��� ��� �� #�� D�� W�� 7�� #�� �� ;�� L�� 8�� �� %/�� 1�� {�	�	 ��
�
 ��� ����&:0       
              	 
 ����A��� ��� '�� Q�� ��� ��� |�	�	 ��	�	 ����:0              
 	���E�� J�� @�� ����:0               �6�� ����:0             �	��� ����:0            
 �7�� ����:0             �L�� ����:0             	���u�
�
 l�	�	 c�� ����:0             
 �a�� ����:0              ������	�x$�� Z�� 6�� ��� ��� ��� 7�� ��� ��� >�� ?�� 9�� ��� ��� ��� ����:0                  
 	���"�� #�� %�� ����:0             
 	���H�� ��� ��� �� ��� ��� �� ��
�
 ��
�
 ����:0             
 �-�� ����:0             	����	�f@�� Q�� ��� ��� A�� ��� ��� E�� F�� C�� T�� ��� ��� ����:0               
 �0�� ����:0             	���P�� V�� K�� ����:0               ���� �� ����:0             ������JJ�� ��� ��� ��� L�� M�� M�� ��� ��� ����:0                
 	���+�� ,�� .�� ����:0             
 ��� ����:0             �	��� ����:0            
 	���R�� X�� M�� ����:0               ��M�� N�� ����:0             ����� [�� ����:0              �	��� ����:0             �	��� ����:0             �����S'n�� ��	�	 ��� ��� ��� ��� ��� s�� ��� ��� ����:0                 �	��� ����:0              �	<B ����:0             	������ ��(�( ��� ����:0               �����3��� s��	 ��� .�� ��� ��� ����:0               
 ���� ��� ����:0             �	��&�& ����:0             �`�� ρԁ:0             	���"	?B 	?B ��� ��� 
BE ����:0              �	��� ÂȂ:0             ������< |�� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" (��� ��� ��� ��&�& ��*�* ��	�	 ��� ��$�$ ���:0                
 	����L ��� ��� ��� ��#�# ��� ��	�	 ��	�	 ��� ��!�! ��Ȅ:0             	 
 �	��� ����:0             ��������m��� ��� ��� ��� ��)�) ��'�' x�� ]�� L�� ��� ��� ��� ��� ޅ�� :0                 	 
 �	��� ����:0             �	��� ����:0              ���� ��#�# ���:0             ����� ��� ����:0             �n�� Ȉ͈:0             ��������m��� ��� ��"�" ��� ��%�% ��� ��!�! w�� ��� S�� h�� ��� ��"�" ���� :0                  
 ���� ��� ����:0             	���#��� ��� ��� ��� ъ܊:0              �	��'�' ����:0             �������y�� !�� ���  �� &�� -�� 9�� �� %�� ��  �� .�� :�� ��  �� ��� ǋދ:0                  	 �������i�� #�� "�� (�� 0�� <�� "�� (�� �� "�� 1�� =�� �� "�� ����:0                  	 ����	�	���,�� ��*�* (��� ��� ��� ��#�# ��%�% .�� ��� ��%�%  ��	�	 ��� ��� ��� '�� ��� ��� ��� ��� ����:0                  
 ����4��� ��� ��#�# ��� ��� ��� ����:0               
 �	��� ��:0             �	��� ����:0             �	��� ����:0             ����4�� �  ��� ��� ��� ��� ��� ޑ�:0              	 �	��� ��ƒ:0            
 �����|��� ��� ��� ��� ��$�$ ��� ��� U�� ��� 0��� ��� ��� ��� ��� ��� ���:0                ����(�( ��� ����:0            	 �	��� є֔:0            
 �	��� ����:0            
 �	��(�( ����:0            
 ����� ��� ��� ̕ԕ:0              ����� ��� ����:0             ���� ��� ǖ:0             	�! ��"�" ��"�" ��#�# ��#�# ���:0             �)(��
�
 ��� ��� ��� ��� ����:0             �	��	�	 ����:0             ���� ��� ��� ����:0             ��� ߘ�:0             ����� ��� ����:0            
 �	��� ��Ù:0              ����(�( ��� ��� ��:0             ��O�� R�� ����:0            
 	������ ��� ��%�% ۚ�:0             
 ����� ��� ��� ����:0              	������ ��!�! ��� ߛ�:0               �	��%�% ����:0             �	��&�& ͜Ҝ:0             �	�� �  ����:0             	�! ��'�' ��'�' ��(�( ��)�) ����:0             	���8�� 9�� ;�� ���:0             
 ������k��� ��� ��� ��� |�	�	 8�� ��	�	 ��
�
 'f�� ��� ��� ��� ��� ����:0                 �	��� Ɵ˟:0             �	��� ���:0             �	��� ����:0              	������ ��� ��� ��̠:0             	 �	��� ����:0              �	��� ����:0             �~�� ءݡ:0             	������ ��� ��� ����:0              �	��� Ţʢ:0             ����!7�� ��� 8�� :�� ���:0              
 �	��� ��ã:0             �	�rP��� ��"�" ��"�" ��"�" ��$�$ ��%�% ��&�& ��'�' ��'�' ��)�)  ��� ��� ��� ��� ��:0             	�! ��� ��%�% ��&�& ��'�' ����:0             	�! ��)�) ��)�) ��*�* ��*�* ��ĥ:0             ����� ��� ��� ����:0             ���� ��� ��� ��Ħ:0             �	��� ����:0             ���� ��"�# ����:0             �	����T���  ��	�	 ��!�! ��*�* ��-�- ��� o�� ��� ��� ��� ҧ�:0                 �A@��� ��� ��� ��� ��� ��� ��#�# ��%�% ڨߨ:0             	��* ��� ��� ��� ��� ��$�$ ��é:0             
 �������n��� ��	�	 ��'�' ��� ��� '_�� ��� ��� ��� ��� ��� �� �  ��+�+ ����:0                 
 !��������������� P��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" H��� ��� ��� ��� ��� ��� ��%�% ��(�( ��.�. H��� ��� ��� ��� ��� ��� ��� ��� ��$�$ _q�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��%�% ��&�& 'h�� ��� ��� ��� ��� %,�� R�� {�� ��� ��� ��� ��� ��� (��� ��� ��� ��� ��� &<�� Y�� ��	�	 ��
�
 ��� 8��� ��� ��� ��� ��� ��$�$ ��$�$ ��٫&:0       
              	 
 �	��� Űʰ:0             �	��� ��:0             	���5<�� F�� =�� G�� ��!�! ?�� I�� ����:0             
 �	��$�$ ����:0             �	�� �  ����:0             �!������������ } ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��&�& ��� ��� ��� >�� ��� ��� ^�� ��� ��-�- Ȳ�":0                   	 
 	���C�� D�� F�� ��:0             
 ��� ����:0              	���RDL ��� ��#�# -	HP ��� ��� ��� �� �  ��)�) W_ �� �  ϵڵ:0             
 ����� ��&�& ˶Ӷ:0              �	��&�& ����:0             �	��� ����:0            
 �	��� Էٷ:0             	��	�C��� ��� ��	�	 ��
�
  ��� ��� ��� ��� ����:0              �a�� ��:0             �,�� ����:0             	���%�� P�� Q�� ��Ź:0               	������  ��� ��� ����:0             
 �������8�� �� &�� �� �� '�� �� ��غ:0                  	 ��� ����:0            	 	����� �� �� ߻�:0             
 �	��� ����:0             �	��� ʼϼ:0             �	��(�( ���:0            
 �	��$�$ ����:0             ���	��	�������� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��$�$ ��'�' p�� ��� ��� ��� .Z�� {�� ��
�
 ��
� ��� ��� +�� v�� z�� ��� &\�� z�� ��� ��� ��� ��� ��� ��$�$ ��*�* Ž�":0                   	 
 �	��� ����:0             ��Z�� R�� ����:0             	����� �  ��$�$ ��� ����:0              �	��*�+ ����:0             	���  �� ��� !�� #�� ����:0             
 ��B��� 8��� ��� ��� ��� ��� ��� ��� ����:0              	����� �� �� ����:0             
 	���������� ��	�	 ��� ��� ��� ��� ��(�( 7f�� ��
�
 ��� ��� ��� ��'�' ��)�) 8��� ��� ��&�& ��'�' ��'�' ��(�( ��)�) @��
�
 ��� ��� ��� ��� ��� ��� ��� d�� o�� 'j�� ��
�
 ��� ��� ��� D?�� F�� S�� X�� ��� ��	�	 ��	�	 ��� ��� 8��� ��� ��� ��� ��� ��!�! ��!�" ����":0                   	 
 �������e��� �� �  ��� 'w�	�	 ��� ��� ��$�$ ��%�% ��� W�� ��� ��� ����:0                 	 
 �	��� ����:0             	���3��� ��� ��'�' ��� ��� ��"�" ����:0             
 ����*��� ��� j�� ��� 6�� ����:0               	 ����.�. ��� ��� ����:0             �	��� ����:0             ����� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �����\��� ��� ��� ��� ��� ��� P�� ��� ��� ��� ��� ����:0              	 
 �n�� ����:0            	 �d�� w�� ����:0            	 �h�� ����:0              �� ��� ��� ;�� P�� ����:0             �	��� ����:0             ����$��� ��*�* �� �  ��� ����:0                �	��� ����:0             �	��� ����:0            
 �	��� ����:0             ��� �  ��"�# ����:0            
 ����� ��� ����:0            
 �	��� ����:0              	����� �� �� ����:0             
 �	��� ����:0            
 �	��� ����:0             �	�Z8��	�	 ��
�
 ��
�
 ��� ��� ��� ���  ��� ��� ��� �� �  ����:0              �	��� ����:0             �������8�� �� �� �� �� �� �� ����:0                  	 ��	���T��� ��"�" ��)�) ��'�' ]�� ��� ��� ��� ��� ���  ����:0               
 �lv ����:0             �o�� ����:0             �	��#�# ����:0             ���� ��� ����:0             ���#�# ��&�& ����:0             	���&�� '�� )�� ����:0             
 ����$��� ��� ��
�
 ��� ����:0                	���3��� ��� ��� ��� ��� ��	�	 ����:0             	 ����� ��� ��!�! ����:0            
 ��5�����������	�	 ��
�
 ��� (��� ��� ��� ��#�# ��#�# � ^�� w�� ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��$�$ ��$�$ ��$�$ ��'�' ��'�' ��)�) ��+�+ ��,�, ��,�, ��-�- ��-�- ��� ��� 8��� ��!�! ��"�" ��%�% ��&�& ��'�' ��'�' 0��� ��� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��� .�� (��� ��� ��� ��� ��� ����$:0       	             	 
 �~� ����:0             �����	��������� ��� ��� ��� _U�� ��� ��� ��� ��� ��� ��� ��� ��&�& ��+�+ ��,�, ��-�- ��'�' �� �  g�� v�� ��
�
 ��� 'W�� ��
�
 ��� ��� ��� ?s�� ��� ��� ��� ��� ��� ��� ��� J�� ��� 0��� ��� ��� ��� ��%�% ��+�+ ����$:0       	             	 
 �	��� ����:0            
 �	��� ����:0             ������r+�� 7~�� ��� ��� ��� �� �  ��!�! ��"�" ��� ��"�" -�� &�� ��
�
 ��� ����:0                  	��� m�	�	 c�� [�� ��� ����:0             
 	��� l�	�	 b�� Z�� ��� ����:0             
 ���� �  ��	�
 ����:0             ��N�� O�� ����:0             �	��,�, ����:0             ����&�& ��� ����:0            
 �)(��� ��� ��� ��� ��� ����:0             �����L��
�
 ��� 'u�� ��� ��� ��� ��� ��� ��� ����:0              	 
 �	���A��� Z�� s�� ���	 ��� ��� ��� n�� ����:0                �	��� ����:0             ����*��.�. ��� ��� �	�	 Y�� ����:0               ����� ��"�" ����:0            
 	���+��� ��%�% ��
�
 ��� ��� ����:0              ���
�
 ��� ����:0             ����� ��
�
 ����:0             �	��� ����:0             ����� �� �  ����:0             ���� ��� ����:0             ����� ��� ����:0              �	��'�' ����:0            
 ��������~��� ��� v�� ��
�
 ��
�
 ��� ��� ��� ��#�# j�� ��� ��� ��� ��� ��� ���� :0                   
 �	���	 ����:0            	 	�! ��� ��� ��� ��� ����:0             �	��� ����:0             �	��� ����:0             	����� �  ��(�( ��#�# ����:0              ����,��� ��� ��� ��
�
 ��*�* ����:0              	 
 ��^�� V�� ����:0             	������ ��� ��� ����:0              	���9�� :�� <�� ����:0             
 ��p(�� g)�� ��
�
 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ����:0              �i�� ����:0             ����� ��� ��
�
 ����:0            	 ���	�<��� ��*�* ���  ��� ��� ��� ��*�* ����:0               
 ����� ��� ����:0            
 �	��� ����:0             ����(�( ��� ��� ����:0             �	��� ����:0             �n�� ����:0             �	��	�	 ����:0             	�����.�. ���	 ��� ����:0             
 ����*�* ��� ����:0             �������i�� �� �� �� �� �� �� �� �� �� �� �� �� �� ����:0                  	 �	��*�* ����:0            
 	�! ��� ��� ��� ��&�& ����:0             �	JO ����:0            	 ��C�� D�� ����:0             ��J�� K�� ����:0             ������,
S` 
R_ 
KX 
KX ��	�	 	IV N[ ����:0                  	������ ��� ��� ����:0             
 	������ ��� ��� ����:0             	 ��	��	������ ��� X�� ��
�
 ��� ��� 0��� ��� ��� ��� ��� ��� K�� f�� k�� ��� ��� ����:0               	 
 �	��� ׁ܁:0             �	��� ����:0             ���� ��� ��� ����:0             	���#��� ��� ��'�' ��)�) ��:0              
 ����)�) ��'�' ����:0             ����� ��� ��:0             ��"��� ��� ��� ��� ����:0             ����� �� �  ��:0              ����4��� ��� ��#�# ��*�* ��'�' ��	�	 ����:0                �	��� ����:0             �	��	���	����8��� ��� ��� ��� ��$�$ ��%�% ��'�'  ��	�	 ��� ��"�" ��&�& ��� ��%�% ��(�(  ��	�	 ��� �� �  ��"�" ��� ��� ��� ��� ���  ��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��"�" ��$�$ ��(�( ��,�, ��Ć":0                  	 
 �	��*�* ����:0            
 �	��'�' ʉω:0            
 ����� ��� ��*�+ ���:0            
 �	��� ����:0              �	��� ۊ��:0             �	��� ����:0             �	��� ����:0             �	��� ֋ۋ:0              �	��
�
 ����:0             	���q_X�� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��'�' P�� ��"�" ����:0             
 �	��� Íȍ:0             �	��	�	 ��:0             �	��� ����:0             �	��� ��Î:0             �	��&�& ��:0             ���)�) ��*�* ��+�+ ����:0             �	��#�# ɏΏ:0             ����,�, ��,�- ��� ���:0            
 �p�� ����:0             �	��� ِސ:0             �	��� ����:0             ��(��� ��� ��%�% 2�� H�� ����:0             �����E��� ��� ��� ��� ��� ��� ��� ��(�( ����:0                
 ������	����� ��� (��� ��� ��� ��� ��$�$ q�� ��� ��� ��� x��  ��� ��!�! ��*�* ��+�+ ���:0                	 
 �	��� ����:0             ���� ��"�" ޔ�:0             ��B8��� ��� ��� ��� ��� ��� ��� ��� ����:0             	���1�� 2�� 4�� ����:0             
 ����� ��� ����:0              	���z*�� !�� *�� :�� D�� Y�� *�� "�� +�� ;�� E�� Q�� #�� $�� -�� =�� G�� ���:0             
 ��"��� ��� ��!�! ��� ����:0             �	�J(��'�' ��(�( ��+�+ ��,�, ��-�-  ��� ��� ��� ��� ژ�:0             ���� ��� əΙ:0             	�����.�. ��!�! �� �  ����:0              �	��#�# ��Ě:0             ��L�� O�� ��:0            
 �
EL ����:0             �	��#�# Ûț:0             ���� ��� ��:0             �	��� ����:0             '������5������& d�� l�� }�� ��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��	�	 ��!�! ��,�, @��� ��� ��� ��� ��� ��$�$ ��&�& ��*�* ��� ��'�( ��� � `�� m�� q�� ��� ��� ��	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� o�� ��)�) Ɯ�$:0       	             	 
 �	��(�( ����:0             	�	��3��)�)  ���  ��%�% ��&�& ��'�' ��	�	 ġϡ:0              �	��"�" ����:0             �	��� ʢϢ:0             	���0�� 1�� 3�� ���:0             
 	���'\�� a�� T�� Y�� ��� ����:0              ��� ��� ����:0             ��3������� ��� ��� ��!�! ��#�# � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��&�' ��	�	 ��$�$ ��,�- ��Ǥ:0                
 �	��&�& ����:0            
 �	��� ����:0             �	��� ȧͧ:0              �������8�� �� �� �� �� �� �� ���:0                  	 	������ ��� ��(�( ��:0             
 �	��)�) ����:0             �	��� թک:0             �	��� ����:0             ���� ��� ����:0            
 !�����������j��� ��+�+ ��.�. ��*�* e�� ��'�' ��� ��� ��� �� �  ��� ��-�- ت��&:0       
              	 
 �	��� ����:0            
 �	�� �  ��¬:0             �	��� ��:0             ��� �  ��)�) ����:0             ��c�� [�� ��ȭ:0             !�	���	��������/1 )�� #% T�� i�� ��)�) )+ ��-�- #') L�� ^�� ��� ���  " *�� b�� ��� !# !# ��
�
 %' $�� $& "$ 	68 W�� ��� ����&:0       
              	 
 �	��� ����:0             ���)�) ��,�, ����:0            
 ����,��� ��� ��� ��� ��� ۰�:0               
 �G�� ����:0             �	��"�" ޱ�:0             �	��� ����:0              �	��� ����:0             ����� ��� ٲ�:0            
 ��������	������ ��� ��%�% (��� ��� �� �  �� �! ��!�! ��� ��&�& ��)�) ��� ��� ��� K�� j�� (��� ��� ��� ��� ��� l�� ��
�
 ��� ��� ��� ����$:0       	             	 
 �	��&�& ����:0            
 �	��� ޵�:0             �	��� ����:0             �	��
�
 ����:0             �>�� ٶ޶:0            	 �	��� ����:0             ����,��� ��� ��#�# ��� ��� ����:0              
 ���� ��� ��� ����:0             ���	��[r�� ��	�	 ��� ��"�" ��&�& w�� ��� ��� ��� ��!�! ��&�& ��ϸ:0                
 ��!��� ��#�$ ��(�( }�	�	 ͹չ:0             ����� ��� ����:0             �����E��	�	 ��� ��� ��(�( ��
�
 ��� ��� ��� ʺۺ:0                 �	��� ûȻ:0             	���3��� ��(�) ��� ��� ��+�+ ��� ���:0              �	��� ɼμ:0             �)(��%�% ��'�' ��'�' ��(�( ��)�) ���:0            
 �f�� ����:0              �	��%�% ��:0            
 ��&?�� F�� @�� G�� ��� ����:0             ��B�� C�� ׾߾:0             ���)������%�% ��.�. ��� � o�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��#�# ��&�& ��� ��� ��� ��)�) ����:0                
 ���+�+ ��+�+ ��,�, ����:0             �	��� ����:0             	���#��� ��� ��� ��� ����:0              ����� ��� ����:0             
 �	��� ����:0             	������ ��� ��	�	 ����:0             	 �	��� ����:0             �	��!�! ����:0             ���(�( ��)�) ����:0             �m�� ����:0             	������ ��� ��� ����:0              	���;(��� ��� ��#�# ��&�& ��&�& ��%�% ��� ����:0             
 �	��� ����:0             ����;��� ��� ��� ��� z�� ��� ��� ����:0               	 ��eo hr ����:0             �	��#�# ����:0            
 ���� ��� ��� ����:0             ����� ��� l�� ����:0             ��B��� ��%�% 0��� ��� ��� ��� ��� ��� ����:0             	���K0��� ��� ��� ��"�" ��$�$ ��%�% ��� ��� ��� ����:0              	���#��� ��� ��� ��� ����:0              �	��� ����:0             �	��� ����:0             ��j�� ��!�! ����:0            
 �	�	�	���������  ��� �� �  ��!�! ��*�* a�� {�� ��'�' ��.�.  ��� ��� ��� ��#�# ��	�	 ��� ��� ��� ��� ��� ��$�$ ���� :0                   
 �	��)�) ����:0             ��� ����:0             ���������*�* ��� b Y�� [�� z�� ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� \�� ��� �� �  ��� ����:0                
 ����� ��
�
 ����:0             �	��� ����:0             ����� ��� ��� ����:0             ��d�� \�� ��� ����:0             ����$��� ��� ��� ��� ����:0               ����'�' ��(�( ��� ����:0             �	��� ����:0             ��� ����:0             	���+��� ��
�
 ��� ��(�( ��)�) ����:0             
 		���2 ��� ��� ��� ��� ��� g�� ����:0             	 �	��	�	 ����:0             �	��(�( ����:0             ����� ��� ��� ����:0             ��	��D��$�$ ��� ��+�+  ��� ��� ��� ��'�' ��� ����:0               �	�� �  ����:0            
 �������T�� �� �� �� �� �� �� �� �� �� �� ����:0                  	 �	��
�
 ����:0            	 �������(��� ��� ��� ��� ��(�( ��� 8��� ��� ��� ��� ��� ��� ��� ��� 'N�� ��� ��	�	 ��
�
 ��
�
 ��� ����:0                
 ���� ��� ����:0              �+�� ����:0             	���r��� ��� P��� ��� ��� ��� ��� ��� ��� ��$�% ��%�% ��&�& ]�� ��	�	 ����:0               �������8�� �� �� �� �� �� �� ����:0                  	 ������]��*�* ��� ��� ��$�$ ��
�
 ��� C�� ��� ��� ��� ��� ����:0                 �	��� ����:0            
 �	��� ����:0             �	��
�
 ����:0             �	��� ����:0             �	��� ����:0             ���� ��� ����:0              �	��� ����:0              �	��� ����:0              �	��+�, ����:0            
 �	�� �  ����:0             �	��)�) ����:0             ��@�� A�� ����:0             	��� )�� *�� ,�� ��� ����:0             
 ���� ��+�+ ��,�, ����:0             �	��� ����:0            
 �	�*���  ��� ��� ��#�# ��%�% ����:0             �������8�� �� �� �� �� �� �� ����:0                  	 ����� ��� ����:0            
 �	��� ����:0             �������^��� ��*�* ��� ��� �� �  z�	�	 ��� ��� ��� ��� ��� ����:0                  
 	���'�� (�� *�� ����:0             
 	������ ��*�* ��� ����:0             
 ����� ��� ����:0             �QP��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��$�$ ����:0             	�������� ��	�	 ��� ��� ��� 26 U�� ��(�( ,6: M�� ��� ��� ��(�( ��(�( ?c�� ��� ��� ��� ��� ��� ��� ��#�# ��� 7{�� ��� ��	�	 ��
�
 ��� ��� ��� 
EI ��� ��"�" ����:0                 	 
 �������:4> 3= &0 &0 *4 ��� ��� )3 '1 ����:0                  	 �������:	AJ 	@I 3< 3< 7@ ��� ��� 	6? 4= ����:0                  	 �	��� ����:0             �	��'�' ����:0             ��`�� X�� ����:0             ������U��"�" ��)�) ��+�+ ��� ��� ��� ��� g�� ��� ��!�! ����:0                
 ���� ��� ��� ����:0             ���� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             !�����������s��� ��� ��� ��+�+ ��.�. ��*�* ��'�' ��� ��� ��� �� �  ��� ��-�- ����&:0       
              	 
 	��� �� ��� �� !�� ����:0             
 �	��� ����:0             ��"��� ��� ��� ��� ����:0              �	��� ����:0             �	��� ����:0              �����4��� ��� a�� ��� ��!�! ��"�" ����:0               	 
 ����<��� ��� ��%�% ��
�
 ��� ��� ��� ����:0             	 
 ����� ��� ����:0             �����	������6&�� '�� ��� ��� ��� ��� ��� (��� ��� ��� �� �  ��&�& %!�� "�� S�� ��� ��� (��� ��� ��!�! ��"�" ��#�# %�� �� $�� ��� ��� *�� =�� D�� K�� ��� ��� ��� .�� �� ��� ��� ��� ��� L+�� >�� E�� L�� ��� ��� ��� ��� ��� ��� ��� ����$:0       	              
 ���������
�
 ��� ��� ?|�� ��� ��� ��� ��� ��� ��� ��� ^�� ��� ��� ��� ��� ��� ��� �� �! ����:0                 
 �����=��� ��� ��� ��� ��� ��� ��� ����:0                 ���%�% ��&�& ����:0             �i�� ��	��	:0             �	��� ��	��	:0             ���� ��� ��� ߀	�	:0             	������ ��� ��� ��	��	:0               �	��� ݁	�	:0             ������N��	�	 ��)�) ��� ��!�! ��� ��	�	 ��� ��� ��� ��	��	:0                 
 �������������	 ��� ��+�+ ��� ��*�* ��� /}�� ��� ��� ��� ��� ��� ��� ��� ��� %!* ��� ��%�% ��*�* ��+�+ ��	��	":0                   	 
 �	��� ��	��	:0             �����3������ 7h�� ��� ��� ��� ��� ��� ��(�( g]�� ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�# ��#�# ��%�% (��
�
 ��
�
 ��� ��� ��� ��� � Z�� p�� x�� ��	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� gV�� ��� ��� ��� ��� ��� ��� ��� ��� ��(�( ��)�) ��,�, ��,�, ��	��	:0                  
 �	��� �	�	:0             �	��� ��	��	:0             �4�� ��	��	:0             ���� ��� �	�	:0             �� x�� }�� ��� ��� ��	��	:0              �	��� ڋ	ߋ	:0             ����� ��(�( ��	��	:0            
 ���� ��� ��� ��	��	:0             �	��&�& �	��	:0             ���� ��$�$ ��	��	:0             �	��� ͍	ҍ	:0             �	��� ��	��	:0             �	��� ��	��	:0             	���*��� ��!�! ��&�& b�� ��� Ȏ	ӎ	:0              �i�� ��� ��� ��	��	:0             ���� ��� ԏ	ُ	:0             �	��	�	 ��	��	:0             �	��$�$ ��	��	:0             ����� ��� א	ߐ	:0            	 ��z�� �� ��	��	:0              ������=��� �� �  ��� ��� ��� O�� ��� Ñ	ב	:0                	 
 ����=;�� E�� <�� F�� ��!�! g�� >�� H�� ��	ǒ	:0              
 ���$�$ ��+�+ ��	��	:0             ����$��*�* ��� ��� ��,�, ֓	�	:0              
 �	��"�" ��	��	:0             !�����������W	 	 �� 	 	 �� 	 	 	 	 	 	 	 �� Ҕ	��	&:0       
              	 
 	���;(��� ��� ��� ��� ��� ��� ��� ��	��	:0              ���� ��� ��	�	:0             ����%�% ��'�' ��� ��	��	:0             	������ ��� ��� З	ۗ	:0              �	��� ��	��	:0              	���+��� ��� �� �  ��� ��� ��	ɘ	:0              �	��	�	 ��	��	:0             	�! ��� ��� ��� ��� ��	��	:0             �	��� ��	��	:0             �	��� ��	��	:0             ����� ��� Ϛ	ך	:0             �	��� ��	��	:0            
 �	�� �  ��	��	:0             !�����������{��� ��� ��+�+ ��.�. ��*�* ��'�' ��� ��� ��� �� �  ��� ��� ��� ��,�, ؛	��	&:0       
              	 
 	���"	PU ��$�$ 
TY ��� ch ��	��	:0             
 ���� ��� �	��	:0             �������q�� �� �� !�� ��� ,�� /�� �� !�� �� �� -�� 0�� �� �� ��	��	:0                  	 �	��� џ	֟	:0             	���u�� ��� z�� ��	��	:0               ����c%  ��� ��� ��$�$ ��%�% %$ ��� ��� �� �  ��(�( ��$�$ +3 �� �  ��	ˠ	:0              
 	��	�0j�� _�� X�� ��� ��� ��� ϡ	ڡ	:0             
 �& ��	�	 ��	��	:0             �Xe ע	ܢ	:0             ����� ��� ��	��	:0             �	��
� ��	��	:0             �	��%�% ݣ	�	:0            
 ����!�! t�� ��	��	:0            	 	���B�� C�� E�� ��	Ǥ	:0             
 	��	�0k��	 a�� Y�� ��� ��� ��%�% ��	��	:0             
 ����	����8��� ��� ��� ��� ��� ��!�! ��*�* (��� ��� ��"�" ��%�% ��*�* (��
� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� ��� e�� ��� ��� ��� *�� 8�� ��� (��� ��� ��� ��� ��#�# إ	�	:0                	 
 ��W�� O�� è	˨	:0             �	��� ��	��	:0            	 �	��
�
 ��	��	:0            	 �9�� ʩ	ϩ	:0             �	��� �	��	:0             �OU ��	��	:0             �	��)�* ��	ƪ	:0             ���� ��� �	�	:0             ��!��� ��� (�� ��	�	 ��	��	:0            	 �	�� �  �	�	:0             ���� ��� ��� ��	��	:0             �	��'�' ì	Ȭ	:0             �	��!�! �	�	:0             ���� ��� ��	��	:0             �	��� ƭ	˭	:0             �	��� �	��	:0             �	��)�) ��	��	:0             ���� ��� ��	Ʈ	:0             �	��)�) �	��	:0             	���+��� ��!�! ��"�" ��� ��)�) ��	��	:0             
 �%0 �	��	:0             ���� ��#�# ��	��	:0             ��T�� V�� ǰ	ϰ	:0             ��	�	 ��� ��"�" ��	��	:0             �	��� ��	��	:0             �	��	�	 ݱ	�	:0             	���
Xg \k kz ��	��	:0             
 �	��(�( ²	ǲ	:0             �	��� �	�	:0             �	��� ��	��	:0             ��"��&�' ��)�) ��� ��� ��	ų	:0             �����4��� W�� ��� ��#�# ��� ��� ��	��	:0                
 !������������0��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ 8��� ��� ��� ��� ��"�" ��)�) ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��*�* H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' 0��
�
 ��� ��� ��� ��� ��� x�� ��� ��� 0��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� �� �  6:�� H�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, �	��	&:0       
              	 
 ����� ��� ��	��	:0             	�! ��� ��� ��� ��� �	�	:0             �	��'�' ��	��	:0             ���	����������� ��� ��� ��� ��� x�	�	 ��� ��� ��� 0��� ��� ��� ��� ��� ��� E�� L�� ��� b�� ��� ��� ��� P��� ��� ��� ��� ��� ��� ��"�" ��#�# ��&�& ��'�' л	�	$:0       	             	 
 �	�.��� ��� -�� A�� D�� U�� ��	��	:0            	 ����������8��	�
 ��
�
 ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��&�& ��&�' ���  ��(�( ��(�( @��� ��� ��� ��� ��� ��� ��#�# ��%�% ?a�� ��� ��� ��� ��� ��� ��� ��� (��
�
 ��� ��� ��� ��� �� ��	�	 ��� ��� ��� ��%�& ��*�* ��	��	":0                   	 
 	��	�3��� ���  ��� ��� ��� ��� ��	��	:0              �	��� ��	��	:0             !�����	���	����O{�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� 0��� ��� ��#�# ��#�# ��%�% ��*�* 0��� ��� ��� ��� ��� �� �  h��� ��� ��� ��� ��� ��� ��� ��� ��� ��$�$ ��$�$ ��$�$ ��%�% `�� ��	�	 ��
�
 ��� ^�� ��� ��	�	 ��� k�� }�� ��	�	 ��	�	 ��� H��� ��� ��� ��� ��� ��� ��"�" ��&�& ��*�* ��	��	&:0       
              	 
 �t�� ��	��	:0             �	��� ��	��	:0             ����� ��� ��� ��	��	:0             !������������8��� ��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ 8��� ��� ��� ��� ��"�" ��)�) ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��*�* H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' 0��	�	 ��� ��� ��� ��� ��� w�� ��� ��� 0��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��� ��� 69�� G�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, ��	��	&:0       
              	 
 	��: ��� ��� ��� ��� ��� ��� ��� ��	��	:0             �	��� ��	��	:0             ���$�% ��%�% ��	��	:0             ��)k�� ��� ��� ��� ��
�
 ��	��	:0              �	��� ��	��	:0             �	��� ��	��	:0             	�����'�' ��� ��� ��	��	:0             
 ��M�� P�� ��	��	:0            
 ����� ��"�" ��	��	:0             ����<��� �� �  ��� ��� ��%�% ��+�+ ��+�+ ��	��	:0               
 �������w��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��	��	:0                 
 �	��� ��	��	:0             ���	��]��&�& d�� n�� A�� m�� ���  $�� ��
�
 ��� ��� ��$�$ ��	��	:0              	 
 �	��!�! ��	��	:0             ����,��#�# ��� ��� ��� �� �  ��	��	:0              
 �	��� ��	��	:0             �q�� ��	��	:0            	 �	��� ��	��	:0             ���������� ��+�+ ��*�* ��� ��'�' ��� ��� F�� U  ��� ��� ��� ��&�& ��&�& ��'�' ��*�* ��+�+ ��+�+ ��+�+ ��	��	:0                
 ����� ��!�! ��,�, ��	��	:0              �	��&�& ��	��	:0            
 �	��!�! ��	��	:0            
 ��� �  ��#�# ��	��	:0            
 	��� �� ���  �� "�� ��	��	:0             
 �����}��� ��� ��$�$ ��
�
 ��&�& ��"�" ��%�% ��� ��� 0��� ��� ��� ��$�$ ��(�( ��,�, ��	��	:0               
 �	��(�( ��	��	:0             �	��'�' ��	��	:0            
 ���� ��� ��	��	:0             ������>��� ��� ��$�$ ��� ��� ��� ��� ��	��	:0                  �������b�� �� �� �� %�� (�� �� �� �� &�� )�� �� �� ��	��	:0                  	 	���j�� �� �  ��� ��	��	:0               �	��
� ��	��	:0             �	��&�& ��	��	:0             ����*w�� ��� ��(�( |�� ��� ��	��	:0               	 	���C0��� ��� ��� ��� ��#�# ��&�& ��%�& ��� ��	��	:0              	������ ��� ��� ��	��	:0              �	��� ��	��	:0             	���A�� B�� D�� ��	��	:0             
 �	��� ��	��	:0             ���� ��#�# ��	��	:0             �����4��� ��� ��� ��� V�� ��� ��	��	:0              	 
 �	��)�) ��	��	:0             �	��� ��	��	:0             	���i��� ��
�
 V`�� o�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��	��	:0              ��)��� ��� ��� ~�� ��
�
 ��	��	:0            	 ����� ��!�! ��� ��	��	:0             ����,�, ��-�- ��� ��	��	:0             ���������
�
 ��� @��� ��� ��� ��� ��� ��#�# ��$�$ ��%�% ��� ��� ��	�	 ��� |�� =�� ��	��	:0                 	 �	��� ��	��	:0             	����� �� �� ��	��	:0             
 	����� �� �� ��	��	:0             
 ���� ��� ��	��	:0             �	��#�# ��	��	:0             !������������ ���  $ q�� ��� ��� ���      e�� ���   ���  ��	��	&:0       
              	 
 ������0�� �� )�� �� �� *�� ��	��	:0                  ����	�������� ��� ��� ��� 8��	�	 ��
�
 ��� ��� �� �  ��'�' ��*�* ��� ��)�)  ��
�
 ��
�
 ��� ��� (��� ��� ��� ��� ��� `�� ��� ��	��	 :0                  	 
 �	��(�( ��	��	:0             �	��� ��	��	:0            
 ���� ��� ��&�& ��	��	:0             ����� r�� ��� ��	��	:0              �	��� ��	��	:0             ����������(��� ��� ��� ��� ��*�* ��� u�	�	 ��� ��� e�� ��	�	 ��	�	 0�� 7�� Z�� f�� ��� ��� ��� ��� %�� ��$�$ ��	��	":0                  	 
 �	��(�( ��	��	:0             �	��� ��	��	:0             ���� ��� ��	��	:0             �POc�� ��� ��� ��� ��� ��!�! ��#�# ��'�' ��*�* ��.�. ��	��	:0             ��	������� P��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�)  ��� ��� ��� ��� ��� ��� ��	��	:0                	 ����� ��� ��	��	:0            
 ����� ��
�
 ��	��	:0             �	��+�+ ��	��	:0            
 �	��� ��	��	:0            
 �	��� ��	��	:0             ��"��� ��� ��� ��� ��	��	:0              	���/�� 0�� 2�� ��	��	:0             
 ������N��� ��� ��� ��� ��� ��� ��� ��� ��� ��	��	:0               	 
 	���"��� Y�� ��� ��� ��	��	:0              ����$��� ��� ��� ��� ��	��	:0               �	��
�
 ��	��	:0            	 �	��� ��	��	:0             �	��� ��	��	:0             �	��� ��	��	:0             ��k�� ��� ��	��	:0             ���7��������
�
 ��� ��$�$ ��'�' n�� ��	�	 �{�	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" ��#�# ��$�$ ��$�$ ��%�% ��&�& ��� ��� ��� ��� 1�� ��� H��� ��� ��� ��� ��� �� �  �� �  ��"�" ��#�# ��	��
 :0                  	 
 	���#��� ��� ��� ��� ǃ
҃
:0              �	��� ��
��
:0              �	��� ��

:0             	���;��"�" ��#�$ ��*�* ��#�# ��� ��� ��� �
�
:0             
 �	��� ˅
Ѕ
:0             �	��� �
��
:0             �	��'�' ��
��
:0            
 �g�� ��&�& Ɔ
ˆ
:0             ����&�& ��� ��
��
:0            	 ���	����� G}�� ��� ��� ��� ��� ��!�! ��&�& ��(�( ��.�. ��� ��� ���  ��� ��� ��� ��� ��
��
:0               	���"��� z�� ��� ��� �
�
:0              ��"��� ��� ��&�& ��+�+ ��
��
:0             
 �	��
�
 ��
��
:0              �	�� �  ��
��
:0             �	��� ͊
Ҋ
:0             �����������	�	 ]�� 7l�� ��� ��� ��� �� �  ��!�! ��"�" /U�� ��� ��� ��� �� �  ��%�% ��� ��	�	 ��
�
 ��	�	 ��� ��
��
 :0                   
 �	�� �  ߌ
�
:0             ��K�� N�� ��
��
:0            
 �	��� ��

:0             ��"��� ��� ��&�& ��� �
�
:0             	���-�� 2�� �� 3�� �� 5�� ��
��
:0             
 �	��� ��
��
:0              	������ o�� ��� ��
��
:0             
 �e�� �
��
:0              ������V��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��%�% ��
��
:0                 
 ����!(�� )�� ��� +�� ��
��
:0              
 �#�� ��
��
:0             �����5��� ��� ��'�' ��� ��� ��#�# ��
��
:0                
 ��N�� Q�� ��
��
:0            
 ���)�) ��*�* ��+�+ ��
Ó
:0             ���� ��$�$ ��
��
:0             �����U��!�! (��	�	 ��� ��� ��#�# ��'�' ��	�	 ��� ��� ��(�( ��
��
:0               
 ��7�����	����� (��� ��� ��� ��� ��� � \�� x�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��)�) ��*�* ��+�+ ��-�- ��.�. ��� ��� ��'�' ��� ��� ��� ��� ��� (��
� ��� ��� ��� ���  ��� ��� ��� ��� ��
˕
 :0                   
 �����S'V�� ��� ��� ��� ��%�% ��	�	 ��� 3�� ��� ��� ��
��
:0              	 
 	�����(�( ��� ��� ��
��
:0              �	��� ՚
ښ
:0              ���"�" ��%�% ��
��
:0             ���� ��� ��
��
:0             �������'�' ��+�+ ��*�* ��� u ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��#�# ��&�& ��
�
:0             	 
 	���+��� ��� ��� ��� ��� ��
��
:0             	 ����� ��� ��
��
:0            
 �	��� ��
��
:0             �W�� ޞ
�
:0             �	��� ��
��
:0             !������������(��� ��� ��� ��� ��� x��� ��� ��� ��� ��!�! ��!�! ��"�" ��"�" ��#�# ��$�$ ��%�% ��'�' ��(�( ��(�( ��*�* @��	�	 ��� ��� ��� ��� ��� ��!�! ��(�( `��� ��� ��� ��� ��� ��� ��� ��"�" ��$�$ ��&�& ��)�) ��)�) `��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��&�& ��
�
 ��� r�� |�� ��	�
 /k�� ��� ��� ��� ��� ��� 8��	�	 ��
�
 ��� ��� ��� ��� ��� K+�� 7�� [�� b�� h�� ��� ��	�	 ��
�
 ��� ��� X��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��%�% ��(�( ��
ҟ
&:0       
              	 
 ���������', ��� E ��	�
 ��
�
 ��� ��� ��� ��� ��"�" ��"�"   " ��� ! ���  ݥ
��
 :0                   	 	��� *�� +�� ��
�
 %�� ��
��
:0               �/7 �
�
:0             ����� ��$�$ ��
��
:0             	������ l�� �� �  ˨
֨
:0             
 ���-�- ��-�- ��
��
:0             ����� ��� ��
ȩ
:0             ����������Fs�� y�� ��� ��� ��� ��� ��� ��� ��� (��� ��� �� �  ��&�& ��'�' ��� ��)�) ��*�* ��� ��!�! ��(�( ��� ��	�	 ��
�
 ��
�
 &x�� ~�� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��� ��
��
":0                    	 �	��$�$ ݬ
�
:0             �	��� ��
��
:0             ���� ��&�& ��
��
:0             	��* ��� ��� ��$�$ ��%�% ��� �
�
:0             �	��� ��
��
:0             �	��� خ
ݮ
:0             �f�� ��%�% ��
��
:0             		���yS�� ��$�$ ��%�% ��%�% ��� ��� GK�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��
��
:0              	���js nw `�� }� ԰
߰
:0             
 �	��'�' ��
��
:0            
 ����� ��� ��
ɱ
:0              �	��� ��
��
:0            
 �	��� ��
��
:0             ����<��� ��� ��� ��� ��� ��� ��+�+ ʲ
ز
:0               
 ��	��������� ��� ���  ��� ��� ��� ��#�# (��� ��� ��� ��� ��� ��� ��� ��� ��� ��	�	 ��� ��
̳
:0                 	 ��G�� H�� ��
��
:0             �	��� ��
ŵ
:0             ����� ��� �� �  �
�
:0             
 �	��� ��
��
:0            
 �	��� Ѷ
ֶ
:0            
 ����� ��� ��
��
:0             ���� ��� ��
��
:0             	�! ��� ��� ��� ��� �
�
:0             �	��	�	 ��
��
:0             ����	���	������� ��� (��� ��� ��� ��%�% ��&�& @��� ��� ��� ��� ��� ��#�# ��#�# ��$�$ (��� ��� ��� ��"�" ��'�'  ��� ��� ��� ��� ��� ��� ��
�
 ���  ��� ��� ��� ��� ��� ��� ��� ��"�" ̸
�
$:0       	             	 
 �	��	�	 Ļ
ɻ
:0             �	��� ��
�
:0             �	��� ��
��
:0            
 �����=��� ��%�% ��� ��� ��
�
 ��� ��� ��
м
:0               	 ��I�� J�� ��
��
:0             ����!�" ��-�- ��	�	 �
��
:0             �	��� ��
��
:0             �	��+�+ ;
Ҿ
:0             �%$�� /�� =�� K�� ��(�( ��
��
:0             �E�� ��
��
:0             ���,�, ��,�, ��-�- �
�
:0             ��"��� ��� ��� ��%�% ��
��
:0            
 ����"�" ��� ��
��
:0             ��Q�� R�� ��
��
:0             �������i �� "�� %�� '�� 8�� ;�� $�� '�� �� !�� 9�� <�� �� !�� ��
��
:0                  	 ��o�� t�� ��
��
:0              �3                �  W	"�FO.���� 1           9876543210.K �,�� �� Z 0A � ��� `853B  ��^�
iq�{ =        986543210.,KJ    43 �2A  ��Y�,��         f98654320I  ��PR    �510.DxP(     9653 B�.A  ��P��<     96540.F���� ����  ��g?� � ~       98765310H �J  �70.C ���� ���� �n0 m50C ���� tH 9.!B > 9A �������� �:��T+  sli�� ��� ��A uiW1 trc� b9 vdBH��� ���� re -gA / sA� ��k�� ��� 1gA�{���� ���� � �����c��1�   #'+wtsrpomli	��� ������������� �cA�����-�   oib ��) [eha) 
wt/ yo/ �tna� �leɎ�����O ������������ )eA���\��Ӹ������ �e$� � } +     	  � + roigecb" b)�+ieB ����'� � �        skidc"� ����� �N �ǄA  gea��^��
�	(�X��      G � � � � Nafr�vusrpnmlgfdcb" �>   ke3 *  ie! ��Fj )    tsrdc �ȗ �� )iA��A   �ti!� �-� n A       �tshgc" /�i!A� L ng!� �M��ϵ �= tow�� ���) ea �� �� ic� �  n�+�rk�) &7;L�yurolieaH� ��  lc� �) � ia!r���-  te~ �   ec x iA��� ,eA���+  tsx�@�f)  *7 Eutsrpnl� �(  yi� ��iA �lia!C)  1ri!� ���������� 4aAn  }nc! �\ �1 ����ğvIi  	-roiea� ��R  ��us"" ��  ea� ���� �� �� �� �@   	uol W^l!A���� +iA`  tr)   xt� �   � �
 uolia"(� 5    6   �pmeb" /e!A�W ! ea!G �/ K  sd!� �1  ua!)  �ra!X tiS �y ��$�� �     
 34 8 vtsndc"S �  "
�	z	Q	$	��� p C � � n � � �� vurponmlfda"Kl ���� �� V.� ie!B� �da, �� ��˫m<�    �  % uoiea"� �_ � sr!{�	�	�    U u���uroliha"� ���< �� �  5�9  � 	 tsb_"D; ��J �oa� � �Pt_B�  ea#     vti"K   md�# �r � ia!� ��A ���Ę �� � `5 �re!B�  ic!� ��5  Zea!w�z'��� 5     ) - �4 9 G �tspmlifca"	r ���x�7  �ie!�� ����� �Ͽ �	 �� �����9 	ri�A tpa}T+�    ) (0 > srgfa"*   �ea!@� B   �   cungc"� �ɀ�x=�
,    	 ) � yuoiea"H ��+ WNle!�= srA x�ie!�k ��b �v5    sie!� �5  �on!� ����� �3	_.B���\ �� �_6E       tsgdc", �I  Nia!�	 �� �ɕ �_ �  rn!7 eax �j   �mc"r �)  zle!) �rc!` �R) " �oia!d� R   � �  role"� �) ; re!�4	�    sA O tpica"���|l�3� �    z � � � � � � �   xvsrqnmlifda" )�o!A�9   sl� ���ȴR mlc5 �S* �W wta!K �  tl!��~�     �
 xvrnl"@ r�sa!�S ������ 3_A� oaA��� �   x Cgurol"3 �  se![ � ie!1   Blf!� �  CcAZ nl�*/�m�   3`k��urolieaC �-   �tn!?	 �C	 ��� �� �1   �wu!8  oer>� � Y   "&0roliea]	 �ˬ ��� jcAķ  pl� ����� xl#	 ��) : sg!� ��Ȁ	 �7� �    	 �	  wurmc"T �;	 �+��6)   	.=ayuoiea1 �	  na! =eA� �1 ��������� ��	 �^)  � rol!)  �	pa!;   sd��	 ���d ol �h
 ��(  vc) ieF
 ��	 �U old
 �v ��7  �	�tie!�	 �I 3
 sp!-  rg�
 ��� �YreBIn"��    & 8 
< L d tspnfdc"
 ��� �   ����tnmlgd�
 ��
 �����^
 ����I �
 sl!��B5    ��  usoma"9 �l+    �yie! ) nA�ę 	ne�
 ��	 �� -�
e!A�+	 ��� 5_A��_� i (   �
    q tsrndb"< Y	  rd!�
 � )�
t!A�c�    o � tsnfa"v ��� 7lA�4 ����C=�   �t  �smlkf"= �  sc!�7� =   Q�	� swonga"� ����ʲS��  	/^�uoiea� � V- anl!B5   Ukc!M ��� �� �(i_BX�^� \    B
   �a axtrpnkid"� ���������1 � 3iA�3 ���] ��\ tda� ����Ǩ � ) tA {R)r uidC� �ƢZ'Z )     �    xtsngc"�
 �d �) iej ��#� v     vrnd"� ��� �    -snlc" ��Q
����  !L���yuoieca� ��� �x lf x_A�� �3 �Cui!N%  trm� ������� CsA� R)�oa!B� ���) 5le!A� t   �  �  xwtsge"! �� ����� T+ seBm   ie!�� E       �wtnc"s uteb!�  ml!  E	��4-FJ�uoieaE� �9 ��se! �z tf� �� �o:   ��
pda"�t1 ����spec!��
 ����*V.�]u� Q (      �  0 4 	J vutrpnlfcb"
� ����) �  ie!s ��� <iA�� ��a8� { )    � E   tsrigd"� � nfAHj 5      v�tron"| �!�/  /tc!� �	 ea!U � ��׀=   6tsi!�5 � pwsi!� ������������-  `
gc!- �+ Jorn!£ ��  �ie!ۇR)    �
Jvsfdc!, ��5  �ync!� � \B_!A �tA��# ��� &eA�ȸ]?   �	   gfdb"k^n   8J}oiea ��Ϡ
 �t4   � rpc!) rb  j��c�Z )  ! � � 	)euroliea."H� �ː � )Na!A���c   	 C oiea"ӄ ���& ��tr! +�a!A R)�li!B+� D   �  �sldc") ��ni!�
 �1 B rm!R oe� �� *rA�²	 ����^ ����� :iA��c   � iea!p ������� E,e!A��)  ?re!�	 �� �� lC �ro!B�I   � 'ute"� ��  V ur"  
��*���1�1   2 6 	I S p w �� � tsqpnmlgfdca"L <In!A   Swu" ��    �nl"�U��x )      �$ /9utoiea."1 �  li!+   Nea!T  nl� �7  ta�^ ���   hea� � 5 nA1   �fe! )�e!A�=J"�m�   �   ��		   vtrqplec"i �� �� 1_A�� 1 nA�x �ȧM� )     �  roiea" -�i!A��  q�poi!S �  gc!o�m   �  �znmd"- �4ie!���`   ih!� � wt!§^ -   �� ��romlf" � iA?  �fa!�(  � ec" �� ������E��?    '
 v vroliea"  zs ��ia"B�  	 ul" <�a!A�9   6ue!�� 9    s �trnc" �p   >ea!�= ~ui!H�  roia� �� �+ tqR IBol!�  Cpe!� �/  re&� } T       �4! rpmgcb"� ��M ��4   xc!�) to�  ��I����
M
��� +    p � � 'Wd��Jywutqpomiheca"M�W v^skb!a �  qc!��ι ��0   tm!�E� � �   ��  � xsrmlc"I   kg�
 ���� ��t roiU ��� 7sA�+ �  yi!j nm �� ��� ,(i!As� � U   � �  tpoig". zni!;   %ea!e �1  ne�   uea� x  ie!��
�9r���    � : f � � � ywroihea"B �����e ���� ��1 uo�   �xeqoc"�� -   �
�  % rlifd"� �� � ~T�[n_!B�  �� � ue"Bo:x^5  uK   # utsrpn"X    �ui"� ��� �+   db! �MO oa!BZ) icb�  *rl D�_!A� �oA   nd+ ^Ots!E  rnU�  @ - oea"� �  ni!+ Cse!h � lb!� �
 �5 � tr!� ������ �ґ) oiea� �f   ldq �v �ǒ) }� oid!���  tnl �+ �  rk!�m ��s4��  Ht�rojiheai ����� a(0 m'!B7   �ta!�� ����� � rp!� �� ea��H�����ܔ8����g�T�RZF�?&5b*_"l!<���%5�����4���P�۽>����)�������>�G�  ) < � g��)�A	"
Q2T��T5��~fpv����
V�zyxwvutsrqponmlkjihgfedcba_9876543210#%      �       ����(�2�9�>�F�P	�U
�`�`� 0�0.0�01�03�04�05�06�09�1�10�100�11�12�14�15�19�2�20�2024�3�4�40�44�45�5�51�59�6�75�99�abil�accept�across�actual�aggreg�alon�amini�aminiconsulting.com�amount�anoth�argument�ask�averag�avg�becom�behav�built�calcul�can�case�categor�caus�charlott�chen�claus�collat�column�combin�commonli�conc�consid|vert�count�crawford�current�databas4e�defin�determ	��iffer�distinct�donat�duplic�elena�email_address�equival�even�everi�expect�explor�find�follow�function�group�hello�hellocorp.com�home�id�ignor�implement�includ�input�instead�introduc�keep�last�like�marcu�max�maximum�m1.ca��mind0imum�moreno�m!�pl�name_first	la
ext�non`standard�note�null�number4er�often�on�oprdutput��perform�pleas�power�previou�priya�produc�requir�reset�ult�return�row�run�scalar�second�sever�similimon�simpl�singl�specifi�sql,analytics.ioite��`string�sum�tabl�task�thin�iough�time�tool�topic�total�treat�type�unfortun�us�user�user_id�valu�version�wai�well�will�zara�zero�0�00�0:�7�08�.99�2�13��6�2,24�25�26�3�3/30� 9(5�50�58�6�660�7�8�8add�a�A�0alphabet�also:ppli�aa�automot� ack�bar$se�begin�b��iour�better�big�bottom�branch�bucket�call�can�care�case�categori��54eck�chip�classXus�co�coalesc�code�cofflogn�Uum mAcompoun�? mA�AG i�E n� c!� c%�Dcritic�crunchi�cus�BV_arrive_�desig2frectli�hpla,tributor�dog�q,asier�els�en��en!Berror�eEBexaA�exp��4fall�familiar�i�fl��$food�fresh��lide�g��Dome�howev�human�hya� i�m c2�stea0teg�join�keyw�Xlabel�languag�left�likelihq(limit�logic�st�maintain�mani�match�misspel�mix�move�� m)�mu����tur�need<s_restock�newli���igh�� e�� o!х�:�Dverlap�p.price�pag r����,et�pivot�pla"��res�k���� t�� ta�\program�purr�quantiti�qu�C4quicki�re�read�yre�!"ing_	�l� s	��ruc!
re2-��3le�8ale�sc�8schema�seen�sep�Nt�shifow�B i�P�J o$omewher�so�c p�A�sh�sp�sheE�h�Xtemptatu�_	�suAfsu�Fswitch�qechn�Wqu�terE" t���� g��(ini�toiletr	p�trai�� e��der���un�urg���til�eNvendor!� w��ant�w��wr�F�	 7�� 0�	$234�12529bB�	23�� 9��0�35��4.3�4.5�4.6�4.9�	��83�567.89�571afa��7�703afc��09504e�absenc�"�	tiv��	���� r��asdf�av!$ b��asic��ligint�binari�blob�boolean�bu�	byte���har�ac�4�Ybi�`AK�`lens!� n�	eated_��!� d�
�	A�rag��	atyp e,tim�deal�dec�	hdep!�det�"�	git�r)diA�i�docuE�hdone�doubl�dynam�effici�eitA�y&�	ri�{�	����Hexpos�extra�fals�fe��five�fix��at��A�vfri�fu
 arbl�hexa	�his���ur���N0cats03�imag�i��[�ins*)
�i��json�j�8�� know�largLer�learn�length�less�� �lilacski���0look�lucyloop�ñ�x_pix�� a�
ABmediumAmicro�IPminut�modern�month�mu���my�An�naA֭� g��Fv
@bject�oracl�p�pad"b
tposittgreXpragma_�	e_info��cis���file_%lpur!�(r.patel�rat�� l�� l��rea!cregard%>rela�����re�&en.�
��n�s�
 e&�
 r�
o�s��how�
�
 ize�small�����a5sp�� a	&��squ��.art�A�ag-$ppo uynony"5ke�F�,mestamp�tiny�2:rue�tg	Gty^un.�qu��Ua� usual�uui`ar��var�� i�Wvarq���� oo��hole��(ithout�workXri�x�x'f00ba3�xml�year���j� ���ccept�a�ereg>�ong�	� l�� ambigu�an�pp��rbitr�� arithmet��
associ�.��.� s�8 g�(�#'J� h�>�R��P n�� c�orra��F"� d�G�;�3J� c�z�"�"� i6�,ensur"�en�mpl���il� f`F~� f��ul�X��ener�gB�elp��B�N��~juli�i�kei��d���,cA
�mad& k*ig��lth2cgot:Q wNEpair�p�2�"�:.�f=
N&nall%ceiv�re�
 rq m!� r^, uJAai*�selAY s�
.de�siKth�s��2 qa�L t"�
um�
���
�0 t!�tell�
] t�
oga*�
c�iwohIS�
 n��"�
��endo�
"�
��yet�kk75f l�� dvis�alialow����cyth�}b�bad�
._tesi(scad�k uW
���	 y� chen�choo&-:�
*li�; c s�cUre& r] cjbcid�d6�
ifmd�asil&u
Nr
��y�
��.} o%i�tree�f4	>wetZ�\
dic�in�� i��ustA
n�lad�I
�G
� f�� n�~(
��rcu�2�ea
��ar� 
���� cO&�rphan�ou��peopl���	plat�]��;
sib

acZpre���	 i:� t� r���� r!� r r 
ions�repe.
.
"�rie����� r,
cen�6-
lf�ʕ��sinc�(
om
j�� g
��synt < �*� s:�wo�	 e2�	a�val"�	er��herl��zarag	 21�"�� 2c5�"f 1f<0�46�49�5�6�7�7mE|8�_�lott"6I	 �*also�4	f����! n: y\	�">	 b� b! c��ha	m�� l 	mpomplex2 u1 n��q>�vi�ault�a�S�eff@�H.net�.org	
_a�ntir��Z x�n�facfe�fe�� u�:6"�#mprov&�!7�F(index�influ�z rB� j�jmitchel�� _4��E�W��Nx1? .��S��J�H t� n�R�::� f%*�pa� p��"���7�N0�/each��!�.�ownumm� a�u�6�m�.q���� b� s�a� xm�e� y}�i�weR� w%�zapzoopvi��,2,3�2�a� 5m� 5GI�agm�f�e�� e�ax�a}�� c6	m� n�����ed.D _u0 q\	�� g�er>Xa�K�I�aA� cAl.com���F�F^�gatM�"�]�outnpa� n��� c:�"nE�|.v�A�M| 6a�JMZ�!ic�updat�(�
wildcfM$�2f�3��4�
�
*�mos�� i�i mjany
H"`�<*�
pabl�
E�"���
�
 m��" nE�����
^��?��de�55icmIscrib"�ER�
d�%�qa[ f%fl�&�$rmat_trans'unB�
&�andllJdea&"���
�rpret�
&~�� o�/�md^^Zq^2���out!� re
�b
&�"ntf&blem'Ablis�1cR5
/nu�Y�	i�:
O0olv�spot6� q>�&li�7!��8 mb@Q��� n&� s6>*�ar"�ad�A�window�C
drew� k�H[��J
fJ
� g�"L
"B�$�V
2�sc�a� dii��s�&Dev�Fq�62�
hron  �� lbcolAY&�#���
ariso��pil�
�96�N�2�
�� m"&�sc=2�up�#arli���z�
�	� i���
icit�ens2=Z�
igh���gnor&�
a恊 g:�
��
"�
��!��owgb�etho�# t:7BJ]��ocas�#�>�
�#ld�*7��icu�A��  o��"�
*P
����AK"hm e��w�rtri�
� qE{��� e�rt�J� p�R�F��X��Wxt�thf��.�)nico�
unrel:�"oEeb�white�	 lZF1�2� 52vn(�"� b�*. hen2��1*� l/D#McoE�N5#� ia� u�"��}��e�zv�6yindividu"�a�tqg�$6iaEJJnR"ici%S r.H��&#Eiquo-ot� a"HZ�a��rvA�A���b':�&�:� r M��w�*S eHlu2m� t�`2["�*J�& 0"�*.�& 8.�&3��*�&28��&"�& 52' 5Z�& 9H� i�����krchN!ed_�((s_2023�area>�&�ig��*z�&ha-!�irclug fN�&�z�<A	Y#
.0pi�Zhi6r!+ aAydatJ.�;�ia�
a�6;+"�&6P!�� n>�&X!i�ex<	exclus�eZ!aQ!X+�*��&roupW w�O c�horizont� d�{��>��"����rs[itemo k�+D!�	 l�u��u#!J�\*� v da�z�&�� n�r���*�Z�&�������rrv.��J�& uDs�N���>�&j��+��"�+ e&�r
A�shJsh�_lif2�&hr�+&�im�j�ck�  t�&a4ur�subt��succe�B ��&�& m� k��*� p"� � t eF��` s�"�venn��.ic�&)whatevb���$thin�year��6              ��
ɭ��
#                                 ������������������ҭ#                                 ��������������������#                                 ������������������Ȯ_id        p>_all       ��content       ��id       ��title       �1url       �l     ׃     ג     ע     ׵     ��     ��             n�     ��     ��             \�(
�t � t� t� t� aggregate_functions��aMore SQL Please :  Aggregate Functions users | id | name_first | name_last |       email_address  |
|----. . > 4|
| 1  | Marcu	R$| Crawford m@mc.cav  x 2#Elen| �no#| e4@hellocorp.com< 3<SimonChe s8@sqlanalytics.iWx 4/PriyxAminiI| p@a$consulting~� 5<Zar; |2< zarV; < 6/ CharlotteNULLw |> |
 dona)�-�!� _%� dA| amountw!�
. �%� 1KP| 2024-04-12 09:10:01!0%� 3�049 12:40:15 | 10%� 5:0 ,5-01 19:51:40 40%� 2F0 3 14:�� 7	Q� 5�99	1� 6`01:11:44�a0%�>� 6-04�01:59 |�   The }�| topic introduces the concept ofA�,ple/scalar fq�$, which ac) zero or ma�Dinput values and p	\0 a single out#  per row.�#g�  are categorized differently because�y operAGon	�than one\�@data at a time. cAd()  is ar7 t�column���a:*  as	� . Insteada returning	k$though, it	OA�of�0 total number rows.  Ifg0is specified,3�,all0 i�e table1	� ed. Think,it�ask�for a;L"includT	�s".  ru��reset	�	)F�  r% edY iIK�non- �*�2c �"9�can-�%,DISTINCT  cl%�I�Es dupliA,_D to be ignored by A�[. Here)Usecond "�I" last�not )"ed1l%�>!<Another commonly��d agg��y!(  max() . I.lm.fand-X)Nmaximumi]aG!�!�MS)Xa�6* $is determi!�M4same wayE!�$ORDER BY :!/followA!9curav  � l��  ELthatM� ype. To imfind<���N  () 2usA�Keep� m	> a!�Lite%)ga�bases,L%NY$have versij��� m�0ple argumentsMG�k actually >�	C perform a�� task>!�  sum2� calculat�fsum!�!�.�9�	every�l!�!�qC t3dwi�e�"4. UnfortunatelA�isArequi}�	standard%Dseveral F�s be%Y tLway�fVa)�0useful if you%Texpec� a�erical�X(ult so some9� lik=
!�m i��!�aQ!+���tal2e%�)
s 0.0AL� c�
M�V�avg2K =�an a!ge)� across%�A�iyIt!a!`valent��run�� /�B�NoA�gae�at �;F%H�	ide!�/�IQion. Iu'stra�II)can't�conver!Kinto!�bers, su�� "�
" ,utrea.0 z11#����3Theraee ofte�built-inR]toA>kwell![abilitydefineAYr owVE simi�toB�Vca�powerA�tool!�9but�hA�ev�M� wa�comb�Vwith0   GROUP�I6�wei�expl)	8next. previous:.�	 hr  # :Pu� _�P s�7"Y /J' �t �+ t�+ t�+ t�+ case�+�More SQL Please :  CASE products | id |  name  category�price | remaining_stock | vendor_N
|----V 2 . |
| 1�DCool Splash Cologn�(| Toiletrie�$49.99 | 25�� 2U 2U)' p�-)ChipsFood- 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:�  |�� 5@Super Glide Floss!>T 1U19!	 |�U 6:,Big Bark Dog.� $ | Pet Car!| 3%L |!�2 . U 7:0Soft Purr Cat.V �U  8UHTiny Fresh Scent Tr)�(| AutomotivA�I9 |�2 6� m
A�a*>Z~'�E�4Quicky Express	�Co %E� GA�<Times Distributo� 
%� | Natural) nD!EWHyALogisticU !E#0Vend-tertainm!$|
 ordem	�Z�	  quantity�G  date_. eiS%arrivJ�Z �6 4�e� 4ErH2024-06-01 07:58:05Ay3 09:04 
E�.�*H2K (14 19:30:10!	a26 14:2	 
-�v�  7�9:01��7-1	�	 
E} |!�| 5>� 7-�1:00:07�07-09 12:50:129� 2I���24 06: 3(30 15:05:00K�3 �5K 8-15 16:42� 8-19!�Ke� 6J!�>�  9%, 8%, 1A�ULL1	!,e� 7	| fK 5:0�AVK    Th���O ei��ion allows you to add conditional logicyour que��8. It is similar t]\if ... else  or   switch.q $s in othera|\gramming languages. Mostagabengines	� a .� 0to return any:, type but eaD WHEN  "branch" of�state�mustE� sWE. In�ite^ can be0ediHthese examples will!Q from�  	��This; sh!�(a common usp<se where we want�Lcreate custom groups!v0"buckets" for}$data that ��not part1%k,schema.  runAnresetE8U!� s�x9�9E-0compounded us%�AEal opera��likA�AND  an�^OR . AnIth7to�e about�1�sis	� iE� evaluatedEd��)ntopN(bottom, lef%A r�. ForI'rowI.� a!ult%Konly�first maA�,it encounteraEZre-j	%A�ndaD  supply a!aELSE.� ,	�� e	�bepre�. IfDdon'tFJ ,  m�isM{ed. Not)
howL "F�	 "a�`D could technically	�E�m4"Crit ReM", "Urg�e%� " Soon"� iA�,However once!A%JesJ\ �resU�QisA=�!a$we move on!�a�next�. YouE�utiliz!\ is behavi��or%_A�design�� such)�none1q�As�%�overlapNOprer s�Q y�E�$ed alphabe%aly beca��newlye] uA�columAFneeds_!$� has a t�aم�E:�:ed! aI��=!4query/!	also.�y�to�4  ORDER BY  cl�Ux�w t!i�	S���{kddaݜdirecta/fte���keyword;	[is A�!A "base"G��� c�H�+  :8 . When a >=[�
A�	:�eE� a��beginb6Pa� em�ofBv  determ��0which integerw��a�As! a�y ,�et!way!�structurM�-�eɁ? o�B C�NTable�ions Cet up%ʉkp dI��rula�An5ą%v�
se!<)
  �g  	$e page.:T�!�be�E�check�i��a�(display a m$human-read�valuA� n�pl�+ s�`!�HCOALESCE()  perform�6�func�V� Y�Ab�usAg s�Caggreg�!{���  GROUPe�(s�  avg() V� !%e�1*a�n inpuɖJX  .R��queANusefulF��E�!�F&5of�9h b�NG	^��U	� a��separ!{�pa�o<familiar with sp!�sheetsa�� e�o�2T
 a��kpivot t%�  ��Q�Lus�� m
of�� class�	�0(	sal���- i�	*�	 wE��$LEFT JOIN m�3includeYAc$at have no{ sl�� ">� "	S�t�E�D  p.	�-�* seű%.�,to fall backtheir   �i	_�� 0B� H�!� h�!�
  �	ve ��w���	j{a  UNION��be easi��:	in�&un�tand��stead�I�� o�	�� us labelsA��9�*� s� m�	on,1�@�x  i d-�reduc?he�]lih�of��D error by misspell�7 o&&�some��oa$���re-��b~��[,multiple pla� ie��� ry�\�)�limi��am�
�duplia� code2� writB�� :�� ho�j	 :-�!�Set O"�0caseCASE/case�t �* t�* t�* t�*	 group_by�*�More SQL Please :  GROUP BY products | id |  name  category�price | remaining_stock | vendor_N
|----V 2 . |
| 1�DCool Splash Cologn�(| Toiletrie�$49.99 | 25�� 2U 2U)+ p�--ChipsFood- 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:�  |�� 5@Super Glide Floss!>T 1U49!	 |�U 6:,Big Bark Dog.� $ | Pet Car!| 3%L |!�2 . U 7:0Soft Purr Cat.V �U M�A/A�>~��E�4Quicky Express	�Co �Ej GAO<Times Distributo� 
%� | Natural) nD!EHy!�Logistic5� |
 ordeL	�m�e��	quantitya�  date_: eI�%arrivJ2�V�!�%: 4�ih| 4E H2024-06-01 07:58:05A'3 09:04 
E?.C*G| 2FW (14 19:30:10!	m26 14:2	 
-���  7�9:01��7-1	�	 
eB |a�| 5>� 7-�1:00:07�07-09 12:50:12E3e��2���24 06: 3(30 15:05:00We�9�~W  8-15 16:42� 8-19!�We�6 6 1> 9%\ 8%\ 1a<ULL<!\ 8� 7EJ9� |jW 5:0�CVW    Th���U�< statement is used when you want to group results together so&Tcan find things out abeach	=. ��imostnful	ppaiąwith an aggregate function, which in this c will oper*once forx\ instead of all the rows�.  run!` reset You�,use multipleJ�  s�2� to) m�informa�B s��by>� )�(HAVING  cla�!d$be appliedj2{ 1)$nly includ� i!3 e)�( that match%	a. IE similaraWHERE�but	�<key differences:(filt��%bbef!they �7 gAEed an���23 after	) s4!Ced. Bec%ofAes, �!�  J	�%*accept!� eIEd values>ly-ae along%�otA�	ZLs like   JOIN . In l��, lAetimeA�how D it takeAo0 receive somee*���in-UE�examAz w1�by�� n�	    avg() u&)�!�of e�j!�m� e average,u?. W� a '��id .^  � b-�	@s miQ
hav	� s�� as one an)eA]I,lways	2Xa unique id. This ensur!QA�ouU.contaM�correct�data�P	�(. julianday!D0is a built-in9Rkhelp� perA�4 arithmetic on� s!�itB�If�,supply�ZcolumnE :�e/. ba��on���combin�j s!�	� rom thosed. Here2Rbot�v	&6a�AEmonth4mad!�-TA&%g�� count(*) �� t�Femany��inI��, tellaus,E� sGreF4 >� Nasets say�ѻseIx m�prec��Z0 totals first�ORDERg��mat� en�F!queryaIsor	%( s�descend�h>� ��DISTINCT�\��add��N��%V()���0 c� e2� ��%v�� tM� s!!e�!ȅBto make an/�negoti�j!best[s. With��  F� e�is-9@it would return aA	�A� a���%V�Qm even i� e�Qi�!�ea�t񹡑� eq����$we had two&�	I s�reallEN�o=onB�j	�a!Raxeir ownI�	N�� r�und��2���schema	EA has+	h�ala� e!it!n't	ed yet�-I� sA4us unfulfilled	_ s���6_ E�  �
>6  .��Mqed �� m��"��� o displayI�"Not A�" or "Pi0",Q cE�ELcoalaR��

  >T A��ual,�6�A�::	nyAgthese%# iA$�^A0���
J2^�by)8-��also%��7��a&�be�0} t^B� ny selec!o�7�ATnot pari@R;or
 di�=* 	h
LcaE"bare"k. M!8data�� a�reat )(ENn error"E� c,e ambigu�in�e;�r� .�C does�ow6c +$it's genere�recommen�>!to�} ml y.a%� I"F e{�
$ arbitrary���be�	!�to:�� s| v�us�>�(previous: A"�Fu�Aho�$next: CASE�A_by1� /group_by�t � t� t� t� limit��More SQL Please :  LIMIT users | id | name_first | name_lasage | 	0email_address	$last_login	|
|----. 		V V |
| 1u7Marcu�$| Crawford25 m@mc.ca	�T | 2024-01-01 09:10:01� 2Elen+| !;no9| 40 e4@hellocorp.com  	X,2-12 19:29:1	X 3!Simo)| Che	�w s8@sqlanalytics.iy | NULLb. ! 4Priy�Amini'| 3%' p@a$consulting�103-24 16:40:00X%AZarW |6X %zarVW j�  6Jame%�Mitc!L	Xjm@eAl.net�"^ 7 j.X weber8| 4w w Uorg |bX  8X _CharlottaDavi	� |� c@zapzoop1�5`E09:49)`   The q�t clause limits the maximum num�Lof rows returned by !��}SELECT  statement. Other databases can have different syntaxes such as   SELECT TOP ,   FETCH FIRST  and   WHERE ROWNUM . Somef$also allow��]�E�INSERNDELETE�s which.<effect of those �s to%&$specified 10amoun4!0.  ruef8reset Without aORDER BY� ,3  %,4no default sora04 order in most�(. This mean!�at usingJ w}  .z 0an produce ina�istent�}\ets. It is best practice!always- y2X Din your queries, e%+ally w�yyou arMs�Aureu. 69OFFSET  �be appl!vto.� to off!hMY�-)helps�scenario!�ere�needGI� r�	34maller paginata a�=stead ofA��a at once>� If	\u�,reaches past>total]NNto� ,$!]$y will jus!�a�R? as if.1was not1OJ� I�-}�� -Vno�>n You%�computeǍ~A-supply!�x6�M�,rithmetic,  �F and o��	Vations!	loa$a2 e-�A�a validx0eric type. SeE��$'s documen	R for, shatibleep5�>� ��ti��but)�eN, addaF� to!	iT y%+<improve performaEj TE�a\ aȭ�factor�$at influenaƁ<incluu: how�lex u�y is,,many tables bA�ied, wW  pres�C oM�/, !�whe%�F� actu� maH.r orA�thed ye��wsca	Xentire	�R$ways. Fewey�� m�e sizea�WeQI�ed over!00etwork connecA-AlessI  %�mor�/%t% .�vious:�\H home   next: Opera%��f(LIMIT/limit�
t �. t�.
 t�.
 t�. data_types�.�XMore SQL Please :  Data Types profiles | id |  username   | active | friends | rating | p	:_imag#$created_at\  | data_storage |
|----	
	> 	: |
| 1|lilacsky�| 40!4.64| x'89504E...'H2024-04-12 09:10:01!sdf0f 2,lucyloop| \	 | NULLo	 |f1-01f50:12�234#  f 3E$max_pixels 1	!| 67
4.3�703AFC6� T3-29 19:30:53 | 567.892f 4Xr.patel� | 35
4.f12529B6f \6-24 23:29:29 | X'F00BA3&!2 5O$ilikecats0�f 2�| 4.f571AFA@527-0512 09a	8|
   RelationalE��bases typically require you to define which&e of8!would �,Aˠe in each column. This is done at the timItableiio,i�StandardHs over 20 different	� te�$for things	�4numbers, text,*(es and more� e various%x vendors such as PostgreSQL, My	icrosoft�2Server,XOracle�;!O8 may not suppor�m all-they"-[8their own extra	��,is example u!�$a built-in�ite func!9  !�,ed   pragma_%X8_info()  on our��-yto show.��it)� .n!�58in that insteadAexposing�of�se=�%�0, it simplifiAy)�)��r by uIjust f�fbasic	B$: INTEGER 6whole1�. REAL	flo��<-point (decimal),TEXT	,A) -!� dE. BLOB	binary��� represent�$the absencE�any�!�� .�Pm_aWcan1�i% s!�,allow or dis	  	p s-  . ANY !�@a special keyword� aP)�gacceptJ� SQEBis unique�)�t also	�s dynam	� -!� dcs. See�/ sAU  !!al detailsA�!	%s. E� 64 has a maximum�Aage siz�bya� w�|(will limit A� ma�Torbig!pa valu��!6�(row. Depend!�on!�r voc�E�reasons�learn*$!�a�ora�need!�know thoA�	� ,@q�A!��	�of a	�!<. Don't worry ifp dunders� wau a	Eis —-�nform	ơpncluded��a starE�i!�	�who want��%�. BeA��%wsee!�-	0complete list��s from�!)��,and/or avail��to��A+other�aw enginA run��a]t Numery�@TINYINT ,   SMALLf    MEDIUM�smaller �� tive/nega	��1H; takes less space.�_  !�  
�izJ . BIGlargerVl %Hl6� FLOA	�<DOUBLE PRECISION� RB�-�N���a  \} 4EEHs (around 6 digits)!�aZ ,8F� yW 8:C 15D�  ��fsu_^val��toa	�$. Sometime�{E�use� (n)  wher n�a]a� a�:!�A`af�WusaZ$ECIMAL(p,s��NUMERICA38exact-precision�A-bV�|p aWnd�) "7 "E�������amouni6otal--R s6R scale�N )�!Q!righ	ehe ��	�. Bothm�exa��hi!?���but mosdernE!�s t�   -SQ�-O  �qsynonym�# y|AP@ '
cument��to be su�	6(Text/string	�: CHARE�0fixed-length 	(s.  A9~�+�$characters%$0��(have. Every�"	! e	,am��	9 regard�6offe�0inserted,s areE!�@�Wbe pad���
runc!. VAR2� �
�?~� `�fYk��
%Pa�	�&	Zf  without=pecA�d f.� t�
���%N).���kes�	Q .:�Date/T&Ss: DATEYda��E4he year, monthaday. TIM3�W� y:: hou:inut)�second	>STAMP��Rj	 m
of baY��q"8does.	�" yI�al�E�Ap�D sE� ;/�  =�%lpurpq!QZ s several&*"$ s)>workg!�lAm>�Bi�
-�BINARY6  m  .'   6�!�B�!�Y���)rowAzllM���c��* i�~�:A�a�1A r*:�dq>� �y�&{aq�aobject!���� "� "2�M L� O�".��
X�Z&-u/�
�)| oJook Oifeed�� aW
�  -7. In��lity,2N in � n�	!c�be reQ�a�garbleda�0display squar�
 T��x'w[�n �!�act� b�#�E	hexa��"O5".into:�6*Booleanu�OOLEANi� true/fals�lu	� is means �.�� mkeit� b�TRUE��FALSE�	4�no�c  r�+; b������-p h�	te  
���!�  1�>� O�es: JS>
 -)��wAP. M�� m>��� featur�nd�  t�al�� f	ly�(aWXM_XMLBt  S!Pal~w �H� y�2�b	�UUID)
nID\	ome)X	 s	�� aax"+!. sI?WE�s	tored���!
� a!��(efficientlyb n�. -e�X. prevI: DELE� h�  l _% s&R(/data_types�	t � t�	 t�	 t�
 functions��>More SQL Please :  Functions users | id | name_first | name_las	0email_address	 |
|----. . > 0|
| 1  | NULLP  Crawford marcus@mc.ca(
| 2#Elen| �no#| e4@hellocorp.com  � 3<6x henLsimon@sqlanalytics.iW� 4#PriyxAmini=| p@a$consulting~� 5<Zar; |2< zarV; $ |
 transa-�-�!� _%�date]amountz!}
. �%� 1LP| 2024-04-12 09:10:01!0%� 3z049 12:40:15 | 10%� 5:0 ,5-01 19:51:40-41`%v 2F0 3 14:�� 7	Q0 5�99	1� 6`401:11:44 | -10a4|
   Most relaaal!Kaba1�engines support the ability to create and call fuq],as part of ae�$statement.	nDalso have commonly!�d ut	^K<lready built-in.}�Pthat accept zero or ma�,input values�Lproduce a single out#, per row are�(ed "simple"S"scalar"�. There14other types of$	� work with	�than one	ot a time�theyQtgenerally grouped into  AggregA��: Window .!� e[()  is��� in!�ite�!�turn� e currentDaI ./and most�da:-Hwill publish   docu!�E]A�on5��(s availableAYuse.  ru0reset� c!Bper!	on%Ire�n)� bESbined �nests longA�A��9�E3	CI s%�A� compatiblz� {alA>in alm!%anyf6� It!�imakant!	�Hider  ���Q� i2A$nd understhow�IRTinterpreted. For examp!l h�4lengthA*qw[SQE rM�, not 0>�coalescYo6�X ta�ndlwɅm�byj i!�$ "default"	  if��you��ly e?atesZ�>� Some�)�capEl���?	vvari a�>rgE�i� si�-�	0dic^. A�5e�Vstrcformatn1s lik!printf!�(o!�	,() )�n(y often tak!4 a "template" _� describesE!, wENheM�.o begted,!b nE�number2� 	\�	ly)mBo fa�itA2��|. In this case,   "%s"  means we	� a�ype�appearE� spot, and@.2fJB floa!J-point�roa dA<two deicmal placI%Jj !�fun face��� i��ch a1�problem_solve	, ma�programm!�languag!���  =�or sA�similar%�!jitR�da:_!���}lcustom�"	 u��%�L  CREATE FUNCTION ) �� O��s, E�u�quireE8 t!@fin�:d out�� oi��and loadm sepa��ly whichE A0�Dcover �GA�isu0giv� ideab w��  �	-d�d/:�  would�� ia�y look	�Tin PostgreSQL, a diffe��.�, so ignB$the syntax0ce�is5l c	vhen be��tyw� aF�ż)by�H!�  Eat_t&�
(...) .B��2*  
�W�fi�TEXT, l���@NUMERIC
)
RETURNS',
AS $$
BEGING	{("%s %se�drew a�."	q�: �	�`t);
END;
$$; previous: JOIN   ha.  next:R	�J"	$/functions�t �' t�' t�' t�' join�'�More SQL Please :  JOIN users | id | referrer_i,name_first |	la	0email_address	 |
|----2 . . > $|
| 1  | 2[| Marcu	n$| Crawford' m@mc.ca2  �E| NULL| Elen#| !no	 e4@hellocorp.comJ 3m6J Simon Che s8@sqlanalytics.ie!( 4/ 5	8| Priy�Amini p@a$consulting�!( 5J6� ZarI |2J zarVI , |
 donationUAIcharity	dategamount�!�
B#�%� 1YEP| 2024-04-12 09:10:01"= 2� 3
]>=$9 12:40:15`=%�1� |=,5-01 19:51:4= 4=%�p^= 3 14:�� 7	k�%�99	oR�  6z01:11:44# 0{|
-�ie5�a�	!�%`2 z%n4Homes for Pets2�(| Ocean LifL2%&8Learning Ladder�  A �V8 clause can be #8d to statements$combine reA�s from mA�`ple tables based on a relI�hhip between them. This exam:uses twoC:   rs  and  ]�. NoticeF{ has aEq column�indicA�which" madHatI. I�( query you �Ospecifyv!�s of all	f%!<retrieve. Prefix!pthe#with�	G�is not required but it's good pract� o%� b!f,o easily see��come)�	�%. A��INNER�C mea���	� will only� urn rows %Dhave a match in bo� s5�how�!��%`a ��( yet so she�includedT�MXAer& func��0al differenceUN!��E+ a:�  ,)M$just  synt%P sugarf   ONU�is wz!�.�^�)b-&5want� mAube joine	n data typeA@thearE�s needED%f.  ru�!et Youe�aliaoza!	CMRto make� r.�A5er,read. Eithera
)6AS / followA�I�x, or)L!�. BAversŇare valiI�choosaonfd be�istent� sE��>�  A�2�,%�ally�ful��long)��or!� n�NI��samq�.. A.<!3ienc�er�y often�  v	>�}Y...IO�Frepeated�# i��toE m�	tha2� toge!�>g ��	^�� d�UaWHEREU� ta; rK, narrow down)	etA�e�rea�edNp LEFTm^(some	�calle��OUT�X )E�be!� d)�y oj��9of���G!��m("left")-�6� ����e-A0second ("righC. R1g_]��do����anythEt),J.�#)1  �	in placeҝ�\	a�isu��mis!#A� w~
!%a9�5su��%re	q��or%>!-%in> r-:���DS�� o�f5 m1�k��a_� wnow�`1��who�߁v���ADA�RIGHQ7isUilar� i��Ap s�RV�sv�N>. It�rare�:�m�Y�pmay!dus9�experi�A
��% i��6�If!3!k1	fin� l�7peo�)+ve., ,8a�w	V�K!�Qkvalu�	v	our  i� JN� F@R�2�I�V��Ew�*AȅjtheyM�or�m!>YE� r��at��M? ,!2 ]\, Au*�je�q6<currently associ�v%� aT�e  cMis�W mIP eD d�1A
n "orpha�record",2	A!�cj
  was deleA a�me point�out also	#Dir�d�is�gener���)de
 a*
inJj$ design. Ei��
�	to prev�e tYAkbe foune$  CASCADE F;�H2. itself�E�E] ,	�kn�_!B "SELF"��%} y%�.d ag/
	I� r.9%� oE_(�� s���B� ,i r%!�Q5��tform��X!�s Aa<get a free crediQ�techniqu� q� s�dto	h�	���
 tm sFg  CROSS)F�X	J<Cartesian produc��>z!]isE�s eacha�	&��	� AA]6NF1 �~	2B,�A�a�possiblF	
���row�A7 gE�te vHlarge�.%�dependZ o�jsiz�F�inpu�v s5caua��advib�;deciDto!�E�=U-� b�to�test	�siU ia� l,�@.*  e��scenari��wo s�ofQ>� h�   next: F�8s joinJOIN/join�t �  t�  t�  t� 	 order_by� �<More SQL Please :  ORDER BY users | id | name_first | name_laage | 	0email_address	-_login	|
|----. 		V V |
| 1u7Marcu�$| Crawford25 m@mc.ca	�T | 2024-01-01 09:10:01� 2Elen+| !>no9| 40 e4@hellocorp.com  	X,2-12 19:29:1	X 3!Simo)| Che	�w s8@sqlanalytics.iy | NULLb. ! 4Priy�Amini'| 3%' p@a$consulting�103-24 16:40:00X%AZarW |6X %zarVW j�  6Jame%�Mitc!L	Xjm@eAl.net�"^ 7 j.X weber8| 4w w Uorg |bX  8X _CharlottaDavi	� |� c@zapzoop1�5`E09:49)`   The }�� clause allows you to sort the re!��>s of a query based on a particular column. Rows have no defined	ODorder in most dataJs by( ault. If E�'�8is specified, r�ar�turned�Lspeed and efficiency,should not b9li	�to rF	Vin�same�ev�time. T-�,in ascending,!J=]... ASC �1Win de�8 DESC .%�method!)which a )n%0orted depends!�!�!^ type!�	1. B5m� m.� enginEb�will)�$  INTEGER T`s numerically from lowest�highest,AjEXT2alphabet	5 ,%  DATE)simiAG�s chrono��dolddnen. Referu�]��A\�E�!�!�$ee how oth;ypesEI)G. It!U bipractice7L always  be explicit� include a�SY�inu re2@ies. For brevity,� rcofexample-�is�Csite)�A�g]\L unless it's relevan%�!R.  ru�oet�can�appeto m��pleM+ sQl" sV!%A�e$at i� w�PU�has du!"ate valu�^� is�after-���Ds like   WHERE  bu��re-�me) t��	� dNit sua1 s  LIMIT >��	�A�aP ifferentla1a\� o�>`used.�!�treat�e	[,as "smaller"�n non- 	y, meanathey)�8appear first ifAO.��Z. S!:� s,M2TSQ�, supp��  e�� S LAST  o���p	FIR1��u l!�A]de��)�bof �E�_�7>nLCapitalized letters,��cial��ac	 whitespacaZ d�p b/
 inside stw s�g2�!�	���R�. Be sure�find oI`F� �N4comparison rul!bHor "collation", for) a��%�A�us���1;8	6ex��)�a��,ed   BINARY !chE's /��).d	�.	�their binary (ASCII/Unicode) representa�. Seah%  tZ O�  ņis�why "� "M�s ae� bottomAA$Ie)�ed� y>�COLL�operator�� ugto Yy96%�)<he cura�$ statementu��8��re��)�` sequences: RTRIM : Ignor+railA8Y�. NOCASE&casAC)�: CE eB���-	��e� itself1!� iA8with extensions�� language-*	 c91s. O��U����cMy�$or Postgre� m�built-in2P 6�!  uIN s���!����aisѥ�	ws"_
���Z!�e table2H0 total lengthAq aA,r's�.a�J .(A� an unrela�� funcA�  	tA��� d�demonstr��AeZSIf we w�| s\.8�!�-�st\	��	 i/	5�ccept�alias c�X ed earlieI[]�ApplyA�o s�.6��e]!�lever w�	�!A$) w.3possi!�E�|)I�>� p�ous:� h��  next:�%_by� /order_by�	t � t� t� t� select��More SQL Please :  SELECT users | id | name_first | name_laemail |
|----. . > 8|
| 1  | MarcusV$| Crawford m@mc.ca&x 2#Elen| �no#| e4@hellocorp.com< 3<SimonChe s<@chenanalytics.i	X
| 4/Priya<Amini| p@a$consulting~< 5<Zar; |2< zarV;  |
   A 5�x statement is a read-only query!��<d to retrieve data from a table. It's typically the most commKused	P.  ru%�reset You can specify individual columns } , or   * 2� al->_ Most� bA�engines1ow youGXperform computations on��+1(. Sometimes4bining*�be�ful. IH~<of SQLite,   || !p%Pto concatenate. Other�ma%�$   + , and)\�include A	F ()   func�4  which serves�Psame purpose. Here we<� firstke�aΐ with a space in between. Single quot![ r�E3beginG(end strings<SQL>�Th�!�	o4returned above!+$difficult Ead.5keywe� AS =�alia!�X s� ny customi>� If%�wanh	A a-�B( value that1 s)(s, surround%k n!k%:doub-&Ec�� kB��LDISTINCT6�  w�XA��)$  ibnique	�0s. Notice how!p$the exampl� e=� "�q" appearA�cei(re previous:!�Ek$d both peoP�aEWlast�>XSome^�A�SE�F clausInout�c!�al}�U� rbitrary 2�in!) r�dultsA*is]ful a��test���Z%busing�CASE� >�  hӀ  next: WHERE selectSELECT/select�t �- t�- t�- t�- union_and_set_operators�-�<More SQL Please :  UNION and Set Operators products | id |   name4   |  category�price | remaining_stock | vendor_id |
|----|-R 2 . |
| 1�DCool Splash Cologn�`| Toiletries | 49.99 | 25�| 2U 2U): p�-<ChipsFood1| 3T | 60�U 3%@Night Shift Coffe� |6U  6U 1A>U  4: Crunchy M	 Trail Mix>U  8U:� �`� 5@Super Glide Floss#:T 1U19!	 |�� 6U,Big Bark Dog.� $ | Pet Car!| 3%L.�	. U 7:0Soft Purr Cat.V �U  8UHTiny Fresh Scent Tr)�(| AutomotivA�I9 |�2 6�  orderA�a  mje  quantityaW  date_. eIce�arrivJP}Z qF 4�| 4%�e�H2024-06-01 07:58:05!�3 09:04 
%�.�*H2K (14 19:30:10!	a26 14:2	
|i2]�| 5>K 7-�1:00:07K07-09 12:50:12E)e( 2�	}� |�7-24 06: 3(30 15:05:00Key1NK  8-15 16:42� 8-19!BKe6 | 1>�  9%w8:�1 | NULL0|
 archAI;s_202��n�nVne���!��!�3-12%B 0A#!w20A#!�)�e�2���501-28 08:45:222-02 11En 5%� 9!�j3-08-2505:5	� 9A#30�aOA� 8�E�10�5 7a09��K7-18 10� 3	� 1!�2#u56-A�4:55:2m�3-a 5M����7 >n3-05-12A���,5-16 13:25:4!,   Th��J opC� allows you to combine two sets of result r',into one. A �$ is differ�tPthan a   JOIN . ThinkG  as a way.q hcolumns "horizontally" from.] ,ables, whereG.� Ustack	�"vertic	Non top�8one another. In�� for�-$Hto succeed, the que�bef�	�	Hafter it must have * s}	numbern�. Most�0abases requir3at8 data type%yJ)}$s match up!=well.!
0ite's dynamic8(ing feature:�mix.^ withinb�	�. S�1 D� T�% m�(information!� e3h
 s)��first%*y used j	��setE0is example shA_!�use c�
!�1�$. SometimeI�(will encoun!� separate I!A�>�struc!%� t| scenario,)��0previous year�mo��E�M8	l!�A�� copy�techniqu� n improve%�!� per%Rnce%� larg	 ezby limi%0!Zam�AO r!+A/LneedsA�check%:Q�againsA_ i	�'s�.  run�[resetM� A�� ia�modifier)N p%$rves dupliM sZ�m?ignor.0 	�<by default. Both)Hs ca�in some�)�E�  .�	e  &�	, so+Iwtreated!��by]QAs%� side, not5howD�I Q�had!&ul�
ed	N*
�EY6s no meacful	�M I�usv a9�eng��E�typ�� return)C in whatev�_���decid!�s m�geffici����Ppute unless we supply!H  ORDER BY  clause.RP can be chained multia�i�4to keep appenda�I�%�-=�(9M�-16also-!���z   SELECT A*stan%����az�B���Dthem!*�xI�hMbe a&!�y�@to include ad-hoc%�i 0doesn't exist	X�m>, A9%diedY�v�  cE��� "utility"	o sA��Here!�con�� a	$  ��uPshelf_life  which mapa�M�&to aݲdayŃA  A. Note�O)we only�}@lia�{�Aa��input(�� becAr tho��%��Tebe!� d��all=EX2T� t�H�WELdem%#at!?$  Common TM Ex��sion �9M	�%-B%��la�vAf�A� y>q	����]is��f���ny �]� statement�� i!�e��X�� aggreg��i�s lik�	GROUPa�M�q`�xa[ wA+ nA/cu��,total purcha�"�of items���>� INTERSe��@ n*d
vail%n��da	%�is	�to��EZ!%�%Osha�{ b�;IT�/�&i
i�!Ube��e�sive��growc e��G ,a& l
  :� exclBshrinkFA ]ermE�!�<Venn Diagram   ,FY quival���area�
�8circles overlap	g.� wC	%�2� help!^  find out�chɊ�
made!�| ident�w!��`>(  3>�For receF� func:
�  6� !$+M�    DISTIN�� l�o e	 nA���>� ap  EXCEPT*��: sIJQ!e���E]do��#second$]^itA?&kubtrac`	��1Jh �
]���  %� o�  MINUSV���-��%�	�id��9�-plac�f>9�
$: CASE   h�	l  next: PIVOT union_and_set_� sii�t2� /Z/ �	t � t� t� t� where��More SQL Please :  WHERE users | id | name_first | name_lasage | 	0email_address	 |
|----. 		V 4|
| 1  | Marcu	X$| Crawford25 m@mc.ca� 2#Elen| �no#| 40 e4@hellocorp.com  � 3#SimonChe 2a s8@sqlanalytics.ic! 45PriyaBAmini| 3� p@a$consulting�|
| �ZarA |6B �zarVA  |
   A 1��> clause can be added to statements to filter the outcome of the(` based on a condition. In' cAVof �HSELECT , this means$re� set iss	�,only include'3at match> ct�an also�ppli	OL  UPDATE  and   DELE6� limit[rowo@ey affect. Note t��<lumn does not ne	fbe�d as.� ed c	5 t� u!9 i!9�%�.  ruE^re!i�-� s%�!��operators besides   =  : >  Greater�n. < La�th>=.$ 8 or equal to. < 1: > ,   !$Not E8 .�Dage BETWEEN 30 ANDac M%� wa9Dbetween two values>6HLIKE "%�\a "G]w0pattern.   % AD typically%�8wildcard characA�%zto IG 0� m�A�ny)�0id IN (1,2,3)N� ny	�)�listL	�^(a subquery.=&IS NULLQor  OT Check for. See  O5��exampl!F�:have m�\xple predicates separated by log!C]dsuchA�  %�  iC(OR . The   �/E��Xm~bef!`!(�Aabove0�nnegae`em��  previous:�i  h��<  next: ORDER BYA�0reWHERE/where              �      �      !�      )>      7�      @�      Li      V�      [�      i�                ������������������ ����������� ������� ��� ��������
����A���������������������D���
  �   �	  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �   �   �#)/4V=GLwusoljgfdca       �       �������������������������;��� ��'�' ��  �� ��+�+ ��� ��
�
 ����:0                
 �	��� ����:0              ��������� ��� ��� ��� ��� ��� 6�� W�� 7�� X�� @��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ����:0               	 �����	�	����#4�� C�� U�� V�� `�� Gs�
�
 ��� ��� ��� ��� ��� ��� ��� ��� Gj�	�	 ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� �� $�� %�� /�� >�� P�� Q�� 7�� H�� \�� ]�� �� �� �� 'a�� ��	�	 ��� ��� ��� ����":0                    	 	���'�� S��  �� T�� ��� ����:0             	 ���������wL�� y�
�
 ��� ��� p�	�	 ��� ��� 2�� 2�� G�� R�� 3�� g�� �	�	 ��
�
 ����":0                    	 �������T0�� 9�� ^�� {�
�
 r�	�	 �� +�� 4�� 3�� =�� i�� ����:0                  	 ��������B�� K�� 6v�
�
 |�
�
 ��� ��� ��� ��� ��� 6m�	�	 s�	�	 ��� ��� ��� ��� ��� O�� =�� F�� G�� Q�� >d�� j�� ��
�
 ��� ��� ��� ��� ��� ����:0                  	 ��������T�� ]�� .r�
�
 x�
�
 ��
�
 ��� ��� ��� ,i�	�	 o�	�	 y�
�
 �
�
 ��� ��� @�� O�� [�� 4`�� f�� o�	�	 u�	�	 ��
�
 ��
�
 ��� ����:0                  	 �����Ot�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� Ok�	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� N�� ^b�� ~�	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0              	 		�	��s ��� ��� ��� ���  ��� ��� ��� ��� 0��
�
 ��� ��� ��� ��� ��� ����:0             	 ��������	��2�� N�� _�� 7z�
�
 ��� ��� ��� ��� ��� ��� 7q�	�	 ��� ��� ��� ��� ��� ��� �� U�� �� &�� P�� -�� I�� 5�� T�� �� V�� h�� ��	�	 ��� ��� ����":0                    	 !	�������������� -�� .�� [�� 1�� �� #�� $�� V�� n�
�
 ~�
�
 A�� �� $�� %�� N�� d�	�	 u�
�
 ��� ��� �� +�� �� ,�� :�� H�� ��+�+ 
�� (�� )�� *�� /�� 0�� 1�� Y�� d�� �� 
�� 2�� �� &�� '�� \�� l�� ��� �� ����&:0       
              	 
 �	��
�
 ����:0            
 	���3�� 4�� 6�� ����:0             	 �	�	��������3�� >��  ��
�
 ��� ��� ��� }�
�
 ��
�
 ��� ��� �� �� R�� .�� 9�� 6�� B�� �� >s�	�	 y�	�	 ��� ��� ��� ��� ��� ��� ����":0                    	 ����!Y�� T�� `�� ��� ����:0               	 �����	�^O�� W�� #�� J�� R�� U�� ^�� $��  ��� ��� ��� ��� ����:0                 	 ����������1�� ;�� ��� ��� ��� ���  �� T�� �� (�� ,�� 6�� 4�� ?�� !�� U�� 8��	�	 ��
�
 ��� ��� ��� ��� ��� ����":0                    	 �)�� ����:0             �>�� ����:0             	������ ��� ��� ����:0             	 ������`M�� ��
�
 ��� z�
�
 ��
�
 H�� S�� &p�	�	 w�	�	 ��� ��� ��� ����:0                 	 ��������=�� ��� ��� ��� ��� ��� 8�� A�� @��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0                  	 �����;��� ��� 4�� 5�� ��
�
 ��� ��� ����:0               	 �	��� ����:0            	 ����������:�� D�� 4�� ��
�
 ��� {�
�
 ��� !�� 4�� 5�� ?�� >�� I�� "�� 7�� q�	�	 ��� ��ہ":0                    	 !�������������� 6�� I�� G�� �� >�� ?�� H�� I�� P�� [�� }�
�
 ��� G�� �� ?�� @�� I�� J�� S�� t�
�
 v�
�
 ��� �� �� �� 1�� D�� *�� �� 9�� ;�� N�� h�� �� �� H�� �� A�� B�� K�� L�� S�� k�� ��
�
 ��� �� ����&:0       
              	 
 �������o5�� �
�
 ��� w�
�
 ��
�
 u�� 0�� 8�� .m�	�	 x�	�	 ��� ��� ��� ��� ��͆:0                  	 �qp��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�) ��,�, ��:0            	 ���	����	���*/�� 8�� A�� J�� S�� \�� nq�
�
 w�
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� lh�	�	 n�	�	 x�
�
 ~�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� 1�� R�� #�� #�� 1�� ?�� M�� #*�� 3�� <�� E�� N�� #2�� <�� F�� P�� Z�� �� �� 2�� S�� c_�� e�� n�	�	 t�	�	 }�	�	 ��	�	 ��
�
 ��
�
 ��
�
 ��� ��� ��(�( ��,�, ���":0                    	 ����)'�� (�� ��� ��� �� ΍܍:0             	 
 �B�� ����:0             ������3��� ��� 3�� A�� 4�� ��
�
 Ύ�:0                	 ����	��H�� �� �� �� �� ��� ��� ��� �� ��Ώ:0               	 
 	������ ��
�
 v�	�	 ��Ɛ:0             	 �	��� ����:0            	 �	���6"�� 3�� C�� D�� I�� #�� ��� ����:0              	 ���� ��� ����:0             !���������	����� 7�� ?�� %�� -�� _�� ��� ��� 4�� .�� W�� f�	�	 ��
�
 ��
�
 ��� $�� *�� �� 2�� :�� *�� :�� C�� E�� O�� k�� %�� ��  �� 0�� z�	�	 ��
�
 �� ���&:0       
              	 
 	����� �� �� ����:0             	 	�	�������=�� G�� ��
�
 ��� >�� H�� |�
�
 ��� :�� A�� O�� 5�� ;�� B�� P�� E@�� J�� r�	�	 ��
�
 ��� ��� ��� ��� ��� &�� ��� ˕�:0                	 
 	���.�� /��  �� їܗ:0             
 �;�� ����:0             !�������������� H�� 3%�� 5�� R�� b�� o�
�
 ��� ��� D&�� 6�� Z�� e�	�	 ��
�
 ��� ��� ��� ��� +�� 8�� ��� �� C�� �� M�� ,�� �� ,(�� 8�� U�� ]�� ��
�
 ��� �� ��ޘ&:0       
              	 
 �.�� ����:0             �<�� ����:0             ��� ��:0             �J�� ����:0             ��������	���<�� G�� b�� p�
�
 ��� ��� g�	�	 ��
�
 ��� �� 5�� �� 7�� B�� @�� L�� �� 6�� ^�� ��
�
 ��� ��� �� ��� ��ќ$:0       	             	 
 	���X�� S�� _�� ��Ğ:0               ����)F�� A�� K�� ��� ��� ����:0               	 ��H�� I�� ӟ۟:0             	���5�� V�� W�� ����:0              	����� �� �� ʠՠ:0             	 !��	����	�������� @�� Q�� %,�� .�� e�� ��� ��� -�� /�� ��� ��� 7�� F�� �� ;�� L�� �� #�� D�� W�� 8�� �� %/�� 1�� {�	�	 ��
�
 ��� #�� ����&:0       
              	 
 ����A��� ��� ��� ��� '�� Q�� |�	�	 ��	�	 ��ɣ:0              	 	���E�� @�� J�� ����:0               �6�� ���:0             �	��� ����:0            	 �7�� ��å:0             �L�� ��:0             	���u�
�
 l�	�	 c�� ����:0             	 �a�� Цզ:0              ������	�x$�� Z�� 6�� ��� ��� 7�� ��� ��� >�� ��� ?�� 9�� ��� ��� ��� ����:0                  	 	���"�� #�� %�� ����:0             	 	���H�� ��� ��� �� ��� ��� �� ��
�
 ��
�
 ���:0             	 �-�� ��:0             	����	�f@�� Q�� ��� ��� A�� ��� ��� E�� F�� C�� T�� ��� ��� ����:0               	 �0�� ����:0             	���P�� K�� V�� ̫׫:0               ���� �� ����:0             ������JJ�� ��� ��� L�� ��� M�� M�� ��� ��� ì׬:0                	 	���+�� ,�� .�� ƭѭ:0             	 ��� ����:0             �	��� ����:0            	 	���R�� M�� X�� ٮ�:0               ��M�� N�� ����:0             ����� [�� Яد:0              �	��� ����:0             �	��� ����:0             �����S'n�� ��	�	 ��� ��� ��� ��� ��� s�� ��� ��� ذ�:0                 �	��� ߱�:0              �	<B ����:0             	������ ��� ��(�( ����:0               �����3��� ��� s��	 ��� ��� .�� ���:0              	 
 ���� ��� ڳ߳:0             �	��&�& ����:0             �`�� ����:0            
 	���"	?B 
BE 	?B ��� ��
�
 ܴ�:0             
 �	��� ����:0             ������< |�� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" (��� ��� ��� ��&�& ��)�) ��	�	 ��� ��$�$ ѵ�:0                	 	����D ��� ��� ��� ��#�# ��� ��	�	 ��	�	 ��!�! ����:0              	 �	��� ����:0             ��������m��� ��� ��(�( x�� ��� ��� ��&�& ]�� L�� ��� ��� ��� ��� ��ո :0                  	 �	��� ��:0             �	��� ����:0              ���� ��#�# ��º:0             ����� ��� ���:0             �n�� ����:0             ��������m��� ��� ��"�" ��%�% w�� ��� ��� h�� ��� ��!�! ��� ��"�" S�� ͻ� :0                 	 
 ���� ��� ����:0             	���#��� ��� ��� ��� ����:0              �	��'�' ����:0             �������y�� !�� ��� -�� 9�� ��  ��  �� &�� .�� :�� ��  �� ��� �� %�� ����:0                  
 �������i�� #�� 0�� <�� �� "�� "�� (�� 1�� =�� �� "�� "�� (�� ۿ�:0                  
 ��	��	����,�� ��*�*  ��	�	 ��� ��� ��� (��� ��� ��� ��#�# ��$�$ '�� ��� ��� ��� .�� ��� ��%�% ��� ����:0                  	 ����4��� ��� ��#�# ��� ��� ��� ����:0               	 �	��� ����:0             �	��� ����:0             �	��� ����:0             ����4�� �  ��� ��� ��� ��� ��� ����:0               �	��� ����:0            	 �����|��� ��� ��� ��� ��$�$ ��� ��� 0��� ��� ��� ��� ��� ��� U�� ��� ����:0               
 ����)�) ��� ����:0             �	��� ����:0            	 �	��� ����:0            	 �	��(�( ����:0            	 ����� ��� ��� ����:0              ����� ��� ����:0             ���� ��� ����:0             	�! ��"�" ��"�" ��#�# ��#�# ����:0             �)(��
�
 ��� ��� ��� ��� ����:0             �	��	�	 ����:0             ���� ��� ��� ����:0             ��� ����:0             ����� ��� ����:0            	 �	��� ����:0              ���� ��� ����:0             ��O�� R�� ����:0            	 	������ ��� ��%�% ����:0             	 ����� ��� ��� ����:0              	������ ��!�! ��� ����:0               �	��%�% ����:0             �	��&�& ����:0             �	�� �  ����:0             ���'�' ��'�' ��(�( ����:0             	���8�� 9�� ;�� ����:0             	 ������k��� ��� ��� ��� |�	�	 'f�� ��� ��� ��� ��� 8�� ��	�	 ��
�
 ����:0                
 �	��� ����:0             �	��� ����:0             �	��� ����:0              	������ ��� ��� ����:0              �	��� ����:0              �	��� ����:0             �	��)�) ����:0             �~�� ����:0            
 	������ ��� ��� ����:0              �	��� ����:0             ����!7�� 8�� ��� :�� ����:0              	 �	��� ����:0             �	�rP��� ��"�" ��"�" ��"�" ��$�$ ��%�% ��&�& ��&�' ��'�' ��)�)  ��� ��� ��� ��� ����:0             	�! ��� ��%�% ��&�& ��'�' ����:0             	�! ��)�) ��)�) ��*�* ��*�* ����:0             ����� ��� ��� ����:0             ���� ��� ��� ����:0             �	��� ����:0             ���� ��"�# ����:0             ��	���T��� ���  ��	�	 ��!�! ��*�* ��-�- o�� ��� ��� ��� ����:0                 �A@��� ��� ��� ��� ��� ��� ��#�# ��$�% ����:0             	��* ��� ��� ��� ��� ��$�$ ����:0             	 �������n��� ��'�' ��	�	 '_�� ��� ��� ��� ��� ��� ��� ��� �� �  ��+�+ ����:0                 	 !��������������� P��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" H��� ��� ��� ��� ��� ��� ��� ��� ��$�$ 'h�� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��%�% ��(�( ��-�- ��� ��� ��� _q�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��%�% ��&�& (��� ��� ��� ��� ��� &<�� Y�� ��	�	 ��
�
 ��� 8��� ��� ��� ��� ��� ��$�$ ��$�$ %,�� R�� {�� ��� ��� ����&:0       
              	 
 �	��� ����:0             �	��� ����:0             	���5<�� F�� =�� G�� �� �  ?�� I�� ����:0             	 �	��#�$ ����:0             �	�� �  ����:0             �!�	����������� } ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��&�&  ��� ��� ��(�( ��*�* ��� ��� ��� ^�� ��� ��� ��,�, >�� ����":0                   	 
 	���C�� D�� F�� ����:0             	 ��� ����:0              	���RDL ��� ��#�# -	HP ��� ��� ��� �� �  ��)�) W_ �� �  ����:0             	 ����� ��&�& ����:0              �	��&�& ����:0             �	��� ����:0            	 �	��� ����:0             	�	��C��� ���  ��� ��� ��� ��� ��	�	 ��
�
 ����:0             
 �a�� ����:0             �,�� ����:0             	���%�� P�� Q�� ����:0               	������  ��� ��� ����:0            	 
 �������8�� &�� �� �� '�� �� �� ����:0                  
 ��� ����:0             	����� �� �� ����:0             	 �	��� ����:0             �	��� ����:0             �	��(�( ����:0            	 �	��$�$ ����:0             ����	����	����� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��$�$ ��&�& .Z�� {�� ��
�
 ��
� ��� ��� p�� ��� ��� ��� &\�� z�� ��� ��� ��� ��� ��� ��$�$ ��*�* +�� v�� z�� ��� ����":0                   	 
 �	��� ����:0             ��Z�� R�� ����:0             	����� �  ��$�$ ��� ����:0              �	��*�* ����:0             	���  �� ��� !�� #�� ����:0             	 ��B��� 8��� ��� ��� ��� ��� ��� ��� ����:0              	����� �� �� ����:0             	 	���������� ��	�	 ��� ��� ��� ��� ��(�( 0��� ��� ��&�& ��'�' ��'�' ��(�( 7f�� ��
�
 ��� ��� ��� ��'�' ��)�) @��
�
 ��� ��� ��� ��� ��� ��� ��� 'j�� ��
�
 ��� ��� ��� 4?�� F�� S�� X�� ��� ��	�	 ��	�	 8��� ��� ��� ��� ��� ��!�! ��!�" d�� o�� ����":0                   	 
 �������e��� ��� �� �  ��� 'w�	�	 ��� ��� ��$�$ ��%�% W�� ��� ��� ����:0                  	 �	��� ����:0             	���3��� ��� ��'�' ��� ��� ��"�" ����:0             	 ����*��� j�� ��� ��� 6�� ����:0                ����.�. ��� ��� ����:0             �	��� ����:0             ����� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �����T��� ��� ��� ��� ��� ��� P�� ��� ��� ��� ����:0               	 �n�� ����:0             �d�� w�� ����:0             �h�� ܁�:0              �� ��� ��� ;�� P�� ����:0            
 �	��� ɂ΂:0             ����$��� ��*�* ��� �� �  ���:0                �	��� Ńʃ:0             �	��� ��:0            	 ��� �  ��"�# ����:0            	 ����� ��� ȄЄ:0            	 �	��� ����:0              	����� �� �� ����:0             	 �	��� ��:0            	 �	��� ����:0             �	�Z8��	�	 ��
�
 ��
�
 ��� ��� ��� ���  ��� ��� ��� ��� ��Ć:0              �	��� ����:0             �������8�� �� �� �� �� �� �� ���:0                  
 ��	���T��� ��"�" ��)�) ��'�' ]�� ��� ��� ��� ��� ���  ڈ�:0               	 �lv ��:0             �o�� ����:0             �	��#�# ����:0             ���� ��� يފ:0             ���#�# ��&�& ����:0             	���&�� '�� )�� ��Ƌ:0             	 ����$��� ��
�
 ��� ��� ����:0                	���3��� ��� ��� ��� ��� ��	�	 Ќی:0              ����� ��� ��!�! ����:0            	 ����5���������	�	 ��	�
 ��� (��� ��� ��� ��#�# ��#�# ��� ��� 0��� ��� ��� ��� ��� ��� � ^�� w�� ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��#�# ��$�$ ��$�$ ��'�' ��'�' ��)�) ��+�+ ��,�, ��,�, ��-�- ��-�- ��� ��� 0��� ��!�! ��"�" ��%�% ��&�& ��'�' ��
�
 ��� ��� .�� (��� ��� ��� ��� ��� ���$:0       	              	 �~� ����:0             ���	����������� ��� ��� ��� ��'�' g�� v�� ��
�
 ��� _U�� ��� ��� ��� ��� ��� ��� ��� ��&�& ��+�+ ��,�, ��-�- 'W�� ��
�
 ��� ��� ��� �� �  ?s�� ��� ��� ��� ��� ��� ��� ��� J�� ��� 0��� ��� ��� ��� ��%�% ��+�+ ��ޒ$:0       	              	 �	��� ��:0            	 �	��� ����:0             ������r+�� ��� ��"�" 7~�� ��� ��� ��� �� �  ��!�! ��!�" &�� ��
�
 -�� ��� ��Ζ:0                  	��� m�	�	 c�� [�� ��� ��:0             	 	��� l�	�	 b�� Z�� ��� ����:0             	 ���� �  ��	�
 ����:0             ��N�� O�� ����:0             �	��,�, ��:0             ����&�& ��� ����:0            	 �)(��� ��� ��� ��� ��� Śʚ:0             ����C��
�
 ��� 'u�� ��� ��� ��� ��� ��� ����:0              	 �	���A��� Z�� s�� ���	 ��� ��� ��� n�� ����:0                �	��� ���:0             ����*�	�	 ��.�. ��� ��� Y�� ����:0              
 ����� ��"�" ���:0            	 	���+��� ��%�% ��
�
 ��� ��� ����:0              ���
�
 ��� ����:0             ����� ��
�
 ����:0             �	��� ��:0             ����� �� �  ����:0             ���� ��� Ơˠ:0             ����� ��� ����:0              �	��'�' ����:0            	 ��������~��� ��� ��� ��� j�� v�� ��
�
 ��
�
 ��� ��� ��� ��#�# ��� ��� ��� ס� :0                   	 �	���	 ����:0             	�! ��� ��� ��� ��� ��ƣ:0             �	��� ����:0             �	��� ����:0             	����� �  ��#�# ��(�( Ԥߤ:0              ����,��� ��� ��� ��
�
 ��*�* ����:0               	 ��^�� V�� ����:0             	������ ��� ��� ����:0              	���9�� :�� <�� ���:0             	 ��p(�� g)�� ��
�
 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ����:0              �i�� Ũʨ:0             ����� ��� ��
�
 ����:0             ���	�<��� ��*�* ���  ��� ��� ��� ��*�* ����:0               	 ����� ��� ����:0            	 �	��� ΪӪ:0             ����(�( ��� ��� ����:0             �	��� ����:0             �n�� ߫�:0            
 �	��	�	 ����:0             	�����.�. ���	 ��� ����:0             	 ����*�* ��� ����:0             �������i�� �� �� �� �� �� �� �� �� �� �� �� �� �� ��í:0                  
 �	��*�* Ӯخ:0            	 	�! ��� ��� ��� ��&�& ����:0             �	JO ��¯:0             ��C�� D�� ��:0             ��J�� K�� ����:0             ������,
S` 
KX 	IV 
R_ N[ 
KX ��	�	 Ͱ�:0                 
 	������ ��� ��� ����:0             	 	������ ��� ��� ����:0              ��	��	������ ��� X�� ��
�
 ��� ��� 0��� ��� ��� ��� ��� ��� K�� f�� k�� ��� ��� ��в:0                	 �	��� ����:0             �	��� ����:0             ���� ��� ��� Ҵ״:0            
 	���#��� ��� ��'�' ��)�) ����:0              	 ����)�) ��'�' ص�:0             ����� ��� ����:0             ��"��� ��� ��� ��� ƶζ:0             ����� �� �  ����:0              ����4��� ��� ��#�# ��*�* ��'�' ��	�	 ķҷ:0                �	��� ����:0             ��	��	�	�����8��� ��� ��� ��� ��$�$ ��%�% ��'�' ��� ��%�%  ��	�	 ��� ��"�" ��&�& ��� ��� ���  ��	�	 ��� �� �  ��"�"  ��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��"�" ��$�$ ��(�( ��,�, ��� ��� и��":0                  	 
 �	��*�* »ǻ:0            	 �	��'�' ��:0            	 ����� ��� ��*�+ ����:0            	 �	��� Ӽؼ:0              �	��� ����:0             �	��� ����:0             �	��� νӽ:0              �	��
�
 ����:0             	���q_X�� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��'�' P�� ��"�" ����:0             	 �	��� ����:0             �	��	�	 ��:0             �	��� ����:0             �	��� ����:0             �	��&�& ����:0             ���)�) ��*�* ��+�+ ����:0             �	��#�# ����:0             ����+�+ ��,�, ��� ����:0            	 �p�� ����:0             �	��� ����:0             �	��� ����:0             ��(��� ��� ��%�% 2�� H�� ����:0            
 �����E��� ��� ��� ��� ��� ��� ��� ��(�( ����:0                	 ������	����� ��� q�� (��� ��� ��� ��� ��$�$ ��� ��� ��� x��  ��� ��!�! ��*�* ��+�+ ����:0                 	 �	��� ����:0             ���� ��"�" ����:0             ��B8��� ��� ��� ��� ��� ��� ��� ��� ����:0             	���1�� 2�� 4�� ����:0             	 ����� ��� ����:0              	���z*�� !�� *�� :�� D�� Y�� *�� "�� +�� ;�� E�� Q�� #�� $�� -�� =�� G�� ����:0             	 ��"��� ��� ��!�! ��� ����:0             �	�J(��'�' ��(�( ��+�+ ��,�, ��-�-  ��� ��� ��� ��� ����:0             ���� ��� ����:0             	�����!�! ��.�. �� �  ����:0              �	��"�# ����:0             ��L�� O�� ����:0            	 �
EL ����:0             �	��#�# ����:0             ���� ��� ����:0             �	��� ����:0             '����5�������& d�� l�� }�� ��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" @��� ��� ��� ��� ��� ��$�$ ��&�& ��)�) ��	�	 ��!�! ��,�, � `�� m�� q�� ��� ��� ��	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��'�' ��� o�� ��)�) ����":0                    	 �	��(�( ����:0             	��	�3��(�( ��	�	  ���  ��%�% ��&�& ��'�' ����:0              �	��"�" ����:0             �	��� ����:0             	���0�� 1�� 3�� ����:0             	 	���'\�� a�� T�� Y�� ��� ����:0              ��� ��� ����:0            
 �	�3������� ���  ��� ��!�! ��#�# ��+�+ � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��%�% ��&�& ��	�	 ��$�$ ����:0                	 �	��&�& ����:0            	 �	��� ����:0             �	��� ����:0              �������8�� �� �� �� �� �� �� ����:0                  
 	������ ��� ��(�( ����:0             	 �	��(�) ����:0             �	��� ����:0             �	��� ����:0             ���� ��� ����:0            	 !�����������j��� ��+�+ ��)�* ��� ��.�. ��� e�� ��'�' �� �  ��� ��-�- ��� ����&:0       
              	 
 �	��� ����:0            	 �	�� �  ����:0             �	��� ����:0             ��� �  ��)�) ����:0             ��c�� [�� ����:0             !�	�����	������/1 )�� #% T�� i�� ��)�) #') L�� ^�� ��� ��� !# )+ ��-�- %' $��  " *�� b�� ��� $& "$ 	68 W�� ��� !# ��
�
 ����&:0       
              	 
 �	��� ����:0             ���)�) ��,�, ����:0            	 ����,��� ��� ��� ��� ��� ����:0               	 �G�� ����:0             �	��"�" ����:0             �	��� ����:0              �	��� ����:0             ����� ��� ����:0            	 �������	������� ��� ��%�% ��� ��&�& ��(�( ��� (��� ��� ��� �� �  ��!�! ��� ��� (��� ��� ��� ��� ��� l�� ��
�
 ��� ��� ��� K�� j�� ����$:0       	             	 
 �	��&�& ����:0            	 �	��� ����:0             �	��
�
 ����:0             �>�� ����:0             �	��� ����:0             ����,��� ��#�# ��� ��� ��� ����:0              	 ���� ��� ��� ����:0             ��	���[r�� ��	�	 ��� ��"�" w�� ��� ��� ��� ��%�& ��!�! ��&�& ����:0                	 ��!}�	�	 ��� ��#�# ��(�( ����:0             ����� ��� ����:0             �����E��	�	 ��� ��� ��(�( ��� ��� ��� ��
�
 ����:0                 �	��� ����:0             	���3��� ��(�) ��� ��� ��*�* ��� ����:0              �	��� ����:0             �)(��%�% ��'�' ��'�' ��(�( ��)�) ����:0            	 �f�� ����:0              �	��%�% ����:0            	 ��&?�� F�� @�� G�� ��� ����:0             ��B�� C�� ����:0             ���)�����%�% ��� ��� � o�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��#�# ��&�& ��� ��� ��)�) ����:0               	 ���+�+ ��+�+ ��,�, ����:0             �	��� ����:0             	���#��� ��� ��� ��� ����:0              ����� ��� ����:0             	 �	��� ����:0             	������ ��� ��	�	 ����:0              �	��� ����:0             �	��!�! ����:0             ���(�( ��)�) ����:0             �m�� ����:0             	������ ��� ��� ����:0              	���;(��� ��� ��#�# ��%�% ��&�& ��%�% ��� ����:0             	 �	��� ����:0             ����;��� ��� ��� ��� z�� ��� ��� ����:0                ��eo hr ����:0             �	��#�# ����:0            	 ���� ��� ��� ����:0             ����� ��� l�� ����:0             ��B��� ��%�% 0��� ��� ��� ��� ��� ��� ����:0             	���K0��� ��� ��� ��"�" ��$�$ ��%�% ��� ��� ��� ����:0              	���#��� ��� ��� ��� ����:0             
 �	��� ����:0             �	��� ����:0             ��j�� ��!�! ����:0            	 �	��	���������  ��� �� �  ��!�! ��*�* ��� ��� ��#�# a�� {�� ��'�' ��.�. ��� ��� ��� ��� ��� ��$�$ ��	�	 ���� :0                  	 
 �	��)�) ����:0             ��� ����:0             ���������*�* b Y�� [�� z�� ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��� \�� ŀـ:0               	 
 ����� ��
�
 ����:0            
 �	��� ͂҂:0             ����� ��� ��� ����:0            
 ��d�� \�� ��� ����:0             ����$��� ��� ��� ��� ���:0               ����'�' ��(�( ��� ń̈́:0             �	��� ����:0             ��� ����:0             	���+��� ��
�
 ��� ��(�( ��)�) Յ��:0             	 		���2 ��� ��� ��� ��� ��� g�� ����:0              �	��	�	 ����:0            
 �	��(�( ����:0             ����� ��� ��� ؇��:0             �	���D��$�$  ��� ��� ��� ��'�' ��� ��� ��+�+ ����:0               �	�� �  ����:0            	 �������T�� �� �� �� �� �� �� �� �� �� �� ��ʉ:0                  
 �	��
�
 Ŋʊ:0             �������(��� ��� ��� ��� ��(�( ��� ��� 8��� ��� ��� ��� ��� ��� ��� ��� 'N�� ��� ��	�	 ��
�
 ��
�
 ���:0               	 
 ���� ��� ͌Ҍ:0              �+�� ����:0             	���r��� ��� ]�� ��	�	 P��� ��� ��� ��� ��� ��� ��� ��$�$ ��%�% ��%�& ����:0               �������8�� �� �� �� �� �� �� َ:0                  
 ������]��
�
 ��� ��)�) ��� ��� ��� ��� ��$�$ ��� ��� C�� ��̏:0                
 �	��� ΐӐ:0            	 �	��� ����:0             �	��
�
 ����:0             �	��� ɑΑ:0             �	��� ���:0             ���� ��� ����:0              �	��� ̒ђ:0              �	��� ����:0              �	��+�, ����:0            	 �	�� �  Ǔ̓:0             �	��)�) ���:0             ��@�� A�� ����:0             	��� )�� *�� ,�� ��� Δٔ:0             	 ���� ��+�+ ��,�, ����:0             �	��� ѕ֕:0            	 	��* ��� ��� ��#�# ��%�% ��� ����:0             �������8�� �� �� �� �� �� �� ɖ��:0                  
 ����� ��� ��Ǘ:0            	 �	��� ����:0             �������^��� ��*�* ��� ��� �� �  z�	�	 ��� ��� ��� ��� ��� ����:0                 	 
 	���'�� (�� *�� ��ƙ:0             	 	������ ��*�* ��� ����:0             	 ����� ��� ʚ:0             �QP��� ��� ��� ��� ��� ��� ��"�" ��"�" ��$�$ ��$�$ ����:0             	�������� ��	�	 ��� ��� ��� 26 U�� ��(�( $6: M�� ��� ��� ��)�) ?c�� ��� ��� ��� ��� ��� ��� ��#�# ��� /{�� ��� ��	�	 ��
�
 ��� ��� 
EI ��� ��"�" ���:0                  	 �������:4> &0 *4 ��� ��� 3= )3 '1 &0 ����:0                  
 �������:	AJ 3< 7@ ��� ��� 	@I 	6? 4= 3< ����:0                  
 �	��� ����:0             �	��'�' ����:0             ��`�� X�� ՠݠ:0             ������U��"�" ��)�) ��+�+ ��� ��� ��� ��� ��� ��!�! g�� ����:0               	 
 ���� ��� ��� ����:0             ���� ��� Ѣ֢:0             �	��� ����:0            
 �	��� ����:0             �	��� ԣ٣:0             �	��� ����:0             �	��� ����:0             �	��� ϤԤ:0             ����������j��� ��� ��� ��+�+ ��*�* ��� ��� ��'�' �� �  ��� ��-�- ��� ����$:0       	             	 
 	��� �� ��� �� !�� ����:0             	 �	��� ����:0             ��"��� ��� ��� ��� ����:0              �	��� ��:0             �	��� ����:0              ����+��� ��� ��!�! ��"�" a�� ��ɨ:0              	 
 ����<��� ��� ��%�% ��
�
 ��� ��� ��� ����:0              	 ����� ��� ����:0             ���	��������6&�� '�� ��� ��� ��� ��� ��� (��� ��� ��� �� �  ��&�& (��� ��� ��!�! ��"�" ��"�" *�� =�� D�� K�� %!�� "�� S�� ��� ��� .�� �� ��� ��� ��� ��� %�� �� $�� ��� ��� L+�� >�� E�� L�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��ת$:0       	             	 
 ���������
�
 ��� ��� ^�� ��� ��� ?|�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ����:0                 	 �����=��� ��� ��� ��� ��� ��� ��� ���:0                 ���%�% ��&�& ܰ�:0             �i�� ����:0             �	��� ����:0             ���� ��� ��� ޱ�:0             	������ ��� ��� ����:0               �	��� ܲ�:0             ������N��	�	 ��)�) ��� ��!�! ��	�	 ��� ��� ��� ��� ����:0                 	 ������������ ��� ��+�+ ��� ��� ��� ��� %!* ��� ��%�% ��*�* ��+�+ /}�� ��� ��� ��� ��� ��� ���� :0                  	 
 �	��� ��:0             ����3������� 7h�� ��� ��� ��� ��� ��� ��(�( g]�� ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��%�% (��
�
 ��
�
 ��� ��� ��� � Z�� p�� x�� ��	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� gV�� ��� ��� ��� ��� ��� ��� ��� ��� ��(�( ��)�) ��,�, ��,�, ��� ����:0                 	 
 �	��� Ӻغ:0             �	��� ����:0             �4�� ����:0            
 ���� ��� ͻһ:0             �� x�� }�� ��� ��� ����:0              �	��� üȼ:0             ����� ��(�( ���:0            	 ���� ��� ��� ����:0             �	��&�& ܽ�:0             ���� ��$�$ ����:0             �	��� ����:0             �	��� ߾�:0             �	��� ����:0             	���*��� ��!�! ��&�& b�� ��� ����:0              �i�� ��� ��� ����:0             ���� ��� ����:0             �	��	�	 ����:0            
 �	��#�# ����:0             ����� ��� ����:0             ��z�� �� ����:0              ������5��� �� �  ��� ��� O�� ��� ����:0                 	 ����=;�� E�� <�� F�� �� �  g�� >�� H�� ����:0              	 ����$�$ ��-�- ����:0            	 ����$��*�* ��� ��� ��,�, ����:0              	 �	��"�" ����:0             !�����������W	 	 �� 	 �� 	 	 	 	 	 	 	 �� 	 ����&:0       
              	 
 	���;(��� ��� ��� ��� ��� ��� ��� ����:0              ���� ��� ����:0             ����%�% ��'�' ��� ����:0             	������ ��� ��� ����:0              �	��� ����:0              	���+��� ��� ��� �� �  ��� ����:0              �	��	�	 ����:0             	�! ��� ��� ��� ��� ����:0             �	��� ����:0            
 �	��� ����:0             ����� ��� ����:0             �	��� ����:0            	 �	�� �  ����:0             ����������r��� ��� ��+�+ ��)�) ��� ��.�. ��� ���  ��� ��� ��� ��,�, ��� ����$:0       	             	 
 	���"	PU ��$�$ 
TY ��� ch ����:0             	 ���� ��� ����:0             �������q�� �� ,�� /�� �� �� �� !�� ��� -�� 0�� �� �� �� !�� ����:0                  
 �	��� ����:0             	���u�� ��� z�� ����:0               ����c%  ��� ��� ��$�$ ��%�% %$ ��� ��� �� �  ��)�) ��$�$ +3 �� �  ����:0              	 	��	�0j�� _�� X�� ��� ��� ��� ����:0             	 �& ��	�	 ����:0             �Xe ����:0             ����� ��� ����:0             �	��
� ����:0             �	��%�% ����:0            	 ����!�! t�� ����:0             	���B�� C�� E�� ����:0             	 	��	�0k��	 a�� Y�� ��� ��� ��%�% ����:0             	 ����	����8��� ��� ��� ��� ��� ��!�! ��*�* (��� ��� ��"�" ��$�$ ��(�( @��� ��� ��� ��� ��� ��� ��� ��� (��
� ��� ��� ��� ��� e�� ��� ��� ��� *�� 8�� ��� (��� ��� ��� ��� ��#�# ����:0                 	 ��W�� O�� ����:0             �	��� ����:0             �	��
�
 ����:0             �9�� ����:0             �	��� ����:0             �OU ����:0             �	��)�) ����:0             ���� ��� ����:0             ��!��� ��� (�� ��	�	 ����:0             �	�� �  ����:0             ���� ��� ��� ����:0             �	��'�' ����:0             �	��!�! ����:0             ���� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��(�( ����:0             ���� ��� ����:0             �	��)�) ����:0             	���+��� ��!�! ��"�" ��� ��)�) ����:0             	 �%0 ����:0             ���� ��#�# ����:0             ��T�� V�� ����:0             ��	�	 ��� ��!�" ����:0             �	��� ����:0             �	��	�	 ����:0             	���
Xg \k kz ����:0             	 �	��'�' ����:0             �	��� ����:0             �	��� ����:0             ��"��&�& ��)�) ��� ��� ����:0             �����4��� W�� ��� ��� ��#�# ��� ����:0                	 !������������0��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��)�) 0��
�
 ��� ��� ��� ��� ��� 8��� ��� ��� ��� ��"�" ��)�) ��+�+ 0��� ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' @��� ��� ��� ��� ��� ��� ��� ��� 6:�� H�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, x�� ��� ��� ����&:0       
              	 
 ����� ��� ����:0             	�! ��� ��� ��� ��� ����:0             �	��'�' ����:0             �����	��������� ��� ��� ��� ��� 0��� ��� ��� ��� ��� ��� ��� x�	�	 ��� ��� ��� b�� ��� ��� ��� P��� ��� ��� ��� ��� ��� ��"�" ��#�# ��&�& ��'�' E�� L�� ����$:0       	             	 
 �	�.��� ��� -�� A�� D�� U�� ����:0             ����������8��	�	 ��
�
 ��
� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��&�& ��&�& ��� ��'�( ��(�) ?a�� ��� ��� ��� ��� ��� ��� ��� (��
�
 ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��#�# ��%�% �� ��	�	 ��� ��� ��� ��%�& ��*�* ����":0                    	 	��	�3��� ���  ��� ��� ��� ��� ����:0              �	��� ����:0             ���	����	����O{�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� 0��� ��� ��� ��� ��� ��� `�� ��	�	 ��
�
 ��� 0��� ��� ��#�# ��#�# ��%�% ��*�* ��� ��	�	 ��� h��� ��� ��� ��� ��� ��� ��� ��� ��� ��$�$ ��$�$ ��$�$ ��%�% k�� }�� ��	�	 ��	�	 H��� ��� ��� ��� ��� ��� ��"�" ��&�& ��*�* ^�� ����$:0       	             	 
 �t�� ����:0             �	��� ����:0             ����� ��� ��� ����:0             !������������8��� ��� ��� ��� ��� ��� ��� 8��� ��� ��� �� �! ��"�" ��'�' ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��)�) 0��	�	 ��� ��� ��� ��� ��� 8��� ��� ��� ��� ��"�" ��)�) ��+�+ 0��� ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' @��� ��� ��� ��� ��� ��� ��� ��� 69�� G�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, w�� ��� ��� ����&:0       
              	 
 	��: ��� ��� ��� ��� ��� ��� ��� ����:0             �	��� ����:0             ���$�$ ��%�% ����:0             ��)k�� ��� ��� ��� ��
�
 Հ݀:0              �	��� ����:0             �	��� ́с:0             	������ ��'�' ��� ����:0             	 ��M�� P�� ��:0            	 ����� ��"�" ���:0             ����<��� �� �  ��� ��� ��$�$ ��+�+ ��+�+ ����:0               	 �������w��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����:0                	 
 �	��� ƅ˅:0             ��	���]��&�& d�� n��  $�� ��
�
 ��� ��� ��$�$ A�� m�� ��� ���:0              	 
 �	��!�! ����:0             ����,��#�# ��� ��� �� �  ��� ����:0             	 
 �	��� ����:0             �q�� ����:0             �	��� Ոڈ:0             ��������� ��+�+ ��� ��� ��� ��'�' U  ��� ��� ��� ��&�& ��&�& ��'�' ��*�* ��+�+ ��+�+ ��+�+ F�� ����:0              	 
 ����� ��!�! ��,�, Ċ̊:0              �	��&�& ����:0            	 �	��!�! ����:0            	 ��� �  ��#�# Ջڋ:0            	 	��� �� ���  �� "�� ����:0             	 �����}��� ��� ��$�$ ��"�" ��%�% ��
�
 ��&�& ��� ��� 0��� ��� ��� ��$�$ ��(�( ��,�, Ќ�:0               	 �	��(�( ����:0             �	��'�' ����:0            	 ���� ��� ӎ؎:0             ������>��� ��� ��$�$ ��� ��� ��� ��� ����:0                  �������b�� �� %�� (�� �� �� �� &�� )�� �� �� �� �� ����:0                  
 	���j�� �� �  ��� ����:0               �	��
� ߑ�:0             �	��&�& ����:0             	���!w�� ��� |�� ��� ����:0               	���C��� 0��� ��� ��� ��� ��#�# ��&�& ��%�% ����:0              	������ ��� ��� ���:0              �	��� ����:0             	���A�� B�� D�� ה�:0             	 �	��� ����:0             ���� ��#�# Ǖ:0             �����4��� ��� ��� ��� V�� ��� ���:0               	 �	��)�) ۖ��:0             �	��� ����:0             	���i��� ��
�
 V`�� o�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0              ��)��� ��� ��� ~�� ��
�
 ��Ș:0             ����� �� �! ��� ����:0             ����,�, ��,�- ��� ͙ՙ:0             ���������
�
 ��� ��	�	 ��� @��� ��� ��� ��� ��� ��"�# ��$�$ ��%�% ��� ��� |�� =�� ����:0                  �	��� ʛϛ:0             	����� �� �� ���:0             	 	����� �� �� ����:0             	 ���� ��� ����:0             �	��#�# ����:0             !������������ ���    $ q�� ��� ��� ���  e�� ���    ���   ѝ��&:0       
              	 
 ������0�� )�� �� �� *�� �� ����:0                 
 ����	�������� ��� ��� ��� ��� ��(�( 8��	�	 ��
�
 ��� ��� �� �  ��'�' ��*�*  ��
�
 ��
�
 ��� ��� (��� ��� ��� ��� ��� `�� ��� ���� :0                   	 �	��(�( ����:0             �	��� ��Ƣ:0            	 ���� ��� ��&�& ��:0             ����� r�� ��� ����:0              �	��� ��:0             ����������(��� ��� ��� ��� ��*�* ��� e�� ��	�	 ��	�	 f�� ��� ��� u�	�	 ��� ��� ��� ��� %�� ��� ��$�$ 0�� 7�� Z�� ����":0                  	 
 �	��(�( ����:0             �	��� ����:0             ���� ��� ߦ�:0             �POc�� ��� ��� ��� ��� ��!�! ��#�# ��'�' ��*�* ��-�. ����:0             ��	������� P��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�)  ��� ��� ��� ��� ��� ��� ����:0                 ����� ��� ©ʩ:0            	 �	��
�
 ����:0            
 �	��+�+ ����:0            	 �	��� ˪Ъ:0            	 �	��� ����:0             ���� ��� ��� ����:0              	���/�� 0�� 2�� ֫�:0             	 �����E��� ��� ��� ��� ��� ��� ��� ��� ����:0               	 	���"��� Y�� ��� ��� ����:0              ����$��� ��� ��� ��� ݭ�:0               �	��
�
 ����:0             �	��� ٮޮ:0             �	��� ����:0             �	��� ����:0             ��k�� ��� ԯܯ:0             ����7�������
�
 ��� ��$�$ ��'�' ��� ��� ��� n�� ��	�	 �{�	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �! ��!�! ��"�" ��#�# ��$�$ ��$�$ ��$�% ��&�& ��� 1�� ��� H��� ��� ��� ��� ��� �� �  �� �  ��"�" ��#�# ���� :0                   	 	���#��� ��� ��� ��� Գ߳:0              �	��� ����:0              �	��� ʴϴ:0             	���;��"�" ��#�# ��*�* ��#�# ��� ��� ��� ���:0             	 �	��� صݵ:0             �	��� ����:0             �	��'�' ����:0            	 �g�� ��%�& Ӷض:0             ����&�& ��� ����:0             ���	����� G}�� ��� ��� ��� ��� ��!�! ��&�& ��(�( ��.�. ��� ��� ���  ��� ��� ��� ��� ��ȷ:0               	���"��� ��� z�� ��� ����:0              ��"��� ��� ��&�& ��+�+ ��ɹ:0             	 �	��
�
 ����:0              �	�� �  ����:0             �	��� ںߺ:0             �����������	�	 ]�� /U�� ��� ��� ��� �� �  ��$�% 7l�� ��� ��� ��� �� �  ��!�! ��"�" ��	�	 ��
�
 ��� ��	�	 ��� ���� :0                   	 �	�� �  ��:0             ��K�� N�� ����:0            	 �	��� ʽϽ:0             ��"��� ��� ��&�& ��� ���:0             	���-�� 2�� �� 3�� �� 5�� ��ž:0             	 �	��� ����:0              	������ o�� ��� ��ſ:0             	 �e�� ����:0              ������V��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��$�% ����:0                 	 ����!(�� )�� ��� +�� ����:0              	 �#�� ����:0             �����5��� ��'�' ��� ��� ��� ��#�# ����:0                	 ��N�� Q�� ����:0            	 ���)�) ��*�* ��+�+ ����:0             ���� ��$�$ ����:0             �����U�� �  ��� (��	�	 ��� ��� ��#�# ��'�' ��� ��(�( ��	�	 ����:0              	 
 ���7����	����� (��� ��� ��� ��� ��� ��� ��� � \�� x�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��)�) ��*�* ��+�+ ��-�- ��.�. ��� ��� ��� ��� ��� (��
� ��� ��� ��� ���  ��� ��� ��� ��� ���� :0                   	 �����K'V�� ��� ��� ��� ��%�% ��� 3�� ��� ��	�	 ����:0              	 
 	�����(�( ��� ��� ����:0              �	��� ����:0              ���"�" ��%�% ����:0             ���� ��� ����:0             �����'�' ��+�+ u ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��#�# ��&�& ����:0            	 	���+��� ��� ��� ��� ��� ����:0              ����� ��� ����:0            	 �	��� ����:0             �W�� ����:0            
 �	��� ����:0             !������������(��� ��� ��� ��� ��� x��� ��� ��� ��� ��!�! ��!�! ��"�" ��"�" ��#�# ��$�$ ��%�% ��'�' ��(�( ��(�( ��)�* X��� ��� ��� ��� ��� ��� ��� ��"�" ��$�$ ��%�& ��)�) ��
�
 ��� @��	�	 ��� ��� ��� ��� ��� ��!�! ��(�( /k�� ��� ��� ��� ��� ��� `��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��&�& 8��	�	 ��
�
 ��� ��� ��� ��� ��� K+�� 7�� [�� b�� h�� ��� ��	�	 ��
�
 ��� ��� X��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��%�% ��(�( r�� |�� ��	�	 ����&:0       
              	 
 ���������',  ��� " ��� E ��	�
 ��
�
 ��� ��� ��� ��� ��"�" ��"�" ! ���   ���� :0                   
 	��� *�� %�� +�� ��
�
 ����:0               �/7 ����:0             ����$�$ ��� ����:0             	������ l�� �� �  ����:0             	 ���-�- ��-�- ����:0             ����� ��� ����:0             ����������Fs�� y�� ��� ��� ��� ��� ��� ��� ��� (��� ��� �� �  ��&�& ��'�' ��� ��!�! ��'�' ��� ��)�) ��*�* &x�� ~�� ��� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��	�	 ��
�
 ��
�
 ����":0                    
 �	��$�$ ����:0             �	��� ����:0             ���� ��&�& ����:0             	��* ��� ��� ��$�$ ��%�% ��� ����:0             �	��� ����:0             �	��� ����:0             �f�� ��%�% ����:0             		���yS�� ��$�$ ��%�% ��%�% GK�� ��� ��� ��� ��� ��� ��� �� �  �� �! ��� ��� ����:0              	���js nw `�� }� ����:0             	 �	��'�' ����:0            	 ����� ��� ����:0              �	��� ����:0            	 �	��� ����:0             ����<��� ��� ��� ��� ��� ��� ��+�+ ����:0               	 �	���������� ���  ��� ��� ��� ��#�# ��� ��� ��� ��� (��� ��� ��� ��� ��� ��� ��	�	 ��� ����:0                  ��G�� H�� ����:0             �	��� ����:0             ����� ��� �� �  ����:0             	 �	��� ����:0            	 �	��� ����:0            	 ����� ��� ����:0             ���� ��� ����:0             	�! ��� ��� ��� ��� ����:0             �	��	�	 ����:0            
 ������	�	������ ��� (��� ��� ��� ��%�% ��&�& (��� ��� ��� ��"�" ��'�' ��� ��� @��� ��� ��� ��� ��� ��#�# ��#�# ��$�$ ��
�
 ���  ��� ��� ��� ���  ��� ��� ��� ��� ��� ��� ��"�" ����":0                    	 �	��	�	 ����:0             �	��� ����:0             �	��� ����:0            	 �����=��� ��
�
 ��� ��� ��%�% ��� ��� ����:0                ��I�� J�� ����:0             ����!�! ��-�- ��	�	 ����:0             �	��� ����:0             �	��+�+ ����:0             �%$�� /�� =�� K�� ��(�( ����:0             �E�� ����:0             ���,�, ��,�, ��-�- ����:0             ��"��� ��� ��� ��%�% ����:0            	 ����"�" ��� ����:0             ��Q�� R�� ����:0             �������i �� "�� 8�� ;�� �� !�� %�� '�� 9�� <�� �� !�� $�� '�� ����:0                  
 ��o�� t�� ����:0              �3                �  W	"�FO.���� 1           9876543210.K �,�� �� Z 0A � ��� `853B  ��^�
iq�{ =        986543210.,KJ    43 �2A  ��Y�,��         f98654320I  ��PR    �510.DxP(     9653 B�.A  ��P��<     96540.F���� ����  ��g?� � ~       98765310H �J  �70.C ���� ���� �n0 m50C ���� tH 9.!B > 9A �������� �:��T+  sli�� ��� ��A uiW1 trc� b9 vdBH��� ���� re -gA / sA� ��k�� ��� 1gA�{���� ���� � �����c��1�   #'+wtsrpomli	��� ������������� �cA�����-�   oib ��) [eha) 
wt/ yo/ �tna� �leɎ�����O ������������ )eA���\��Ӹ������ �e$� � } +     	  � + roigecb" b)�+ieB ����� � �        skidc"� ����� �N �ǄA  gea��V��
�	 �X��      G � � � � Nafr�vusrpnmlgfdcb" �>   ke3 *  ie! ��>b )    tsrdc �ȗ �� )iA��� ��A   �ti!� �V� � n A       ! �tslhgc" /�i!A� V ng!� �W��Ͽ �= to��	 ���) ea �� �� ic� �  ��L����) &7;L�yurolieaH� ��  lc� �) � ia!r���-  te� �%   ec x iA��� ,eA���+  ts��@�f)  *7 Eutsrpnl� �(  yi� ��iK lia!C)  ;ri!� ���������� 4aAn  �nc! �f �; ����ğvIi  	-roiea� ��R  ��us", ��  ea� ���� �� �� �� ��@   	uol Whl!A���� +iA`  tr)   xt� �   � 
 uolia"(� 5    6   pmeb" /e!A�W + ea!Q �/ U  sd! �1  �ra!X tiS �y ����� �     
 3* . vtsndc"S �  �	�	1		���� p C � � d � � �� vurponmlfda"Kl ���� �� V.� ie!B� �da, �� ��˫m<�    �  % uoiea"� �_ � sr!����	�	�    U k���uroliha"� ���< �� �  5�9  � 	 tsb_"D; ��J �oa� � �Pt_B�  ea�     vti"K   md� �p � ia!� ��A ���Ę �� � `5 �re!B�  ic!� ��5  Zea!i�l��� 5     ) - �4 9 G �tspmlifca"	r ���x�7  �ie!�� ����� �Ͽ �	 �� �����9 	ri�A tpa}T+�    ) 0 > srgfa"*   �ea!@� B   �   cungc"� �ɀ�b'��	$    	 ) � yuoiea"H ��+ WNle!�= srA x�ie!�k ��b �v5    sie!� �5  �on!� ����� �3	_.B���\ �� �_6E       tsgdc", �I  Nia!�	 �� �ɕ �_ �  rn!7 eax �b   �mc"r �)  zle!) �rc!V �) " oi!;� R   � �  role"� �) 7 re!�,�    o= K tpica"���|l�3� �    v � � � � � � �    xvsrqnmlifda" )�o!A�9   sl� ���ȴR mlc1 �S* �S wta!K �  tl!��~�     � xvrnl"@ n�sa!�O ������ 3_A� oaA��� �   t ?curol"3 �  se![ � ie!1   >lf!� �  7cAZ nl�*/�m�   3`k��uroliea5 �-   �tn!;	 �?	 �ȼ �� �1   �wu!8  oer>� � Y   "&0rolieaY	 �˨ ��� jcAķ  pl� ����� xl	 ��) 6 sg!� ���|	 �7� �    	 �	  wurmc"F �7	 �+��6)   	.=ayuoiea1 �	  na! =eA� �- ��������� ��	 �^)  � rol!)  �	pa!;   sdӽ	 ���d ola
 ��(  vc�8
 ��	 �U olV
 �^ ��7  �	�tie!�	 �I %
 sp!-  rg�
 ��� �YreB E�r� �    & 8 
< L Z tspnfdc"�	 ���� �   ����tnmlgd�
 ��
 �����P
 ����I �
 sl!�w65    ��  usoma"+ �l+    �yie! ) nA�ę 	ne�
 ��	 �� -�
e!A�	 ��� 5_A��_� i (   �
    q tsrndb"< K	  rd!�
 � )�
t!A�c�    a � tsnfa"l ��� 7lA�& ����;�5�   �\  �smlkf"= �  sc!�7� =   G�	� ewonga"l ����ʪK��  	/^�uoiea� � V- Snl!B5   Gkc!M ���q �� �(i_BX�^� \    4
   �S Sxtrpnkid"� ��������� 3?
i!A˦ ����Q ��\ tda� ����ǘ � ) tA {R)p uidC� �ƢZ'Z )     �    xtsngc"�
 �T �) ieZ ��#� v   �  vrnd"y ��� �   � snlc" ��Q
����  !L���yuoieca� ��� �x lf x_A�� �3 �3ui!N%  trm~ ������� CsA� R)�
�oa!B� ���) %le!A� t   �  �  xwtsge"! �� ����� T+ seBk    ie!�� E       |wtnc"s edeb!�  �ml!  	��$FJ�uoieaE� �9 ��se!
 �z tf� �� �o:   ��
pda"�t1 ����spec!��
 ����@�Iu� Q (     o �  0 4 �J vutrpnlfcb"
� ����) �  ie!g ��� <iA�� ��a8� { )    � 5   tsrigd"� � ffA@j 5      fztron"l �!�/  tc!� �	 ea!; � ��׀=   &tsi!�5 � `wsi!� ������������-  P
gc! ��+ :_rn! ��  �ie!ۇR)    x
:vsfdc! ��5 � �ync!� � \2_!A �tA�� ��� &eA�ȸ]?   �	   gfdb"]Pn   8J}oiea ��ϐ
 �t4   j rpc!) rb  Z��_�Z )  ! � � 	)euroliea."H� �ˎ � )>a!A���c   	 3 oiea"ӂ ���& zztr! +�a!A R)��li!B+� D   g  �sldc") �pni!�
 �1 2 rm!R oer �� *rA�¢	 ����D ����� :iA��c   � iea!p ������� Ee!A��)  %re!�	 �� �� lC �ro!B�I   v ute"� ��  V ur"  
��*���1�1   2 6 I S p w �� � tsqpnmlgfdca"L :Gn!A   Cwu"� ��    �nl"�G��x )      �$ /9utoiea."1 �  li!+   >ea!T  nls �7  ta�N ���   hea� � 5 nA1   �fe! )�e!A�v1J"�m�   �   ��		   vtrqplec"Y �� �� 1_A�� 1 nA�h �ȧM� )     �  roiea" -�i!A��  a�poi!G �  gc!a�m   �  �znmd"- �$ie!���`    ih!� � wt!§^ -   �� ��romlf" � iA?  �fa!�(  � ec" �� ������E��?    
 v vroliea"  zs ��ia"B�  �
 ul" <qa!A�9   &ue!�� 9    c qtrnc"o �p   .ea!�= ~Uui!P&�  roia� �� �) tqP 92ol!u  3pe!� �/  re� � { R       �4! rpmgcb"� ��= ��4   �xc!�) to�  ��)q���
1
��� +    p � � 'Wd��Jywutqpomiheca"M�W foNskb!a �  qc!��Ο ��0    tm!�E� � �   ��  x xsrmlc"I   kg�
 ���� ��t roi; ��� 7sA�+ P  yi!j nm� �� ��� ,i!As� � U   � �  tpoig". nni!;   ea!K �1  ne�   uea� h  ie!ɺ
�9r���    � : f � � � ywroihea"2 �����U ���� ��1 uo�� �hYqoc!��� -   �
w  " rlifd"� �� � ~T�Hn_!B�  �� � ue"BKTB  b8   # utsrpn"P    �ui"� �Ƚ �+   �db! �M< oa!BZ) icb�  *rl D�_!A� �oA   nd+ K2ts!E  rnM�  = - oea"� p  ni!+ &�se!h z lb!� �� �5 � tr!� ������ �ґ) oiea� �Z   ld^ �c �ǒ) x� oid!μ�  tnl �+ o  rk!�P ��e&��  Ht�rojiheaV ����� a( m'!B7   �ta!�� ����� � rp!� �� eawxxewgq�l5e�Y�?2-+�t�� � �� �� �� �� � ^� �� _� �� � �� @� �� �� 	� �� d� \� 	� �z �o   ) < � g���&�>	
L-O�y�E&��kS]ct����C�zyxwvutsrqponmlkjihgfedcba_9876543210#%      �      �������������������������;��� ��'�' ��  �� ��+�+ ��� ��
�
 ͦަ:0                
 �	��� ����:0              ��������� ��� ��� ��� ��� ��� 6�� W�� 7�� X�� @��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ���:0               	 �����	�	����#4�� C�� U�� V�� `�� Gs�
�
 ��� ��� ��� ��� ��� ��� ��� ��� Gj�	�	 ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� �� $�� %�� /�� >�� P�� Q�� 7�� H�� \�� ]�� �� �� �� 'a�� ��	�	 ��� ��� ��� ��ȩ":0                    	 	���'�� S��  �� T�� ��� ̬׬:0             	 ���������wL�� y�
�
 ��� ��� p�	�	 ��� ��� 2�� 2�� G�� R�� 3�� g�� �	�	 ��
�
 ����":0                    	 �������T0�� 9�� ^�� {�
�
 r�	�	 �� +�� 4�� 3�� =�� i�� ܮ�:0                  	 ��������B�� K�� 6v�
�
 |�
�
 ��� ��� ��� ��� ��� 6m�	�	 s�	�	 ��� ��� ��� ��� ��� O�� =�� F�� G�� Q�� >d�� j�� ��
�
 ��� ��� ��� ��� ��� ���:0                  	 ��������T�� ]�� .r�
�
 x�
�
 ��
�
 ��� ��� ��� ,i�	�	 o�	�	 y�
�
 �
�
 ��� ��� @�� O�� [�� 4`�� f�� o�	�	 u�	�	 ��
�
 ��
�
 ��� ����:0                  	 �����Ot�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� Ok�	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� N�� ^b�� ~�	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0              	 		�	��s ��� ��� ��� ���  ��� ��� ��� ��� 0��
�
 ��� ��� ��� ��� ��� ��ȶ:0             	 ��������	��2�� N�� _�� 7z�
�
 ��� ��� ��� ��� ��� ��� 7q�	�	 ��� ��� ��� ��� ��� ��� �� U�� �� &�� P�� -�� I�� 5�� T�� �� V�� h�� ��	�	 ��� ��� ڷ��":0                    	 !	�������������� -�� .�� [�� 1�� �� #�� $�� V�� n�
�
 ~�
�
 A�� �� $�� %�� N�� d�	�	 u�
�
 ��� ��� �� +�� �� ,�� :�� H�� ��+�+ 
�� (�� )�� *�� /�� 0�� 1�� Y�� d�� �� 
�� 2�� �� &�� '�� \�� l�� ��� �� ����&:0       
              	 
 �	��
�
 ��Ľ:0            
 	���3�� 4�� 6�� ��:0             	 �	�	��������3�� >��  ��
�
 ��� ��� ��� }�
�
 ��
�
 ��� ��� �� �� R�� .�� 9�� 6�� B�� �� >s�	�	 y�	�	 ��� ��� ��� ��� ��� ��� ��Ǿ":0                    	 ����!Y�� T�� `�� ��� ����:0               	 �����	�^O�� W�� #�� J�� R�� U�� ^�� $��  ��� ��� ��� ��� ����:0                 	 ����������1�� ;�� ��� ��� ��� ���  �� T�� �� (�� ,�� 6�� 4�� ?�� !�� U�� 8��	�	 ��
�
 ��� ��� ��� ��� ��� ����":0                    	 �)�� ����:0             �>�� ����:0             	������ ��� ��� ����:0             	 ������`M�� ��
�
 ��� z�
�
 ��
�
 H�� S�� &p�	�	 w�	�	 ��� ��� ��� ����:0                 	 ��������=�� ��� ��� ��� ��� ��� 8�� A�� @��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ����:0                  	 �����;��� ��� 4�� 5�� ��
�
 ��� ��� ����:0               	 �	��� ����:0            	 ����������:�� D�� 4�� ��
�
 ��� {�
�
 ��� !�� 4�� 5�� ?�� >�� I�� "�� 7�� q�	�	 ��� ����":0                    	 !�������������� 6�� I�� G�� �� >�� ?�� H�� I�� P�� [�� }�
�
 ��� G�� �� ?�� @�� I�� J�� S�� t�
�
 v�
�
 ��� �� �� �� 1�� D�� *�� �� 9�� ;�� N�� h�� �� �� H�� �� A�� B�� K�� L�� S�� k�� ��
�
 ��� �� ����&:0       
              	 
 �������o5�� �
�
 ��� w�
�
 ��
�
 u�� 0�� 8�� .m�	�	 x�	�	 ��� ��� ��� ��� ����:0                  	 �qp��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�) ��,�, ����:0            	 ���	����	���*/�� 8�� A�� J�� S�� \�� nq�
�
 w�
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� lh�	�	 n�	�	 x�
�
 ~�
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� 1�� R�� #�� #�� 1�� ?�� M�� #*�� 3�� <�� E�� N�� #2�� <�� F�� P�� Z�� �� �� 2�� S�� c_�� e�� n�	�	 t�	�	 }�	�	 ��	�	 ��
�
 ��
�
 ��
�
 ��� ��� ��(�( ��,�, ����":0                    	 ����)'�� (�� ��� ��� �� ����:0             	 
 �B�� ����:0             ������3��� ��� 3�� A�� 4�� ��
�
 ����:0                	 ����	��H�� �� �� �� �� ��� ��� ��� �� ����:0               	 
 	������ ��
�
 v�	�	 ����:0             	 �	��� ����:0            	 �	���6"�� 3�� C�� D�� I�� #�� ��� ����:0              	 ���� ��� ����:0             !���������	����� 7�� ?�� %�� -�� _�� ��� ��� 4�� .�� W�� f�	�	 ��
�
 ��
�
 ��� $�� *�� �� 2�� :�� *�� :�� C�� E�� O�� k�� %�� ��  �� 0�� z�	�	 ��
�
 �� ����&:0       
              	 
 	����� �� �� ����:0             	 	�	�������=�� G�� ��
�
 ��� >�� H�� |�
�
 ��� :�� A�� O�� 5�� ;�� B�� P�� E@�� J�� r�	�	 ��
�
 ��� ��� ��� ��� ��� &�� ��� ����:0                	 
 	���.�� /��  �� ����:0             
 �;�� ����:0             !�������������� H�� 3%�� 5�� R�� b�� o�
�
 ��� ��� D&�� 6�� Z�� e�	�	 ��
�
 ��� ��� ��� ��� +�� 8�� ��� �� C�� �� M�� ,�� �� ,(�� 8�� U�� ]�� ��
�
 ��� �� ����&:0       
              	 
 �.�� ����:0             �<�� ����:0             ��� ����:0             �J�� ����:0             ��������	���<�� G�� b�� p�
�
 ��� ��� g�	�	 ��
�
 ��� �� 5�� �� 7�� B�� @�� L�� �� 6�� ^�� ��
�
 ��� ��� �� ��� ����$:0       	             	 
 	���X�� S�� _�� ����:0               ����)F�� A�� K�� ��� ��� ����:0               	 ��H�� I�� ����:0             	���5�� V�� W�� ����:0              	����� �� �� ����:0             	 !��	����	�������� @�� Q�� %,�� .�� e�� ��� ��� -�� /�� ��� ��� 7�� F�� �� ;�� L�� �� #�� D�� W�� 8�� �� %/�� 1�� {�	�	 ��
�
 ��� #�� ����&:0       
              	 
 ����A��� ��� ��� ��� '�� Q�� |�	�	 ��	�	 ����:0              	 	���E�� @�� J�� ����:0               �6�� ����:0             �	��� ����:0            	 �7�� ����:0             �L�� ����:0             	���u�
�
 l�	�	 c�� ����:0             	 �a�� ����:0              ������	�x$�� Z�� 6�� ��� ��� 7�� ��� ��� >�� ��� ?�� 9�� ��� ��� ��� ����:0                  	 	���"�� #�� %�� ����:0             	 	���H�� ��� ��� �� ��� ��� �� ��
�
 ��
�
 ����:0             	 �-�� ����:0             	����	�f@�� Q�� ��� ��� A�� ��� ��� E�� F�� C�� T�� ��� ��� ����:0               	 �0�� ����:0             	���P�� K�� V�� ����:0               ���� �� ����:0             ������JJ�� ��� ��� L�� ��� M�� M�� ��� ��� ����:0                	 	���+�� ,�� .�� ����:0             	 ��� ����:0             �	��� ����:0            	 	���R�� M�� X�� ����:0               ��M�� N�� ����:0             ����� [�� ����:0              �	��� ����:0             �	��� ����:0             �����S'n�� ��	�	 ��� ��� ��� ��� ��� s�� ��� ��� ����:0                 �	��� ����:0              �	<B ����:0             	������ ��� ��(�( ����:0               �����3��� ��� s��	 ��� ��� .�� ����:0              	 
 ���� ��� ����:0             �	��&�& ����:0             �`�� ����:0            
 	���"	?B 
BE 	?B ��� ��
�
 ����:0             
 �	��� ����:0             ������< |�� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��"�" (��� ��� ��� ��&�& ��)�) ��	�	 ��� ��$�$ ����:0                	 	����D ��� ��� ��� ��#�# ��� ��	�	 ��	�	 ��!�! ����:0              	 �	��� ����:0             ��������m��� ��� ��(�( x�� ��� ��� ��&�& ]�� L�� ��� ��� ��� ��� ��Ā :0                  	 �	��� ځ߁:0             �	��� ����:0              ���� ��#�# ����:0             ����� ��� ݂�:0             �n�� ����:0             ��������m��� ��� ��"�" ��%�% w�� ��� ��� h�� ��� ��!�! ��� ��"�" S�� ��փ :0                 	 
 ���� ��� ��:0             	���#��� ��� ��� ��� ����:0              �	��'�' ��:0             �������y�� !�� ��� -�� 9�� ��  ��  �� &�� .�� :�� ��  �� ��� �� %�� ����:0                  
 �������i�� #�� 0�� <�� �� "�� "�� (�� 1�� =�� �� "�� "�� (�� ʇ�:0                  
 ��	��	����,�� ��*�*  ��	�	 ��� ��� ��� (��� ��� ��� ��#�# ��$�$ '�� ��� ��� ��� .�� ��� ��%�% ��� ���:0                  	 ����4��� ��� ��#�# ��� ��� ��� ̊ڊ:0               	 �	��� ����:0             �	��� ؋݋:0             �	��� ����:0             ����4�� �  ��� ��� ��� ��� ��� ����:0               �	��� ����:0            	 �����|��� ��� ��� ��� ��$�$ ��� ��� 0��� ��� ��� ��� ��� ��� U�� ��� ��Ǎ:0               
 ����)�) ��� ��:0             �	��� ����:0            	 �	��� Əˏ:0            	 �	��(�( ��:0            	 ����� ��� ��� ����:0              ����� ��� אߐ:0             ���� ��� ����:0             	�! ��"�" ��"�" ��#�# ��#�# ��đ:0             �)(��
�
 ��� ��� ��� ��� ����:0             �	��	�	 ɒΒ:0             ���� ��� ��� ���:0             ��� ����:0             ����� ��� ӓۓ:0            	 �	��� ����:0              ���� ��� ����:0             ��O�� R�� ��:0            	 	������ ��� ��%�% ����:0             	 ����� ��� ��� ޕ�:0              	������ ��!�! ��� ����:0               �	��%�% ��:0             �	��&�& ����:0             �	�� �  ����:0             ���'�' ��'�' ��(�( ݗ�:0             	���8�� 9�� ;�� ����:0             	 ������k��� ��� ��� ��� |�	�	 'f�� ��� ��� ��� ��� 8�� ��	�	 ��
�
 ؘ�:0                
 �	��� ����:0             �	��� ����:0             �	��� ΚӚ:0              	������ ��� ��� ����:0              �	��� ����:0              �	��� ��:0             �	��)�) ����:0             �~�� ����:0            
 	������ ��� ��� ߜ�:0              �	��� ����:0             ����!7�� 8�� ��� :�� ͝۝:0              	 �	��� ����:0             �	�rP��� ��"�" ��"�" ��"�" ��$�$ ��%�% ��&�& ��&�' ��'�' ��)�)  ��� ��� ��� ��� ƞΞ:0             	�! ��� ��%�% ��&�& ��'�' ݟ�:0             	�! ��)�) ��)�) ��*�* ��*�* ����:0             ����� ��� ��� ߠ�:0             ���� ��� ��� ����:0             �	��� סܡ:0             ���� ��"�# ����:0             ��	���T��� ���  ��	�	 ��!�! ��*�* ��-�- o�� ��� ��� ��� ��¢:0                 �A@��� ��� ��� ��� ��� ��� ��#�# ��$�% ����:0             	��* ��� ��� ��� ��� ��$�$ ����:0             	 �������n��� ��'�' ��	�	 '_�� ��� ��� ��� ��� ��� ��� ��� �� �  ��+�+ ���:0                 	 !��������������� P��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" H��� ��� ��� ��� ��� ��� ��� ��� ��$�$ 'h�� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��%�% ��(�( ��-�- ��� ��� ��� _q�� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��%�% ��&�& (��� ��� ��� ��� ��� &<�� Y�� ��	�	 ��
�
 ��� 8��� ��� ��� ��� ��� ��$�$ ��$�$ %,�� R�� {�� ��� ��� ����&:0       
              	 
 �	��� ����:0             �	��� ͫҫ:0             	���5<�� F�� =�� G�� �� �  ?�� I�� ����:0             	 �	��#�$ լڬ:0             �	�� �  ����:0             �!�	����������� } ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" ��&�&  ��� ��� ��(�( ��*�* ��� ��� ��� ^�� ��� ��� ��,�, >�� ��ĭ":0                   	 
 	���C�� D�� F�� ܯ�:0             	 ��� ����:0              	���RDL ��� ��#�# -	HP ��� ��� ��� �� �  ��)�) W_ �� �  ưѰ:0             	 ����� ��&�& ±ʱ:0              �	��&�& ����:0             �	��� ����:0            	 �	��� ˲в:0             	�	��C��� ���  ��� ��� ��� ��� ��	�	 ��
�
 ����:0             
 �a�� ��:0             �,�� ����:0             	���%�� P�� Q�� ����:0               	������  ��� ��� ���:0            	 
 �������8�� &�� �� �� '�� �� �� ��ϵ:0                  
 ��� ����:0             	����� �� �� ֶ�:0             	 �	��� ����:0             �	��� ��Ʒ:0             �	��(�( ��:0            	 �	��$�$ ����:0             ����	����	����� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��$�$ ��&�& .Z�� {�� ��
�
 ��
� ��� ��� p�� ��� ��� ��� &\�� z�� ��� ��� ��� ��� ��� ��$�$ ��*�* +�� v�� z�� ��� ��ٸ":0                   	 
 �	��� ����:0             ��Z�� R�� ǻϻ:0             	����� �  ��$�$ ��� ����:0              �	��*�* ��Ƽ:0             	���  �� ��� !�� #�� ���:0             	 ��B��� 8��� ��� ��� ��� ��� ��� ��� ����:0              	����� �� �� ����:0             	 	���������� ��	�	 ��� ��� ��� ��� ��(�( 0��� ��� ��&�& ��'�' ��'�' ��(�( 7f�� ��
�
 ��� ��� ��� ��'�' ��)�) @��
�
 ��� ��� ��� ��� ��� ��� ��� 'j�� ��
�
 ��� ��� ��� 4?�� F�� S�� X�� ��� ��	�	 ��	�	 8��� ��� ��� ��� ��� ��!�! ��!�" d�� o�� ݾ��":0                   	 
 �������e��� ��� �� �  ��� 'w�	�	 ��� ��� ��$�$ ��%�% W�� ��� ��� ����:0                  	 �	��� ����:0             	���3��� ��� ��'�' ��� ��� ��"�" ����:0             	 ����*��� j�� ��� ��� 6�� ����:0                ����.�. ��� ��� ����:0             �	��� ����:0             ����� ��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �����T��� ��� ��� ��� ��� ��� P�� ��� ��� ��� ����:0               	 �n�� ����:0             �d�� w�� ����:0             �h�� ����:0              �� ��� ��� ;�� P�� ����:0            
 �	��� ����:0             ����$��� ��*�* ��� �� �  ����:0                �	��� ����:0             �	��� ����:0            	 ��� �  ��"�# ����:0            	 ����� ��� ����:0            	 �	��� ����:0              	����� �� �� ����:0             	 �	��� ����:0            	 �	��� ����:0             �	�Z8��	�	 ��
�
 ��
�
 ��� ��� ��� ���  ��� ��� ��� ��� ����:0              �	��� ����:0             �������8�� �� �� �� �� �� �� ����:0                  
 ��	���T��� ��"�" ��)�) ��'�' ]�� ��� ��� ��� ��� ���  ����:0               	 �lv ����:0             �o�� ����:0             �	��#�# ����:0             ���� ��� ����:0             ���#�# ��&�& ����:0             	���&�� '�� )�� ����:0             	 ����$��� ��
�
 ��� ��� ����:0                	���3��� ��� ��� ��� ��� ��	�	 ����:0              ����� ��� ��!�! ����:0            	 ����5���������	�	 ��	�
 ��� (��� ��� ��� ��#�# ��#�# ��� ��� 0��� ��� ��� ��� ��� ��� � ^�� w�� ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��#�# ��$�$ ��$�$ ��'�' ��'�' ��)�) ��+�+ ��,�, ��,�, ��-�- ��-�- ��� ��� 0��� ��!�! ��"�" ��%�% ��&�& ��'�' ��
�
 ��� ��� .�� (��� ��� ��� ��� ��� ����$:0       	              	 �~� ����:0             ���	����������� ��� ��� ��� ��'�' g�� v�� ��
�
 ��� _U�� ��� ��� ��� ��� ��� ��� ��� ��&�& ��+�+ ��,�, ��-�- 'W�� ��
�
 ��� ��� ��� �� �  ?s�� ��� ��� ��� ��� ��� ��� ��� J�� ��� 0��� ��� ��� ��� ��%�% ��+�+ ����$:0       	              	 �	��� ����:0            	 �	��� ����:0             ������r+�� ��� ��"�" 7~�� ��� ��� ��� �� �  ��!�! ��!�" &�� ��
�
 -�� ��� ����:0                  	��� m�	�	 c�� [�� ��� ����:0             	 	��� l�	�	 b�� Z�� ��� ����:0             	 ���� �  ��	�
 ����:0             ��N�� O�� ����:0             �	��,�, ����:0             ����&�& ��� ����:0            	 �)(��� ��� ��� ��� ��� ����:0             ����C��
�
 ��� 'u�� ��� ��� ��� ��� ��� ����:0              	 �	���A��� Z�� s�� ���	 ��� ��� ��� n�� ����:0                �	��� ����:0             ����*�	�	 ��.�. ��� ��� Y�� ����:0              
 ����� ��"�" ����:0            	 	���+��� ��%�% ��
�
 ��� ��� ����:0              ���
�
 ��� ����:0             ����� ��
�
 ����:0             �	��� ����:0             ����� �� �  ����:0             ���� ��� ����:0             ����� ��� ����:0              �	��'�' ����:0            	 ��������~��� ��� ��� ��� j�� v�� ��
�
 ��
�
 ��� ��� ��� ��#�# ��� ��� ��� ���� :0                   	 �	���	 ����:0             	�! ��� ��� ��� ��� ����:0             �	��� ����:0             �	��� ����:0             	����� �  ��#�# ��(�( ����:0              ����,��� ��� ��� ��
�
 ��*�* ����:0               	 ��^�� V�� ����:0             	������ ��� ��� ����:0              	���9�� :�� <�� ����:0             	 ��p(�� g)�� ��
�
 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ����:0              �i�� ����:0             ����� ��� ��
�
 ����:0             ���	�<��� ��*�* ���  ��� ��� ��� ��*�* ����:0               	 ����� ��� ����:0            	 �	��� ����:0             ����(�( ��� ��� ����:0             �	��� ����:0             �n�� ����:0            
 �	��	�	 ����:0             	�����.�. ���	 ��� ����:0             	 ����*�* ��� ����:0             �������i�� �� �� �� �� �� �� �� �� �� �� �� �� �� ����:0                  
 �	��*�* ����:0            	 	�! ��� ��� ��� ��&�& ����:0             �	JO ����:0             ��C�� D�� ����:0             ��J�� K�� ����:0             ������,
S` 
KX 	IV 
R_ N[ 
KX ��	�	 ����:0                 
 	������ ��� ��� ����:0             	 	������ ��� ��� ����:0              ��	��	������ ��� X�� ��
�
 ��� ��� 0��� ��� ��� ��� ��� ��� K�� f�� k�� ��� ��� ����:0                	 �	��� ����:0             �	��� ����:0             ���� ��� ��� ����:0            
 	���#��� ��� ��'�' ��)�) ����:0              	 ����)�) ��'�' ����:0             ����� ��� ����:0             ��"��� ��� ��� ��� ����:0             ����� �� �  ����:0              ����4��� ��� ��#�# ��*�* ��'�' ��	�	 ����:0                �	��� ����:0             ��	��	�	�����8��� ��� ��� ��� ��$�$ ��%�% ��'�' ��� ��%�%  ��	�	 ��� ��"�" ��&�& ��� ��� ���  ��	�	 ��� �� �  ��"�"  ��� ��� ��� ��� ��� ��� @��� ��� ��� ��� ��"�" ��$�$ ��(�( ��,�, ��� ��� ��܀":0                  	 
 �	��*�* ����:0            	 �	��'�' ڃ߃:0            	 ����� ��� ��*�+ ����:0            	 �	��� Ǆ:0              �	��� ���:0             �	��� ����:0             �	��� ��:0              �	��
�
 ��:0             	���q_X�� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��'�' P�� ��"�" ����:0             	 �	��� ����:0             �	��	�	 Ӈ؇:0             �	��� ����:0             �	��� ����:0             �	��&�& Έӈ:0             ���)�) ��*�* ��+�+ ����:0             �	��#�# ����:0             ����+�+ ��,�, ��� ى�:0            	 �p�� ����:0             �	��� ��Ŋ:0             �	��� ��:0             ��(��� ��� ��%�% 2�� H�� ����:0            
 �����E��� ��� ��� ��� ��� ��� ��� ��(�( ߋ��:0                	 ������	����� ��� q�� (��� ��� ��� ��� ��$�$ ��� ��� ��� x��  ��� ��!�! ��*�* ��+�+ ،�:0                 	 �	��� ����:0             ���� ��"�" Ŏʎ:0             ��B8��� ��� ��� ��� ��� ��� ��� ��� ����:0             	���1�� 2�� 4�� ݏ�:0             	 ����� ��� ����:0              	���z*�� !�� *�� :�� D�� Y�� *�� "�� +�� ;�� E�� Q�� #�� $�� -�� =�� G�� ֐�:0             	 ��"��� ��� ��!�! ��� ����:0             �	�J(��'�' ��(�( ��+�+ ��,�, ��-�-  ��� ��� ��� ��� ��ɒ:0             ���� ��� ����:0             	�����!�! ��.�. �� �  ��:0              �	��"�# ����:0             ��L�� O�� ϔה:0            	 �
EL ����:0             �	��#�# ����:0             ���� ��� ӕؕ:0             �	��� ����:0             '����5�������& d�� l�� }�� ��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��!�! ��"�" @��� ��� ��� ��� ��� ��$�$ ��&�& ��)�) ��	�	 ��!�! ��,�, � `�� m�� q�� ��� ��� ��	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��'�' ��� o�� ��)�) ��ʖ":0                    	 �	��(�( ����:0             	��	�3��(�( ��	�	  ���  ��%�% ��&�& ��'�' ����:0              �	��"�" ����:0             �	��� ����:0             	���0�� 1�� 3�� ̜ל:0             	 	���'\�� a�� T�� Y�� ��� ����:0              ��� ��� ߝ�:0            
 �	�3������� ���  ��� ��!�! ��#�# ��+�+ � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��%�% ��&�& ��	�	 ��$�$ ����:0                	 �	��&�& ϠԠ:0            	 �	��� ����:0             �	��� ����:0              �������8�� �� �� �� �� �� �� ʡ�:0                  
 	������ ��� ��(�( ��ˢ:0             	 �	��(�) ����:0             �	��� ����:0             �	��� ףܣ:0             ���� ��� ����:0            	 !�����������j��� ��+�+ ��)�* ��� ��.�. ��� e�� ��'�' �� �  ��� ��-�- ��� ��Ԥ&:0       
              	 
 �	��� ���:0            	 �	�� �  ����:0             �	��� ��Ħ:0             ��� �  ��)�) ���:0             ��c�� [�� ����:0             !�	�����	������/1 )�� #% T�� i�� ��)�) #') L�� ^�� ��� ��� !# )+ ��-�- %' $��  " *�� b�� ��� $& "$ 	68 W�� ��� !# ��
�
 Χ�&:0       
              	 
 �	��� کߩ:0             ���)�) ��,�, ����:0            	 ����,��� ��� ��� ��� ��� ��ª:0               	 �G�� ����:0             �	��"�" ����:0             �	��� ��:0              �	��� ����:0             ����� ��� ����:0            	 �������	������� ��� ��%�% ��� ��&�& ��(�( ��� (��� ��� ��� �� �  ��!�! ��� ��� (��� ��� ��� ��� ��� l�� ��
�
 ��� ��� ��� K�� j�� ���$:0       	             	 
 �	��&�& ����:0            	 �	��� ����:0             �	��
�
 ��:0             �>�� ����:0             �	��� ����:0             ����,��� ��#�# ��� ��� ��� ڰ�:0              	 ���� ��� ��� ����:0             ��	���[r�� ��	�	 ��� ��"�" w�� ��� ��� ��� ��%�& ��!�! ��&�& ���:0                	 ��!}�	�	 ��� ��#�# ��(�( ����:0             ����� ��� ó˳:0             �����E��	�	 ��� ��� ��(�( ��� ��� ��� ��
�
 ����:0                 �	��� ���:0             	���3��� ��(�) ��� ��� ��*�* ��� ����:0              �	��� ����:0             �)(��%�% ��'�' ��'�' ��(�( ��)�) ����:0            	 �f�� ��:0              �	��%�% ����:0            	 ��&?�� F�� @�� G�� ��� ��ķ:0             ��B�� C�� ����:0             ���)�����%�% ��� ��� � o�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��!�! ��#�# ��&�& ��� ��� ��)�) ��͸:0               	 ���+�+ ��+�+ ��,�, úȺ:0             �	��� ����:0             	���#��� ��� ��� ��� ����:0              ����� ��� ���:0             	 �	��� ����:0             	������ ��� ��	�	 Ҽݼ:0              �	��� ����:0             �	��!�! ��Ž:0             ���(�( ��)�) ��:0             �m�� ����:0             	������ ��� ��� ¾;:0              	���;(��� ��� ��#�# ��%�% ��&�& ��%�% ��� ����:0             	 �	��� ��:0             ����;��� ��� ��� ��� z�� ��� ��� ����:0                ��eo hr ����:0             �	��#�# ����:0            	 ���� ��� ��� ����:0             ����� ��� l�� ����:0             ��B��� ��%�% 0��� ��� ��� ��� ��� ��� ����:0             	���K0��� ��� ��� ��"�" ��$�$ ��%�% ��� ��� ��� ����:0              	���#��� ��� ��� ��� ����:0             
 �	��� ����:0             �	��� ����:0             ��j�� ��!�! ����:0            	 �	��	���������  ��� �� �  ��!�! ��*�* ��� ��� ��#�# a�� {�� ��'�' ��.�. ��� ��� ��� ��� ��� ��$�$ ��	�	 ���� :0                  	 
 �	��)�) ����:0             ��� ����:0             ���������*�* b Y�� [�� z�� ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ��� \�� ����:0               	 
 ����� ��
�
 ����:0            
 �	��� ����:0             ����� ��� ��� ����:0            
 ��d�� \�� ��� ����:0             ����$��� ��� ��� ��� ����:0               ����'�' ��(�( ��� ����:0             �	��� ����:0             ��� ����:0             	���+��� ��
�
 ��� ��(�( ��)�) ����:0             	 		���2 ��� ��� ��� ��� ��� g�� ����:0              �	��	�	 ����:0            
 �	��(�( ����:0             ����� ��� ��� ����:0             �	���D��$�$  ��� ��� ��� ��'�' ��� ��� ��+�+ ����:0               �	�� �  ����:0            	 �������T�� �� �� �� �� �� �� �� �� �� �� ����:0                  
 �	��
�
 ����:0             �������(��� ��� ��� ��� ��(�( ��� ��� 8��� ��� ��� ��� ��� ��� ��� ��� 'N�� ��� ��	�	 ��
�
 ��
�
 ����:0               	 
 ���� ��� ����:0              �+�� ����:0             	���r��� ��� ]�� ��	�	 P��� ��� ��� ��� ��� ��� ��� ��$�$ ��%�% ��%�& ����:0               �������8�� �� �� �� �� �� �� ����:0                  
 ������]��
�
 ��� ��)�) ��� ��� ��� ��� ��$�$ ��� ��� C�� ����:0                
 �	��� ����:0            	 �	��� ����:0             �	��
�
 ����:0             �	��� ����:0             �	��� ����:0             ���� ��� ����:0              �	��� ����:0              �	��� ����:0              �	��+�, ����:0            	 �	�� �  ����:0             �	��)�) ����:0             ��@�� A�� ����:0             	��� )�� *�� ,�� ��� ����:0             	 ���� ��+�+ ��,�, ����:0             �	��� ����:0            	 	��* ��� ��� ��#�# ��%�% ��� ����:0             �������8�� �� �� �� �� �� �� ����:0                  
 ����� ��� ����:0            	 �	��� ����:0             �������^��� ��*�* ��� ��� �� �  z�	�	 ��� ��� ��� ��� ��� ����:0                 	 
 	���'�� (�� *�� ����:0             	 	������ ��*�* ��� ����:0             	 ����� ��� ����:0             �QP��� ��� ��� ��� ��� ��� ��"�" ��"�" ��$�$ ��$�$ ����:0             	�������� ��	�	 ��� ��� ��� 26 U�� ��(�( $6: M�� ��� ��� ��)�) ?c�� ��� ��� ��� ��� ��� ��� ��#�# ��� /{�� ��� ��	�	 ��
�
 ��� ��� 
EI ��� ��"�" ����:0                  	 �������:4> &0 *4 ��� ��� 3= )3 '1 &0 ����:0                  
 �������:	AJ 3< 7@ ��� ��� 	@I 	6? 4= 3< ����:0                  
 �	��� ����:0             �	��'�' ����:0             ��`�� X�� ����:0             ������U��"�" ��)�) ��+�+ ��� ��� ��� ��� ��� ��!�! g�� ����:0               	 
 ���� ��� ��� ����:0             ���� ��� ����:0             �	��� ����:0            
 �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             �	��� ����:0             ����������j��� ��� ��� ��+�+ ��*�* ��� ��� ��'�' �� �  ��� ��-�- ��� ����$:0       	             	 
 	��� �� ��� �� !�� ����:0             	 �	��� ����:0             ��"��� ��� ��� ��� ����:0              �	��� ����:0             �	��� ����:0              ����+��� ��� ��!�! ��"�" a�� ����:0              	 
 ����<��� ��� ��%�% ��
�
 ��� ��� ��� ����:0              	 ����� ��� ����:0             ���	��������6&�� '�� ��� ��� ��� ��� ��� (��� ��� ��� �� �  ��&�& (��� ��� ��!�! ��"�" ��"�" *�� =�� D�� K�� %!�� "�� S�� ��� ��� .�� �� ��� ��� ��� ��� %�� �� $�� ��� ��� L+�� >�� E�� L�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����$:0       	             	 
 ���������
�
 ��� ��� ^�� ��� ��� ?|�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �  ����:0                 	 �����=��� ��� ��� ��� ��� ��� ��� ����:0                 ���%�% ��&�& ����:0             �i�� ����:0             �	��� ����:0             ���� ��� ��� ����:0             	������ ��� ��� ����:0               �	��� ����:0             ������N��	�	 ��)�) ��� ��!�! ��	�	 ��� ��� ��� ��� ����:0                 	 ������������ ��� ��+�+ ��� ��� ��� ��� %!* ��� ��%�% ��*�* ��+�+ /}�� ��� ��� ��� ��� ��� ���� :0                  	 
 �	��� ����:0             ����3������� 7h�� ��� ��� ��� ��� ��� ��(�( g]�� ��� ��� ��� ��� ��� ��� ��� ��� ��"�" ��"�" ��#�# ��%�% (��
�
 ��
�
 ��� ��� ��� � Z�� p�� x�� ��	�	 ��	�	 ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� gV�� ��� ��� ��� ��� ��� ��� ��� ��� ��(�( ��)�) ��,�, ��,�, ��� ����:0                 	 
 �	��� 	ǂ	:0             �	��� �	��	:0             �4�� ��	��	:0            
 ���� ��� ��	��	:0             �� x�� }�� ��� ��� �	��	:0              �	��� ��	��	:0             ����� ��(�( ۄ	�	:0            	 ���� ��� ��� ��	��	:0             �	��&�& ˅	Ѕ	:0             ���� ��$�$ �	��	:0             �	��� ��	��	:0             �	��� Ά	ӆ	:0             �	��� ��	��	:0             	���*��� ��!�! ��&�& b�� ��� ��	��	:0              �i�� ��� ��� �	��	:0             ���� ��� ��	��	:0             �	��	�	 ݈	�	:0            
 �	��#�# ��	��	:0             ����� ��� ��	��	:0             ��z�� �� �	�	:0              ������5��� �� �  ��� ��� O�� ��� ��	��	:0                 	 ����=;�� E�� <�� F�� �� �  g�� >�� H�� ��	��	:0              	 ����$�$ ��-�- ��	��	:0            	 ����$��*�* ��� ��� ��,�, ��	��	:0              	 �	��"�" ��	��	:0             !�����������W	 	 �� 	 �� 	 	 	 	 	 	 	 �� 	 ��	ˍ	&:0       
              	 
 	���;(��� ��� ��� ��� ��� ��� ��� ю	܎	:0              ���� ��� ��	��	:0             ����%�% ��'�' ��� �	�	:0             	������ ��� ��� ��	��	:0              �	��� �	�	:0              	���+��� ��� ��� �� �  ��� ��	��	:0              �	��	�	 �	�	:0             	�! ��� ��� ��� ��� ��	��	:0             �	��� Ӓ	ؒ	:0            
 �	��� ��	��	:0             ����� ��� ��	��	:0             �	��� ܓ	�	:0            	 �	�� �  ��	��	:0             ����������r��� ��� ��+�+ ��)�) ��� ��.�. ��� ���  ��� ��� ��� ��,�, ��� ��	Δ	$:0       	             	 
 	���"	PU ��$�$ 
TY ��� ch �	��	:0             	 ���� ��� ��	��	:0             �������q�� �� ,�� /�� �� �� �� !�� ��� -�� 0�� �� �� �� !�� �	��	:0                  
 �	��� ��	��	:0             	���u�� ��� z�� 	͘	:0               ����c%  ��� ��� ��$�$ ��%�% %$ ��� ��� �� �  ��)�) ��$�$ +3 �� �  ��	��	:0              	 	��	�0j�� _�� X�� ��� ��� ��� ��	��	:0             	 �& ��	�	 �	��	:0             �Xe ��	��	:0             ����� ��� ś	͛	:0             �	��
� ��	��	:0             �	��%�% ��	��	:0            	 ����!�! t�� Μ	֜	:0             	���B�� C�� E�� ��	��	:0             	 	��	�0k��	 a�� Y�� ��� ��� ��%�% Ɲ	ѝ	:0             	 ����	����8��� ��� ��� ��� ��� ��!�! ��*�* (��� ��� ��"�" ��$�$ ��(�( @��� ��� ��� ��� ��� ��� ��� ��� (��
� ��� ��� ��� ��� e�� ��� ��� ��� *�� 8�� ��� (��� ��� ��� ��� ��#�# ��	��	:0                 	 ��W�� O�� ��	��	:0             �	��� ��	š	:0             �	��
�
 �	�	:0             �9�� ��	��	:0             �	��� ��	��	:0             �OU �	�	:0             �	��)�) ��	��	:0             ���� ��� ��	��	:0             ��!��� ��� (�� ��	�	 �	�	:0             �	�� �  ��	��	:0             ���� ��� ��� Ҥ	פ	:0             �	��'�' ��	��	:0             �	��!�! ��	��	:0             ���� ��� ݥ	�	:0             �	��� ��	��	:0             �	��� ��	��	:0             �	��(�( �	�	:0             ���� ��� ��	��	:0             �	��)�) ��	��	:0             	���+��� ��!�! ��"�" ��� ��)�) �	�	:0             	 �%0 ��	��	:0             ���� ��#�# ި	�	:0             ��T�� V�� ��	��	:0             ��	�	 ��� ��!�" ĩ	ɩ	:0             �	��� ��	��	:0             �	��	�	 ��	��	:0             	���
Xg \k kz Ϊ	٪	:0             	 �	��'�' ��	��	:0             �	��� ��	��	:0             �	��� ܫ	�	:0             ��"��&�& ��)�) ��� ��� ��	��	:0             �����4��� W�� ��� ��� ��#�# ��� ̬	ݬ	:0                	 !������������0��� ��� ��� ��� ��� ��� 8��� ��� ��� ��!�! ��"�" ��'�' ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��)�) 0��
�
 ��� ��� ��� ��� ��� 8��� ��� ��� ��� ��"�" ��)�) ��+�+ 0��� ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' @��� ��� ��� ��� ��� ��� ��� ��� 6:�� H�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, x�� ��� ��� ��	׭	&:0       
              	 
 ����� ��� ��	��	:0             	�! ��� ��� ��� ��� ��	��	:0             �	��'�' �	��	:0             �����	��������� ��� ��� ��� ��� 0��� ��� ��� ��� ��� ��� ��� x�	�	 ��� ��� ��� b�� ��� ��� ��� P��� ��� ��� ��� ��� ��� ��"�" ��#�# ��&�& ��'�' E�� L�� ��	��	$:0       	             	 
 �	�.��� ��� -�� A�� D�� U�� �	��	:0             ����������8��	�	 ��
�
 ��
� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� ��� ��&�& ��&�& ��� ��'�( ��(�) ?a�� ��� ��� ��� ��� ��� ��� ��� (��
�
 ��� ��� ��� ��� @��� ��� ��� ��� ��� ��� ��#�# ��%�% �� ��	�	 ��� ��� ��� ��%�& ��*�* ��	ܷ	":0                    	 	��	�3��� ���  ��� ��� ��� ��� ��	��	:0              �	��� �	�	:0             ���	����	����O{�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� 0��� ��� ��� ��� ��� ��� `�� ��	�	 ��
�
 ��� 0��� ��� ��#�# ��#�# ��%�% ��*�* ��� ��	�	 ��� h��� ��� ��� ��� ��� ��� ��� ��� ��� ��$�$ ��$�$ ��$�$ ��%�% k�� }�� ��	�	 ��	�	 H��� ��� ��� ��� ��� ��� ��"�" ��&�& ��*�* ^�� ��	��	$:0       	             	 
 �t�� ��	��	:0             �	��� ��	��	:0             ����� ��� ��� ��	��	:0             !������������8��� ��� ��� ��� ��� ��� ��� 8��� ��� ��� �� �! ��"�" ��'�' ��+�+ P��� ��� ��� ��� ��� ��� ��!�! ��$�$ ��&�& ��)�) 0��	�	 ��� ��� ��� ��� ��� 8��� ��� ��� ��� ��"�" ��)�) ��+�+ 0��� ��� ��� ��� ��� ��� H��� ��� ��� ��� ��� ��� �� �  ��#�# ��'�' @��� ��� ��� ��� ��� ��� ��� ��� 69�� G�� ��� ��	�	 ��
�
 ��� ��� @��� ��� ��� ��#�# ��%�% ��)�) ��*�* ��,�, w�� ��� ��� ��	��	&:0       
              	 
 	��: ��� ��� ��� ��� ��� ��� ��� ��	��	:0             �	��� ��	��	:0             ���$�$ ��%�% ��	��	:0             ��)k�� ��� ��� ��� ��
�
 ��	��	:0              �	��� ��	��	:0             �	��� ��	��	:0             	������ ��'�' ��� ��	��	:0             	 ��M�� P�� ��	��	:0            	 ����� ��"�" ��	��	:0             ����<��� �� �  ��� ��� ��$�$ ��+�+ ��+�+ ��	��	:0               	 �������w��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��	��	:0                	 
 �	��� ��	��	:0             ��	���]��&�& d�� n��  $�� ��
�
 ��� ��� ��$�$ A�� m�� ��� ��	��	:0              	 
 �	��!�! ��	��	:0             ����,��#�# ��� ��� �� �  ��� ��	��	:0             	 
 �	��� ��	��	:0             �q�� ��	��	:0             �	��� ��	��	:0             ��������� ��+�+ ��� ��� ��� ��'�' U  ��� ��� ��� ��&�& ��&�& ��'�' ��*�* ��+�+ ��+�+ ��+�+ F�� ��	��	:0              	 
 ����� ��!�! ��,�, ��	��	:0              �	��&�& ��	��	:0            	 �	��!�! ��	��	:0            	 ��� �  ��#�# ��	��	:0            	 	��� �� ���  �� "�� ��	��	:0             	 �����}��� ��� ��$�$ ��"�" ��%�% ��
�
 ��&�& ��� ��� 0��� ��� ��� ��$�$ ��(�( ��,�, ��	��	:0               	 �	��(�( ��	��	:0             �	��'�' ��	��	:0            	 ���� ��� ��	��	:0             ������>��� ��� ��$�$ ��� ��� ��� ��� ��	��	:0                  �������b�� �� %�� (�� �� �� �� &�� )�� �� �� �� �� ��	��	:0                  
 	���j�� �� �  ��� ��	��	:0               �	��
� ��	��	:0             �	��&�& ��	��	:0             	���!w�� ��� |�� ��� ��	��	:0               	���C��� 0��� ��� ��� ��� ��#�# ��&�& ��%�% ��	��	:0              	������ ��� ��� ��	��	:0              �	��� ��	��	:0             	���A�� B�� D�� ��	��	:0             	 �	��� ��	��	:0             ���� ��#�# ��	��	:0             �����4��� ��� ��� ��� V�� ��� ��	��	:0               	 �	��)�) ��	��	:0             �	��� ��	��	:0             	���i��� ��
�
 V`�� o�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��	��	:0              ��)��� ��� ��� ~�� ��
�
 ��	��	:0             ����� �� �! ��� ��	��	:0             ����,�, ��,�- ��� ��	��	:0             ���������
�
 ��� ��	�	 ��� @��� ��� ��� ��� ��� ��"�# ��$�$ ��%�% ��� ��� |�� =�� ��	��	:0                  �	��� ��	��	:0             	����� �� �� ��	��	:0             	 	����� �� �� ��	��	:0             	 ���� ��� ��	��	:0             �	��#�# ��	��	:0             !������������ ���    $ q�� ��� ��� ���  e�� ���    ���   ��	��	&:0       
              	 
 ������0�� )�� �� �� *�� �� ��	��	:0                 
 ����	�������� ��� ��� ��� ��� ��(�( 8��	�	 ��
�
 ��� ��� �� �  ��'�' ��*�*  ��
�
 ��
�
 ��� ��� (��� ��� ��� ��� ��� `�� ��� ��	��	 :0                   	 �	��(�( ��	��	:0             �	��� ��	��	:0            	 ���� ��� ��&�& ��	��	:0             ����� r�� ��� ��	��	:0              �	��� ��	��	:0             ����������(��� ��� ��� ��� ��*�* ��� e�� ��	�	 ��	�	 f�� ��� ��� u�	�	 ��� ��� ��� ��� %�� ��� ��$�$ 0�� 7�� Z�� ��	��	":0                  	 
 �	��(�( ��	��	:0             �	��� ��	��	:0             ���� ��� ��	��	:0             �POc�� ��� ��� ��� ��� ��!�! ��#�# ��'�' ��*�* ��-�. ��	��	:0             ��	������� P��� ��� ��� ��� ��� ��� ��� ��� ��� ��)�)  ��� ��� ��� ��� ��� ��� ��	��	:0                 ����� ��� ��	��	:0            	 �	��
�
 ��	��	:0            
 �	��+�+ ��	��	:0            	 �	��� ��	��	:0            	 �	��� ��	��	:0             ���� ��� ��� ��	��	:0              	���/�� 0�� 2�� ��	��	:0             	 �����E��� ��� ��� ��� ��� ��� ��� ��� ��	��	:0               	 	���"��� Y�� ��� ��� ��	��	:0              ����$��� ��� ��� ��� ��	��	:0               �	��
�
 ��	��	:0             �	��� ��	��	:0             �	��� ��	��	:0             �	��� ��	��	:0             ��k�� ��� ��	��	:0             ����7�������
�
 ��� ��$�$ ��'�' ��� ��� ��� n�� ��	�	 �{�	�	 ��	�	 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �! ��!�! ��"�" ��#�# ��$�$ ��$�$ ��$�% ��&�& ��� 1�� ��� H��� ��� ��� ��� ��� �� �  �� �  ��"�" ��#�# ��	��	 :0                   	 	���#��� ��� ��� ��� ��	��	:0              �	��� ��	��	:0              �	��� ��	��	:0             	���;��"�" ��#�# ��*�* ��#�# ��� ��� ��� ��	��	:0             	 �	��� ��	��	:0             �	��� ��	��	:0             �	��'�' ��	��	:0            	 �g�� ��%�& ��	��	:0             ����&�& ��� ��	��	:0             ���	����� G}�� ��� ��� ��� ��� ��!�! ��&�& ��(�( ��.�. ��� ��� ���  ��� ��� ��� ��� ��	��	:0               	���"��� ��� z�� ��� �
�
:0              ��"��� ��� ��&�& ��+�+ ��
��
:0             	 �	��
�
 ��
��
:0              �	�� �  ��
��
:0             �	��� ɂ
΂
:0             �����������	�	 ]�� /U�� ��� ��� ��� �� �  ��$�% 7l�� ��� ��� ��� �� �  ��!�! ��"�" ��	�	 ��
�
 ��� ��	�	 ��� �
��
 :0                   	 �	�� �  ۄ
��
:0             ��K�� N�� ��
��
:0            	 �	��� ��
��
:0             ��"��� ��� ��&�& ��� �
�
:0             	���-�� 2�� �� 3�� �� 5�� ��
��
:0             	 �	��� ��
��
:0              	������ o�� ��� ��
��
:0             	 �e�� �
�
:0              ������V��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��$�% ��
��
:0                 	 ����!(�� )�� ��� +�� ��
��
:0              	 �#�� �
��
:0             �����5��� ��'�' ��� ��� ��� ��#�# ��
��
:0                	 ��N�� Q�� ��
��
:0            	 ���)�) ��*�* ��+�+ ��
��
:0             ���� ��$�$ �
��
:0             �����U�� �  ��� (��	�	 ��� ��� ��#�# ��'�' ��� ��(�( ��	�	 ��
��
:0              	 
 ���7����	����� (��� ��� ��� ��� ��� ��� ��� � \�� x�� ��	�	 ��
�
 ��
�
 ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��"�" ��%�% ��)�) ��*�* ��+�+ ��-�- ��.�. ��� ��� ��� ��� ��� (��
� ��� ��� ��� ���  ��� ��� ��� ��� ��
Ǎ
 :0                   	 �����K'V�� ��� ��� ��� ��%�% ��� 3�� ��� ��	�	 ��
��
:0              	 
 	�����(�( ��� ��� ��
��
:0              �	��� ��
ƒ
:0              ���"�" ��%�% �
�
:0             ���� ��� ��
��
:0             �����'�' ��+�+ u ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��#�# ��&�& ̓
ԓ
:0            	 	���+��� ��� ��� ��� ��� ��
��
:0              ����� ��� Ε
֕
:0            	 �	��� ��
��
:0             �W�� ��
��
:0            
 �	��� ֖
ۖ
:0             !������������(��� ��� ��� ��� ��� x��� ��� ��� ��� ��!�! ��!�! ��"�" ��"�" ��#�# ��$�$ ��%�% ��'�' ��(�( ��(�( ��)�* X��� ��� ��� ��� ��� ��� ��� ��"�" ��$�$ ��%�& ��)�) ��
�
 ��� @��	�	 ��� ��� ��� ��� ��� ��!�! ��(�( /k�� ��� ��� ��� ��� ��� `��	�	 ��� ��� ��� ��� ��� ��� ��� ��� ��!�! ��&�& ��&�& 8��	�	 ��
�
 ��� ��� ��� ��� ��� K+�� 7�� [�� b�� h�� ��� ��	�	 ��
�
 ��� ��� X��� ��� ��� ��� ��� ��� ��"�" ��#�# ��$�$ ��%�% ��(�( r�� |�� ��	�	 ��
��
&:0       
              	 
 ���������',  ��� " ��� E ��	�
 ��
�
 ��� ��� ��� ��� ��"�" ��"�" ! ���   ��
��
 :0                   
 	��� *�� %�� +�� ��
�
 �
��
:0               �/7 ��
��
:0             ����$�$ ��� ܟ
�
:0             	������ l�� �� �  ��
��
:0             	 ���-�- ��-�- נ
ܠ
:0             ����� ��� ��
��
:0             ����������Fs�� y�� ��� ��� ��� ��� ��� ��� ��� (��� ��� �� �  ��&�& ��'�' ��� ��!�! ��'�' ��� ��)�) ��*�* &x�� ~�� ��� ��� ��� ��� ��� ��� ��� ��
�
 ��� ��	�	 ��
�
 ��
�
 ��
ܡ
":0                    
 �	��$�$ ��
��
:0             �	��� Ƥ
ˤ
:0             ���� ��&�& �
��
:0             	��* ��� ��� ��$�$ ��%�% ��� ��
��
:0             �	��� �
��
:0             �	��� ��
��
:0             �f�� ��%�% ��
Ʀ
:0             		���yS�� ��$�$ ��%�% ��%�% GK�� ��� ��� ��� ��� ��� ��� �� �  �� �! ��� ��� �
��
:0              	���js nw `�� }� ��
��
:0             	 �	��'�' ب
ݨ
:0            	 ����� ��� ��
��
:0              �	��� ��
��
:0            	 �	��� �
�
:0             ����<��� ��� ��� ��� ��� ��� ��+�+ ��
��
:0               	 �	���������� ���  ��� ��� ��� ��#�# ��� ��� ��� ��� (��� ��� ��� ��� ��� ��� ��	�	 ��� ��
��
:0                  ��G�� H�� ˬ
Ӭ
:0             �	��� ��
��
:0             ����� ��� �� �  ��
��
:0             	 �	��� �
��
:0            	 �	��� ��
��
:0            	 ����� ��� ��
®
:0             ���� ��� �
��
:0             	�! ��� ��� ��� ��� ��
��
:0             �	��	�	 �
�
:0            
 ������	�	������ ��� (��� ��� ��� ��%�% ��&�& (��� ��� ��� ��"�" ��'�' ��� ��� @��� ��� ��� ��� ��� ��#�# ��#�# ��$�$ ��
�
 ���  ��� ��� ��� ���  ��� ��� ��� ��� ��� ��� ��"�" ��
��
":0                    	 �	��	�	 ��
��
:0             �	��� ��
��
:0             �	��� ȳ
ͳ
:0            	 �����=��� ��
�
 ��� ��� ��%�% ��� ��� �
��
:0                ��I�� J�� �
�
:0             ����!�! ��-�- ��	�	 ��
��
:0             �	��� ֵ
۵
:0             �	��+�+ ��
��
:0             �%$�� /�� =�� K�� ��(�( ��
��
:0             �E�� ��
�
:0             ���,�, ��,�, ��-�- ��
��
:0             ��"��� ��� ��� ��%�% η
ַ
:0            	 ����"�" ��� ��
��
:0             ��Q�� R�� ̸
Ը
:0             �������i �� "�� 8�� ;�� �� !�� %�� '�� 9�� <�� �� !�� $�� '�� ��
��
:0                  
 ��o�� t�� ��
��
:0              �3                �  W	"�FO.���� 1           9876543210.K �,�� �� Z 0A � ��� `853B  ��^�
iq�{ =        986543210.,KJ    43 �2A  ��Y�,��         f98654320I  ��PR    �510.DxP(     9653 B�.A  ��P��<     96540.F���� ����  ��g?� � ~       98765310H �J  �70.C ���� ���� �n0 m50C ���� tH 9.!B > 9A �������� �:��T+  sli�� ��� ��A uiW1 trc� b9 vdBH��� ���� re -gA / sA� ��k�� ��� 1gA�{���� ���� � �����c��1�   #'+wtsrpomli	��� ������������� �cA�����-�   oib ��) [eha) 
wt/ yo/ �tna� �leɎ�����O ������������ )eA���\��Ӹ������ �e$� � } +     	  � + roigecb" b)�+ieB ����� � �        skidc"� ����� �N �ǄA  gea��V��
�	 �X��      G � � � � Nafr�vusrpnmlgfdcb" �>   ke3 *  ie! ��>b )    tsrdc �ȗ �� )iA��� ��A   �ti!� �V� � n A       ! �tslhgc" /�i!A� V ng!� �W��Ͽ �= to��	 ���) ea �� �� ic� �  ��L����) &7;L�yurolieaH� ��  lc� �) � ia!r���-  te� �%   ec x iA��� ,eA���+  ts��@�f)  *7 Eutsrpnl� �(  yi� ��iK lia!C)  ;ri!� ���������� 4aAn  �nc! �f �; ����ğvIi  	-roiea� ��R  ��us", ��  ea� ���� �� �� �� ��@   	uol Whl!A���� +iA`  tr)   xt� �   � 
 uolia"(� 5    6   pmeb" /e!A�W + ea!Q �/ U  sd! �1  �ra!X tiS �y ����� �     
 3* . vtsndc"S �  �	�	1		���� p C � � d � � �� vurponmlfda"Kl ���� �� V.� ie!B� �da, �� ��˫m<�    �  % uoiea"� �_ � sr!����	�	�    U k���uroliha"� ���< �� �  5�9  � 	 tsb_"D; ��J �oa� � �Pt_B�  ea�     vti"K   md� �p � ia!� ��A ���Ę �� � `5 �re!B�  ic!� ��5  Zea!i�l��� 5     ) - �4 9 G �tspmlifca"	r ���x�7  �ie!�� ����� �Ͽ �	 �� �����9 	ri�A tpa}T+�    ) 0 > srgfa"*   �ea!@� B   �   cungc"� �ɀ�b'��	$    	 ) � yuoiea"H ��+ WNle!�= srA x�ie!�k ��b �v5    sie!� �5  �on!� ����� �3	_.B���\ �� �_6E       tsgdc", �I  Nia!�	 �� �ɕ �_ �  rn!7 eax �b   �mc"r �)  zle!) �rc!V �) " oi!;� R   � �  role"� �) 7 re!�,�    o= K tpica"���|l�3� �    v � � � � � � �    xvsrqnmlifda" )�o!A�9   sl� ���ȴR mlc1 �S* �S wta!K �  tl!��~�     � xvrnl"@ n�sa!�O ������ 3_A� oaA��� �   t ?curol"3 �  se![ � ie!1   >lf!� �  7cAZ nl�*/�m�   3`k��uroliea5 �-   �tn!;	 �?	 �ȼ �� �1   �wu!8  oer>� � Y   "&0rolieaY	 �˨ ��� jcAķ  pl� ����� xl	 ��) 6 sg!� ���|	 �7� �    	 �	  wurmc"F �7	 �+��6)   	.=ayuoiea1 �	  na! =eA� �- ��������� ��	 �^)  � rol!)  �	pa!;   sdӽ	 ���d ola
 ��(  vc�8
 ��	 �U olV
 �^ ��7  �	�tie!�	 �I %
 sp!-  rg�
 ��� �YreB E�r� �    & 8 
< L Z tspnfdc"�	 ���� �   ����tnmlgd�
 ��
 �����P
 ����I �
 sl!�w65    ��  usoma"+ �l+    �yie! ) nA�ę 	ne�
 ��	 �� -�
e!A�	 ��� 5_A��_� i (   �
    q tsrndb"< K	  rd!�
 � )�
t!A�c�    a � tsnfa"l ��� 7lA�& ����;�5�   �\  �smlkf"= �  sc!�7� =   G�	� ewonga"l ����ʪK��  	/^�uoiea� � V- Snl!B5   Gkc!M ���q �� �(i_BX�^� \    4
   �S Sxtrpnkid"� ��������� 3?
i!A˦ ����Q ��\ tda� ����ǘ � ) tA {R)p uidC� �ƢZ'Z )     �    xtsngc"�
 �T �) ieZ ��#� v   �  vrnd"y ��� �   � snlc" ��Q
����  !L���yuoieca� ��� �x lf x_A�� �3 �3ui!N%  trm~ ������� CsA� R)�
�oa!B� ���) %le!A� t   �  �  xwtsge"! �� ����� T+ seBk    ie!�� E       |wtnc"s edeb!�  �ml!  	��$FJ�uoieaE� �9 ��se!
 �z tf� �� �o:   ��
pda"�t1 ����spec!��
 ����@�Iu� Q (     o �  0 4 �J vutrpnlfcb"
� ����) �  ie!g ��� <iA�� ��a8� { )    � 5   tsrigd"� � ffA@j 5      fztron"l �!�/  tc!� �	 ea!; � ��׀=   &tsi!�5 � `wsi!� ������������-  P
gc! ��+ :_rn! ��  �ie!ۇR)    x
:vsfdc! ��5 � �ync!� � \2_!A �tA�� ��� &eA�ȸ]?   �	   gfdb"]Pn   8J}oiea ��ϐ
 �t4   j rpc!) rb  Z��_�Z )  ! � � 	)euroliea."H� �ˎ � )>a!A���c   	 3 oiea"ӂ ���& zztr! +�a!A R)��li!B+� D   g  �sldc") �pni!�
 �1 2 rm!R oer �� *rA�¢	 ����D ����� :iA��c   � iea!p ������� Ee!A��)  %re!�	 �� �� lC �ro!B�I   v ute"� ��  V ur"  
��*���1�1   2 6 I S p w �� � tsqpnmlgfdca"L :Gn!A   Cwu"� ��    �nl"�G��x )      �$ /9utoiea."1 �  li!+   >ea!T  nls �7  ta�N ���   hea� � 5 nA1   �fe! )�e!A�v1J"�m�   �   ��		   vtrqplec"Y �� �� 1_A�� 1 nA�h �ȧM� )     �  roiea" -�i!A��  a�poi!G �  gc!a�m   �  �znmd"- �$ie!���`    ih!� � wt!§^ -   �� ��romlf" � iA?  �fa!�(  � ec" �� ������E��?    
 v vroliea"  zs ��ia"B�  �
 ul" <qa!A�9   &ue!�� 9    c qtrnc"o �p   .ea!�= ~Uui!P&�  roia� �� �) tqP 92ol!u  3pe!� �/  re� � { R       �4! rpmgcb"� ��= ��4   �xc!�) to�  ��)q���
1
��� +    p � � 'Wd��Jywutqpomiheca"M�W foNskb!a �  qc!��Ο ��0    tm!�E� � �   ��  x xsrmlc"I   kg�
 ���� ��t roi; ��� 7sA�+ P  yi!j nm� �� ��� ,i!As� � U   � �  tpoig". nni!;   ea!K �1  ne�   uea� h  ie!ɺ
�9r���    � : f � � � ywroihea"2 �����U ���� ��1 uo�� �hYqoc!��� -   �
w  " rlifd"� �� � ~T�Hn_!B�  �� � ue"BKTB  b8   # utsrpn"P    �ui"� �Ƚ �+   �db! �M< oa!BZ) icb�  *rl D�_!A� �oA   nd+ K2ts!E  rnM�  = - oea"� p  ni!+ &�se!h z lb!� �� �5 � tr!� ������ �ґ) oiea� �Z   ld^ �c �ǒ) x� oid!μ�  tnl �+ o  rk!�P ��e&��  Ht�rojiheaV ����� a( m'!B7   �ta!�� ����� � rp!� �� eaf���T�V���$��}�c!QO�Bc<�1�&����M���N�r�ڻ��/���r���}�S�K�������  ) < � g���&�>	
L-O�y�E&��kS]ct����C�zyxwvutsrqponmlkjihgfedcba_9876543210#%      �       ����$�0�8�A�K�P	�[
�_�_� 0�0.0�01�03�04�05�06�09�1�10�100�11�12�14�15�19�2�20�2024�3�4�40�44�45�5�51�59�6�75�99�abil�accept�across�actual�aggreg�alon�amini�aminiconsulting.com�amount�anoth�argument�ask�averag�avg�becom�behav�built�calcul�can�case�categor�caus�charlott�chen�claus�collat�column�combin�commonli�conc�consid|vert�count�crawford�current�databas4e�defin�determ	��iffer�distinct�donat�duplic�elena�email_address�equival�even�everi�expect�explor�find�follow�function�group�hello�hellocorp.com�home�id�ignor�implement�includ�input�instead�introduc�keep�last�like�marcu�max�maximum�m1.ca��mind0imum�moreno�m!�pl�name_first	la
ext�non`standard�note�null�number4er�often�on�oprdutput��perform�pleas�power�previou�priya�produc�requir�reset�ult�return�row�run�scalar�second�sever�similimon�simpl�singl�specifi�sql,analytics.ioite��`string�sum�tabl�task�thin�iough�time�tool�topic�total�treat�type�unfortun�us�user�user_id�valu�version�wai�well�will�zara�zero�0�00�0:�7�08�.99�2�13��6�2,24�25�26�3�3/30� 9(5�50�58�6�660�7�8�8add�a�A�0alphabet�also:ppli�aa�automot� ack�bar$se�begin�b��iour�better�big�bottom�branch�bucket�call�can�care�case�categori��54eck�chip�classXus�co�coalesc�code�cofflogn�Uum mAcompoun�? mA�AG i�E n� c!� c%�Dcritic�crunchi�cus�BV_arrive_�desig2frectli�hpla,tributor�dog�q,asier�els�en��en!Berror�eEBexaA�exp��4fall�familiar�i�fl��$food�fresh��lide�g��Dome�howev�human�hya� i�m c2�stea0teg�join�keyw�Xlabel�languag�left�likelihq(limit�logic�st�maintain�mani�match�misspel�mix�move�� m)�mu����tur�need<s_restock�newli���igh�� e�� o!х�:�Dverlap�p.price�pag r����,et�pivot�pla"��res�k���� t�� ta�\program�purr�quantiti�qu�C4quicki�re�read�yre�!"ing_	�l� s	��ruc!
re2-��3le�8ale�sc�8schema�seen�sep�Nt�shifow�B i�P�J o$omewher�so�c p�A�sh�sp�sheE�h�Xtemptatu�_	�suAfsu�Fswitch�qechn�Wqu�terE" t���� g��(ini�toiletr	p�trai�� e��der���un�urg���til�eNvendor!� w��ant�w��wr���j� ���ccept�a��ereg>�onga��� l� ambigu�an�	ppear���Drbitrari�arithmet���.�	��.�b�bAz�� u�	 lr���>�R�bi�����orrec���	�b��B�N� c!�&�	�~�	 i6�,ensur�qenBpil�� fP	Fn� f�[fulfil�zener�F�elp���ByN�	�njuli�	i�kei�l��le�jog�S%�mad
 k�Y��Wnth>X2Sgot:A wN5pair�p�%nd&�	�*����	Znall�ceiv�re�� ra mm r^ uJ1
ai���selAY2�de���th�sort�6�R�2�ure�t!~tell��?
 t��og]��E
��K
woJ
IEun�
��sua��:��� imt�yet�� 2MD 1@"7
1
 27
 97
0�315
\6�49�5�6�7�7marcu�8�_cha�B���a5
,
���� a�o n:M y����� b�l c
mchen�cl�Omp
omplex�	 u�*nn!���. vi  aA!dea9�ocuŦeff@*�.net.org	
_antir�ea�fac�	fe��fe�� :�u�Q	mprov�ik	!&a�influenc	�Sins���jm�6el�j	� _�n�less"m	ng\	!�b	 aN%ean�S!�Jp	tworj	!Jfset.
pa�
 pU:
rac�	JH	&&	reach�	!�.ownum�A7��ar� ey��!ze�small�metimq�j/ t"��yntax��i�ypei�ergid�we*whetA	Wm� w%�zapzoop�zara�F 7 0e�$234�12529bB23e�q� 5a�4.3�4.5�4.6�4.9&	83�567.89�571afa7�703afc 9504e�absA��ctivu�}� m�ar� asdf�av�� basic<igint�bi!�$�blob�boolA�Wbyte�&har� a�/ m�
��eated_��	 dnFrag�atypAA$deal�decim�-$�+ep�vdetӑ9igit�)dia�P<done�doubl�dynam�aici�eiE�&SrioM��Hexpos�extra�fals�fe�five�fix�at��*�fri�fu� arbl�hexa	�his��z����(cats03�imag��[�~.�!� i	son�� know�larger� r��ngth��lacski���0look�lucyloop"��x_pix��A2medium�micro�4minut�modern�m�Z�)my��n�naA�= g�6�bj�(oracl�p�pad"�oposittgreSpragma_7e_info��cis	 o
 pe_%bpur!�(r.patel�rat l�� l rea!^regard��rela� nare�8� rAN r�%�	n�s8 e&7 r<��s�how?42'�/�	a+sp��al	 f"o i_quaA.kart�A�ag�~ppw	H	synony"�ke�F
,mestamp�tiny�����truencV	��ty�un.qu���a�l	uui�7 n6var�� i� v�l uD�vooChole:��;Tworri�x�x'f00ba3�xml�y�F��	n�2f�3��2 75B��mos��i�als���	��N"��� u: p!��	"���� m��	 n� c�&�	��"�^���A�de�	��icm��scrib�ñ�*�	*�	 d��.|�	�ffl�z�$rmat_trans��fun cŎ��and��llJdea&a iterpret&t�]�Xoad
�N� m .�=Z�	g^�	2����out!� r6+�9�3�intf%�	blem�(&7blis�	��j%� 6��~� i"��.&olv�spotZ( t���li�!�"
��mp���6Q�Z� s���*�ar�had�[A�window�N
drew�Xk�C
Q:L�KfH l� dvis�alialow�D8th�associ�b�bad 
&�	artesi�ascad�<aueB�y�	 y!$�Whoo&
:%
�`�Y niq�[ r: cj?cid=
�ifJA�asil&�	NO��EV
mpl�	 f*j o%iareefFdet�:y��	mdi`��Xbst�	n�ladc�	l e�	�fe�ak�	o*g1]>p m	 prxara��	c�"� c��&rrphan�|�reopl���a��
���sibl�	 c~I�F	.� t~�.� r!� r r��	ionship�	 e�	R�rie��6�	cef o6�	lf�����nc��	��� g�_	 t���
 �*u s:�wo��>�va��&�� hJ�yet��L��f�. g��"�"�A'��22sc�a!� dii�����ev��F	`��!qlott��ron� �� l�col�C&!�ari�il�"� �
j�6
	monstr��� c�2@up!arli� f���z-� iH	3!icit�ens2��:�ighA���gnor&�{�2#"$	��as&+4	�;	� wgb9	ethoP!tch�H	��c�JB] n��cas_!N��Rold�*V!]	icu��ԍ� o*[	��}\	H�� l��cF��6a u:JtriaNA q�7&@b. e-���J$ pM>sq�q	���!*"��xt�th�l	�.R�unicoKunrel�Ӆ����eb�white��E^>�1�2:	 52vfT�a"� b@��)en�2�
�>�&=� o�	E�N�  ia�!��}�e���^�Fjvidu"a��.rk:�iPa=JB"�� r.���&X$dI�quo��ot� a���X&;2�6,ervA��vV$�reE�:�&,, rM��c�.�M��D!�23"(J$ 0"!(.!$ 8.$$3�/( 2"�6�28�1	$"2$ 52� 5Z8$ 9X i�qT"��CrchBed_,&(s_2023�area>W$q�ig(P(~{ aP*+$irclu? fN$S!��YiJ�Z sg!aV�  c&$opi;r�"2qeAcdaN�O��ia+"a�6�("+$6O�� n>4$Wi�ex	exclus�eYD$P�((�B$roup� w�� c�horizontj d�S��>��& rY!l�rssitem� k�(H�	 lw��}' t�ea-# �� da�zG$�� n�R��(q*�Z/$�y� iR$rvX��bch)JbJ�RX6')J;"/) e" h�shh_lif2!hr)`����$ q6� t(2 �#bt��succe6 J��#�# m9 k���*/ p"����#��[on�u�� sPendo_venn����whatev���dz$� 1�1,2,3�2�B 561 5�H������! e�
�� a%+���� l�� n��,�ed.� _"� q8 �
�" g%era�N}&'	}q��'-.com%i�l .:d��J�Sgatm�"b,*�
outnpaC* n�
re�6�"�
�H��N��
I�2h	]�ub;M[ic�updat:8
0ildcard�zara��5              ��
��ݺ
#                                 ��������������������#                                 �������������������#                                 ��������������������_id        oG_all       �6content       �id       �Ltitle       ҇url       ��     ��     ��     ��     �     �     �*             m�     �9     �9             c��
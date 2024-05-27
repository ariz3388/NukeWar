!--------------------------------------------------
!- Monday, May 27, 2024 4:11:26 PM
!- Import of : 
!- c:\commander16\r46\projects\nukewar\nukewar.prg
!- Commodore 64
!--------------------------------------------------
5 gosub 14000:gosub 20000:last_token 3
10 dimm%(63,1),ms%(63,1),s%(1),mb%(1),bb%(1),sb%(1),ab%(1),ba%(1),fa%(1),sa%(1)
20 dimaa%(1),mt%(7),bf%(2),n$(1)
25 s$="{dark gray}AB{orange}CD{red}EF{blue}GH{green}IJ{purple}KL{gray}M "
30 q1%=0:q2%=0:am%=165:bf%(2)=0:w%=-100:fori=0to1:mb%(i)=0:bb%(i)=0
40 sb%(i)=0:ab%(i)=0:ba%(i)=0:fa%(i)=0:sa%(i)=0:aa%(i)=0:bf%(i)=0:next
50 deffnr(x)=int(x*rnd(0))
60 deffnm8(x)=x-8*int(x/8)
70 last_token 1,0:ll=300
80 xx$="{space*38}{up*2}"
90 yy$="{up}{space*35}{left*35}"
100 print"{home}{clear}{down*8}";tab(13);"{red}** nukewar **{blue}":print
110 printtab(11);"copyright 1983 by":print:printtab(10);"microcomputer games"
120 print"{yellow}{down} a division of the avalon hill game co"
123 print" all rights reserved. computer program"
124 print" and audio-visual display copyrighted."
130 print"{down*3}":input"{green}your country's name";n$(0):print"{blue}"
140 input"{red}enemy country's name";n$(1):y%=1955+fnr(10):m9%=fnr(33):y0%=y%:print"{blue}{clear}"
200 fori=1956toy%:am%=int(.91*am%):next:fori=0to63:forj=0to1:m%(i,j)=0
210 ms%(i,j)=0:next:next:fori=0to1:forj=1to10
280 l=fnr(64):ifm%(l,i)then280
285 m%(l,i)=1-(j>8)-(j>9):next:next
300 y%=y%+1:gosub13000:am%=int(.91*am%)
302 print"{white}(b)uild base or start (w)ar?";
303 get a$:ifa$=""thengoto303
305 if a$ <> "b" and a$ <> "w" and a$<>"q" then goto 303
308 print"{left*29}";
309 print"{space*31}" + chr$(13) + "{up}";
310 ifa$="w"then550
311 ifa$="q"thengoto25000
315 b%=2:s%(0)=8
320 iffnr(100)<y%-y0%then590
335 i=0:forj=1tob%
340 print"{home}{down*15}type of base to build:"
341 print" b - bomber base"
342 print" m - missile base "
343 if y% > 1964 then print" s - submarine base"
344 if y% > 1969 then print" a - anti-missile base"
348 geta$:ifa$=""thengoto348
349 ifa$<>"b" and a$<>"m" and a$<>"s" and a$<>"a" then goto 348
350 t%=-2*(a$="m")-3*(a$="b")-4*(a$="s"andy%>1964)-5*(a$="a"andy%>1969)
360 ift%=0thenprint"improper type.":last_tokenll:printyy$;: goto340
370 input"location to build base";a$:printyy$;:gosub5400:ifl=-1then385
380 ifm%(l,i)=0and(t%<>4orl<9orl>54orfnm8(l+1)<2)then390
385 print"improper location.":last_tokenll:printyy$;:goto370
390 print"{home}{down*15}{space*35}"
391 fora=1to5:print"{space*35}":nexta
395 m%(l,i)=t%:next
400 b%=1:s%(1)=24:iffnr(10)>0thenb%=2:s%(1)=8
410 i=1:j=0
420 j=j+1:i1%=2:iffnr(100)<m9%then427
421 ify%<1965theni1%=2-(fnr(4)<3)
422 ify%>1964andy%<1970thenl=fnr(9):i1%=2-(l<8)-(l<5)
425 ify%>1969thenl=fnr(16):i1%=2-(l<15)-(l<12)-(l<7)
427 k%=0
430 k%=k%+1
435 l=fnr(64):ifi1%=4andl>8andl<55andfnm8(l+1)>1then435
440 ifm%(l,i)=0then450
441 ifk%=20then580
442 goto430
450 m%(l,i)=i1%:ifj<b%then420
460 fori=0to1:forj=1tos%(-(i=0)):l=fnr(64):ms%(l,i)=m%(l,i):next:next
480 fori=0to1:forl=0to63:t%=m%(l,i):iffnr(500)>0ort%<2ort%>5then540
485 gosub30000
490 print"{red}nuclear accident{blue} in ";n$(i);"!":last_tokenll:printyy$;
495 poke 33784,27
500 gosub10005:i=-(i=0)
505 r%=-1+fnr(3):if(r%=-1andfnm8(l)=0)or(r%=1andfnm8(l)=7)then540
510 u%=-1+fnr(3):if(u%=-1andl<8)or(u%=1andl>55)then540
515 ifr%=0andu%=0then540
520 l=l+r%+8*u%:poke33784,27: gosub10005:l=l-r%-8*u%:i=-(i=0)
540 next:next:q2%=0:goto300
550 q1%=1:su%=0:iffnr(4)>0then600
551 print"first strike order disobeyed.":last_tokenll:printyy$;
552 iffnr(100)<y%-y0%then590
553 q1%=0:goto400
580 y%=y%+1
590 q2%=1
595 gosub 30000:gosub30000
600 print"{red}{space*2}--->hot war hot war hot war<---{space*2}{blue}":last_tokenll:printyy$;
620 q3%=q1%:q4%=q2%:ifs%(0)=24thenq1%=1
625 q%=q1%:w%=0
630 fori=0to1:forl=0to63:t%=m%(l,i):ift%<2ort%=6then730
635 ont%-1goto640,660,680,700
640 mb%(i)=mb%(i)+1:goto730
660 iffnr(10)>=1+2*q%thenbb%(i)=bb%(i)+1:goto730
670 p%=5+fnr(4):c%=fnr(p%+1):p%=p%-c%:ba%(i)=ba%(i)+p%:fa%(i)=fa%(i)+c%:goto720
680 iffnr(10)>=1+2*q%thensb%(i)=sb%(i)+1:goto730
690 sa%(i)=sa%(i)+1:goto720
700 iffnr(100)>=25+25*q%thenab%(i)=ab%(i)+1:goto730
710 aa%(i)=aa%(i)+5+fnr(4)
720 gosub7040
730 next:q%=q2%:next
740 ifbb%(0)+mb%(0)+sb%(0)+ab%(0)=0thenq1%=0
750 ifbb%(1)+mb%(1)+sb%(1)+ab%(1)=0thenq2%=0
800 ifq1%<1then920
805 i=0:gosub13000:gosub5500
850 input"base to activate";a$:printyy$;:  gosub5400
860 ifl=-1thenprint"wrong location.":last_tokenll:printyy$;:  goto850
870 t%=m%(l,i):ift%<2ort%=6thenl=-1:goto860
875 ont%-1goto880,890,900,910
880 gosub6000:goto920
890 gosub7000:goto915
900 gosub8000:goto915
910 gosub9000
915 gosub5500
920 ifq2%<1then980
921 i=1:l=fnr(64)
930 l=l+1:l=-l*(l<64):t%=m%(l,i):ift%<2ort%=6then930
935 ont%-1goto940,950,960,970
940 gosub6000:goto980
950 gosub7000:goto980
960 gosub8000:goto980
970 gosub9000
980 fori=0to1:if(i=0andq1%=0)or(i=1andq2%=0)then1050
985 forl=0to63:t%=m%(l,i):ift%<2ort%=6then1040
990 ont%-1goto1000,1010,1020,1030
1000 iffnr(100)>14then1040
1003 ifi=0thengosub13000
1005 gosub6000:goto1040
1010 iffnr(10)then1040
1013 ifi=0thengosub5500
1015 gosub7000:goto1035
1020 iffnr(100)>4then1040
1025 gosub8000:goto1035
1030 iffnr(100)>24then1040
1033 gosub9000
1035 ifi=0thengosub5500
1040 next
1050 next
1060 fori=0to1:p7%=sa%(i):ifp7%=0then1105
1061 forp8=1top7%
1065 iffnr(100)>=5*w%then1100
1066 j=5+fnr(4):sa%(i)=sa%(i)-1
1070 ifi=1then1090
1071 gosub13000:print"missile sub";sb%(i)+sa%(i)+1;"on station."
1075 last_tokenll:printyy$;
1080 printj;"missiles to fire.":last_tokenll:printyy$;
1085 print"targets";
1090 gosub6030
1100 next
1105 next
1110 fori=0to1:iffnr(10)>=w%orba%(i)=0then1220
1120 ifba%(i)<5thenj=ba%(i)
1122 ifba%(i)>=5thenj=4+fnr(ba%(i)-3)
1123 ba%(i)=ba%(i)-j
1130 printj;"bombers attack ";n$(-(i=0));".":last_tokenll:printyy$;
1140 ifi=1andfa%(0)+aa%(0)>0thenprint"air defense command alert!"
1145 last_tokenll:printyy$;
1150 iffa%(-(i=0))=0then1170
1151 iffnr(10)<9thenj=j-1
1152 ifj=0then1210
1160 iffnr(10)<8thenfa%(-(i=0))=fa%(-(i=0))-1
1161 goto1150
1170 ifaa%(-(i=0))=0then1190
1171 iffnr(2)thenj=j-1
1181 ifj=0then1210
1182 goto1170
1190 printj;"bombers survive over ";n$(-(i=0));"."
1195 last_tokenll:printyy$;
1200 forj2=1toj:gosub12010:poke33784,25:gosub10000:next
1205 gosub13000:gosub5500:goto1220
1210 print"{red}all bombers destroyed by air defense{blue}":gosub 30000:printyy$;
1215 gosub 5500
1220 next
1230 q%=0:q5%=sa%(0)*6+ba%(0):q6%=sa%(1)*6+ba%(1)
1235 fori=0to1:q2%=0:mb%(i)=0:bb%(i)=0:sb%(i)=0:ab%(i)=0:forl=0to63
1240 t%=m%(l,i):ift%<2ort%=6then1300
1241 ont%-1goto1250,1260,1270,1280
1250 mb%(i)=mb%(i)+1:goto1290
1260 bb%(i)=bb%(i)+1:goto1290
1270 sb%(i)=sb%(i)+1:goto1290
1280 ab%(i)=ab%(i)+1
1290 q%=q%+1:q2%=q2%+1
1300 next:next:q1%=q%-q2%:q%=3*q%+q5%+q6%:q5%=q1%+q5%/3:q6%=q2%+q6%/3
1305 ifq%=0then1370
1310 w%=w%+1:iffnr(2)=1then800
1315 gosub 30000
1320 print"{purple}the premier of ";n$(1):print"is on the hot line."
1325 last_tokenll:printyy$;
1330 input"do you wish to negotiate";a$:print"{blue}"
1335 printyy$;
1340 ifa$<>"y"then800
1341 if100*(q5%+1)/(q6%+1)>fnr(100)thenprint"{green}negotiations succeed.{blue}":goto1380
1350 print"{red}negotiations fail.{blue}":last_tokenll:printyy$;:goto800
1370 print"all weapons are expended."
1380 last_tokenll:printyy$;:print"{red} nuclear war is over.{blue}"
1385 gosub 30000
1390 w%=-10
1400 q%=0:fori=0to1:p2%=0:forl=0to63:t%=m%(l,i):ms%(l,i)=m%(l,i):ift%=6then1420
1410 q%=q%+1:p2%=p2%+1:ift%=1thenq%=q%+10:p2%=p2%+10
1420 next:next:print"{clear}":gosub13000:p1%=q%-p2%:iffnr(2)*q3%>0then1430
1421 q3%=0
1430 iffnr(2)*q4%>0then1440
1431 q4%=0
1440 ifq3%>0thenprint"world opinion is against ";n$(0);"."
1450 printn$(0);"'s population:";p1%;"{left},000,000"
1460 ifq4%>0thenprint"world opinion is against ";n$(1);"."
1470 printn$(1);"'s population:";p2%;"{left},000,000"
1480 s%=(p1%+1)*(q4%+1):r%=(p2%+1)*(q3%+1):ifs%>r%then1490
1485 r%=10*r%/s%:s%=1:p%=p2%:goto1500
1490 r%=10*s%/r%:s%=0:p%=p1%
1500 ifp%<29then1510
1501 ifr%>=30then1520
1502 ifr%>=20then1530
1503 ifr%>=15then1540
1510 print"neither country gains advantage.":goto1560
1520 print"total{reverse off}";:goto1550
1530 print"major";:goto1550
1540 print"minor";
1550 print" victory for ";n$(s%);"."
1560 input"again (y/n)";a$:ifa$<>"y"thengoto25000
1570 restore:goto30
5400 iflen(a$)<2then5420
5401 l=asc(mid$(a$,2,1))-49:ifl<0orl>7then5420
5402 k%=asc(mid$(a$,1,1))-65:ifk%<0ork%>7then5420
5410 l=8*l+k%:return
5420 l=-1:return
5500 print"{home}{down*23}";:fori9=1to8:printxx$:next
5505 ifbb%(0)+ba%(0)>0thenprint"bombers airborne:{space*6}{left*3}";ba%(0)
5510 ifbb%(0)+fa%(0)>0thenprint"fighters airborne:{space*5}{left*3}";fa%(0)
5520 ifsb%(0)+sa%(0)>0thenprint"missile subs at sea:{space*3}{left*3}";sa%(0)
5530 ifab%(0)+aa%(0)>0thenprint"abm's on alert:{space*8}{left*3}";aa%(0)
5540 return
6000 j=5+fnr(4):gosub7040:mb%(i)=mb%(i)-1:ifi=1then6030
6010 printj;"missiles ready at base";last_token%(0)+1;".":last_tokenll:printyy$;
6020 print "targets";
6030 forj2=0toj-1:oni+1gosub11000,12000
6032 mt%(j2)=l:next:print
6035 ifi=1andaa%(0)>0thenprint"abm alert! ":last_tokenll:printyy$;
6037 ifi=1thenprint"{red} incoming icbm's!!{blue}":gosub30000:last_tokenll:printyy$;
6040 forj2=0toj-1:l=mt%(j2):ifaa%(-(i=0))=0orfnr(10)=0then6060
6050 aa%(-(i=0))=aa%(-(i=0))-1:iffnr(10)>0then6090
6060 iffnr(100)>am%then6080
6061 r%=-1+fnr(3):u%=-1+fnr(3)
6070 if(r%=-1andfnm8(l)=0)or(r%=1andfnm8(l)=7)then6090
6075 if(u%=-1andl<8)or(u%=1andl>55)then6090
6076 l=l+r%+8*u%
6080 poke33784,26: gosub10000
6090 next
6091 gosub13000:gosub5500:return
7000 j=5+fnr(4):p%=fnr(j+1):ifi=1then7030
7010 printj;"planes ready at airbase";bb%(0);".":bb%(0)=bb%(0)-1
7020 input"number to arm as fighters";p%:ifp%>jthenp%=j:printyy$;yy$;
7025 ifp%<0thenp%=0
7030 ba%(i)=ba%(i)+j-p%:fa%(i)=fa%(i)+p%
7040 m%(l,i)=0:return
8000 ifi=0thenprint"missile sub";sb%(0);"at sea.":last_tokenll:printyy$;
8010 gosub7040:sa%(i)=sa%(i)+1:sb%(i)=sb%(i)-1:return
9000 ifi=0thenprint"abm base";ab%(0);"activated.":last_tokenll:printyy$;
9010 gosub7040:aa%(i)=aa%(i)+5+fnr(4):ab%(i)=ab%(i)-1:return
10000 i=-(i=0)
10005 t%=m%(l,i):ifiand(t%>1)and(t%<6)thenq2%=q2%-1
10008 m%(l,i)=6:ms%(l,i)=6:i=-(i=0)
10010 u%=int(l/8):r%=l-(u%*8):xx=139:yy=6:dy=0:dx=-8:ifi=0thendx=8
10015 xy=33011:ifi=0thenxy=33030
10016 xy=xy+(r%*2)+(u%*40)
10020 ifi=1thenxx=140+(r%*16)
10030 ifi=0thenxx=212-((7-r%)*16)
10040 yy=yy+(u%*8)
10045 poke vic,xx:poke vic+1,yy
10050 pokevic+21,1:pokevic+39,15:pokevic+16,0
10055 poke sid+5,24:pokesid+6,218:pokesid+4,129:poke sid+24,15
10060 forzz=0to11
10070 xx=xx+dx:ifxx>255 then xx=xx-256:pokevic+16,1
10080 dy=dy+1:yy=yy+dy
10090 poke vic,xx:pokevic+1,yy
10095 for dd=1to5:next
10097 poke sid+1,(11-zz)
10100 next
10104 pokesid+1,1:pokesid,248:pokesid+5,24:pokesid+6,218:pokesid+4,129
10106 poke sid+24,15:vol=16
10110 poke vic+39,8:pokexy,75:pokexy+1,76
10120 forzz=16to24:poke33784,zz:fordd=1to100:next:vol=vol-2:if vol<0thenvol=0
10123 poke sid+24,vol
10125 next
10130 pokevic+21,0
10999 return
11000 print":";
11010 getb$:ifb$=""then11010
11020 r%=asc(b$):ifr%<65orr%>72then11010
11030 l=r%-65:printb$;
11040 getb$:ifb$=""then11040
11050 r%=asc(b$):ifr%>48andr%<57then11070
11060 ifnot(r%=20orr%=157)then11040
11065 print"{left} {left}";:goto11010
11070 printb$;
11080 getb$:ifb$=""then11080
11090 u%=asc(b$):ifu%=13thenl=l+8*(r%-49):return
11100 ifu%<>20andu%<>157then11080
11110 print"{left} {left}";:goto11040
12000 i1%=0:goto12030
12010 i1%=1
12030 l1%=fnr(64):l=l1%:ifbf%(i-(i1%=0))>1thenreturn
12040 l=l+1:l=-l*(l<64):t%=ms%(l,-(i=0)):ifi1%=1thent%=m%(l,-(i=0))
12051 if(t%>0orbf%(i-(i1%=0))>0)andt%<>6thenreturn
12060 ifl<>l1%then12040
12061 bf%(i-(i1%=0))=bf%(i-(i1%=0))+1:ifbf%(i-(i1%=0))=1then12030
12070 l=fnr(64):return
13000 print"{home}{down*23}";:fori9=1to9:printxx$:next
13005 print "{home}": printtab(4);"{green}"n$(0);tab(25);"{red}"n$(1):printtab(17);"{blue}"y%
13010 ifw%=-100thenprinttab(16);"cold war"
13020 ifw%>=0thenprinttab(16);"{red} hot war {reverse off}"
13030 print:a$="a b c d e f g h":printtab(3);"{yellow}"a$;tab(22);a$"{blue}"
13040 fori9=1to8:print"{yellow}"i9;:forj9=1to8:k9=8*i9+j9-9
13050 printmid$(s$,(m%(k9,0)*3-2)-21*(m%(k9,0)=0),3);
13055 next:print"{yellow}"i9;
13060 forj9=1to8:k9=8*i9+j9-9
13070 printmid$(s$,(ms%(k9,1)*3-2)-21*(ms%(k9,1)=0),3);
13075 next:print:next:print"{blue}":return
14000 poke 56578,peek(56578)or3
14010 poke 56576,(peek(56576)and252)or1
14020 poke 53272,(peek(53272)and15)or0
14030 poke 648,128
14090 poke 53272,(peek(53272)and240)or2
15000 for i=61960 to 61960+(13*8)-1:reada:last_token1,i,a:next
16000 rem special symbols
16065 data 48,48,49,50,242,242,255,0
16066 data 96,96,230,230,255,255,255,0
16067 data 96,112,223,255,223,112,96,0
16068 data 0,0,252,255,252,0,0,0
16069 data 0,67,96,127,55,0,1,3
16070 data 0,128,192,252,254,96,192,128
16071 data 0,0,0,0,0,128,159,255
16072 data 0,0,24,16,56,56,254,255
16073 data 0,1,3,6,12,24,30,255
16074 data 198,140,24,48,96,192,240,255
16075 data 0,0,7,72,192,240,127,15
16076 data 0,0,224,18,3,15,254,240
16077 data 0,60,126,126,126,126,60,0
16998 for i=61440 to 61440+(27*8)-1:reada:last_token1,i,a:next
16999 rem microgramma chars @,a-z
17000 data 124,207,219,225,192,124,0,0
17001 data 24,56,108,198,254,198,0,0
17002 data 252,198,252,198,198,252,0,0
17003 data 124,198,192,192,198,124,0,0
17004 data 252,206,198,198,206,252,0,0
17005 data 252,192,248,192,192,252,0,0
17006 data 254,192,254,192,192,192,0,0
17007 data 124,198,192,222,198,124,0,0
17008 data 198,198,254,198,198,198,0,0
17009 data 48,48,48,48,48,48,0,0
17010 data 12,12,12,12,204,120,0,0
17011 data 198,216,240,216,204,198,0,0
17012 data 192,192,192,192,192,254,0,0
17013 data 198,238,254,214,198,198,0,0
17014 data 198,230,246,222,206,198,0,0
17015 data 124,198,198,198,198,124,0,0
17016 data 252,198,252,192,192,192,0,0
17017 data 124,198,198,246,216,118,0,0
17018 data 252,198,252,206,198,198,0,0
17019 data 124,198,120,30,198,124,0,0
17020 data 255,24,24,24,24,24,0,0
17021 data 198,198,198,198,198,124,0,0
17022 data 198,108,108,108,56,56,0,0
17023 data 198,214,254,254,238,108,0,0
17024 data 198,108,56,56,108,198,0,0
17025 data 195,102,60,24,24,24,0,0
17026 data 254,6,12,48,96,254,0,0
17999 for i=61696 to 61696+(32*8)-1:reada:last_token1,i,a:next
18032 data 0,0,0,0,0,0,0,0
18033 data 24,24,24,24,0,24,0,0
18034 data 119,51,102,0,0,0,0,0
18035 data 108,254,108,108,254,108,0,0
18036 data 124,214,112,28,214,124,0,0
18037 data 70,166,76,50,101,98,0,0
18038 data 120,108,96,219,198,123,0,0
18039 data 28,28,12,24,0,0,0,0
18040 data 56,96,96,96,96,56,0,0
18041 data 56,12,12,12,12,56,0,0
18042 data 195,102,60,255,60,102,195,0
18043 data 24,24,24,255,24,24,24,0
18044 data 0,0,0,28,12,24,0,0
18045 data 0,0,0,126,0,0,0,0
18046 data 0,0,0,0,24,24,0,0
18047 data 6,12,24,48,96,192,0,0
18048 data 124,206,214,230,198,124,0,0
18049 data 60,108,204,12,12,12,0,0
18050 data 124,198,6,124,192,254,0,0
18051 data 124,198,28,6,198,124,0,0
18052 data 28,60,108,204,254,12,0,0
18053 data 254,192,252,6,198,124,0,0
18054 data 124,198,192,254,198,124,0,0
18055 data 254,6,12,24,48,96,0,0
18056 data 124,198,124,198,198,124,0,0
18057 data 124,198,126,6,198,124,0,0
18058 data 24,24,0,24,24,0,0,0
18059 data 0,28,28,0,28,12,24,0
18060 data 24,48,96,192,96,48,24,0
18061 data 0,0,126,0,126,0,0,0
18062 data 96,48,24,12,24,48,96,0
18063 data 124,198,12,24,0,24,0,0
19000 return
20000 fori=33792 to 34559:reada:pokei,a:next
20010 sid=54272:rem need to update this for x16
20020 return
20999 rem boom1
21000 data 0,0,0
21001 data 0,0,0
21002 data 0,0,0
21003 data 0,0,0
21004 data 0,0,0
21005 data 0,0,0
21006 data 0,0,0
21007 data 0,0,0
21008 data 0,0,0
21009 data 0,0,0
21010 data 0,0,0
21011 data 0,0,0
21012 data 0,0,0
21013 data 0,0,0
21014 data 0,0,0
21015 data 0,0,0
21016 data 0,0,0
21017 data 0,0,0
21018 data 0,0,0
21019 data 0,24,0
21020 data 0,60,0
21021 data 0
21099 rem boom2
21100 data 0,0,0
21101 data 0,0,0
21102 data 0,0,0
21103 data 0,0,0
21104 data 0,0,0
21105 data 0,0,0
21106 data 0,0,0
21107 data 0,0,0
21108 data 0,0,0
21109 data 0,0,0
21110 data 0,0,0
21111 data 0,0,0
21112 data 0,0,0
21113 data 0,0,0
21114 data 0,0,0
21115 data 0,0,0
21116 data 0,0,0
21117 data 0,60,0
21118 data 0,102,0
21119 data 0,203,0
21120 data 0,219,0
21121 data 0
21199 rem boom3
21200 data 0,0,0
21201 data 0,0,0
21202 data 0,0,0
21203 data 0,0,0
21204 data 0,0,0
21205 data 0,0,0
21206 data 0,0,0
21207 data 0,0,0
21208 data 0,0,0
21209 data 0,0,0
21210 data 0,0,0
21211 data 0,0,0
21212 data 0,0,0
21213 data 0,0,0
21214 data 0,24,0
21215 data 0,102,0
21216 data 0,129,0
21217 data 1,56,128
21218 data 2,60,64
21219 data 2,24,64
21220 data 2,125,64
21221 data 0
21299 rem boom4
21300 data 0,0,0
21301 data 0,0,0
21302 data 0,0,0
21303 data 0,0,0
21304 data 0,0,0
21305 data 0,0,0
21306 data 0,0,0
21307 data 0,0,0
21308 data 0,0,0
21309 data 0,0,0
21310 data 0,0,0
21311 data 0,0,0
21312 data 0,0,0
21313 data 0,126,0
21314 data 1,129,128
21315 data 2,28,64
21316 data 4,126,32
21317 data 4,60,32
21318 data 8,24,16
21319 data 8,60,16
21320 data 9,255,144
21321 data 0
21399 rem boom5
21400 data 0,0,0
21401 data 0,0,0
21402 data 0,0,0
21403 data 0,0,0
21404 data 0,0,0
21405 data 0,0,0
21406 data 0,0,0
21407 data 0,0,0
21408 data 0,0,0
21409 data 0,0,0
21410 data 0,0,0
21411 data 0,98,0
21412 data 1,1,0
21413 data 2,60,64
21414 data 0,255,  0
21415 data 11,255,208
21416 data 16,126,8
21417 data 16,60,0
21418 data 0,60,0
21419 data 32,126,4
21420 data 38,254,176
21421 data 0
21499 rem boom6
21500 data 0,0,0
21501 data 0,0,0
21502 data 0,0,0
21503 data 0,0,0
21504 data 0,0,0
21505 data 0,0,0
21506 data 0,0,0
21507 data 0,0,0
21508 data 0,0,0
21509 data 0,0,0
21510 data 0,124,0
21511 data 1,255,0
21512 data 15,255,240
21513 data 1,255,128
21514 data 0,126,0
21515 data 0,60,0
21516 data 0,60,0
21517 data 0,60,0
21518 data 0,60,0
21519 data 0,255,0
21520 data 59,125,216
21521 data 0
21599 rem boom7
21600 data 0,0,0
21601 data 0,0,0
21602 data 0,0,0
21603 data 0,0,0
21604 data 0,0,0
21605 data 0,0,0
21606 data 0,0,0
21607 data 0,0,0
21608 data 0,28,0
21609 data 0,255,0
21610 data 7,254,224
21611 data 6,251,96
21612 data 1,162,192
21613 data 0,24,0
21614 data 0,24,0
21615 data 0,24,0
21616 data 0,24,0
21617 data 0,24,0
21618 data 0,24,0
21619 data 0,255,0
21620 data 54,254,232
21621 data 0
21699 rem boom8
21700 data 0,0,0
21701 data 0,0,0
21702 data 0,0,0
21703 data 0,0,0
21704 data 0,0,0
21705 data 0,0,0
21706 data 0,72,0
21707 data 0,7,64
21708 data 5,187,0
21709 data 0,48,248
21710 data 12,230,184
21711 data 12,118,56
21712 data 3,155,128
21713 data 0,155,64
21714 data 1,24,0
21715 data 0,24,0
21716 data 0,16,0
21717 data 0,16,0
21718 data 0,0,0
21719 data 0,48,0
21720 data 45,255,116
21721 data 0
21799 rem boom9
21800 data 0,0,0
21801 data 0,0,0
21802 data 0,0,0
21803 data 0,0,0
21804 data 0,0,0
21805 data 0,0,0
21806 data 0,0,0
21807 data 0,5,0
21808 data 1,17,0
21809 data 0,32,176
21810 data 8,132,16
21811 data 4,82,8
21812 data 1,9,0
21813 data 0,2,0
21814 data 0,16,0
21815 data 0,16,0
21816 data 0,16,0
21817 data 0,0,0
21818 data 0,0,0
21819 data 0,0,0
21820 data 27,255,184
21821 data 0
21899 rem bomb
21900 data 0,0,0
21901 data 0,0,0
21902 data 0,0,0
21903 data 0,0,0
21904 data 0,0,0
21905 data 0,0,0
21906 data 0,0,0
21907 data 0,0,0
21908 data 0,0,0
21909 data 0,0,0
21910 data 0,0,0
21911 data 0,0,0
21912 data 0,0,0
21913 data 0,0,0
21914 data 0,0,0
21915 data 0,0,0
21916 data 0,0,0
21917 data 0,0,0
21918 data 0,116,0
21919 data 0,248,0
21920 data 0,116,0
21921 data 0
21999 rem missle
22000 data 0,0,0
22001 data 0,0,0
22002 data 0,0,0
22003 data 0,0,0
22004 data 0,0,0
22005 data 0,0,0
22006 data 0,0,0
22007 data 0,0,0
22008 data 0,0,0
22009 data 0,0,0
22010 data 0,0,0
22011 data 0,0,0
22012 data 0,0,0
22013 data 0,0,0
22014 data 0,56,0
22015 data 0,254,0
22016 data 0,124,0
22017 data 0,56,0
22018 data 0,56,0
22019 data 0,56,0
22020 data 0,16,0
22021 data 0
23000 data 0,0,0
23001 data 0,0,0
23002 data 0,0,0
23003 data 0,0,0
23004 data 0,0,0
23005 data 0,0,0
23006 data 0,0,0
23007 data 0,0,0
23008 data 0,0,0
23009 data 0,0,0
23010 data 0,0,0
23011 data 0,0,0
23012 data 0,0,0
23013 data 0,0,0
23014 data 0,0,0
23015 data 0,0,0
23016 data 0,0,0
23017 data 0,0,0
23018 data 0,0,0
23019 data 0,0,0
23020 data 0,0,0
23021 data 0
25000 last_token0:last_token 1,6:last_token
25005 print"=========================
25010 PRINT"[] thanks for playing! []
25020 print"=========================
25030 END
30000 FORA=SID TO SID+24:POKEA,0:NEXT
30010 POKE SID+5,27:POKE SID+6,218
30020 POKE SID+4,17:POKESID+24,15
30030 FOR XX=1TO2
30040 POKESID+1,37:POKESID,16:FORZZ=1TO200:NEXT
30050 POKESID+1,28:POKESID,136:FORZZ=1TO200:NEXT
30060 NEXT
30070 FORA=SID TO SID+24:POKEA,0:NEXT
30080 RETURN

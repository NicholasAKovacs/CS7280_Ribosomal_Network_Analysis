reinitialize
set ignore_case, off

load 1vy4.cif
remove chain D*
remove chain C*

extract AES1_H74_89_TT, 1vy4 and chain BA and (resi 2061-2092 or resi 2226-2245 or resi 2436-2501)
extract AES2_H80_TT, 1vy4 and chain BA and (resi 2427-2435 or resi 2246-2258)
extract AES3_H90_91_TT, 1vy4 and chain BA and (resi 2502-2546 or resi 2053-2060 or resi 2567-2576)
extract AES4_H73_93_TT, 1vy4 and chain BA and (resi 2043-2052 or resi 2626-2629 or resi 2577-2625)
extract AES5_H92_TT, 1vy4 and chain BA and (resi 2547-2566)
extract AES4a_H1_TT, 1vy4 and chain BA and (resi 1-11 or resi 2895-2903)
extract AES6_H72_2_3_TT, 1vy4 and chain BA and (resi 520-529 or resi 2023-2042 or resi 12-16)
extract AES7_H94_97_TT, 1vy4 and chain BA and (resi 2630-2645 or resi 2771-2790 or resi 2893-2894 or resi 2733-2770)
extract AES8_H25a_TT, 1vy4 and chain BA and (resi 530-531 or resi 563-578 or resi 2018-2022)
extract AES9_H33_32_26_26a_61_TT, 1vy4 and chain BA and (resi 579-586 or resi 1254-1261 or resi 1262-1270 or resi 2010-2017 or resi 794-808 or resi 672-683 or resi 684-698 or resi 762-775 or resi 1648-1678 or resi 1991-2009)
#extract AES9a_H26_TT, 1vy4 and chain BA and (resi 579-586 or resi 1254-1261)
#extract AES9b_H26a_TT, 1vy4 and chain BA and (resi 1262-1270 or resi 2010-2017)
#extract AES9c_H32_TT, 1vy4 and chain BA and (resi 794-808 or resi 672-683)
#extract AES9d_H33_TT, 1vy4 and chain BA and (resi 684-698 or resi 762-775)
#extract AES9e_H61a_TT, 1vy4 and chain BA and (resi 1648-1678 or resi 1991-2009)
extract AES10_H34_35_TT, 1vy4 and chain BA and (resi 699-704 or resi 727-761)
extract AES11_H64_67_TT, 1vy4 and chain BA and (resi 1679-1681 or resi 1763-1772 or resi 1829-1834 or resi 1970-1990)
extract AES12_H65_66_TT, 1vy4 and chain BA and (resi 1773-1798 or resi 1819-1828)
extract AES13_H35a_TT, 1vy4 and chain BA and (resi 776-793)
extract AES14_H36_39_TT, 1vy4 and chain BA and (resi 809-821 or resi 946-973 or resi 1188-1213 or resi 1238-1253)
extract AES15_H68_70_TT, 1vy4 and chain BA and (resi 1835-1855 or resi 1887-1905 or resi 1930-1969)
extract AES16_H37_TT, 1vy4 and chain BA and (resi 822-845 or resi 931-945)
extract AES6a_H72_2_3_TT, 1vy4 and chain BA and (resi 17-45 or resi 216-220 or resi 234-236 or resi 510-519 or resi 431-447 or resi 473-474)
extract AES17_H25_TT, 1vy4 and chain BA and (resi 532-562)
extract AES18_H46_TT, 1vy4 and chain BA and (resi 1214-1237)
extract AES19_H23_TT, 1vy4 and chain BA and (resi 448-472)
extract AES20_H27_TT, 1vy4 and chain BA and (resi 587-603 or resi 653-671)
extract AES21_H11_TT, 1vy4 and chain BA and (resi 46-49 or resi 175-215)
extract AES22_H40_TT, 1vy4 and chain BA and (resi 974-990 or resi 1186-1187)
extract AES23_H41_45_TT, 1vy4 and chain BA and (resi 991-1004 or resi 1144-1185)
extract AES24_H13_14_TT, 1vy4 and chain BA and (resi 237-270 or resi 369-370 or resi 424-430)
extract AES25_H41a_TT, 1vy4 and chain BA and (resi 1005-1025 or resi 1135-1143)
extract AES26_H21_22_TT, 1vy4 and chain BA and (resi 371-423)
extract AES27_H81_88_TT, 1vy4 and chain BA and (resi 2259-2282 or resi 2390-2426)
extract AES28_H47_60_TT, 1vy4 and chain BA and (resi 1271-1299 or resi 1627-1647)
extract AES29_H69_TT, 1vy4 and chain BA and (resi 1906-1929)
extract AES30_H95_96_TT, 1vy4 and chain BA and (resi 2646-2732)
extract AES31_H49_50_TT, 1vy4 and chain BA and (resi 1300-1340 or resi 1603-1607 or resi 1622-1626)
extract AES15a_H68_TT, 1vy4 and chain BA and (resi 1856-1886)
extract AES32_H42_TT, 1vy4 and chain BA and (resi 1026-1047 or resi 1108-1134)
extract AES33_H49a_TT, 1vy4 and chain BA and (resi 1608-1621)
extract AES34_H38_TT, 1vy4 and chain BA and (resi 846-930)
extract AES35_H51_52_TT, 1vy4 and chain BA and (resi 1598-1602 or resi 1341-1383)
extract AES32a_NotAllResolved_H42_TT, 1vy4 and chain BA and (resi 1048-1056 or resi 1087-1107)
extract AES12a_H65_66_TT, 1vy4 and chain BA and (resi 1799-1818)
extract AES36_H82_83_84_TT, 1vy4 and chain BA and (resi 2283-2324 or resi 2337-2346 or resi 2383-2389)
extract AES10a_H34_35_TT, 1vy4 and chain BA and (resi 705-726)
extract AES37_H62_TT, 1vy4 and chain BA and (resi 1682-1706 or resi 1757-1762)
extract AES38_NotResolved_H43_TT, 1vy4 and chain BA and (resi 1057-1086)
extract AES39_H76_79_TT, 1vy4 and chain BA and (resi 2093-2110 or resi 2120-2126 or resi 2162-2225)
extract 5S_TT, 1vy4 and chain BB and chain BB
extract AES40_H86_87_TT, 1vy4 and chain BA and (resi 2347-2382)
extract AES41_H5_6_10_TT, 1vy4 and chain BA and (resi 50-70 or resi 114-120 or resi 149-174)
extract AES42_H12_TT, 1vy4 and chain BA and (resi 221-233)
extract AES43_H78_TT, 1vy4 and chain BA and (resi 2127-2161)
extract AES44_H76a_TT, 1vy4 and chain BA and (resi 2111-2119)
extract AES45_H28_TT, 1vy4 and chain BA and (resi 604-626)
extract AES46_H85_TT, 1vy4 and chain BA and (resi 2325-2336)
extract AES47_H53_54_TT, 1vy4 and chain BA and (resi 1384-1415 or resi 1584-1597)
extract AES48_H24_TT, 1vy4 and chain BA and (resi 475-509)
extract AES49_H55_TT, 1vy4 and chain BA and (resi 1416-1428 or resi 1569-1583)
extract AES50_98-100_TT, 1vy4 and chain BA and (resi 2791-2831 or resi 2884-2892)
extract AES51_H56_57_TT, 1vy4 and chain BA and (resi 1429-1466 or resi 1547-1568)
extract AES52_H18_20_TT, 1vy4 and chain BA and (resi 271-298 or resi 321-368)
extract AES53_H8_9_TT, 1vy4 and chain BA and (resi 121-148)
extract AES54_H29_31_TT, 1vy4 and chain BA and (resi 627-652)
extract AES55_H19_TT, 1vy4 and chain BA and (resi 299-320)
extract AES56_H58_59_TT, 1vy4 and chain BA and (resi 1467-1546)
extract AES57_H63_TT, 1vy4 and chain BA and (resi 1707-1756)
extract AES58_H101_TT, 1vy4 and chain BA and (resi 2832-2883)
extract AES59_H7_TT, 1vy4 and chain BA and (resi 71-113)

#################################################################

extract aes1_3p_TT,1vy4 and chain AA and (resi 1531-1540) 
extract aes1_5p_TT, 1vy4 and chain AA and (resi 1-14)
extract aes1_h44_TT, 1vy4 and chain AA and (resi 1402-1418 or resi 1482-1502)
extract aes1_h28_44_TT, 1vy4 and chain AA and (resi 1397-1401)
# modified
extract aes2_h45_TT, 1vy4 and chain AA and (resi 1503-1530 (or resi 1531))
extract aes3_h2_28_TT, 1vy4 and chain AA and (resi 1377-1396 or resi 914-938 or resi 15-21)
extract aes3a_h27_TT, 1vy4 and chain AA and (resi 885-889 or resi 907-913)
extract aes4_h3_19_TT, 1vy4 and chain AA and (resi 22-38 or resi 548-569 or resi 821-827 or resi 871-884)
extract aes4a_H19_TT, 1vy4 and chain AA and (resi 570-576 or resi 814-820)
extract aes5_H20_24_TT, 1vy4 and chain AA and (resi 577-587 or resi 754-776 or resi 804-813)
extract aes3b_h27_TT, 1vy4 and chain AA and (resi 890-906)
extract aes5a_H20_24_TT, 1vy4 and chain AA and (resi 777-803)
extract aes6_H29_43_TT, 1vy4 and chain AA and (resi 939-944 or resi 1338-1376)
extract aes7_h4_15_18_TT, 1vy4 and chain AA and (resi 366-405 or resi 498-504 or resi 511-522 or resi 537-547 or resi 39-46)
extract aes1a_h44_TT, 1vy4 and chain AA and (resi 1419-1433 or resi 1467-1481)
extract aes8_h30_TT, 1vy4 and chain AA and (resi 945-960 or resi 1335-1337 or resi 1224-1237)
extract aes9_h5_TT, 1vy4 and chain AA and (resi 352-365 or resi 47-59)
extract aes10_h31_32_TT, 1vy4 and chain AA and (resi 961-991 or resi 1212-1223)
extract aes11_H33_34_TT, 1vy4 and chain AA and (resi 992-1004 or resi 1037-1064 or resi 1188-1211)
extract aes7a_h4_15_18_TT, 1vy4 and chain AA and (resi 523-536)
extract aes12_H6_12_TT, 1vy4 and chain AA and (resi 60-115 or resi 289-315)
extract aes13_h6a_TT, 1vy4 and chain AA and (resi 116-119 or resi 240-244 or resi 280-288)
extract aes14_h41_TT, 1vy4 and chain AA and (resi 1238-1256 or resi 1279-1299)
extract aes7b_h4_15_18_TT, 1vy4 and chain AA and (resi 505-510)
extract aes15_h7_10_TT, 1vy4 and chain AA and (resi 120-143 or resi 198-239)
extract aes16_h42_TT, 1vy4 and chain AA and (resi 1300-1334)
extract aes17_h13_14_TT, 1vy4 and chain AA and (resi 316-351)
extract aes14a_h41_TT, 1vy4 and chain AA and (resi 1257-1278)
extract aes18_H8_9_TT, 1vy4 and chain AA and (resi 144-197)
extract aes1b_h44_TT, 1vy4 and chain AA and (resi 1434-1466)
extract aes19_h11_TT, 1vy4 and chain AA and (resi 245-279)
extract aes20_h21_22_23_TT, 1vy4 and chain AA and (resi 701-717 or resi 734-753 or resi 588-686)
extract aes21_H26_26a_TT, 1vy4 and chain AA and (resi 828-870)
extract aes22_h35_36_38_39_TT, 1vy4 and chain AA and (resi 1065-1083 or resi 1102-1157 or resi 1184-1187)
extract aes23_H37_TT, 1vy4 and chain AA and (resi 1084-1101)
extract aes24_h23a_TT, 1vy4 and chain AA and (resi 718-733)
extract aes25_h40_TT, 1vy4 and chain AA and (resi 1158-1183)
extract aes20a_h21_22_23_TT, 1vy4 and chain AA and (resi 687-700)
extract aes26_h16_17_TT, 1vy4 and chain AA and (resi 406-497)
extract aes27_H33a_TT, 1vy4 and chain AA and (resi 1005-1036)

#############################################################

extract LSUPhase1_TT, AES1_H74_89_TT

extract LSUPhase2_TT, AES2_H80_TT or AES3_H90_91_TT or AES4_H73_93_TT or AES5_H92_TT

extract LSUPhase3_TT, AES4a_H1_TT or AES6_H72_2_3_TT or AES7_H94_97_TT or AES8_H25a_TT or AES9_H33_32_26_26a_61_TT or AES10_H34_35_TT or AES11_H64_67_TT or AES12_H65_66_TT or AES13_H35a_TT or AES14_H36_39_TT or AES15_H68_70_TT

extract LSUPhase4_TT, AES16_H37_TT or AES6a_H72_2_3_TT or AES17_H25_TT or AES18_H46_TT or AES19_H23_TT or AES20_H27_TT or AES21_H11_TT or AES22_H40_TT or AES23_H41_45_TT or AES24_H13_14_TT or AES25_H41a_TT or AES26_H21_22_TT or AES27_H81_88_TT or AES28_H47_60_TT

extract LSUPhase5_TT, AES29_H69_TT or AES30_H95_96_TT or AES31_H49_50_TT or AES15a_H68_TT or AES32_H42_TT or AES33_H49a_TT or AES34_H38_TT or AES35_H51_52_TT or AES32a_NotAllResolved_H42_TT or AES12a_H65_66_TT or AES36_H82_83_84_TT or AES10a_H34_35_TT or AES37_H62_TT or AES38_NotResolved_H43_TT or AES39_H76_79_TT or 5S_TT

extract LSUPhase6_TT, AES40_H86_87_TT or AES41_H5_6_10_TT or AES42_H12_TT or AES43_H78_TT or AES44_H76a_TT or AES45_H28_TT or AES46_H85_TT or AES47_H53_54_TT or AES48_H24_TT or AES49_H55_TT or AES50_98-100_TT or AES51_H56_57_TT or AES52_H18_20_TT or AES53_H8_9_TT or AES54_H29_31_TT or AES55_H19_TT or AES56_H58_59_TT or AES57_H63_TT or AES58_H101_TT or AES59_H7_TT

#############################################################

extract SSUPhase1_TT, aes1_3p_TT or aes1_h44_TT

extract SSUPhase2_TT, aes2_h45_TT or aes3_h2_28_TT or aes3a_h27_TT or aes1_5p_TT or aes1_h28_44_TT

extract SSUPhase3_TT, aes4_h3_19_TT or aes4a_H19_TT or aes5_H20_24_TT or aes3b_h27_TT

extract SSUPhase4_TT, aes5a_H20_24_TT or aes6_H29_43_TT or aes7_h4_15_18_TT or aes1a_h44_TT or aes8_h30_TT or aes9_h5_TT or aes10_h31_32_TT

extract SSUPhase5_TT, aes11_H33_34_TT or aes7a_h4_15_18_TT or aes12_H6_12_TT or aes13_h6a_TT or aes14_h41_TT or aes7b_h4_15_18_TT or aes15_h7_10_TT or aes16_h42_TT

extract SSUPhase6_TT, aes17_h13_14_TT or aes14a_h41_TT or aes18_H8_9_TT or aes1b_h44_TT or aes19_h11_TT or aes20_h21_22_23_TT or aes21_H26_26a_TT or aes22_h35_36_38_39_TT or aes23_H37_TT or aes24_h23a_TT or aes25_h40_TT or aes20a_h21_22_23_TT or aes26_h16_17_TT or aes27_H33a_TT

alter SSUPhase1_TT, resi = resi+'Z'
alter SSUPhase2_TT, resi = resi+'Z'
alter SSUPhase3_TT, resi = resi+'Z'
alter SSUPhase4_TT, resi = resi+'Z'
alter SSUPhase5_TT, resi = resi+'Z'
alter SSUPhase6_TT, resi = resi+'Z'

extract P1, (LSUPhase1_TT or SSUPhase1_TT)
extract P2, (LSUPhase2_TT or SSUPhase2_TT)
extract P3, (LSUPhase3_TT or SSUPhase3_TT)
extract P4, (LSUPhase4_TT or SSUPhase4_TT)
extract P5, (LSUPhase5_TT or SSUPhase5_TT)
extract P6, (LSUPhase6_TT or SSUPhase6_TT)

extract P1_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P1 around 5))) or P1
extract P2_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P2 around 5))) or P2
extract P3_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P3 around 5))) or P3
extract P4_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P4 around 5))) or P4
extract P5_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P5 around 5))) or P5
extract P6_ion, (((chain AA or chain BA or chain BB) and (name MG or name NA or name K) and (P6 around 5))) or P6

extract Phase1, (((chain AA or chain BA or chain BB) and (resname HOH) and (P1_ion around 5))) or P1_ion
extract Phase2, (((chain AA or chain BA or chain BB) and (resname HOH) and (P2_ion around 5))) or P2_ion
extract Phase3, (((chain AA or chain BA or chain BB) and (resname HOH) and (P3_ion around 5))) or P3_ion
extract Phase4, (((chain AA or chain BA or chain BB) and (resname HOH) and (P4_ion around 5))) or P4_ion
extract Phase5, (((chain AA or chain BA or chain BB) and (resname HOH) and (P5_ion around 5))) or P5_ion
extract Phase6, (((chain AA or chain BA or chain BB) and (resname HOH) and (P6_ion around 5))) or P6_ion

alter 1vy4 and chain AA, chain='a'
alter 1vy4 and chain AB, chain='b'
alter 1vy4 and chain AC, chain='c'
alter 1vy4 and chain AD, chain='d'
alter 1vy4 and chain AE, chain='e'
alter 1vy4 and chain AF, chain='f'
alter 1vy4 and chain AG, chain='g'
alter 1vy4 and chain AH, chain='h'
alter 1vy4 and chain AI, chain='i'
alter 1vy4 and chain AJ, chain='j'
alter 1vy4 and chain AK, chain='k'
alter 1vy4 and chain AL, chain='l'
alter 1vy4 and chain AM, chain='m'
alter 1vy4 and chain AN, chain='n'
alter 1vy4 and chain AO, chain='o'
alter 1vy4 and chain AP, chain='p'
alter 1vy4 and chain AQ, chain='q'
alter 1vy4 and chain AR, chain='r'
alter 1vy4 and chain AS, chain='s'
alter 1vy4 and chain AT, chain='t'
alter 1vy4 and chain AU, chain='u'
alter 1vy4 and chain AV, chain='v'
alter 1vy4 and chain AW, chain='w'
alter 1vy4 and chain AX, chain='x'
alter 1vy4 and chain AY, chain='y'

alter 1vy4 and chain BA, chain='A'
alter 1vy4 and chain BB, chain='B'
alter 1vy4 and chain BD, chain='D'
alter 1vy4 and chain BE, chain='E'
alter 1vy4 and chain BF, chain='F'
alter 1vy4 and chain BG, chain='G'
alter 1vy4 and chain BH, chain='H'
alter 1vy4 and chain BI, chain='I'
alter 1vy4 and chain BN, chain='N'
alter 1vy4 and chain BO, chain='O'
alter 1vy4 and chain BP, chain='P'
alter 1vy4 and chain BQ, chain='Q'
alter 1vy4 and chain BR, chain='R'
alter 1vy4 and chain BS, chain='S'
alter 1vy4 and chain BT, chain='T'
alter 1vy4 and chain BU, chain='U'
alter 1vy4 and chain BV, chain='V'
alter 1vy4 and chain BW, chain='W'
alter 1vy4 and chain BX, chain='X'
alter 1vy4 and chain BY, chain='Y'
alter 1vy4 and chain BZ, chain='Z'
alter 1vy4 and chain B0, chain='0'
alter 1vy4 and chain B1, chain='1'
alter 1vy4 and chain B2, chain='2'
alter 1vy4 and chain B3, chain='3'
alter 1vy4 and chain B4, chain='4'
alter 1vy4 and chain B5, chain='5'
alter 1vy4 and chain B6, chain='6'
alter 1vy4 and chain B7, chain='7'
alter 1vy4 and chain B8, chain='8'
alter 1vy4 and chain B9, chain='9'

alter Phase1, chain='z'
alter Phase2, chain='C'
alter Phase3, chain='J'
alter Phase4, chain='K'
alter Phase5, chain='L'
alter Phase6, chain='M'

#extract 23S, 1vy4 and chain A
#extract 5S, 1vy4 and chain B
#extract 16S, 1vy4 and chain a
extract mRNA, 1vy4 and chain v
extract tRNA_A, 1vy4 and chain w
extract tRNA_P, 1vy4 and chain x
extract tRNA_E, 1vy4 and chain y
extract uL02, 1vy4 and chain D
extract uL03, 1vy4 and chain E
extract uL04, 1vy4 and chain F
extract uL05, 1vy4 and chain G
extract uL06, 1vy4 and chain H
extract uL13, 1vy4 and chain N
extract uL14, 1vy4 and chain O
extract uL15, 1vy4 and chain P
extract uL16, 1vy4 and chain Q
extract uL18, 1vy4 and chain S
extract uL22, 1vy4 and chain W
extract uL23, 1vy4 and chain X
extract uL24, 1vy4 and chain Y
extract uL29, 1vy4 and chain 2
extract uL30, 1vy4 and chain 3
extract uL33, 1vy4 and chain 6
extract bL09, 1vy4 and chain I
extract bL17, 1vy4 and chain R
extract bL19, 1vy4 and chain T
extract bL20, 1vy4 and chain U
extract bL21, 1vy4 and chain V
extract bL25, 1vy4 and chain Z
extract bL27, 1vy4 and chain 0
extract bL28, 1vy4 and chain 1
extract bL31, 1vy4 and chain 4
extract bL32, 1vy4 and chain 5
extract bL34, 1vy4 and chain 7
extract bL35, 1vy4 and chain 8
extract bL36, 1vy4 and chain 9
extract uS02, 1vy4 and chain b
extract uS03, 1vy4 and chain c
extract uS04, 1vy4 and chain d
extract uS05, 1vy4 and chain e
extract uS07, 1vy4 and chain g
extract uS08, 1vy4 and chain h
extract uS09, 1vy4 and chain i
extract uS10, 1vy4 and chain j
extract uS11, 1vy4 and chain k
extract uS12, 1vy4 and chain l
extract uS13, 1vy4 and chain m
extract uS14, 1vy4 and chain n
extract uS15, 1vy4 and chain o
extract uS17, 1vy4 and chain q
extract uS19, 1vy4 and chain s
extract bS06, 1vy4 and chain f
extract bS16, 1vy4 and chain p
extract bS18, 1vy4 and chain r
extract bS20, 1vy4 and chain t
extract bS_THX, 1vy4 and chain u 

#extract Phase1, 1vy4 and chain z
#extract Phase2, 1vy4 and chain C
#extract Phase3, 1vy4 and chain J
#extract Phase4, 1vy4 and chain K
#extract Phase5, 1vy4 and chain L
#extract Phase6, 1vy4 and chain M

enable
disable aes*
disable AES*
disable 5S_TT
disable 1vy4 and chain AA or 1vy4_BB or 1vy4 and chain BA
disable P1 or P2 or P3 or P4 or P5 or P6
disable *ion*
disable 1vy4

#cmd.save('1VY4_phase_as_chains.pdb', 'enabled')
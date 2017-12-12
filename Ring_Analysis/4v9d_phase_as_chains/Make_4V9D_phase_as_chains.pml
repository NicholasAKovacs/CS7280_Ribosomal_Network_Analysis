reinitialize
set ignore_case, off

load 4v9d.cif
remove chain B*
remove chain D*

extract AES1_H74_89_EsCo, 4v9d and chain CA and (resi 2061-2092 or resi 2226-2245 or resi 2436-2501)
extract AES2_H80_EsCo, 4v9d and chain CA and (resi 2427-2435 or resi 2246-2258)
extract AES3_H90_91_EsCo, 4v9d and chain CA and (resi 2502-2546 or resi 2053-2060 or resi 2567-2576)
extract AES4_H73_93_EsCo, 4v9d and chain CA and (resi 2043-2052 or resi 2626-2629 or resi 2577-2625)
extract AES5_H92_EsCo, 4v9d and chain CA and (resi 2547-2566)
extract AES4a_H1_EsCo, 4v9d and chain CA and (resi 1-11 or resi 2895-2903)
extract AES6_H72_2_3_EsCo, 4v9d and chain CA and (resi 520-529 or resi 2023-2042 or resi 12-16)
extract AES7_H94_97_EsCo, 4v9d and chain CA and (resi 2630-2645 or resi 2771-2790 or resi 2893-2894 or resi 2733-2770)
extract AES8_H25a_EsCo, 4v9d and chain CA and (resi 530-531 or resi 563-578 or resi 2018-2022)
extract AES9_H33_32_26_26a_61_EsCo, 4v9d and chain CA and (resi 579-586 or resi 1254-1261 or resi 1262-1270 or resi 2010-2017 or resi 794-808 or resi 672-683 or resi 684-698 or resi 762-775 or resi 1648-1678 or resi 1991-2009)
#extract AES9a_H26_EsCo, 4v9d and chain CA and (resi 579-586 or resi 1254-1261)
#extract AES9b_H26a_EsCo, 4v9d and chain CA and (resi 1262-1270 or resi 2010-2017)
#extract AES9c_H32_EsCo, 4v9d and chain CA and (resi 794-808 or resi 672-683)
#extract AES9d_H33_EsCo, 4v9d and chain CA and (resi 684-698 or resi 762-775)
#extract AES9e_H61a_EsCo, 4v9d and chain CA and (resi 1648-1678 or resi 1991-2009)
extract AES10_H34_35_EsCo, 4v9d and chain CA and (resi 699-704 or resi 727-761)
extract AES11_H64_67_EsCo, 4v9d and chain CA and (resi 1679-1681 or resi 1763-1772 or resi 1829-1834 or resi 1970-1990)
extract AES12_H65_66_EsCo, 4v9d and chain CA and (resi 1773-1798 or resi 1819-1828)
extract AES13_H35a_EsCo, 4v9d and chain CA and (resi 776-793)
extract AES14_H36_39_EsCo, 4v9d and chain CA and (resi 809-821 or resi 946-973 or resi 1188-1213 or resi 1238-1253)
extract AES15_H68_70_EsCo, 4v9d and chain CA and (resi 1835-1855 or resi 1887-1905 or resi 1930-1969)
extract AES16_H37_EsCo, 4v9d and chain CA and (resi 822-845 or resi 931-945)
extract AES6a_H72_2_3_EsCo, 4v9d and chain CA and (resi 17-45 or resi 216-220 or resi 234-236 or resi 510-519 or resi 431-447 or resi 473-474)
extract AES17_H25_EsCo, 4v9d and chain CA and (resi 532-562)
extract AES18_H46_EsCo, 4v9d and chain CA and (resi 1214-1237)
extract AES19_H23_EsCo, 4v9d and chain CA and (resi 448-472)
extract AES20_H27_EsCo, 4v9d and chain CA and (resi 587-603 or resi 653-671)
extract AES21_H11_EsCo, 4v9d and chain CA and (resi 46-49 or resi 175-215)
extract AES22_H40_EsCo, 4v9d and chain CA and (resi 974-990 or resi 1186-1187)
extract AES23_H41_45_EsCo, 4v9d and chain CA and (resi 991-1004 or resi 1144-1185)
extract AES24_H13_14_EsCo, 4v9d and chain CA and (resi 237-270 or resi 369-370 or resi 424-430)
extract AES25_H41a_EsCo, 4v9d and chain CA and (resi 1005-1025 or resi 1135-1143)
extract AES26_H21_22_EsCo, 4v9d and chain CA and (resi 371-423)
extract AES27_H81_88_EsCo, 4v9d and chain CA and (resi 2259-2282 or resi 2390-2426)
extract AES28_H47_60_EsCo, 4v9d and chain CA and (resi 1271-1299 or resi 1627-1647)
extract AES29_H69_EsCo, 4v9d and chain CA and (resi 1906-1929)
extract AES30_H95_96_EsCo, 4v9d and chain CA and (resi 2646-2732)
extract AES31_H49_50_EsCo, 4v9d and chain CA and (resi 1300-1340 or resi 1603-1607 or resi 1622-1626)
extract AES15a_H68_EsCo, 4v9d and chain CA and (resi 1856-1886)
extract AES32_H42_EsCo, 4v9d and chain CA and (resi 1026-1047 or resi 1108-1134)
extract AES33_H49a_EsCo, 4v9d and chain CA and (resi 1608-1621)
extract AES34_H38_EsCo, 4v9d and chain CA and (resi 846-930)
extract AES35_H51_52_EsCo, 4v9d and chain CA and (resi 1598-1602 or resi 1341-1383)
extract AES32a_H42_EsCo, 4v9d and chain CA and (resi 1048-1056 or resi 1087-1107)
extract AES12a_H65_66_EsCo, 4v9d and chain CA and (resi 1799-1818)
extract AES36_H82_83_84_EsCo, 4v9d and chain CA and (resi 2283-2324 or resi 2337-2346 or resi 2383-2389)
extract AES10a_H34_35_EsCo, 4v9d and chain CA and (resi 705-726)
extract AES37_H62_EsCo, 4v9d and chain CA and (resi 1682-1706 or resi 1757-1762)
extract AES38_H43_EsCo, 4v9d and chain CA and (resi 1057-1086)
extract AES39_H76_79_EsCo, 4v9d and chain CA and (resi 2093-2110 or resi 2120-2126 or resi 2162-2225)
extract 5S_EsCo, 4v9d and chain CB
extract AES40_H86_87_EsCo, 4v9d and chain CA and (resi 2347-2382)
extract AES41_H5_6_10_EsCo, 4v9d and chain CA and (resi 50-70 or resi 114-120 or resi 149-174)
extract AES42_H12_EsCo, 4v9d and chain CA and (resi 221-233)
extract AES43_H78_EsCo, 4v9d and chain CA and (resi 2127-2161)
extract AES44_H76a_EsCo, 4v9d and chain CA and (resi 2111-2119)
extract AES45_H28_EsCo, 4v9d and chain CA and (resi 604-626)
extract AES46_H85_EsCo, 4v9d and chain CA and (resi 2325-2336)
extract AES47_H53_54_EsCo, 4v9d and chain CA and (resi 1384-1415 or resi 1584-1597)
extract AES48_H24_EsCo, 4v9d and chain CA and (resi 475-509)
extract AES49_H55_EsCo, 4v9d and chain CA and (resi 1416-1428 or resi 1569-1583)
extract AES50_98-100_EsCo, 4v9d and chain CA and (resi 2791-2831 or resi 2884-2892)
extract AES51_H56_57_EsCo, 4v9d and chain CA and (resi 1429-1466 or resi 1547-1568)
extract AES52_H18_20_EsCo, 4v9d and chain CA and (resi 271-298 or resi 321-368)
extract AES53_H8_9_EsCo, 4v9d and chain CA and (resi 121-148)
extract AES54_H29_31_EsCo, 4v9d and chain CA and (resi 627-652)
extract AES55_H19_EsCo, 4v9d and chain CA and (resi 299-320)
extract AES56_H58_59_EsCo, 4v9d and chain CA and (resi 1467-1546)
extract AES57_H63_EsCo, 4v9d and chain CA and (resi 1707-1756)
extract AES58_H101_EsCo, 4v9d and chain CA and (resi 2832-2883)
extract AES59_H7_EsCo, 4v9d and chain CA and (resi 71-113)

#################################################################

extract aes1_3p_EsCo,4v9d and chain AA and (resi 1531-1540) 
extract aes1_5p_EsCo, 4v9d and chain AA and (resi 1-14)
extract aes1_h44_EsCo, 4v9d and chain AA and (resi 1402-1418 or resi 1482-1502)
extract aes1_h28_44_EsCo, 4v9d and chain AA and (resi 1397-1401)
# modified
extract aes2_h45_EsCo, 4v9d and chain AA and (resi 1503-1530 (or resi 1531))
extract aes3_h2_28_EsCo, 4v9d and chain AA and (resi 1377-1396 or resi 914-938 or resi 15-21)
extract aes3a_h27_EsCo, 4v9d and chain AA and (resi 885-889 or resi 907-913)
extract aes4_h3_19_EsCo, 4v9d and chain AA and (resi 22-38 or resi 548-569 or resi 821-827 or resi 871-884)
extract aes4a_H19_EsCo, 4v9d and chain AA and (resi 570-576 or resi 814-820)
extract aes5_H20_24_EsCo, 4v9d and chain AA and (resi 577-587 or resi 754-776 or resi 804-813)
extract aes3b_h27_EsCo, 4v9d and chain AA and (resi 890-906)
extract aes5a_H20_24_EsCo, 4v9d and chain AA and (resi 777-803)
extract aes6_H29_43_EsCo, 4v9d and chain AA and (resi 939-944 or resi 1338-1376)
extract aes7_h4_15_18_EsCo, 4v9d and chain AA and (resi 366-405 or resi 498-504 or resi 511-522 or resi 537-547 or resi 39-46)
extract aes1a_h44_EsCo, 4v9d and chain AA and (resi 1419-1433 or resi 1467-1481)
extract aes8_h30_EsCo, 4v9d and chain AA and (resi 945-960 or resi 1335-1337 or resi 1224-1237)
extract aes9_h5_EsCo, 4v9d and chain AA and (resi 352-365 or resi 47-59)
extract aes10_h31_32_EsCo, 4v9d and chain AA and (resi 961-991 or resi 1212-1223)
extract aes11_H33_34_EsCo, 4v9d and chain AA and (resi 992-1004 or resi 1037-1064 or resi 1188-1211)
extract aes7a_h4_15_18_EsCo, 4v9d and chain AA and (resi 523-536)
extract aes12_H6_12_EsCo, 4v9d and chain AA and (resi 60-115 or resi 289-315)
extract aes13_h6a_EsCo, 4v9d and chain AA and (resi 116-119 or resi 240-244 or resi 280-288)
extract aes14_h41_EsCo, 4v9d and chain AA and (resi 1238-1256 or resi 1279-1299)
extract aes7b_h4_15_18_EsCo, 4v9d and chain AA and (resi 505-510)
extract aes15_h7_10_EsCo, 4v9d and chain AA and (resi 120-143 or resi 198-239)
extract aes16_h42_EsCo, 4v9d and chain AA and (resi 1300-1334)
extract aes17_h13_14_EsCo, 4v9d and chain AA and (resi 316-351)
extract aes14a_h41_EsCo, 4v9d and chain AA and (resi 1257-1278)
extract aes18_H8_9_EsCo, 4v9d and chain AA and (resi 144-197)
extract aes1b_h44_EsCo, 4v9d and chain AA and (resi 1434-1466)
extract aes19_h11_EsCo, 4v9d and chain AA and (resi 245-279)
extract aes20_h21_22_23_EsCo, 4v9d and chain AA and (resi 701-717 or resi 734-753 or resi 588-686)
extract aes21_H26_26a_EsCo, 4v9d and chain AA and (resi 828-870)
extract aes22_h35_36_38_39_EsCo, 4v9d and chain AA and (resi 1065-1083 or resi 1102-1157 or resi 1184-1187)
extract aes23_H37_EsCo, 4v9d and chain AA and (resi 1084-1101)
extract aes24_h23a_EsCo, 4v9d and chain AA and (resi 718-733)
extract aes25_h40_EsCo, 4v9d and chain AA and (resi 1158-1183)
extract aes20a_h21_22_23_EsCo, 4v9d and chain AA and (resi 687-700)
extract aes26_h16_17_EsCo, 4v9d and chain AA and (resi 406-497)
extract aes27_H33a_EsCo, 4v9d and chain AA and (resi 1005-1036)

#############################################################

extract LSUPhase1_EsCo, AES1_H74_89_EsCo

extract LSUPhase2_EsCo, AES2_H80_EsCo or AES3_H90_91_EsCo or AES4_H73_93_EsCo or AES5_H92_EsCo

extract LSUPhase3_EsCo, AES4a_H1_EsCo or AES6_H72_2_3_EsCo or AES7_H94_97_EsCo or AES8_H25a_EsCo or AES9_H33_32_26_26a_61_EsCo or AES10_H34_35_EsCo or AES11_H64_67_EsCo or AES12_H65_66_EsCo or AES13_H35a_EsCo or AES14_H36_39_EsCo or AES15_H68_70_EsCo

extract LSUPhase4_EsCo, AES16_H37_EsCo or AES6a_H72_2_3_EsCo or AES17_H25_EsCo or AES18_H46_EsCo or AES19_H23_EsCo or AES20_H27_EsCo or AES21_H11_EsCo or AES22_H40_EsCo or AES23_H41_45_EsCo or AES24_H13_14_EsCo or AES25_H41a_EsCo or AES26_H21_22_EsCo or AES27_H81_88_EsCo or AES28_H47_60_EsCo

extract LSUPhase5_EsCo, AES29_H69_EsCo or AES30_H95_96_EsCo or AES31_H49_50_EsCo or AES15a_H68_EsCo or AES32_H42_EsCo or AES33_H49a_EsCo or AES34_H38_EsCo or AES35_H51_52_EsCo or AES32a_H42_EsCo or AES12a_H65_66_EsCo or AES36_H82_83_84_EsCo or AES10a_H34_35_EsCo or AES37_H62_EsCo or AES38_H43_EsCo or AES39_H76_79_EsCo or 5S_EsCo

extract LSUPhase6_EsCo, AES40_H86_87_EsCo or AES41_H5_6_10_EsCo or AES42_H12_EsCo or AES43_H78_EsCo or AES44_H76a_EsCo or AES45_H28_EsCo or AES46_H85_EsCo or AES47_H53_54_EsCo or AES48_H24_EsCo or AES49_H55_EsCo or AES50_98-100_EsCo or AES51_H56_57_EsCo or AES52_H18_20_EsCo or AES53_H8_9_EsCo or AES54_H29_31_EsCo or AES55_H19_EsCo or AES56_H58_59_EsCo or AES57_H63_EsCo or AES58_H101_EsCo or AES59_H7_EsCo

#############################################################

extract SSUPhase1_EsCo, aes1_3p_EsCo or aes1_h44_EsCo

extract SSUPhase2_EsCo, aes2_h45_EsCo or aes3_h2_28_EsCo or aes3a_h27_EsCo or aes1_5p_EsCo or aes1_h28_44_EsCo

extract SSUPhase3_EsCo, aes4_h3_19_EsCo or aes4a_H19_EsCo or aes5_H20_24_EsCo or aes3b_h27_EsCo

extract SSUPhase4_EsCo, aes5a_H20_24_EsCo or aes6_H29_43_EsCo or aes7_h4_15_18_EsCo or aes1a_h44_EsCo or aes8_h30_EsCo or aes9_h5_EsCo or aes10_h31_32_EsCo

extract SSUPhase5_EsCo, aes11_H33_34_EsCo or aes7a_h4_15_18_EsCo or aes12_H6_12_EsCo or aes13_h6a_EsCo or aes14_h41_EsCo or aes7b_h4_15_18_EsCo or aes15_h7_10_EsCo or aes16_h42_EsCo

extract SSUPhase6_EsCo, aes17_h13_14_EsCo or aes14a_h41_EsCo or aes18_H8_9_EsCo or aes1b_h44_EsCo or aes19_h11_EsCo or aes20_h21_22_23_EsCo or aes21_H26_26a_EsCo or aes22_h35_36_38_39_EsCo or aes23_H37_EsCo or aes24_h23a_EsCo or aes25_h40_EsCo or aes20a_h21_22_23_EsCo or aes26_h16_17_EsCo or aes27_H33a_EsCo

alter SSUPhase1_EsCo, resi = resi+'Z'
alter SSUPhase2_EsCo, resi = resi+'Z'
alter SSUPhase3_EsCo, resi = resi+'Z'
alter SSUPhase4_EsCo, resi = resi+'Z'
alter SSUPhase5_EsCo, resi = resi+'Z'
alter SSUPhase6_EsCo, resi = resi+'Z'

extract P1, (LSUPhase1_EsCo or SSUPhase1_EsCo)
extract P2, (LSUPhase2_EsCo or SSUPhase2_EsCo)
extract P3, (LSUPhase3_EsCo or SSUPhase3_EsCo)
extract P4, (LSUPhase4_EsCo or SSUPhase4_EsCo)
extract P5, (LSUPhase5_EsCo or SSUPhase5_EsCo)
extract P6, (LSUPhase6_EsCo or SSUPhase6_EsCo)

extract P1_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P1 around 5))) or P1
extract P2_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P2 around 5))) or P2
extract P3_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P3 around 5))) or P3
extract P4_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P4 around 5))) or P4
extract P5_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P5 around 5))) or P5
extract P6_ion, (((chain AA or chain CA or chain CB) and (name MG or name NA or name K) and (P6 around 5))) or P6

extract Phase1, (((chain AA or chain CA or chain CB) and (resname HOH) and (P1_ion around 5))) or P1_ion
extract Phase2, (((chain AA or chain CA or chain CB) and (resname HOH) and (P2_ion around 5))) or P2_ion
extract Phase3, (((chain AA or chain CA or chain CB) and (resname HOH) and (P3_ion around 5))) or P3_ion
extract Phase4, (((chain AA or chain CA or chain CB) and (resname HOH) and (P4_ion around 5))) or P4_ion
extract Phase5, (((chain AA or chain CA or chain CB) and (resname HOH) and (P5_ion around 5))) or P5_ion
extract Phase6, (((chain AA or chain CA or chain CB) and (resname HOH) and (P6_ion around 5))) or P6_ion

alter 4v9d and chain AA, chain='a'
alter 4v9d and chain AB, chain='b'
alter 4v9d and chain AC, chain='c'
alter 4v9d and chain AD, chain='d'
alter 4v9d and chain AE, chain='e'
alter 4v9d and chain AF, chain='f'
alter 4v9d and chain AG, chain='g'
alter 4v9d and chain AH, chain='h'
alter 4v9d and chain AI, chain='i'
alter 4v9d and chain AJ, chain='j'
alter 4v9d and chain AK, chain='k'
alter 4v9d and chain AL, chain='l'
alter 4v9d and chain AM, chain='m'
alter 4v9d and chain AN, chain='n'
alter 4v9d and chain AO, chain='o'
alter 4v9d and chain AP, chain='p'
alter 4v9d and chain AQ, chain='q'
alter 4v9d and chain AR, chain='r'
alter 4v9d and chain AS, chain='s'
alter 4v9d and chain AT, chain='t'
alter 4v9d and chain AU, chain='u'
alter 4v9d and chain AV, chain='v'

alter 4v9d and chain AX, chain='x'
alter 4v9d and chain AY, chain='y'


alter 4v9d and chain CA, chain='A'
alter 4v9d and chain CB, chain='B'
alter 4v9d and chain CC, chain='C'
alter 4v9d and chain CD, chain='D'
alter 4v9d and chain CE, chain='E'
alter 4v9d and chain CF, chain='F'
alter 4v9d and chain CG, chain='G'
alter 4v9d and chain CH, chain='H'
alter 4v9d and chain CI, chain='I'
alter 4v9d and chain CJ, chain='J'
alter 4v9d and chain CK, chain='K'
alter 4v9d and chain CL, chain='L'
alter 4v9d and chain CM, chain='M'
alter 4v9d and chain CN, chain='N'
alter 4v9d and chain CO, chain='O'
alter 4v9d and chain CP, chain='P'
alter 4v9d and chain CQ, chain='Q'
alter 4v9d and chain CR, chain='R'
alter 4v9d and chain CS, chain='S'
alter 4v9d and chain CT, chain='T'
alter 4v9d and chain CU, chain='U'
alter 4v9d and chain CV, chain='V'
alter 4v9d and chain CW, chain='W'
alter 4v9d and chain CX, chain='X'
alter 4v9d and chain CY, chain='Y'
alter 4v9d and chain CZ, chain='Z'
alter 4v9d and chain C0, chain='0'
alter 4v9d and chain C1, chain='1'
alter 4v9d and chain C2, chain='2'
alter 4v9d and chain C3, chain='3'
alter 4v9d and chain C4, chain='4'

# 'w' never used, A, B, a also available
alter Phase1, chain='z'
alter Phase2, chain='5'
alter Phase3, chain='6'
alter Phase4, chain='7'
alter Phase5, chain='8'
alter Phase6, chain='9'

#extract EsCo_16S, 4v9d and chain a
extract EsCo_mRNA, 4v9d and chain x
extract EsCo_tRNA_P-E, 4v9d and chain v

extract EsCo_uS02, 4v9d and chain b
extract EsCo_uS03, 4v9d and chain c
extract EsCo_uS04, 4v9d and chain d
extract EsCo_uS05, 4v9d and chain e
extract EsCo_uS07, 4v9d and chain g
extract EsCo_uS08, 4v9d and chain h
extract EsCo_uS09, 4v9d and chain i
extract EsCo_uS10, 4v9d and chain j
extract EsCo_uS11, 4v9d and chain k
extract EsCo_uS12, 4v9d and chain l
extract EsCo_uS13, 4v9d and chain m
extract EsCo_uS14, 4v9d and chain n
extract EsCo_uS15, 4v9d and chain o
extract EsCo_uS17, 4v9d and chain q
extract EsCo_uS19, 4v9d and chain s
extract EsCo_bS06, 4v9d and chain f
extract EsCo_bS16, 4v9d and chain p
extract EsCo_bS18, 4v9d and chain r
extract EsCo_bS20, 4v9d and chain t
extract EsCo_bS21, 4v9d and chain u 
extract EsCo_RRF, 4v9d and chain y


#extract EsCo_23S, 4v9d and chain A
#extract EsCo_5S, 4v9d and chain B

extract EsCo_uL02, 4v9d and chain C
extract EsCo_uL03, 4v9d and chain D
extract EsCo_uL04, 4v9d and chain E
extract EsCo_uL05, 4v9d and chain F
extract EsCo_uL06, 4v9d and chain G
extract EsCo_uL11, 4v9d and chain I
extract EsCo_uL13, 4v9d and chain J
extract EsCo_uL14, 4v9d and chain K
extract EsCo_uL15, 4v9d and chain L
extract EsCo_uL16, 4v9d and chain M
extract EsCo_uL18, 4v9d and chain O
extract EsCo_uL22, 4v9d and chain S
extract EsCo_uL23, 4v9d and chain T
extract EsCo_uL24, 4v9d and chain U
extract EsCo_uL29, 4v9d and chain Y
extract EsCo_uL30, 4v9d and chain Z
extract EsCo_uL33, 4v9d and chain 1
extract EsCo_bL09, 4v9d and chain H
extract EsCo_bL17, 4v9d and chain N
extract EsCo_bL19, 4v9d and chain P
extract EsCo_bL20, 4v9d and chain Q
extract EsCo_bL21, 4v9d and chain R
extract EsCo_bL25, 4v9d and chain V
extract EsCo_bL27, 4v9d and chain W
extract EsCo_bL28, 4v9d and chain X
extract EsCo_bL32, 4v9d and chain 0
extract EsCo_bL34, 4v9d and chain 2
extract EsCo_bL35, 4v9d and chain 3
extract EsCo_bL36, 4v9d and chain 4

enable
disable aes*
disable AES*
disable 5S_EsCo
disable 4v9d and chain AA or 4v9d_BB or 4v9d and chain CA
disable P1 or P2 or P3 or P4 or P5 or P6
disable *ion*
disable 4v9d

#cmd.save('4v9d_phase_as_chains.pdb', 'enabled')

#	Script for proteins, phases, and AES/aes of both LSU and SSU of E. coli.  
#	Written by Nicholas A. Kovacs 4/2016

reinitialize
bg_color white
#set bg_rgb, white
set seq_view_label_color, hydrogen
#set hash_max, 1000
#set mouse_z_scale, 0.4
unset ignore_case

####### load AES aligned crystal structure files ########

# _____E coli
load ~/Dropbox/PymolScripts/pdb/sup_AES/EC_LSU_sup_aes.pdb, 3R8S_23s_supL2
load ~/Dropbox/PymolScripts/pdb/sup_AES/EC_SSU_sup_aes.pdb, 3R8N_16s_supL2

# ____Pyrococcus
load ~/Dropbox/PymolScripts/pdb/sup_AES/PF_SSU_sup_aes.pdb, PF_30S
load ~/Dropbox/PymolScripts/pdb/sup_AES/PF_LSU_RNA_sup_AES.pdb, PF_50S_rRNA
load ~/Dropbox/PymolScripts/pdb/sup_AES/PF_LSU_Protein_sup_AES.pdb, PF_50S_rProteins

# _____T thermophilus - 1VY4
load ~/Dropbox/Nick_Protein_Folding_Evolution/Data/2016_finalized_data/1VY4/1VY4_LSU_rRNA+rProtein.pdb, 1VY4

# To easily visualize different protein in 1VY4, uncomment this line and comment out the coloring protein lines at the bottom of script
#util.cbc 1VY4

############# Define RNA #############

#__________Create RNA Chains in E coli__________
create EC_23S, 3R8S_23s_supL2 and chain A
create EC_16S, 3R8N_16s_supL2 and chain A
create EC_tRNA_P, 3R8N_16s_supL2 and chain V 
create EC_mRNA, 3R8N_16s_supL2 and chain X

#__________Create RNA Chains in Pyrococcus furiosus__________
create PF_23S, PF_50S_rRNA and chain 1
create PF_5S, PF_50S_rRNA and chain 3
create PF_16S, PF_30S and chain 2
create PF_tRNA_P, PF_30S and chain 0
create PF_tRNA_E, PF_30S and chain 1

#__________Create RNA Chains in Thermus thermophilus - 1VY4__________
create 1VY4_23S, 1VY4 and chain A
create 1VY4_5S, 1VY4 and chain B
create 1VY4_A_tRNA, 1VY4 and chain J
create 1VY4_P_tRNA, 1VY4 and chain K
create 1VY4_E_tRNA, 1VY4 and chain L

# tRNA representation #

color grey, *tRNA*
as cartoon, *tRNA*
set cartoon_ladder_mode, 0, *tRNA*

######### Define Protein #############

#_________ LSU Protein Scripts____________

#@~/Dropbox/PymolScripts/LowLevel/Proteins/Proteins_EC_LSU.pml
#@~/Dropbox/PymolScripts/LowLevel/Proteins/Proteins_PF_LSU.pml

#________Create Universal LSU Proteins in 3R8S, PF, and 1VY4___________

# uL01 not resolved in 3R8S or 1VY4
create protein_PF_uL01, PF_50S_rProteins and chain A	

create protein_EC_uL02, 3R8S_23s_supL2 and chain C
create 1VY4_uL02, 1VY4 and chain D
create protein_PF_uL02, PF_50S_rProteins and chain B	

create protein_EC_uL03, 3R8S_23s_supL2 and chain D
create 1VY4_uL03, 1VY4 and chain E
create protein_PF_uL03, PF_50S_rProteins and chain C	

create protein_EC_uL04, 3R8S_23s_supL2 and chain E
create 1VY4_uL04, 1VY4 and chain F
create protein_PF_uL04, PF_50S_rProteins and chain D	

create protein_EC_uL05, 3R8S_23s_supL2 and chain F
create 1VY4_uL05, 1VY4 and chain G
create protein_PF_uL05, PF_50S_rProteins and chain E	

create protein_EC_uL06, 3R8S_23s_supL2 and chain G
create 1VY4_uL06, 1VY4 and chain H
create protein_PF_uL06, PF_50S_rProteins and chain F	

# uL10 not resolved in EC or TT                            
create protein_PF_uL10, PF_50S_rProteins and chain k	

create protein_EC_uL11, 3R8S_23s_supL2 and chain I
# 1VY4 uL11 is not resolved
create protein_PF_uL11, PF_50S_rProteins and chain H	

create protein_EC_uL13, 3R8S_23s_supL2 and chain J
create 1VY4_uL13, 1VY4 and chain N
create protein_PF_uL13, PF_50S_rProteins and chain I	

create protein_EC_uL14, 3R8S_23s_supL2 and chain K
create 1VY4_uL14, 1VY4 and chain O
create protein_PF_uL14, PF_50S_rProteins and chain J	

create protein_EC_uL15, 3R8S_23s_supL2 and chain L
create 1VY4_uL15, 1VY4 and chain P
create protein_PF_uL15, PF_50S_rProteins and chain L	

create protein_EC_uL16, 3R8S_23s_supL2 and chain M
create 1VY4_uL16, 1VY4 and chain Q
create protein_PF_uL16, PF_50S_rProteins and chain N	

create protein_EC_uL18, 3R8S_23s_supL2 and chain O
create 1VY4_uL18, 1VY4 and chain S
create protein_PF_uL18, PF_50S_rProteins and chain O		

create protein_EC_uL22, 3R8S_23s_supL2 and chain S
create 1VY4_uL22, 1VY4 and chain W
create protein_PF_uL22, PF_50S_rProteins and chain S	

create protein_EC_uL23, 3R8S_23s_supL2 and chain T
create 1VY4_uL23, 1VY4 and chain X
create protein_PF_uL23, PF_50S_rProteins and chain T	

create protein_EC_uL24, 3R8S_23s_supL2 and chain U
create 1VY4_uL24, 1VY4 and chain Y
create protein_PF_uL24, PF_50S_rProteins and chain U	

create protein_EC_uL29, 3R8S_23s_supL2 and chain Y
create 1VY4_uL29, 1VY4 and chain 2
create protein_PF_uL29, PF_50S_rProteins and chain W	

create protein_EC_uL30, 3R8S_23s_supL2 and chain Z
create 1VY4_uL30, 1VY4 and chain 3
create protein_PF_uL30, PF_50S_rProteins and chain Y	

#________Create non-Universal LSU Proteins in 3R8S, PF, and 1VY4 that occupy similar ribosomal locations___________

create protein_EC_bL09, 3R8S_23s_supL2 and chain H
create 1VY4_bL09, 1VY4 and chain I
create protein_PF_eL08_1, PF_50S_rProteins and chain G	

create protein_EC_bL17, 3R8S_23s_supL2 and chain N
create 1VY4_bL17, 1VY4 and chain R
create protein_PF_eL31, PF_50S_rProteins and chain a

create protein_EC_bL19, 3R8S_23s_supL2 and chain P
create 1VY4_bL19, 1VY4 and chain T
create protein_PF_eL24, PF_50S_rProteins and chain V	

create protein_EC_bL20, 3R8S_23s_supL2 and chain Q
create 1VY4_bL20, 1VY4 and chain U
create protein_PF_eL33, PF_50S_rProteins and chain c

create protein_EC_bL21, 3R8S_23s_supL2 and chain R
create 1VY4_bL21, 1VY4 and chain V
create protein_PF_eL32, PF_50S_rProteins and chain b	

create protein_EC_bL27, 3R8S_23s_supL2 and chain W
create 1VY4_bL27, 1VY4 and chain 0
create protein_PF_eL21, PF_50S_rProteins and chain R

create protein_EC_bL28, 3R8S_23s_supL2 and chain X
create 1VY4_bL28, 1VY4 and chain 1
create protein_PF_eL15, PF_50S_rProteins and chain M		

create protein_EC_bL33, 3R8S_23s_supL2 and chain 1
create 1VY4_bL33, 1VY4 and chain 6
create protein_PF_eL44, PF_50S_rProteins and chain j	

create protein_EC_bL34, 3R8S_23s_supL2 and chain 2
create 1VY4_bL34, 1VY4 and chain 7
create protein_PF_eL37, PF_50S_rProteins and chain e	

create protein_EC_bL36, 3R8S_23s_supL2 and chain 4
create 1VY4_bL36, 1VY4 and chain 9
create protein_PF_eL40, PF_50S_rProteins and chain g	

#________Create bacterial LSU Proteins in 3R8S and 1VY4___________

create protein_EC_bL25, 3R8S_23s_supL2 and chain V
create 1VY4_bL25, 1VY4 and chain Z

# bL31 not resolved in EC
create 1VY4_bL31, 1VY4 and chain 4

create protein_EC_bL32, 3R8S_23s_supL2 and chain 0
create 1VY4_bL32, 1VY4 and chain 5

create protein_EC_bL35, 3R8S_23s_supL2 and chain 3
create 1VY4_bL35, 1VY4 and chain 8

#________Create eukaryotic LSU Proteins in PF ___________

create protein_PF_eL08_2, PF_50S_rProteins and chain 4	
create protein_PF_eL14_1, PF_50S_rProteins and chain K	
create protein_PF_eL14_2, PF_50S_rProteins and chain 5	
create protein_PF_eL18, PF_50S_rProteins and chain P
create protein_PF_eL19, PF_50S_rProteins and chain Q
create protein_PF_eL30, PF_50S_rProteins and chain Z	
create protein_PF_eL34, PF_50S_rProteins and chain d	
create protein_PF_eL39, PF_50S_rProteins and chain f	
create protein_PF_eL41, PF_50S_rProteins and chain h
create protein_PF_eL43, PF_50S_rProteins and chain i
create protein_PF_X, PF_50S_rProteins and chain l

#__________ Alter secondary structure based on mine and Lorens visual interpretation ____________

#dss
alter protein_EC_uL03 and resi 120-126, ss='L'
alter protein_EC_uL02 and resi 220-223, ss='L'
alter protein_EC_uL02 and resi 226-228, ss='L'
alter protein_EC_uL03 and resi 95-96, ss='S'
alter protein_EC_uL03 and resi 106-119, ss='S'
alter protein_EC_uL03 and resi 121-125, ss='L'
alter protein_EC_uL03 and resi 163-181, ss='S'
alter 1VY4_uL03 and resi 116-120, ss='L'
alter 1VY4_uL03 and resi 101-114, ss='S'
alter 1VY4_uL03 and resi 158-176, ss='S'
alter 1VY4_uL22 and resi 98-101, ss='S'
alter 1VY4_uL22 and resi 79-82, ss='S'
alter 1VY4_uL22 and resi 80 or resi 100, ss='L'
rebuild

##################################################################
########################## LSU  EVO ##############################
##################################################################

#____ Colors used for PF rRNA ____#

set_color n_red = [0.00, 1.00, 1.00]
set_color n_teal = [1.00, 0.25, 0.25]

set_color n_blue = [1.00, 1.00, 0.00]
set_color n_lime = [0.50, 0.00, 0.50]
set_color n_yelloworange = [0.0, 0.13, 0.63]
# define color n_bluewhite

################################ Phase 1 ###########################################

create AES1_H74_89_TT, 1VY4_23S and (resi 2061-2092 or resi 2226-2245 or resi 2436-2501)
color red, AES1_H74_89_TT

create AES1_H74_89_PF, PF_23S and (resi 2339-2358 or resi 2551-2616 or resi 2184-2215)
color n_red, AES1_H74_89_PF

#create LSUPhase1_TT, AES1_H74_89_TT
#create LSUPhase1_PF, AES1_H74_89_PF

############################### Phase 2 ###########################################

create AES2_H80_TT, 1VY4_23S and (resi 2427-2435 or resi 2246-2258)
color teal, AES2_H80_TT

create AES2_H80_PF, PF_23S and (resi 2544-2550 or resi 2359-2372)
color n_teal, AES2_H80_PF

create AES3_H90_91_TT, 1VY4_23S and (resi 2502-2546 or resi 2053-2060 or resi 2567-2576)
color blue, AES3_H90_91_TT

create AES3_H90_91_PF, PF_23S and (resi 2617-2661 or resi 2176-2183 or resi 2682-2691) 
color n_blue, AES3_H90_91_PF

create AES4_H73_93_TT, 1VY4_23S and (resi 2043-2052 or resi 2626-2629 or resi 2577-2625)
color lime, AES4_H73_93_TT

create AES4_H73_93_PF, PF_23S and (resi 2692-2744 or resi 2166-2175)
color n_lime, AES4_H73_93_PF

create AES5_H92_TT, 1VY4_23S and (resi 2547-2566)
color yelloworange, AES5_H92_TT

create AES5_H92_PF, PF_23S and (resi 2662-2681)
color n_yelloworange, AES5_H92_PF

#create LSUPhase2_TT, AES2_H80_TT or AES3_H90_91_TT or AES4_H73_93_TT or AES5_H92_TT
#create LSUPhase2_PF, AES2_H80_PF or AES3_H90_91_PF or AES4_H73_93_PF or AES5_H92_PF

############################################# Phase 3 ###################################

create AES4a_H1_TT, 1VY4_23S and (resi 1-11 or resi 2895-2903)
color lime, AES4a_H1_TT

create AES4a_H1_PF, PF_23S and (resi 1-11 or resi 3041-3049) and chain 1
color n_lime, AES4a_H1_PF

create AES6_H72_2_3_TT, 1VY4_23S and (resi 520-529 or resi 2023-2042 or resi 12-16)
color teal, AES6_H72_2_3_TT

create AES6_H72_2_3_PF, PF_23S and (resi 2146-2165 or resi 557-566 or resi 12-16) and chain 1
color n_teal, AES6_H72_2_3_PF

create AES7_H94_97_TT, 1VY4_23S and (resi 2630-2645 or resi 2771-2790 or resi 2893-2894 or resi 2733-2770)
color red, AES7_H94_97_TT

create AES7_H94_97_PF, PF_23S and (resi 2846-2902 or resi 2746-2759)
color n_red, AES7_H94_97_PF

create AES8_H25a_TT, 1VY4_23S and (resi 530-531 or resi 563-578 or resi 2018-2022)
color yelloworange, AES8_H25a_TT

create AES8_H25a_PF, PF_23S and (resi 654-669 or resi 2142-2145 or resi 567-568)
color n_yelloworange, AES8_H25a_PF

create AES9_H33_32_26_26a_61_TT, 1VY4_23S and (resi 579-586 or resi 1254-1261 or resi 1262-1270 or resi 2010-2017 or resi 794-808 or resi 672-683 or resi 684-698 or resi 762-775 or resi 1648-1678 or resi 1991-2009)
color blue, AES9_H33_32_26_26a_61_TT

create AES9_H33_32_26_26a_61_PF, PF_23S and (resi 897-910 or resi 805-831 or resi 929-943 or resi 670-677 or resi 1396-1412 or resi 2115-2141 or resi 1806-1837)
color n_blue, AES9_H33_32_26_26a_61_PF

create AES9a_H26_TT, 1VY4_23S and (resi 579-586 or resi 1254-1261)
color blue, AES9a_H26_TT

create AES9a_H26_PF, PF_23S and (resi 670-677or resi 1396-1403)
color n_blue, AES9a_H26_PF

create AES9b_H26a_TT, 1VY4_23S and (resi 1262-1270 or resi 2010-2017)
color blue, AES9b_H26a_TT

create AES9b_H26a_PF, PF_23S and (resi 1404-1412 or resi 2134-2141)
color n_blue, AES9b_H26a_PF

create AES9c_H32_TT, 1VY4_23S and (resi 794-808 or resi 672-683)
color blue, AES9c_H32_TT

create AES9c_H32_PF, PF_23S and (resi 805-816 or resi 929-943)
color n_blue, AES9c_H32_PF

create AES9d_H33_TT, 1VY4_23S and (resi 684-698 or resi 762-775)
color blue, AES9d_H33_TT

create AES9d_H33_PF, PF_23S and (resi 817-831 or resi 897-910)
color n_blue, AES9d_H33_PF

create AES9e_H61a_TT, 1VY4_23S and (resi 1648-1678 or resi 1991-2009)
color blue, AES9e_H61a_TT

create AES9e_H61a_PF, PF_23S and (resi 1806-1837 or resi 2115-2133)
color n_blue, AES9e_H61a_PF

create AES10_H34_35_TT, 1VY4_23S and (resi 699-704 or resi 727-761)
color yelloworange, AES10_H34_35_TT

create AES10_H34_35_PF, PF_23S and (resi 832-837 or resi 860-896)
color n_yelloworange, AES10_H34_35_PF

create AES11_H64_67_TT, 1VY4_23S and (resi 1679-1681 or resi 1763-1772 or resi 1829-1834 or resi 1970-1990)
color lime, AES11_H64_67_TT

create AES11_H64_67_PF, PF_23S and (resi 1838-1840 or resi 2094-2114 or resi 1902-1911 or resi 1968-1973)
color n_lime, AES11_H64_67_PF

create AES12_H65_66_TT, 1VY4_23S and (resi 1773-1798 or resi 1819-1828)
color red, AES12_H65_66_TT

create AES12_H65_66_PF, PF_23S and (resi 1912-1937 or resi 1958-1967)
color n_red, AES12_H65_66_PF

create AES13_H35a_TT, 1VY4_23S and (resi 776-793)
color teal, AES13_H35a_TT

create AES13_H35a_PF, PF_23S and (resi 911-928)
color n_teal, AES13_H35a_PF

create AES14_H36_39_TT, 1VY4_23S and (resi 809-821 or resi 946-973 or resi 1188-1213 or resi 1238-1253)
color lime, AES14_H36_39_TT

create AES14_H36_39_PF, PF_23S and (resi 1331-1355 or resi 1380-1395 or resi 944-956 or resi 1083-1108)
color n_lime, AES14_H36_39_PF

create AES15_H68_70_TT, 1VY4_23S and (resi 1835-1855 or resi 1887-1905 or resi 1930-1969)
color teal, AES15_H68_70_TT

create AES15_H68_70_PF, PF_23S and (resi 1987-1994 or resi 2010-2029 or resi 1974-1985 or resi 2054-2093)
color n_teal, AES15_H68_70_PF

#create LSUPhase3_TT, AES4a_H1_TT or AES6_H72_2_3_TT or AES7_H94_97_TT or AES8_H25a_TT or AES9_H33_32_26_26a_61_TT or AES10_H34_35_TT or AES11_H64_67_TT or AES12_H65_66_TT or AES13_H35a_TT or AES14_H36_39_TT or AES15_H68_70_TT
#create LSUPhase3_PF, AES4a_H1_PF or AES6_H72_2_3_PF or AES7_H94_97_PF or AES8_H25a_PF or AES9_H33_32_26_26a_61_PF or AES10_H34_35_PF or AES11_H64_67_PF or AES12_H65_66_PF or AES13_H35a_PF or AES14_H36_39_PF or AES15_H68_70_PF

#___ Best models of protein evolution ___#

#why not start at 217 (EC)? and 190 (PF)?
create EC_uL02_phase3, protein_EC_uL02 and resi 224-239
create 1VY4_uL02_phase3, 1VY4_uL02 and resi 226-242
create PF_uL02_phase3, protein_PF_uL02 and resi 197-211

create EC_uL03_phase3, protein_EC_uL03 and (resi 128-160)
create 1VY4_uL03_phase3, 1VY4_uL03 and (resi 123-155)
create PF_uL03_phase3, protein_PF_uL03 and (resi 240-269) 

create EC_uL16_phase3, protein_EC_uL16 and (resi 76-87) 
create 1VY4_uL16_phase3, 1VY4_uL16 and resi 77-88
create PF_uL16_phase3, protein_PF_uL16 and (resi 97-117) 

create EC_bL21_phase3, protein_EC_bL21 and (resi 79-82) 
create 1VY4_bL21_phase3, 1VY4_bL21 and resi 77-80

create PF_eL15_phase3, protein_PF_eL15 and (resi 77-85)
create PF_eL32_phase3, protein_PF_eL32 and (resi 25-47)

#___ Other protein evo ___# 

create EC_uL04_phase3, protein_EC_uL04 and (resi 49-82)
create 1VY4_uL04_phase3, 1VY4_uL04 and resi 54-87
create PF_uL04_phase3, protein_PF_uL04 and (resi 50-90)

create EC_uL13_phase3, protein_EC_uL13 and (resi 78-83) 
create 1VY4_uL13_phase3, 1VY4_uL13 and resi 76-81
create PF_uL13_phase3, protein_PF_uL13 and (resi 56-66)
 
create EC_uL14_phase3, protein_EC_uL14 and (resi 1-6)
create 1VY4_uL14_phase3, 1VY4_uL14 and resi 1-6
create PF_uL14_phase3, protein_PF_uL14 and (resi 20-25)
 
#create EC_uL15_phase3, protein_EC_uL15 and resi 34-39 
#create PF_uL15_phase3, protein_PF_uL15 and resi 20-29
create EC_uL15_phase3, protein_EC_uL15 and resi 20-40 
create 1VY4_uL15_phase3, 1VY4_uL15 and resi 20-40
create PF_uL15_phase3, protein_PF_uL15 and resi 9-28

create 1VY4_bL27_phase3, 1VY4_bL27 and resi 2-9

create EC_bL32_phase3, protein_EC_bL32 and (resi 1-8)
create 1VY4_bL32_phase3, 1VY4_bL32 and resi 2-12

create PF_eL44_phase3, protein_PF_eL44 and resi 45-55

# Not in analysis
#create PF_uL3-2_phase3, protein_PF_uL03 and resi 1-8

############################################# Phase 4 ###################################

create AES16_H37_TT, 1VY4_23S and (resi 822-845 or resi 931-945)
color yelloworange, AES16_H37_TT

create AES16_H37_PF, PF_23S and (resi 957-981 or resi 1069-1082)
color n_yelloworange, AES16_H37_PF

create AES6a_H72_2_3_TT, 1VY4_23S and (resi 17-45 or resi 216-220 or resi 234-236 or resi 510-519 or resi 431-447 or resi 473-474)
color teal, AES6a_H72_2_3_TT

create AES6a_H72_2_3_PF, PF_23S and (resi 17-45 or resi 512-513 or resi 471-486 or resi 205-209 or resi 223-225 or resi 547-556)
color n_teal, AES6a_H72_2_3_PF

# residues 545-548 not resolved
create AES17_H25_TT, 1VY4_23S and (resi 532-562)
color blue, AES17_H25_TT

create AES17_H25_PF, PF_23S and (resi 569-581 or resi 640-653)
color n_blue, AES17_H25_PF

create AES18_H46_TT, 1VY4_23S and (resi 1214-1237)
color yelloworange, AES18_H46_TT

create AES18_H46_PF, PF_23S and (resi 1356-1379)
color n_yelloworange, AES18_H46_PF

create AES19_H23_TT, 1VY4_23S and (resi 448-472)
color red, AES19_H23_TT

create AES19_H23_PF, PF_23S and (resi 487-511)
color n_red, AES19_H23_PF

create AES20_H27_TT, 1VY4_23S and (resi 587-603 or resi 653-671)
color red, AES20_H27_TT

create AES20_H27_PF, PF_23S and (resi 787-804 or resi 678-694)
color n_red, AES20_H27_PF

create AES21_H11_TT, 1VY4_23S and (resi 46-49 or resi 175-215)
color lime, AES21_H11_TT

create AES21_H11_PF, PF_23S and (resi 46-49 or resi 164-204)
color n_lime, AES21_H11_PF

create AES22_H40_TT, 1VY4_23S and (resi 974-990 or resi 1186-1187)
color red, AES22_H40_TT

create AES22_H40_PF, PF_23S and (resi 1109-1125 or resi 1329-1330)
color n_red, AES22_H40_PF

create AES23_H41_45_TT, 1VY4_23S and (resi 991-1004 or resi 1144-1185)
color teal, AES23_H41_45_TT

create AES23_H41_45_PF, PF_23S and (resi 1126-1138 or resi 1283-1328)
color n_teal, AES23_H41_45_PF

create AES24_H13_14_TT, 1VY4_23S and (resi 237-270 or resi 369-370 or resi 424-430)
color blue, AES24_H13_14_TT

create AES24_H13_14_PF, PF_23S and (resi 226-259 or resi 464-470 or resi 411-412)
color n_blue, AES24_H13_14_PF

create AES25_H41a_TT, 1VY4_23S and (resi 1005-1025 or resi 1135-1143)
color lime, AES25_H41a_TT

create AES25_H41a_PF, PF_23S and (resi 1273-1282 or resi 1139-1164)
color n_lime, AES25_H41a_PF

create AES26_H21_22_TT, 1VY4_23S and (resi 371-423)
color lime, AES26_H21_22_TT

create AES26_H21_22_PF, PF_23S and (resi 413-463)
color n_lime, AES26_H21_22_PF

create AES27_H81_88_TT, 1VY4_23S and (resi 2259-2282 or resi 2390-2426)
color red, AES27_H81_88_TT

create AES27_H81_88_PF, PF_23S and (resi 2507-2543 or resi 2373-2396)
color n_red, AES27_H81_88_PF

create AES28_H47_60_TT, 1VY4_23S and (resi 1271-1299 or resi 1627-1647)
color red, AES28_H47_60_TT

create AES28_H47_60_PF, PF_23S and (resi 1413-1442 or resi 1784-1805)
color n_red, AES28_H47_60_PF

#create LSUPhase4_TT, AES16_H37_TT or AES6a_H72_2_3_TT or AES17_H25_TT or AES18_H46_TT or AES19_H23_TT or AES20_H27_TT or AES21_H11_TT or AES22_H40_TT or AES23_H41_45_TT or AES24_H13_14_TT or AES25_H41a_TT or AES26_H21_22_TT or AES27_H81_88_TT or AES28_H47_60_TT
#create LSUPhase4_PF, AES16_H37_PF or AES6a_H72_2_3_PF or AES17_H25_PF or AES18_H46_PF or AES19_H23_PF or AES20_H27_PF or AES21_H11_PF or AES22_H40_PF or AES23_H41_45_PF or AES24_H13_14_PF or AES25_H41a_PF or AES26_H21_22_PF or AES27_H81_88_PF or AES28_H47_60_PF

#___ Best models of protein evolution ___#

create EC_uL02_phase4, protein_EC_uL02 and (resi 215-223 or resi 240-257)
create 1VY4_uL02_phase4, 1VY4_uL02 and (resi 217-225 or resi 243-260)
create PF_uL02_phase4, protein_PF_uL02 and (resi 187-196 or resi 212-239)

create EC_uL03_phase4, protein_EC_uL03 and (resi 118-127 or resi 161-164)
create 1VY4_uL03_phase4, 1VY4_uL03 and (resi 113-122 or resi 156-159)
create PF_uL03_phase4, protein_PF_uL03 and (resi 229-239 or resi 270-274)
 
# These residues aren't interacting with any phase 4 rRNA
# It interacts with the AES34 of phase 5, and is somewhat close to the tip of AES1 that belongs in phase 5
#create EC_uL16_phase4, protein_EC_uL16 and  (resi 69-74 or resi 88-93)
#create 1VY4_uL16_phase4, 1VY4_uL16 and (resi 89-94 or resi 70-75) 
#create PF_uL16_phase4, protein_PF_uL16 and  (resi 90-95 or resi 118-124)

create EC_bL21_phase4, protein_EC_bL21 and (resi 69-78 or resi 83-92)
create 1VY4_bL21_phase4, 1VY4_bL21 and (resi 68-76 or resi 81-88)

create PF_eL15_phase4, protein_PF_eL15 and (resi 67-76 or resi 86-95) 
create PF_eL21_phase4, protein_PF_eL21 and (resi 3-13)
create PF_eL33_phase4, protein_PF_eL33 and resi 11-21
create PF_eL44_phase4, protein_PF_eL44 and (resi 34-44 or resi 56-62)

#___ Other protein evolution ___#

create EC_uL04_phase4, protein_EC_uL04 and (resi 39-48 or resi 83-93)
create 1VY4_uL04_phase4, 1VY4_uL04 and (resi 44-53 or resi 88-98)
create PF_uL04_phase4, protein_PF_uL04 and (resi 42-49 or resi 91-102)

create EC_uL13_phase4, protein_EC_uL13 and (resi 72-77 or resi 84-89)
create 1VY4_uL13_phase4, 1VY4_uL13 and (resi 70-75 or resi 82-87)
create PF_uL13_phase4, protein_PF_uL13 and (resi 46-55 or resi 67-70)

create EC_uL15_phase4, protein_EC_uL15 and (resi 2-19 or resi 41-62) 
create 1VY4_uL15_phase4, 1VY4_uL15 and (resi 1-19 or resi 41-63)
create PF_uL15_phase4, protein_PF_uL15 and (resi 1-8 or resi 29-59)
 
create EC_uL22_phase4, protein_EC_uL22 and  (resi 81-99)
create 1VY4_uL22_phase4, 1VY4_uL22 and resi 81-99 
create PF_uL22_phase4, protein_PF_uL22 and  (resi 125-141)

#create EC_bL20_phase4, protein_EC_bL20 and (resi 25-32)
#create 1VY4_bL20_phase4, 1VY4_bL20 and resi 26-30

create EC_bL27_phase4, protein_EC_bL27 and resi 6-14
create 1VY4_bL27_phase4, 1VY4_bL27 and resi 10-18

create EC_bL28_phase4, protein_EC_bL28 and  (resi 9-31) 
create 1VY4_bL28_phase4, 1VY4_bL28 and resi 10-45

create EC_bL34_phase4, protein_EC_bL34 and resi 1-7
create 1VY4_bL34_phase4, 1VY4_bL34 and resi 1-7

create EC_bL35_phase4, protein_EC_bL35 and  (resi 1-6) 
create 1VY4_bL35_phase4, 1VY4_bL35 and resi 2-7

create PF_eL32_phase4, protein_PF_eL32 and (resi 20-24 or resi 42-70)
create PF_eL37_phase4, protein_PF_eL37 and resi 1-13
create PF_eL43_phase4, protein_PF_eL43 and (resi 6-18)

############################################# Phase 5 ###################################

create AES29_H69_TT, 1VY4_23S and (resi 1906-1929)
color blue, AES29_H69_TT

create AES29_H69_PF, PF_23S and (resi 2030-2053)
color n_blue, AES29_H69_PF

create AES30_H95_96_TT, 1VY4_23S and (resi 2646-2732)
color teal, AES30_H95_96_TT

create AES30_H95_96_PF, PF_23S and (resi 2762-2846)
color n_teal, AES30_H95_96_PF

create AES31_H49_50_TT, 1VY4_23S and (resi 1300-1340 or resi 1603-1607 or resi 1622-1626)
color teal, AES31_H49_50_TT

create AES31_H49_50_PF, PF_23S and (resi 1443-1483 or resi 1778-1782 or resi 1759-1763)
color n_teal, AES31_H49_50_PF

create AES15a_H68_TT, 1VY4_23S and (resi 1856-1886)
color blue, AES15a_H68_TT

create AES15a_H68_PF, PF_23S and (resi 1995-2010)
color n_blue, AES15a_H68_PF

create AES32_H42_TT, 1VY4_23S and (resi 1026-1047 or resi 1108-1134)
color yelloworange, AES32_H42_TT

create AES32_H42_PF, PF_23S and (resi 1165-1186 or resi 1247-1272)
color n_yelloworange, AES32_H42_PF

create AES33_H49a_TT, 1VY4_23S and (resi 1608-1621)
color lime, AES33_H49a_TT

create AES33_H49a_PF, PF_23S and (resi 1763-1777)
color n_lime, AES33_H49a_PF

create AES34_H38_TT, 1VY4_23S and (resi 846-930)
color red, AES34_H38_TT

create AES34_H38_PF, PF_23S and (resi 982-1066)
color n_red, AES34_H38_PF

create AES35_H51_52_TT, 1VY4_23S and (resi 1598-1602 or resi 1341-1383)
color red, AES35_H51_52_TT

create AES35_H51_52_PF, PF_23S and (resi 1754-1758 or resi 1484-1528)
color n_red, AES35_H51_52_PF

# nucleotides 1053-1105 are not resolved in crystal structure
create AES32a_NotAllResolved_H42_TT, 1VY4_23S and (resi 1048-1056 or resi 1087-1107)
color blue, AES32a_H42_TT

create AES32a_H42_PF, PF_23S and (resi 1226-1246 or resi 1187-1195)
color n_blue, AES32a_H42_PF

create AES12a_H65_66_TT, 1VY4_23S and (resi 1799-1818)
color yelloworange, AES12a_H65_66_TT

create AES12a_H65_66_PF, PF_23S and (resi 1938-1957)
color n_yelloworange, AES12a_H65_66_PF

create AES36_H82_83_84_TT, 1VY4_23S and (resi 2283-2324 or resi 2337-2346 or resi 2383-2389)
color blue, AES36_H82_83_84_TT

create AES36_H82_83_84_PF, PF_23S and (resi 2500-2505 or resi 2397-2438 or resi 2451-2460)
color n_blue, AES36_H82_83_84_PF

create AES10a_H34_35_TT, 1VY4_23S and (resi 705-726)
color teal, AES10a_H34_35_TT

create AES10a_H34_35_PF, PF_23S and (resi 838-859)
color n_teal, AES10a_H34_35_PF

create AES37_H62_TT, 1VY4_23S and (resi 1682-1706 or resi 1757-1762)
color red, AES37_H62_TT

create AES37_H62_PF, PF_23S and (resi 1896-1901 or resi 1841-1865)
color n_red, AES37_H62_PF

# nucleotides 1053-1105 are not resolved in crystal structure
create AES38_NotResolved_H43_TT, 1VY4_23S and (resi 1057-1086)
color lime, AES38_H43_TT

create AES38_H43_PF, PF_23S and (resi 1196-1225)
color n_lime, AES38_H43_PF

create AES39_H76_79_TT, 1VY4_23S and (resi 2093-2110 or resi 2120-2126 or resi 2162-2225)
color lime, AES39_H76_79_TT

create AES39_H76_79_PF, PF_23S and (resi 2216-2233 or resi 2243-2249 or resi 2285-2338)
color n_lime, AES39_H76_79_PF

create 5s_TT, 1VY4_5S
color bluewhite, 5s_TT

create 5s_PF, PF_5S and chain 3
color n_bluewhite, 5s_PF

#create LSUPhase5_TT, AES29_H69_TT or AES30_H95_96_TT or AES31_H49_50_TT or AES15a_H68_TT or AES32_H42_TT or AES33_H49a_TT or AES34_H38_TT or AES35_H51_52_TT or AES32a_H42_TT or AES12a_H65_66_TT or AES36_H82_83_84_TT or AES10a_H34_35_TT or AES37_H62_TT or AES38_H43_TT or AES39_H76_79_TT or 5s_TT
#create LSUPhase5_PF, AES29_H69_PF or AES30_H95_96_PF or AES31_H49_50_PF or AES15a_H68_PF or AES32_H42_PF or AES33_H49a_PF or AES34_H38_PF or AES35_H51_52_PF or AES32a_H42_PF or AES12a_H65_66_PF or AES36_H82_83_84_PF or AES10a_H34_35_PF or AES37_H62_PF or AES38_H43_PF or AES39_H76_79_PF or 5s_PF

#___ Best models of protein Evolution ___#

create EC_uL02_phase5, protein_EC_uL02 and (resi 118-214 or resi 258-271)
create 1VY4_uL02_phase5, 1VY4_uL02 and (resi 120-216 or resi 261-276)
create PF_uL02_phase5, protein_PF_uL02 and (resi 86-186)

create EC_uL03_phase5, protein_EC_uL03 and (resi 1-31 or resi 97-117 or resi 165-209)
create 1VY4_uL03_phase5, 1VY4_uL03 and (resi 1-30 or resi 92-112 or resi 160-204)
create PF_uL03_phase5, protein_PF_uL03 and (resi 1-40 or resi 41-77 or resi 208-228 or resi 275-365)

create EC_uL06_phase5, protein_EC_uL06 and resi 82-176
create 1VY4_uL06_phase5, 1VY4_uL06 and resi 83-175
create PF_uL06_phase5, protein_PF_uL06 and resi 87-184

create EC_uL11_phase5, protein_EC_uL11 and resi 74-141
# Not resolved in 1VY4
create PF_uL11_phase5, protein_PF_uL11 and resi 69-134

#create EC_uL16_phase5, protein_EC_uL16 and (resi 1-68 or resi 94-136)
#create 1VY4_uL16_phase5, 1VY4_uL16 and (resi 1-69 or resi 95-141)
#create PF_uL16_phase5, protein_PF_uL16 and (resi 3-89 or resi 123-170)

# These following defintions assume there are no residues in phase 4
create EC_uL16_phase5, protein_EC_uL16 and (resi 1-75 or resi 88-136)
create 1VY4_uL16_phase5, 1VY4_uL16 and (resi 1-76 or resi 89-141)
create PF_uL16_phase5, protein_PF_uL16 and (resi 3-96 or resi 118-170)

create EC_uL22_phase5, protein_EC_uL22 and (resi 1-80 or resi 100-110)
create 1VY4_uL22_phase5, 1VY4_uL22 and (resi 1-80 or resi 100-112)
create PF_uL22_phase5, protein_PF_uL22 and (resi 6-124 or resi 142-155)

create EC_bL21_phase5, protein_EC_bL21 and (resi 1-68 or resi 93-103)
create 1VY4_bL21_phase5, 1VY4_bL21 and (resi 1-67 or resi 89-101)

create EC_bL25_phase5, protein_EC_bL25 and resi 1-94
create 1VY4_bL25_phase5, 1VY4_bL25 and resi 1-91

create PF_eL15_phase5, protein_PF_eL15 and (resi 59-66 or resi 96-133)
create PF_eL21_phase5, protein_PF_eL21 and resi 14-97
create PF_eL32_phase5, protein_PF_eL32 and (resi 3-19 or resi 71-129)
create PF_eL33_phase5, protein_PF_eL33 and (resi 1-10 or resi 22-87)
create PF_eL40_phase5, protein_PF_eL40
create PF_eL44_phase5, protein_PF_eL44 and (resi 1-33 or resi 63-94)

#___ Other protein Evolution ___#

create PF_uL01_phase5, protein_PF_uL01 and (resi 1-59 or resi 151-216)

create PF_uL10_phase5, protein_PF_uL10 and (resi 6-108 or resi 186-217)

create EC_uL14_phase5, protein_EC_uL14 and (resi 7-87) 
create 1VY4_uL14_phase5, 1VY4_uL14 and (resi 7-87) 
create PF_uL14_phase5, protein_PF_uL14 and (resi 10-19 or resi 26-106) 

create EC_uL15_phase5, protein_EC_uL15 and (resi 63-72)
create 1VY4_uL15_phase5, 1VY4_uL15 and resi 64-78
create PF_uL15_phase5, protein_PF_uL15 and (resi 60-72)

create EC_uL30_phase5, protein_EC_uL30 and resi 1-58
create 1VY4_uL30_phase5, 1VY4_uL30 and resi 2-60
create PF_uL30_phase5, protein_PF_uL30 and (resi 1-58)

create EC_bL28_phase5, protein_EC_bL28 and (resi 1-8 or resi 32-77)
create 1VY4_bL28_phase5, 1VY4_bL28 and (resi 2-9 or resi 46-98)

create EC_bL32_phase5, protein_EC_bL32 and (resi 9-20)
create 1VY4_bL32_phase5, 1VY4_bL32 and resi 13-24

create EC_bL34_phase5, protein_EC_bL34 and resi 8-46
create 1VY4_bL34_phase5, 1VY4_bL34 and resi 8-48

create EC_bL35_phase5, protein_EC_bL35 and resi 7-64
create 1VY4_bL35_phase5, 1VY4_bL35 and resi 8-65

create EC_bL36_phase5, protein_EC_bL36 and resi 1-35
create 1VY4_bL36_phase5, 1VY4_bL36 and resi 1-37

create PF_eL34_phase5, protein_PF_eL34 and resi 1-29
create PF_eL37_phase5, protein_PF_eL37 and resi 14-62
create PF_eL39_phase5, protein_PF_eL39
create PF_eL43_phase5, protein_PF_eL43 and (resi 19-35)
create PF_X_phase5, protein_PF_X

############################################# Phase 6 ###################################

create AES40_H86_87_TT, 1VY4_23S and (resi 2347-2382)
color lime, AES40_H86_87_TT

create AES40_H86_87_PF, PF_23S and (resi 2461-2499)
color n_lime, AES40_H86_87_PF

create AES41_H5_6_10_TT, 1VY4_23S and (resi 50-70 or resi 114-120 or resi 149-174)
color blue, AES41_H5_6_10_TT

# Nucleotides 154B - 170 are not resolved. The helix ends at 154A and 171
create AES41_NotAllResolved_H5_6_10_PF, PF_23S and (resi 50-70 or resi 114-119 or resi 144-163)
color n_blue, AES41_H5_6_10_PF

create AES42_H12_TT, 1VY4_23S and (resi 221-233)
color yelloworange, AES42_H12_TT

create AES42_H12_PF, PF_23S and (resi 210-222)
color n_yelloworange, AES42_H12_PF

create AES43_H78_TT, 1VY4_23S and (resi 2127-2161)
color teal, AES43_H78_TT

create AES43_H78_PF, PF_23S and (resi 2250-2284)
color n_teal, AES43_H78_PF

create AES44_H76a_TT, 1VY4_23S and (resi 2111-2119)
color blue, AES44_H76a_TT

create AES44_H76a_PF, PF_23S and (resi 2234-2242)
color n_blue, AES44_H76a_PF

create AES45_H28_TT, 1VY4_23S and (resi 604-626)
color teal, AES45_H28_TT

create AES45_H28_PF, PF_23S and (resi 695-722)
color n_teal, AES45_H28_PF

create AES46_H85_TT, 1VY4_23S and (resi 2325-2336)
color teal, AES46_H85_TT

create AES46_H85_PF, PF_23S and (resi 2439-2450)
color n_teal, AES46_H85_PF

create AES47_H53_54_TT, 1VY4_23S and (resi 1384-1415 or resi 1584-1597)
color lime, AES47_H53_54_TT

create AES47_H53_54_PF, PF_23S and (resi 1529-1561 or resi 1737-1753)
color n_lime, AES47_H53_54_PF

create AES48_H24_TT, 1VY4_23S and (resi 475-509)
color blue, AES48_H24_TT

create AES48_H24_PF, PF_23S and (resi 514-546)
color n_blue, AES48_H24_PF

create AES49_H55_TT, 1VY4_23S and (resi 1416-1428 or resi 1569-1583)
color red, AES49_H55_TT

create AES49_H55_PF, PF_23S and (resi 1576-1588 or resi 1723-1736)
color n_red, AES49_H55_PF

create AES50_98-100_TT, 1VY4_23S and (resi 2791-2831 or resi 2884-2892)
color yelloworange, AES50_98-100_TT

create AES50_98-100_PF, PF_23S and (resi 2903-2969 or resi 3031-3039)
color n_yelloworange, AES50_98-100_PF

create AES51_H56_57_TT, 1VY4_23S and (resi 1429-1466 or resi 1547-1568)
color lime, AES51_H56_57_TT

create AES51_H56_57_PF, PF_23S and (resi 1702-1722 or resi 1589-1622)
color n_lime, AES51_H56_57_PF

create AES52_H18_20_TT, 1VY4_23S and (resi 271-298 or resi 321-368)
color red, AES52_H18_20_TT

create AES52_H18_20_PF, PF_23S and (resi 297-337 or resi 361-410)
color n_red, AES52_H18_20_PF

create AES_ES5_PF, PF_23S and resi 260-296
color black, AES_ES5_PF

create AES53_H8_9_TT, 1VY4_23S and (resi 121-148)
color yelloworange, AES53_H8_9_TT

create AES53_H8_9_PF, PF_23S and (resi 120-144)
color n_yelloworange, AES53_H8_9_PF

create AES54_H29_31_TT, 1VY4_23S and (resi 627-652)
color yelloworange, AES54_H29_31_TT

create AES54_H29_31_PF, PF_23S and (resi 723-785)
color n_yelloworange, AES54_H29_31_PF

create AES55_H19_TT, 1VY4_23S and (resi 299-320)
color teal, AES55_H19_TT

create AES55_H19_PF, PF_23S and (resi 338-360)
color n_teal, AES55_H19_PF

create AES56_H58_59_TT, 1VY4_23S and (resi 1467-1546)
color teal, AES56_H58_59_TT

create AES56_H58_59_PF, PF_23S and (resi 1623-1701)
color n_teal, AES56_H58_59_PF

create AES57_H63_TT, 1VY4_23S and (resi 1707-1756)
color blue, AES57_H63_TT

create AES57_H63_PF, PF_23S and (resi 1866-1895)
color n_blue, AES57_H63_PF

create AES58_H101_TT, 1VY4_23S and (resi 2832-2883)
color red, AES58_H101_TT

create AES58_H101_PF, PF_23S and (resi 2970-3030)
color n_red, AES58_H101_PF

create AES59_H7_TT, 1VY4_23S and (resi 71-113)
color teal, AES59_H7_TT

create AES59_H7_PF, PF_23S and (resi 71-112)
color n_teal, AES59_H7_PF

create ES7_H25_PF, PF_23S and (resi 582-639)
color black, AES17_H25_PF

#create LSUPhase6_TT, AES40_H86_87_TT or AES41_H5_6_10_TT or AES42_H12_TT or AES43_H78_TT or AES44_H76a_TT or AES45_H28_TT or AES46_H85_TT or AES47_H53_54_TT or AES48_H24_TT or AES49_H55_TT or AES50_98-100_TT or AES51_H56_57_TT or AES52_H18_20_TT or AES53_H8_9_TT or AES54_H29_31_TT or AES55_H19_TT or AES56_H58_59_TT or AES57_H63_TT or AES58_H101_TT or AES59_H7_TT
#create LSUPhase6_PF, AES40_H86_87_PF or AES41_H5_6_10_PF or AES42_H12_PF or AES43_H78_PF or AES44_H76a_PF or AES45_H28_PF or AES46_H85_PF or AES47_H53_54_PF or AES48_H24_PF or AES49_H55_PF or AES50_98-100_PF or AES51_H56_57_PF or AES52_H18_20_PF or AES53_H8_9_PF or AES54_H29_31_PF or AES55_H19_PF or AES56_H58_59_PF or AES57_H63_PF or AES58_H101_PF or AES59_H7_PF

#___ Best models of Protein Evolution ___#

create EC_uL02_phase6, protein_EC_uL02 and resi 1-117
create 1VY4_uL02_phase6, 1VY4_uL02 and resi 2-119
create PF_uL02_phase6, protein_PF_uL02 and resi 1-86

create EC_uL03_phase6, protein_EC_uL03 and (resi 32-96)
create 1VY4_uL03_phase6, 1VY4_uL03 and resi 31-91
create PF_uL03_phase6, protein_PF_uL03 and (resi 78-207)

create EC_uL06_phase6, protein_EC_uL06 and resi 1-81
create 1VY4_uL06_phase6, 1VY4_uL06 and resi 2-82
create PF_uL06_phase6, protein_PF_uL06 and resi 1-86

create EC_uL11_phase6, protein_EC_uL11 and resi 1-73
# Not resolved in 1VY4
create PF_uL11_phase6, protein_PF_uL11 and resi 1-68 

create PF_eL15_phase6, protein_PF_eL15 and (resi 1-58 or resi 134-194)

#___ Other protein evolution ___#

create PF_uL01_phase6, protein_PF_uL01 and (resi 60-150)

create EC_uL04_phase6, protein_EC_uL04 and (resi 1-38 or resi 94-201)
create 1VY4_uL04_phase6, 1VY4_uL04 and (resi 6-43 or resi 99-207)
create PF_uL04_phase6, protein_PF_uL04 and (resi 1-41 or resi 103-255)

create EC_uL05_phase6, protein_EC_uL05 and resi 1-177
create 1VY4_uL05_phase6, 1VY4_uL05 and resi 2-182
create PF_uL05_phase6, protein_PF_uL05 and resi 1-186

# Not resolved in 1VY4 or EC
create PF_uL10_phase6, protein_PF_uL10 and resi 109-185

create EC_uL13_phase6, protein_EC_uL13 and (resi 1-71 or resi 90-142)
create 1VY4_uL13_phase6, 1VY4_uL13 and (resi 1-69 or resi 88-140)
create PF_uL13_phase6, protein_PF_uL13 and (resi 1-45 or resi 70-142)

create EC_uL14_phase6, protein_EC_uL14 and (resi 88-122)
create 1VY4_uL14_phase6, 1VY4_uL14 and resi 88-122
create PF_uL14_phase6, protein_PF_uL14 and (resi 107-141)

create EC_uL15_phase6, protein_EC_uL15 and resi 73-144
create 1VY4_uL15_phase6, 1VY4_uL15 and resi 79-149
create PF_uL15_phase6, protein_PF_uL15 and resi 73-147

create EC_uL18_phase6, protein_EC_uL18 and resi 2-117
create 1VY4_uL18_phase6, 1VY4_uL18 and resi 3-112
create PF_uL18_phase6, protein_PF_uL18 and resi 1-197

create EC_uL23_phase6, protein_EC_uL23 and resi 1-93
create 1VY4_uL23_phase6, 1VY4_uL23 and resi 1-95
create PF_uL23_phase6, protein_PF_uL23 and resi 3-86

create EC_uL24_phase6, protein_EC_uL24 and resi 1-102
create 1VY4_uL24_phase6, 1VY4_uL24 and resi 1-107
create PF_uL24_phase6, protein_PF_uL24 and resi 1-121

create EC_uL29_phase6, protein_EC_uL29 and resi 1-63
create 1VY4_uL29_phase6, 1VY4_uL29 and resi 1-70
create PF_uL29_phase6, protein_PF_uL29 and resi 1-72

# Unlike in PF, there is no second domain in EC L30
create PF_uL30_phase6, protein_PF_uL30 and (resi 59-155)

create EC_bL09_phase6, protein_EC_bL09 and resi 1-149
create 1VY4_bL09_phase6, 1VY4_bL09 and resi 1-146

create EC_bL17_phase6, protein_EC_bL17 and resi 1-120
create 1VY4_bL17_phase6, 1VY4_bL17 and resi 1-118

create EC_bL19_phase6, protein_EC_bL19 and resi 1-114
create 1VY4_bL19_phase6, 1VY4_bL19 and resi 1-131

# Alpha helix buried into phase4 rRNA...
#create EC_bL20_phase6, protein_EC_bL20 and (resi 1-24 or resi 33-117)
#create 1VY4_bL20_phase6, 1VY4_bL20 and (resi 2-25 or resi 31-117)
create EC_bL20_phase6, protein_EC_bL20 and (resi 1-117)
create 1VY4_bL20_phase6, 1VY4_bL20 and (resi 2-117)

create 1VY4_bL25_phase6, 1VY4_bL25 and (resi 92-171)

# Analogous to eL21 which is in phase 5
create EC_bL27_phase6, protein_EC_bL27 and (resi 15-81)
create 1VY4_bL27_phase6, 1VY4_bL27 and resi 19-84

# bL31 not resolved in EC
create 1VY4_bL31_phase6, 1VY4_bL31 and resi 1-69

create EC_bL32_phase6, protein_EC_bL32 and resi 21-56
create 1VY4_bL32_phase6, 1VY4_bL32 and resi 25-60

# Analogous to eL44, which is in phase 5
create EC_bL33_phase6, protein_EC_bL33 and resi 3-52
create 1VY4_bL33_phase6, 1VY4_bL33 and resi 2-54

create PF_eL08_1_phase6, protein_PF_eL08_1 and resi 1-123
create PF_eL08_2_phase6, protein_PF_eL08_2 and resi 1-123
create PF_eL14_1_phase6, protein_PF_eL14_1
create PF_eL14_2_phase6, protein_PF_eL14_2
create PF_eL18_phase6, protein_PF_eL18
create PF_eL19_phase6, protein_PF_eL19
create PF_eL24_phase6, protein_PF_eL24
create PF_eL30_phase6, protein_PF_eL30
create PF_eL31_phase6, protein_PF_eL31
create PF_eL34_phase6, protein_PF_eL34 and resi 30-89
create PF_eL43_phase6, protein_PF_eL43 and (resi 36-83)

#################################################################
##################### SSU Protein Scripts #######################

@~/Dropbox/PymolScripts/LowLevel/Proteins/Proteins_EC_SSU.pml
@~/Dropbox/PymolScripts/LowLevel/Proteins/Proteins_PF_SSU.pml
create protein_PF_eS24, PF_50S_rProteins and chain 6

##################################################################
########################## SSU EVO ###############################
##################################################################

##################################### Phase 1 #####################################

create aes1_3p_EC,EC_16S and (resi 1531-1540) 
color yelloworange, aes1_3p_EC

create aes1_3p_PF,PF_16S and (resi 1486-1495) 
color n_yelloworange, aes1_3p_PF

create aes1_mRNA, EC_mRNA and (resi 5-19)
color yelloworange, aes1_mRNA

create aes1_5p_EC, EC_16S and (resi 1-14)
color yelloworange, aes1_5p_EC

create aes1_5p_PF, PF_16S and (resi 1-14)
color n_yelloworange, aes1_5p_PF

create aes1_h44_EC, EC_16S and (resi 1402-1418 or resi 1482-1502)
color teal, aes1_h44_EC

create aes1_h44_PF, PF_16S and (resi 1362-1378 or resi 1437-1457)
color n_teal, aes1_h44_PF

create aes1_h28_44_EC, EC_16S and (resi 1397-1401)
color yelloworange, aes1_h28_44_EC

create aes1_h28_44_PF, PF_16S and (resi 1357-1361)
color n_yelloworange, aes1_h28_44_PF

#create SSUPhase0_EC, aes1_3p*EC or aes1_mRNA*EC or aes1_h44*EC
#create SSUPhase0_PF, aes1_3p*PF or aes1_mRNA*PF or aes1_h44*PF
#create SSUPhase1_EC, aes1_*EC
#create SSUPhase1_PF, aes1*PF or aes1*PF  

################################# Phase 2 ##########################################

create aes2_h45_EC, EC_16S and (resi 1503-1530)
color red, aes2_h45_EC

create aes2_h45_PF, PF_16S and (resi 1458-1485)
color n_red, aes2_h45_PF

create aes3_h2_28_EC, EC_16S and (resi 1377-1396 or resi 914-938 or resi 15-21)
color blue, aes3_h2_28_EC

create aes3_h2_28_PF, PF_16S and (resi 872-897 or resi 1337-1356 or resi 15-16)
color n_blue, aes3_h2_28_PF

create aes3a_h27_EC, EC_16S and (resi 885-889 or resi 907-913)
color yelloworange, aes3a_h27_EC

create aes3a_h27_PF, PF_16S and (resi 843-847 or resi 865-871)
color n_yelloworange, aes3a_h27_PF

create mRNA_TT,TT_mRNA
color orange, mRNA_TT
as cartoon, mRNA_TT

#create SSUPhase2_EC, aes2_*EC or aes3_*EC or aes3a_*EC or aes1_*EC or aes1_*EC or mRNA_TT
#create SSUPhase2_PF, aes2*PF or aes3*PF or aes3a*PF or aes1*PF or aes1*PF or mRNA_TT

################################## Phase 3 #########################################

create aes4_h3_19_EC, EC_16S and (resi 22-38 or resi 548-569 or resi 821-827 or resi 871-884)
color lime, aes4_h3_19_EC

create aes4_h3_19_PF, PF_16S and (resi 17-32 or resi 501-522 or resi 775-781 or resi 829-842)
color n_lime, aes4_h3_19_PF

create aes4a_H19_EC, EC_16S and (resi 570-576 or resi 814-820)
color teal, aes4a_H19_EC

create aes4a_H19_PF, PF_16S and (resi 523-529 or resi 768-774)
color n_teal, aes4a_H19_PF

create aes5_H20_24_EC, EC_16S and (resi 577-587 or resi 754-776 or resi 804-813)
color blue, aes5_H20_24_EC

create aes5_H20_24_PF, PF_16S and (resi 530-540 or resi 708-730 or resi 758-767)
color n_blue, aes5_H20_24_PF

create aes3b_h27_EC, EC_16S and (resi 890-906)
color lime, aes3b_h27

create aes3b_h27_PF, PF_16S and (resi 848-864)
color lime, aes3b_h27_PF

#create SSUPhase3_EC, aes4_*EC or aes4a_*EC or aes5_*EC or aes3b_*EC
#create SSUPhase3_PF, aes4*PF or aes4a*PF or aes5*PF or aes3b*PF

create EC_uS7_phase3, protein_EC_S7 and (resi 78-82)
create PF_uS7_phase3, protein_PF_uS7 and (resi 140-145)
create EC_uS12_phase3, protein_EC_S12 and (resi 11-17)
create PF_uS12_phase3, protein_PF_uS12 and (resi 20-32)

######################## Phase 4 - Merging with LSU ################################ 

create aes5a_H20_24_EC, EC_16S and (resi 777-803)
color lime, aes5a_H20_24_EC

create aes5a_H20_24_PF, PF_16S and (resi 731-757)
color n_lime, aes5a_H20_24_PF

create aes6_H29_43_EC, EC_16S and (resi 939-944 or resi 1338-1376)
color lime, aes6_H29_43_EC

create aes6_H29_43_PF, PF_16S and (resi 898-903 or resi 1298-1336)
color n_lime, aes6_H29_43_PF

create aes7_h4_15_18_EC, EC_16S and (resi 366-405 or resi 498-504 or resi 511-522 or resi 537-547 or resi 39-46)
color red, aes7_h4_15_18_EC

create aes7_h4_15_18_PF, PF_16S and (resi 464-475 or resi 490-500 or resi 450-456 or resi 362-401 or resi 34-41)
color n_red, aes7_h4_15_18_PF

create aes1a_h44_EC, EC_16S and (resi 1419-1433 or resi 1467-1481)
color teal, aes1a_h44_EC

create aes1a_h44_PF, PF_16S and (resi 1379-1393 or resi 1422-1436)
color n_teal, aes1a_h44_PF

create aes8_h30_EC, EC_16S and (resi 945-960 or resi 1335-1337 or resi 1224-1237)
color teal, aes8_h30_EC

create aes8_h30_PF, PF_16S and (resi 904-919 or resi 1295-1297 or resi 1184-1197)
color n_teal, aes8_h30_PF

create aes9_h5_EC, EC_16S and (resi 352-365 or resi 47-59)
color yelloworange, aes9_h5_EC

create aes9_h5_PF, PF_16S and (resi 348-361 or resi 42-55)
color n_yelloworange, aes9_h5_PF

create aes10_h31_32_EC, EC_16S and (resi 961-991 or resi 1212-1223)
color red, aes10_h31_32_EC

create aes10_h31_32_PF, PF_16S and (resi 920-950 or resi 1172-1183)
color n_red, aes10_h31_32_PF

#create SSUPhase4_EC, aes5a_*EC or aes6_*EC or aes7_*EC or aes1a_*EC or aes8_*EC or aes9_*EC or aes10_*EC
#create SSUPhase4_PF, aes5a*PF or aes6*PF or aes7*PF or aes1a*PF or aes8*PF or aes9*PF or aes10*PF

create EC_uS7_phase4, protein_EC_S7 and (resi 70-77 or resi 83-90)
create PF_uS7_phase4, protein_PF_uS7 and (resi 132-139 or resi 146-152)
create EC_uS9_phase4, protein_EC_S9 and (resi 108-129)
create PF_uS9_phase4, protein_PF_uS9 and (resi 113-135)
create EC_uS10_phase4, protein_EC_S10 and (resi 46-68)
create PF_uS10_phase4, protein_PF_uS10 and (resi 46-65)
create EC_uS11_phase4, protein_EC_S11 and (resi 119-128)
create PF_uS11_phase4, protein_PF_uS11 and (resi 125-137)
create EC_uS12_phase4, protein_EC_S12 and (resi 1-10 or resi 18-28)
create PF_uS12_phase4, protein_PF_uS12 and (resi 12-19 or resi 33-49)
create EC_uS13_phase4, protein_EC_S13 and (resi 93-113)
create PF_uS13_phase4, protein_PF_uS13 and (resi 124-138)
create EC_uS14_phase4, protein_EC_S14 and (resi 58-79)
create PF_uS14_phase4, protein_PF_uS14 and (resi 14-38)

create EC_uS17_phase4, protein_EC_S17 and (resi 26-39)
create PF_uS17_phase4, protein_PF_uS17 and (resi 53-66)
create EC_uS19_phase4, protein_EC_S19 and (resi 76-80)
create PF_uS19_phase4, protein_PF_uS19 and (resi 109-116)
create EC_bS21_phase4, protein_EC_S21 and (resi 27-53)
create PF_eS19_phase4, protein_PF_eS19 and (resi 79-90)
create PF_eS28_phase4, protein_PF_eS28 and resi 15-23

############################## Phase 5 #########################################

create aes11_H33_34_EC, EC_16S and (resi 992-1004 or resi 1037-1064 or resi 1188-1211)
color yelloworange, aes11_H33_34_EC

create aes11_H33_34_PF, PF_16S and (resi 951-963 or resi 989-1016 or resi 1148-1171)
color n_yelloworange, aes11_H33_34_PF

create aes7a_h4_15_18_EC, EC_16S and (resi 523-536)
color teal, aes7a_h4_15_18_EC

create aes7a_h4_15_18_PF, PF_16S and (resi 476-489)
color n_teal, aes7a_h4_15_18_PF

create aes12_H6_12_EC, EC_16S and (resi 60-115 or resi 289-315)
color blue, aes12_H6_12_EC

create aes12_H6_12_PF, PF_16S and (resi 56-99 or resi 285-311)
color n_blue, aes12_H6_12_PF

create aes13_h6a_EC, EC_16S and (resi 116-119 or resi 240-244 or resi 280-288)
color red, aes13_h6a_EC

create aes13_h6a_PF, PF_16S and (resi 100-103 or resi 276-284 or resi 236-240)
color n_red, aes13_h6a_PF

create aes14_h41_EC, EC_16S and (resi 1238-1256 or resi 1279-1299)
color blue, aes14_h41_EC

create aes14_h41_PF, PF_16S and (resi 1239-1259 or resi 1198-1216)
color n_blue, aes14_h41_PF

create aes7b_h4_15_18_EC, EC_16S and (resi 505-510)
color yelloworange, aes7b_h4_15_18_EC

create aes7b_h4_15_18_PF, PF_16S and (resi 457-463)
color n_yelloworange, aes7b_h4_15_18_PF

create aes15_h7_10_EC, EC_16S and (resi 120-143 or resi 198-239)
color lime, aes15_h7_10_EC

create aes15_h7_10_PF, PF_16S and (resi 104-128 or resi 200-235)
color n_lime, aes15_h7_10_PF

create aes16_h42_EC, EC_16S and (resi 1300-1334)
color yelloworange, aes16_h42_EC

create aes16_h42_PF, PF_16S and (resi 1260-1294)
color n_yelloworange, aes16_h42_PF

#create SSUPhase5_EC, aes11_*EC or aes7a_*EC or aes12_*EC or aes13_*EC or aes14_*EC or aes7b_*EC or aes15_*EC or aes16_*EC
#create SSUPhase5_PF, aes11_*PF or aes7a_*PF or aes12_*PF or aes13_*PF or aes14_*PF or aes7b_*PF or aes15_*PF or aes16_*PF

create EC_uS3_phase5, protein_EC_S3 and (resi 109-206)
create PF_uS3_phase5, protein_PF_uS3 and (resi 91-186)
create EC_uS5_phase5, protein_EC_S5 and (resi 72-146)
create PF_uS5_phase5, protein_PF_uS5 and (resi 124-210)
create EC_uS8_phase5, protein_EC_S8 and resi 1-71
create PF_uS8_phase5, protein_PF_uS8 and resi 2-69
create EC_uS12_phase5, protein_EC_S12 and resi 29-97
create PF_uS12_phase5, protein_PF_uS12 and resi 50-130
create EC_uS14_phase5, protein_EC_S14 and (resi 80-101)
create PF_uS14_phase5, protein_PF_uS14 and (resi 1-13 or resi 39-56)
create EC_uS17_phase5, protein_EC_S17 and (resi 3-25 or resi 40-82)
create PF_uS17_phase5, protein_PF_uS17 and (resi 31-52 or resi 67-113)
create EC_bS16_phase5, protein_EC_S16 and (resi 1-82)
create EC_uS19_phase5, protein_EC_S19 and (resi 29-75)
create PF_uS19_phase5, protein_PF_uS19 and (resi 62-108)
create PF_eS4_phase5, protein_PF_eS4 and resi 3-116
create PF_eS8_phase5, protein_PF_eS8 and resi 1-29
create PF_eS28_phase5, protein_PF_eS28 and (resi 1-14 or resi 24-71)
#create PF_eS6_phase5, protein_PF_eS6 and (resi 1-80 or resi 110-125)

############################ Phase 6 #######################################

create aes17_h13_14_EC, EC_16S and (resi 316-351)
color red, aes17_h13_14_EC

create aes17_h13_14_PF, PF_16S and (resi 312-347)
color n_red, aes17_h13_14_PF

create aes14a_h41_EC, EC_16S and (resi 1257-1278)
color teal, aes14a_h41_EC

create aes14a_h41_PF, PF_16S and (resi 1217-1238)
color n_teal, aes14a_h41_PF

create aes18_H8_9_EC, EC_16S and (resi 144-197)
color yelloworange, aes18_H8_9_EC

create aes18_H8_9_PF, PF_16S and (resi 129-199)
color n_yelloworange, aes18_H8_9_PF

create aes1b_h44_EC, EC_16S and (resi 1434-1466)
color teal, aes1b_h44_EC

create aes1b_h44_PF, PF_16S and (resi 1394-1420)
color n_teal, aes1b_h44_PF

create aes19_h11_EC, EC_16S and (resi 245-279)
color blue, aes19_h11_EC

create aes19_h11_PF, PF_16S and (resi 241-275)
color n_blue, aes19_h11_PF

create aes20_h21_22_23_EC, EC_16S and (resi 701-717 or resi 734-753 or resi 588-686)
color yelloworange, aes20_h21_22_23_EC

create aes20_h21_22_23_PF, PF_16S and (resi 655-671 or resi 688-707 or resi 541-640)
color n_yelloworange, aes20_h21_22_23_PF

create aes21_H26_26a_EC, EC_16S and (resi 828-870)
color teal, aes21_H26_26a_EC

create aes21_H26_26a_PF, PF_16S and (resi 782-828)
color n_teal, aes21_H26_26a_PF

create aes22_h35_36_38_39_EC, EC_16S and (resi 1065-1083 or resi 1102-1157 or resi 1184-1187)
color red, aes22_h35_36_38_39_EC

create aes22_h35_36_38_39_PF, PF_16S and (resi 1017-1035 or resi 1054-1117 or resi 1144-1147)
color n_red, aes22_h35_36_38_39_PF

create aes23_H37_EC, EC_16S and (resi 1084-1101)
color lime, aes23_H37_EC

create aes23_H37_PF, PF_16S and (resi 1036-1053)
color n_lime, aes23_H37_PF

create aes24_h23a_EC, EC_16S and (resi 718-733)
color lime, aes24_h23a_EC

create aes24_h23a_PF, PF_16S and (resi 672-687)
color n_lime, aes24_h23a_PF

create aes25_h40_EC, EC_16S and (resi 1158-1183)
color teal, aes25_h40_EC

create aes25_h40_PF, PF_16S and (resi 1118-1143)
color n_teal, aes25_h40_PF

create aes20a_h21_22_23_EC, EC_16S and (resi 687-700)
color blue, aes20a_h21_22_23_EC

create aes20a_h21_22_23_PF, PF_16S and (resi 641-654)
color n_blue, aes20a_h21_22_23_PF

create aes26_h16_17_EC, EC_16S and (resi 406-497)
color teal, aes26_h16_17_EC

create aes26_h16_17_PF, PF_16S and (resi 402-450)
color n_teal, aes26_h16_17_PF

create aes27_H33a_EC, EC_16S and (resi 1005-1036)
color lime, aes27_H33a_EC

create aes27_H33a_PF, PF_16S and (resi 964-988)
color n_lime, aes27_H33a_PF

#create SSUPhase6_EC, aes17_*EC or aes14a_*EC or aes18_*EC or aes1b_*EC or aes19_*EC or aes20_*EC or aes21_*EC or aes22_*EC or aes23_*EC or aes24_*EC or aes25_*EC or aes20a_*EC or aes26_*EC or aes27_*EC
#create SSUPhase6_PF, aes17*PF or aes14a*PF or aes18*PF or aes1b*PF or aes19*PF or aes20*PF or aes21*PF or aes22*PF or aes23*PF or aes24*PF or aes25*PF or aes20a*PF or aes26*PF or aes27*PF

create EC_uS2_phase6, protein_EC_S2 and (resi 8-225)
create PF_uS2_phase6, protein_PF_uS2 and (resi 1-202)
create EC_uS3_phase6, protein_EC_S3 and (resi 1-108)
create PF_uS3_phase6, protein_PF_uS3 and (resi 1-90)
create EC_uS4_phase6, protein_EC_S4 and (resi 1-205)
create PF_uS4_phase6, protein_PF_uS4 and (resi 9-180)
create EC_uS5_phase6, protein_EC_S5 and (resi 9-71 or resi 147-158)
create PF_uS5_phase6, protein_PF_uS5 and (resi 1-123 or resi 211-217)
create EC_uS7_phase6, protein_EC_S7 and (resi 1-69 or resi 91-151)
create PF_uS7_phase6, protein_PF_uS7 and (resi 1-69 or resi 91-151)
create EC_bS6_phase6, protein_EC_S6 and (resi 1-100)
create EC_uS8_phase6, protein_EC_S8 and (resi 72-129)
create PF_uS8_phase6, protein_PF_uS8 and (resi 70-130)
create EC_uS9_phase6, protein_EC_S9 and (resi 3-107)
create PF_uS9_phase6, protein_PF_uS9 and (resi 3-107)
create EC_uS10_phase6, protein_EC_S10 and (resi 5-45 or resi 69-102)
# Something weird is going on
create PF_uS10_phase6, protein_PF_uS10 and (resi 1-45 or resi 66-102)
create EC_uS11_phase6, protein_EC_S11 and (resi 12-118)
create PF_uS11_phase6, protein_PF_uS11 and (resi 12-124)
create EC_uS12_phase6, protein_EC_S12 and resi 98-123
create PF_uS12_phase6, protein_PF_uS12 and resi 131-147
create EC_uS13_phase6, protein_EC_S13 and (resi 1-92 or resi 114-144)
create PF_uS13_phase6, protein_PF_uS13 and (resi 1-125 or resi 139-148)
create EC_uS15_phase6, protein_EC_S15 and (resi 1-88)
create PF_uS15_phase6, protein_PF_uS15 and (resi 1-88)
create PF_uS17_phase6, protein_PF_uS17 and resi 1-30
create EC_bS18_phase6, protein_EC_bS18 and (resi 19-73)
create EC_bS21_phase6, protein_EC_S21 and (resi 3-26)
create EC_uS19_phase6, protein_EC_S19 and (resi 2-28)
create PF_uS19_phase6, protein_PF_uS19 and (resi 6-61)

create EC_bS20_phase6, protein_EC_S20 and (resi 2-86)
create EC_bS21_phase6, protein_EC_S21 and (resi 3-26)

create PF_eS01_phase6, protein_PF_eS1 and (resi 9-198)
create PF_eS04_phase6, protein_PF_eS4 and (resi 117-243)
create PF_eS06_phase6, protein_PF_eS6 and (resi 1-125)
create PF_eS08_phase6, protein_PF_eS8 and (resi 30-127)
create PF_eS17_phase6, protein_PF_eS17 and (resi 1-67)
create PF_eS19_phase6, protein_PF_eS19 and (resi 1-78 or resi 91-144)
create PF_eS24_phase6, protein_PF_eS24 and (resi 1-99)
create PF_eS31_phase6, protein_PF_eS31 and (resi 1-50)
create PF_eSXX_phase6, protein_PF_SX and (resi 1-57)
   
########################################################
##################################################################

###################### Coloring ############################

# Color EC protein phases
color 0x00A44B, EC*phase3
color 0xF1E312, EC*phase4
color 0xE57224, EC*phase5
color 0xE01E26, EC*phase6

# Color PF protein phases
color brown, PF*phase3
color deeppurple, PF*phase4
color sand, PF*phase5
color hotpink, PF*phase6

# Color 1VY4 protein phases
color density, 1VY4*phase3
color cyan, 1VY4*phase4
color pink, 1VY4*phase5
color deeppurple, 1VY4*phase6

as cartoon
disable all

# Crown View
set_view (\
    -0.337080836,   -0.941271007,    0.019580301,\
    -0.806651175,    0.278023481,   -0.521553814,\
     0.485480040,   -0.191599593,   -0.852993846,\
    -0.000133872,    0.000095785, -660.757202148,\
   -50.262565613,  139.088088989,  143.310424805,\
  -39183.054687500, 40504.445312500,  -20.000000000 )

create LSUPhase1_TT, AES1_H74_89_TT
create LSUPhase2_TT, AES2_H80_TT or AES3_H90_91_TT or AES4_H73_93_TT or AES5_H92_TT
create LSUPhase3_TT, AES4a_H1_TT or AES6_H72_2_3_TT or AES7_H94_97_TT or AES8_H25a_TT or AES9_H33_32_26_26a_61_TT or AES10_H34_35_TT or AES11_H64_67_TT or AES12_H65_66_TT or AES13_H35a_TT or AES14_H36_39_TT or AES15_H68_70_TT
create LSUPhase4_TT, AES16_H37_TT or AES6a_H72_2_3_TT or AES17_H25_TT or AES18_H46_TT or AES19_H23_TT or AES20_H27_TT or AES21_H11_TT or AES22_H40_TT or AES23_H41_45_TT or AES24_H13_14_TT or AES25_H41a_TT or AES26_H21_22_TT or AES27_H81_88_TT or AES28_H47_60_TT
create LSUPhase5_TT, AES29_H69_TT or AES30_H95_96_TT or AES31_H49_50_TT or AES15a_H68_TT or AES32_H42_TT or AES33_H49a_TT or AES34_H38_TT or AES35_H51_52_TT or AES32a_NotAllResolved_H42_TT or AES12a_H65_66_TT or AES36_H82_83_84_TT or AES10a_H34_35_TT or AES37_H62_TT or AES38_NotResolved_H43_TT or AES39_H76_79_TT or 5s_TT
create LSUPhase6_TT, AES40_H86_87_TT or AES41_H5_6_10_TT or AES42_H12_TT or AES43_H78_TT or AES44_H76a_TT or AES45_H28_TT or AES46_H85_TT or AES47_H53_54_TT or AES48_H24_TT or AES49_H55_TT or AES50_98-100_TT or AES51_H56_57_TT or AES52_H18_20_TT or AES53_H8_9_TT or AES54_H29_31_TT or AES55_H19_TT or AES56_H58_59_TT or AES57_H63_TT or AES58_H101_TT or AES59_H7_TT
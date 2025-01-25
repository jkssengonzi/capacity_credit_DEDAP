% avg_vs_blend_plot all regions

%---
NW_pen_level = readtable('PLT_28_bl_1_NW_Penetration_levels_df.csv');
NW_credits = readtable('PLT_28_bl_1_NW_Cap_credits_df.csv'); 
NW_cap_level = readtable('PLT_28_bl_1 NW Capacity_levels_df.csv');
NW_pen_mat = table2array(NW_pen_level);
NW_cred_mat = table2array(NW_credits);
NW_cap_mat_initial = table2array(NW_cap_level);
NW_cap_mat = NW_cap_mat_initial(2:101,:); % 100 increments for NW

NW_on_wind_pen = NW_pen_mat(:,11);
NW_PV_pen = NW_pen_mat(:,1);
NW_avg_pen = mean([NW_on_wind_pen NW_PV_pen],2);
NW_bl_50_50_pen = NW_pen_mat(:,6);

NW_on_wind_CC = NW_cred_mat(:,11);
NW_PV_CC = NW_cred_mat(:,1);
NW_avg_CC = mean([NW_on_wind_CC NW_PV_CC],2);
NW_bl_50_50_CC = NW_cred_mat(:,6);

NW_on_wind_cap = NW_cap_mat(:,11);
NW_PV_cap = NW_cap_mat(:,1);
NW_avg_cap = mean([NW_on_wind_cap NW_PV_cap],2);
NW_bl_50_50_cap = NW_cap_mat(:,6);

NW_diff_abs(:,1) = NW_cred_mat(:,1) - NW_avg_CC;
NW_diff_abs(:,2) = NW_cred_mat(:,2) - NW_avg_CC;
NW_diff_abs(:,3) = NW_cred_mat(:,3) - NW_avg_CC;
NW_diff_abs(:,4) = NW_cred_mat(:,4) - NW_avg_CC;
NW_diff_abs(:,5) = NW_cred_mat(:,5) - NW_avg_CC;
NW_diff_abs(:,6) = NW_cred_mat(:,6) - NW_avg_CC;
NW_diff_abs(:,7) = NW_cred_mat(:,7) - NW_avg_CC;
NW_diff_abs(:,8) = NW_cred_mat(:,8) - NW_avg_CC;
NW_diff_abs(:,9) = NW_cred_mat(:,9) - NW_avg_CC;
NW_diff_abs(:,10) = NW_cred_mat(:,10) - NW_avg_CC;
NW_diff_abs(:,11) = NW_cred_mat(:,11) - NW_avg_CC;

NW_diff_rel(:,1) = NW_diff_abs(:,1)./NW_avg_CC;
NW_diff_rel(:,2) = NW_diff_abs(:,2)./NW_avg_CC;
NW_diff_rel(:,3) = NW_diff_abs(:,3)./NW_avg_CC;
NW_diff_rel(:,4) = NW_diff_abs(:,4)./NW_avg_CC;
NW_diff_rel(:,5) = NW_diff_abs(:,5)./NW_avg_CC;
NW_diff_rel(:,6) = NW_diff_abs(:,6)./NW_avg_CC;
NW_diff_rel(:,7) = NW_diff_abs(:,7)./NW_avg_CC;
NW_diff_rel(:,8) = NW_diff_abs(:,8)./NW_avg_CC;
NW_diff_rel(:,9) = NW_diff_abs(:,9)./NW_avg_CC;
NW_diff_rel(:,10) = NW_diff_abs(:,10)./NW_avg_CC;
NW_diff_rel(:,11) = NW_diff_abs(:,11)./NW_avg_CC;

%---
N_CEN_pen_level = readtable('PLT_28_bl_1_N_CEN_Penetration_levels_df.csv');
N_CEN_credits = readtable('PLT_28_bl_1_N_CEN_Cap_credits_df.csv'); 
N_CEN_cap_level = readtable('PLT_28_bl_1 N_CEN Capacity_levels_df.csv');
N_CEN_pen_mat = table2array(N_CEN_pen_level);
N_CEN_cred_mat = table2array(N_CEN_credits);
N_CEN_cap_mat_initial = table2array(N_CEN_cap_level);
N_CEN_cap_mat = N_CEN_cap_mat_initial(2:101,:); % 100 increments for N_CEN

N_CEN_on_wind_pen = N_CEN_pen_mat(:,11);
N_CEN_PV_pen = N_CEN_pen_mat(:,1);
N_CEN_avg_pen = mean([N_CEN_on_wind_pen N_CEN_PV_pen],2);
N_CEN_bl_50_50_pen = N_CEN_pen_mat(:,6);

N_CEN_on_wind_CC = N_CEN_cred_mat(:,11);
N_CEN_PV_CC = N_CEN_cred_mat(:,1);
N_CEN_avg_CC = mean([N_CEN_on_wind_CC N_CEN_PV_CC],2);
N_CEN_bl_50_50_CC = N_CEN_cred_mat(:,6);

N_CEN_on_wind_cap = N_CEN_cap_mat(:,11);
N_CEN_PV_cap = N_CEN_cap_mat(:,1);
N_CEN_avg_cap = mean([N_CEN_on_wind_cap N_CEN_PV_cap],2);
N_CEN_bl_50_50_cap = N_CEN_cap_mat(:,6);

N_CEN_diff_abs(:,1) = N_CEN_cred_mat(:,1) - N_CEN_avg_CC;
N_CEN_diff_abs(:,2) = N_CEN_cred_mat(:,2) - N_CEN_avg_CC;
N_CEN_diff_abs(:,3) = N_CEN_cred_mat(:,3) - N_CEN_avg_CC;
N_CEN_diff_abs(:,4) = N_CEN_cred_mat(:,4) - N_CEN_avg_CC;
N_CEN_diff_abs(:,5) = N_CEN_cred_mat(:,5) - N_CEN_avg_CC;
N_CEN_diff_abs(:,6) = N_CEN_cred_mat(:,6) - N_CEN_avg_CC;
N_CEN_diff_abs(:,7) = N_CEN_cred_mat(:,7) - N_CEN_avg_CC;
N_CEN_diff_abs(:,8) = N_CEN_cred_mat(:,8) - N_CEN_avg_CC;
N_CEN_diff_abs(:,9) = N_CEN_cred_mat(:,9) - N_CEN_avg_CC;
N_CEN_diff_abs(:,10) = N_CEN_cred_mat(:,10) - N_CEN_avg_CC;
N_CEN_diff_abs(:,11) = N_CEN_cred_mat(:,11) - N_CEN_avg_CC;

N_CEN_diff_rel(:,1) = N_CEN_diff_abs(:,1)./N_CEN_avg_CC;
N_CEN_diff_rel(:,2) = N_CEN_diff_abs(:,2)./N_CEN_avg_CC;
N_CEN_diff_rel(:,3) = N_CEN_diff_abs(:,3)./N_CEN_avg_CC;
N_CEN_diff_rel(:,4) = N_CEN_diff_abs(:,4)./N_CEN_avg_CC;
N_CEN_diff_rel(:,5) = N_CEN_diff_abs(:,5)./N_CEN_avg_CC;
N_CEN_diff_rel(:,6) = N_CEN_diff_abs(:,6)./N_CEN_avg_CC;
N_CEN_diff_rel(:,7) = N_CEN_diff_abs(:,7)./N_CEN_avg_CC;
N_CEN_diff_rel(:,8) = N_CEN_diff_abs(:,8)./N_CEN_avg_CC;
N_CEN_diff_rel(:,9) = N_CEN_diff_abs(:,9)./N_CEN_avg_CC;
N_CEN_diff_rel(:,10) = N_CEN_diff_abs(:,10)./N_CEN_avg_CC;
N_CEN_diff_rel(:,11) = N_CEN_diff_abs(:,11)./N_CEN_avg_CC;

%---
NE_pen_level = readtable('PLT_28_bl_1_NE_Penetration_levels_df.csv');
NE_credits = readtable('PLT_28_bl_1_NE_Cap_credits_df.csv'); 
NE_cap_level = readtable('PLT_28_bl_1 NE Capacity_levels_df.csv');
NE_pen_mat = table2array(NE_pen_level);
NE_cred_mat = table2array(NE_credits);
NE_cap_mat_initial = table2array(NE_cap_level);
NE_cap_mat = NE_cap_mat_initial(2:101,:); % 100 increments for NE

NE_on_wind_pen = NE_pen_mat(:,11);
NE_PV_pen = NE_pen_mat(:,1);
NE_avg_pen = mean([NE_on_wind_pen NE_PV_pen],2);
NE_bl_50_50_pen = NE_pen_mat(:,6);

NE_on_wind_CC = NE_cred_mat(:,11);
NE_PV_CC = NE_cred_mat(:,1);
NE_avg_CC = mean([NE_on_wind_CC NE_PV_CC],2);
NE_bl_50_50_CC = NE_cred_mat(:,6);

NE_on_wind_cap = NE_cap_mat(:,11);
NE_PV_cap = NE_cap_mat(:,1);
NE_avg_cap = mean([NE_on_wind_cap NE_PV_cap],2);
NE_bl_50_50_cap = NE_cap_mat(:,6);

NE_diff_abs(:,1) = NE_cred_mat(:,1) - NE_avg_CC;
NE_diff_abs(:,2) = NE_cred_mat(:,2) - NE_avg_CC;
NE_diff_abs(:,3) = NE_cred_mat(:,3) - NE_avg_CC;
NE_diff_abs(:,4) = NE_cred_mat(:,4) - NE_avg_CC;
NE_diff_abs(:,5) = NE_cred_mat(:,5) - NE_avg_CC;
NE_diff_abs(:,6) = NE_cred_mat(:,6) - NE_avg_CC;
NE_diff_abs(:,7) = NE_cred_mat(:,7) - NE_avg_CC;
NE_diff_abs(:,8) = NE_cred_mat(:,8) - NE_avg_CC;
NE_diff_abs(:,9) = NE_cred_mat(:,9) - NE_avg_CC;
NE_diff_abs(:,10) = NE_cred_mat(:,10) - NE_avg_CC;
NE_diff_abs(:,11) = NE_cred_mat(:,11) - NE_avg_CC;

NE_diff_rel(:,1) = NE_diff_abs(:,1)./NE_avg_CC;
NE_diff_rel(:,2) = NE_diff_abs(:,2)./NE_avg_CC;
NE_diff_rel(:,3) = NE_diff_abs(:,3)./NE_avg_CC;
NE_diff_rel(:,4) = NE_diff_abs(:,4)./NE_avg_CC;
NE_diff_rel(:,5) = NE_diff_abs(:,5)./NE_avg_CC;
NE_diff_rel(:,6) = NE_diff_abs(:,6)./NE_avg_CC;
NE_diff_rel(:,7) = NE_diff_abs(:,7)./NE_avg_CC;
NE_diff_rel(:,8) = NE_diff_abs(:,8)./NE_avg_CC;
NE_diff_rel(:,9) = NE_diff_abs(:,9)./NE_avg_CC;
NE_diff_rel(:,10) = NE_diff_abs(:,10)./NE_avg_CC;
NE_diff_rel(:,11) = NE_diff_abs(:,11)./NE_avg_CC;

%----
CA_pen_level = readtable('PLT_28_bl_1_CA_Penetration_levels_df.csv');
CA_credits = readtable('PLT_28_bl_1_CA_Cap_credits_df.csv'); 
CA_cap_level = readtable('PLT_28_bl_1 CA Capacity_levels_df.csv');
CA_pen_mat = table2array(CA_pen_level);
CA_cred_mat = table2array(CA_credits);
CA_cap_mat_initial = table2array(CA_cap_level);
CA_cap_mat = CA_cap_mat_initial(2:101,:); % 100 increments for CA

CA_on_wind_pen = CA_pen_mat(:,11);
CA_PV_pen = CA_pen_mat(:,1);
CA_avg_pen = mean([CA_on_wind_pen CA_PV_pen],2);
CA_bl_50_50_pen = CA_pen_mat(:,6);

CA_on_wind_CC = CA_cred_mat(:,11);
CA_PV_CC = CA_cred_mat(:,1);
CA_avg_CC = mean([CA_on_wind_CC CA_PV_CC],2);
CA_bl_50_50_CC = CA_cred_mat(:,6);

CA_on_wind_cap = CA_cap_mat(:,11);
CA_PV_cap = CA_cap_mat(:,1);
CA_avg_cap = mean([CA_on_wind_cap CA_PV_cap],2);
CA_bl_50_50_cap = CA_cap_mat(:,6);

CA_diff_abs(:,1) = CA_cred_mat(:,1) - CA_avg_CC;
CA_diff_abs(:,2) = CA_cred_mat(:,2) - CA_avg_CC;
CA_diff_abs(:,3) = CA_cred_mat(:,3) - CA_avg_CC;
CA_diff_abs(:,4) = CA_cred_mat(:,4) - CA_avg_CC;
CA_diff_abs(:,5) = CA_cred_mat(:,5) - CA_avg_CC;
CA_diff_abs(:,6) = CA_cred_mat(:,6) - CA_avg_CC;
CA_diff_abs(:,7) = CA_cred_mat(:,7) - CA_avg_CC;
CA_diff_abs(:,8) = CA_cred_mat(:,8) - CA_avg_CC;
CA_diff_abs(:,9) = CA_cred_mat(:,9) - CA_avg_CC;
CA_diff_abs(:,10) = CA_cred_mat(:,10) - CA_avg_CC;
CA_diff_abs(:,11) = CA_cred_mat(:,11) - CA_avg_CC;

CA_diff_rel(:,1) = CA_diff_abs(:,1)./CA_avg_CC;
CA_diff_rel(:,2) = CA_diff_abs(:,2)./CA_avg_CC;
CA_diff_rel(:,3) = CA_diff_abs(:,3)./CA_avg_CC;
CA_diff_rel(:,4) = CA_diff_abs(:,4)./CA_avg_CC;
CA_diff_rel(:,5) = CA_diff_abs(:,5)./CA_avg_CC;
CA_diff_rel(:,6) = CA_diff_abs(:,6)./CA_avg_CC;
CA_diff_rel(:,7) = CA_diff_abs(:,7)./CA_avg_CC;
CA_diff_rel(:,8) = CA_diff_abs(:,8)./CA_avg_CC;
CA_diff_rel(:,9) = CA_diff_abs(:,9)./CA_avg_CC;
CA_diff_rel(:,10) = CA_diff_abs(:,10)./CA_avg_CC;
CA_diff_rel(:,11) = CA_diff_abs(:,11)./CA_avg_CC;

%---
CEN_pen_level = readtable('PLT_28_bl_1_CEN_Penetration_levels_df.csv');
CEN_credits = readtable('PLT_28_bl_1_CEN_Cap_credits_df.csv'); 
CEN_cap_level = readtable('PLT_28_bl_1 CEN Capacity_levels_df.csv');
CEN_pen_mat = table2array(CEN_pen_level);
CEN_cred_mat = table2array(CEN_credits);
CEN_cap_mat_initial = table2array(CEN_cap_level);
CEN_cap_mat = CEN_cap_mat_initial(2:101,:); % 100 increments for CEN

CEN_on_wind_pen = CEN_pen_mat(:,11);
CEN_PV_pen = CEN_pen_mat(:,1);
CEN_avg_pen = mean([CEN_on_wind_pen CEN_PV_pen],2);
CEN_bl_50_50_pen = CEN_pen_mat(:,6);

CEN_on_wind_CC = CEN_cred_mat(:,11);
CEN_PV_CC = CEN_cred_mat(:,1);
CEN_avg_CC = mean([CEN_on_wind_CC CEN_PV_CC],2);
CEN_bl_50_50_CC = CEN_cred_mat(:,6);

CEN_on_wind_cap = CEN_cap_mat(:,11);
CEN_PV_cap = CEN_cap_mat(:,1);
CEN_avg_cap = mean([CEN_on_wind_cap CEN_PV_cap],2);
CEN_bl_50_50_cap = CEN_cap_mat(:,6);

CEN_diff_abs(:,1) = CEN_cred_mat(:,1) - CEN_avg_CC;
CEN_diff_abs(:,2) = CEN_cred_mat(:,2) - CEN_avg_CC;
CEN_diff_abs(:,3) = CEN_cred_mat(:,3) - CEN_avg_CC;
CEN_diff_abs(:,4) = CEN_cred_mat(:,4) - CEN_avg_CC;
CEN_diff_abs(:,5) = CEN_cred_mat(:,5) - CEN_avg_CC;
CEN_diff_abs(:,6) = CEN_cred_mat(:,6) - CEN_avg_CC;
CEN_diff_abs(:,7) = CEN_cred_mat(:,7) - CEN_avg_CC;
CEN_diff_abs(:,8) = CEN_cred_mat(:,8) - CEN_avg_CC;
CEN_diff_abs(:,9) = CEN_cred_mat(:,9) - CEN_avg_CC;
CEN_diff_abs(:,10) = CEN_cred_mat(:,10) - CEN_avg_CC;
CEN_diff_abs(:,11) = CEN_cred_mat(:,11) - CEN_avg_CC;

CEN_diff_rel(:,1) = CEN_diff_abs(:,1)./CEN_avg_CC;
CEN_diff_rel(:,2) = CEN_diff_abs(:,2)./CEN_avg_CC;
CEN_diff_rel(:,3) = CEN_diff_abs(:,3)./CEN_avg_CC;
CEN_diff_rel(:,4) = CEN_diff_abs(:,4)./CEN_avg_CC;
CEN_diff_rel(:,5) = CEN_diff_abs(:,5)./CEN_avg_CC;
CEN_diff_rel(:,6) = CEN_diff_abs(:,6)./CEN_avg_CC;
CEN_diff_rel(:,7) = CEN_diff_abs(:,7)./CEN_avg_CC;
CEN_diff_rel(:,8) = CEN_diff_abs(:,8)./CEN_avg_CC;
CEN_diff_rel(:,9) = CEN_diff_abs(:,9)./CEN_avg_CC;
CEN_diff_rel(:,10) = CEN_diff_abs(:,10)./CEN_avg_CC;
CEN_diff_rel(:,11) = CEN_diff_abs(:,11)./CEN_avg_CC;

%---
MID_AT_pen_level = readtable('PLT_28_bl_1_MID_AT_Penetration_levels_df.csv');
MID_AT_credits = readtable('PLT_28_bl_1_MID_AT_Cap_credits_df.csv'); 
MID_AT_cap_level = readtable('PLT_28_bl_1 MID_AT Capacity_levels_df.csv');
MID_AT_pen_mat = table2array(MID_AT_pen_level);
MID_AT_cred_mat = table2array(MID_AT_credits);
MID_AT_cap_mat_initial = table2array(MID_AT_cap_level);
MID_AT_cap_mat = MID_AT_cap_mat_initial(2:101,:); % 100 increments for MID_AT
MID_AT_cap_mat_ext = MID_AT_cap_mat_initial(2:321,:); % 320 increments for MID_AT

MID_AT_on_wind_pen = MID_AT_pen_mat(:,11);
MID_AT_PV_pen = MID_AT_pen_mat(:,1);
MID_AT_avg_pen = mean([MID_AT_on_wind_pen MID_AT_PV_pen],2);
MID_AT_bl_50_50_pen = MID_AT_pen_mat(:,6);

MID_AT_on_wind_CC = MID_AT_cred_mat(:,11);
MID_AT_PV_CC = MID_AT_cred_mat(:,1);
MID_AT_avg_CC = mean([MID_AT_on_wind_CC MID_AT_PV_CC],2);
MID_AT_bl_50_50_CC = MID_AT_cred_mat(:,6);

MID_AT_on_wind_cap = MID_AT_cap_mat(:,11);
MID_AT_PV_cap = MID_AT_cap_mat(:,1);
MID_AT_avg_cap = mean([MID_AT_on_wind_cap MID_AT_PV_cap],2);
MID_AT_bl_50_50_cap = MID_AT_cap_mat(:,6);

MID_AT_diff_abs(:,1) = MID_AT_cred_mat(:,1) - MID_AT_avg_CC;
MID_AT_diff_abs(:,2) = MID_AT_cred_mat(:,2) - MID_AT_avg_CC;
MID_AT_diff_abs(:,3) = MID_AT_cred_mat(:,3) - MID_AT_avg_CC;
MID_AT_diff_abs(:,4) = MID_AT_cred_mat(:,4) - MID_AT_avg_CC;
MID_AT_diff_abs(:,5) = MID_AT_cred_mat(:,5) - MID_AT_avg_CC;
MID_AT_diff_abs(:,6) = MID_AT_cred_mat(:,6) - MID_AT_avg_CC;
MID_AT_diff_abs(:,7) = MID_AT_cred_mat(:,7) - MID_AT_avg_CC;
MID_AT_diff_abs(:,8) = MID_AT_cred_mat(:,8) - MID_AT_avg_CC;
MID_AT_diff_abs(:,9) = MID_AT_cred_mat(:,9) - MID_AT_avg_CC;
MID_AT_diff_abs(:,10) = MID_AT_cred_mat(:,10) - MID_AT_avg_CC;
MID_AT_diff_abs(:,11) = MID_AT_cred_mat(:,11) - MID_AT_avg_CC;

MID_AT_diff_rel(:,1) = MID_AT_diff_abs(:,1)./MID_AT_avg_CC;
MID_AT_diff_rel(:,2) = MID_AT_diff_abs(:,2)./MID_AT_avg_CC;
MID_AT_diff_rel(:,3) = MID_AT_diff_abs(:,3)./MID_AT_avg_CC;
MID_AT_diff_rel(:,4) = MID_AT_diff_abs(:,4)./MID_AT_avg_CC;
MID_AT_diff_rel(:,5) = MID_AT_diff_abs(:,5)./MID_AT_avg_CC;
MID_AT_diff_rel(:,6) = MID_AT_diff_abs(:,6)./MID_AT_avg_CC;
MID_AT_diff_rel(:,7) = MID_AT_diff_abs(:,7)./MID_AT_avg_CC;
MID_AT_diff_rel(:,8) = MID_AT_diff_abs(:,8)./MID_AT_avg_CC;
MID_AT_diff_rel(:,9) = MID_AT_diff_abs(:,9)./MID_AT_avg_CC;
MID_AT_diff_rel(:,10) = MID_AT_diff_abs(:,10)./MID_AT_avg_CC;
MID_AT_diff_rel(:,11) = MID_AT_diff_abs(:,11)./MID_AT_avg_CC;

%---
SW_pen_level = readtable('PLT_28_bl_1_SW_Penetration_levels_df.csv');
SW_credits = readtable('PLT_28_bl_1_SW_Cap_credits_df.csv'); 
SW_cap_level = readtable('PLT_28_bl_1 SW Capacity_levels_df.csv');
SW_pen_mat = table2array(SW_pen_level);
SW_cred_mat = table2array(SW_credits);
SW_cap_mat_initial = table2array(SW_cap_level);
SW_cap_mat = SW_cap_mat_initial(2:101,:); % 100 increments for SW

SW_on_wind_pen = SW_pen_mat(:,11);
SW_PV_pen = SW_pen_mat(:,1);
SW_avg_pen = mean([SW_on_wind_pen SW_PV_pen],2);
SW_bl_50_50_pen = SW_pen_mat(:,6);

SW_on_wind_CC = SW_cred_mat(:,11);
SW_PV_CC = SW_cred_mat(:,1);
SW_avg_CC = mean([SW_on_wind_CC SW_PV_CC],2);
SW_bl_50_50_CC = SW_cred_mat(:,6);

SW_on_wind_cap = SW_cap_mat(:,11);
SW_PV_cap = SW_cap_mat(:,1);
SW_avg_cap = mean([SW_on_wind_cap SW_PV_cap],2);
SW_bl_50_50_cap = SW_cap_mat(:,6);

SW_diff_abs(:,1) = SW_cred_mat(:,1) - SW_avg_CC;
SW_diff_abs(:,2) = SW_cred_mat(:,2) - SW_avg_CC;
SW_diff_abs(:,3) = SW_cred_mat(:,3) - SW_avg_CC;
SW_diff_abs(:,4) = SW_cred_mat(:,4) - SW_avg_CC;
SW_diff_abs(:,5) = SW_cred_mat(:,5) - SW_avg_CC;
SW_diff_abs(:,6) = SW_cred_mat(:,6) - SW_avg_CC;
SW_diff_abs(:,7) = SW_cred_mat(:,7) - SW_avg_CC;
SW_diff_abs(:,8) = SW_cred_mat(:,8) - SW_avg_CC;
SW_diff_abs(:,9) = SW_cred_mat(:,9) - SW_avg_CC;
SW_diff_abs(:,10) = SW_cred_mat(:,10) - SW_avg_CC;
SW_diff_abs(:,11) = SW_cred_mat(:,11) - SW_avg_CC;

SW_diff_rel(:,1) = SW_diff_abs(:,1)./SW_avg_CC;
SW_diff_rel(:,2) = SW_diff_abs(:,2)./SW_avg_CC;
SW_diff_rel(:,3) = SW_diff_abs(:,3)./SW_avg_CC;
SW_diff_rel(:,4) = SW_diff_abs(:,4)./SW_avg_CC;
SW_diff_rel(:,5) = SW_diff_abs(:,5)./SW_avg_CC;
SW_diff_rel(:,6) = SW_diff_abs(:,6)./SW_avg_CC;
SW_diff_rel(:,7) = SW_diff_abs(:,7)./SW_avg_CC;
SW_diff_rel(:,8) = SW_diff_abs(:,8)./SW_avg_CC;
SW_diff_rel(:,9) = SW_diff_abs(:,9)./SW_avg_CC;
SW_diff_rel(:,10) = SW_diff_abs(:,10)./SW_avg_CC;
SW_diff_rel(:,11) = SW_diff_abs(:,11)./SW_avg_CC;

%---
TX_pen_level = readtable('PLT_28_bl_1_TX_Penetration_levels_df.csv');
TX_credits = readtable('PLT_28_bl_1_TX_Cap_credits_df.csv'); 
TX_cap_level = readtable('PLT_28_bl_1 TX Capacity_levels_df.csv');
TX_pen_mat = table2array(TX_pen_level);
TX_cred_mat = table2array(TX_credits);
TX_cap_mat_initial = table2array(TX_cap_level);
TX_cap_mat = TX_cap_mat_initial(2:101,:); % 100 increments for TX

TX_on_wind_pen = TX_pen_mat(:,11);
TX_PV_pen = TX_pen_mat(:,1);
TX_avg_pen = mean([TX_on_wind_pen TX_PV_pen],2);
TX_bl_50_50_pen = TX_pen_mat(:,6);

TX_on_wind_CC = TX_cred_mat(:,11);
TX_PV_CC = TX_cred_mat(:,1);
TX_avg_CC = mean([TX_on_wind_CC TX_PV_CC],2);
TX_bl_50_50_CC = TX_cred_mat(:,6);

TX_on_wind_cap = TX_cap_mat(:,11);
TX_PV_cap = TX_cap_mat(:,1);
TX_avg_cap = mean([TX_on_wind_cap TX_PV_cap],2);
TX_bl_50_50_cap = TX_cap_mat(:,6);

TX_diff_abs(:,1) = TX_cred_mat(:,1) - TX_avg_CC;
TX_diff_abs(:,2) = TX_cred_mat(:,2) - TX_avg_CC;
TX_diff_abs(:,3) = TX_cred_mat(:,3) - TX_avg_CC;
TX_diff_abs(:,4) = TX_cred_mat(:,4) - TX_avg_CC;
TX_diff_abs(:,5) = TX_cred_mat(:,5) - TX_avg_CC;
TX_diff_abs(:,6) = TX_cred_mat(:,6) - TX_avg_CC;
TX_diff_abs(:,7) = TX_cred_mat(:,7) - TX_avg_CC;
TX_diff_abs(:,8) = TX_cred_mat(:,8) - TX_avg_CC;
TX_diff_abs(:,9) = TX_cred_mat(:,9) - TX_avg_CC;
TX_diff_abs(:,10) = TX_cred_mat(:,10) - TX_avg_CC;
TX_diff_abs(:,11) = TX_cred_mat(:,11) - TX_avg_CC;

TX_diff_rel(:,1) = TX_diff_abs(:,1)./TX_avg_CC;
TX_diff_rel(:,2) = TX_diff_abs(:,2)./TX_avg_CC;
TX_diff_rel(:,3) = TX_diff_abs(:,3)./TX_avg_CC;
TX_diff_rel(:,4) = TX_diff_abs(:,4)./TX_avg_CC;
TX_diff_rel(:,5) = TX_diff_abs(:,5)./TX_avg_CC;
TX_diff_rel(:,6) = TX_diff_abs(:,6)./TX_avg_CC;
TX_diff_rel(:,7) = TX_diff_abs(:,7)./TX_avg_CC;
TX_diff_rel(:,8) = TX_diff_abs(:,8)./TX_avg_CC;
TX_diff_rel(:,9) = TX_diff_abs(:,9)./TX_avg_CC;
TX_diff_rel(:,10) = TX_diff_abs(:,10)./TX_avg_CC;
TX_diff_rel(:,11) = TX_diff_abs(:,11)./TX_avg_CC;

%---
SE_pen_level = readtable('PLT_28_bl_1_SE_Penetration_levels_df.csv');
SE_credits = readtable('PLT_28_bl_1_SE_Cap_credits_df.csv'); 
SE_cap_level = readtable('PLT_28_bl_1 SE Capacity_levels_df.csv');
SE_pen_mat = table2array(SE_pen_level);
SE_cred_mat = table2array(SE_credits);
SE_cap_mat_initial = table2array(SE_cap_level);
SE_cap_mat = SE_cap_mat_initial(2:101,:); % 100 increments for SE
SE_cap_mat_ext = SE_cap_mat_initial(2:501,:); % 320 increments for MID_AT

SE_on_wind_pen = SE_pen_mat(:,11);
SE_PV_pen = SE_pen_mat(:,1);
SE_avg_pen = mean([SE_on_wind_pen SE_PV_pen],2);
SE_bl_50_50_pen = SE_pen_mat(:,6);

SE_on_wind_CC = SE_cred_mat(:,11);
SE_PV_CC = SE_cred_mat(:,1);
SE_avg_CC = mean([SE_on_wind_CC SE_PV_CC],2);
SE_bl_50_50_CC = SE_cred_mat(:,6);

SE_on_wind_cap = SE_cap_mat(:,11);
SE_PV_cap = SE_cap_mat(:,1);
SE_avg_cap = mean([SE_on_wind_cap SE_PV_cap],2);
SE_bl_50_50_cap = SE_cap_mat(:,6);

SE_diff_abs(:,1) = SE_cred_mat(:,1) - SE_avg_CC;
SE_diff_abs(:,2) = SE_cred_mat(:,2) - SE_avg_CC;
SE_diff_abs(:,3) = SE_cred_mat(:,3) - SE_avg_CC;
SE_diff_abs(:,4) = SE_cred_mat(:,4) - SE_avg_CC;
SE_diff_abs(:,5) = SE_cred_mat(:,5) - SE_avg_CC;
SE_diff_abs(:,6) = SE_cred_mat(:,6) - SE_avg_CC;
SE_diff_abs(:,7) = SE_cred_mat(:,7) - SE_avg_CC;
SE_diff_abs(:,8) = SE_cred_mat(:,8) - SE_avg_CC;
SE_diff_abs(:,9) = SE_cred_mat(:,9) - SE_avg_CC;
SE_diff_abs(:,10) = SE_cred_mat(:,10) - SE_avg_CC;
SE_diff_abs(:,11) = SE_cred_mat(:,11) - SE_avg_CC;

SE_diff_rel(:,1) = SE_diff_abs(:,1)./SE_avg_CC;
SE_diff_rel(:,2) = SE_diff_abs(:,2)./SE_avg_CC;
SE_diff_rel(:,3) = SE_diff_abs(:,3)./SE_avg_CC;
SE_diff_rel(:,4) = SE_diff_abs(:,4)./SE_avg_CC;
SE_diff_rel(:,5) = SE_diff_abs(:,5)./SE_avg_CC;
SE_diff_rel(:,6) = SE_diff_abs(:,6)./SE_avg_CC;
SE_diff_rel(:,7) = SE_diff_abs(:,7)./SE_avg_CC;
SE_diff_rel(:,8) = SE_diff_abs(:,8)./SE_avg_CC;
SE_diff_rel(:,9) = SE_diff_abs(:,9)./SE_avg_CC;
SE_diff_rel(:,10) = SE_diff_abs(:,10)./SE_avg_CC;
SE_diff_rel(:,11) = SE_diff_abs(:,11)./SE_avg_CC;

%----------------------------
% Absolute error graph
% Figure parameters
x0=100;y0=-200;width=1350;height=872;
figure('Position', [x0,y0,width,height]);
%figure(1) % panel plot for all regions, penetration level
t = tiledlayout(3,3, 'TileSpacing','tight'); %, 'TileSpacing','tight'

x_lim_val_min = 0;
x_lim_val_max = 105;
y_lim_val_min = -0.4;
y_lim_val_max = 0.45;

y_line_w = 1.5;

%----first row--->
nexttile
e = area(NW_cap_mat(:,8)/1000, NW_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NW_cap_mat(:,6)/1000, NW_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NW_cap_mat(:,4)/1000, NW_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(NW_cap_mat(:,1)/1000, NW_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(NW_cap_mat(:,11)/1000, NW_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(NW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(N_CEN_cap_mat(:,8)/1000, N_CEN_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(N_CEN_cap_mat(:,6)/1000, N_CEN_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(N_CEN_cap_mat(:,4)/1000, N_CEN_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(N_CEN_cap_mat(:,1)/1000, N_CEN_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(N_CEN_cap_mat(:,11)/1000, N_CEN_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(N_CEN_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(NE_cap_mat(:,8)/1000, NE_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NE_cap_mat(:,6)/1000, NE_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NE_cap_mat(:,4)/1000, NE_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(NE_cap_mat(:,1)/1000, NE_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(NE_cap_mat(:,11)/1000, NE_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(NE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','best','FontSize',8)

%----second row---->
nexttile
e = area(CA_cap_mat(:,8)/1000, CA_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(CA_cap_mat(:,6)/1000, CA_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(CA_cap_mat(:,4)/1000, CA_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(CA_cap_mat(:,1)/1000, CA_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(CA_cap_mat(:,11)/1000, CA_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(CA_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(CEN_cap_mat(:,8)/1000, CEN_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(CEN_cap_mat(:,6)/1000, CEN_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(CEN_cap_mat(:,4)/1000, CEN_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(CEN_cap_mat(:,1)/1000, CEN_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(CEN_cap_mat(:,11)/1000, CEN_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(CEN_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

nexttile
%Use MID_AT_cap_mat_ext
e = area(MID_AT_cap_mat_ext(:,8)/1000, MID_AT_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(MID_AT_cap_mat_ext(:,6)/1000, MID_AT_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(MID_AT_cap_mat_ext(:,4)/1000, MID_AT_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(MID_AT_cap_mat_ext(:,1)/1000, MID_AT_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(MID_AT_cap_mat_ext(:,11)/1000, MID_AT_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(MID_AT_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

%----third row ---->
nexttile
e = area(SW_cap_mat(:,8)/1000, SW_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SW_cap_mat(:,6)/1000, SW_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SW_cap_mat(:,4)/1000, SW_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(SW_cap_mat(:,1)/1000, SW_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(SW_cap_mat(:,11)/1000, SW_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(SW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'FontSize',12.5)
grid on

nexttile
e = area(TX_cap_mat(:,8)/1000, TX_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(TX_cap_mat(:,6)/1000, TX_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(TX_cap_mat(:,4)/1000, TX_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(TX_cap_mat(:,1)/1000, TX_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(TX_cap_mat(:,11)/1000, TX_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(TX_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on

nexttile
%Use SE_cap_mat_ext
e = area(SE_cap_mat_ext(:,8)/1000, SE_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SE_cap_mat_ext(:,6)/1000, SE_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SE_cap_mat_ext(:,4)/1000, SE_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(SE_cap_mat_ext(:,1)/1000, SE_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(SE_cap_mat_ext(:,11)/1000, SE_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(SE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on
%{
title(t,'Difference between WND-PV Avg and Blend mixes, All Regions', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Capacity Credit Points', 'FontSize', 25)
%}
title(t,'Blend Mix Absolute Error with respect to WND-PV CC Avg, All Regions', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Capacity Credit Absolute Error', 'FontSize', 25)



%----------------------------
% Relative error graph
% Figure parameters
x0=100;y0=-200;width=1350;height=872;
figure('Position', [x0,y0,width,height]);
%figure(1) % panel plot for all regions, penetration level
t = tiledlayout(3,3, 'TileSpacing','tight'); %, 'TileSpacing','tight'

x_lim_val_min = 0;
x_lim_val_max = 105;
y_lim_val_min = -200;
y_lim_val_max = 900;

y_line_w = 1.5;

%----first row--->
nexttile
e = area(NW_cap_mat(:,8)/1000, NW_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NW_cap_mat(:,6)/1000, NW_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NW_cap_mat(:,4)/1000, NW_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(NW_cap_mat(:,1)/1000, NW_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(NW_cap_mat(:,11)/1000, NW_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(NW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(N_CEN_cap_mat(:,8)/1000, N_CEN_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(N_CEN_cap_mat(:,6)/1000, N_CEN_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(N_CEN_cap_mat(:,4)/1000, N_CEN_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(N_CEN_cap_mat(:,1)/1000, N_CEN_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(N_CEN_cap_mat(:,11)/1000, N_CEN_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(N_CEN_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(NE_cap_mat(:,8)/1000, NE_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NE_cap_mat(:,6)/1000, NE_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NE_cap_mat(:,4)/1000, NE_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(NE_cap_mat(:,1)/1000, NE_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(NE_cap_mat(:,11)/1000, NE_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(NE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','northeast','FontSize',8)

%----second row---->
nexttile
e = area(CA_cap_mat(:,8)/1000, CA_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(CA_cap_mat(:,6)/1000, CA_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(CA_cap_mat(:,4)/1000, CA_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(CA_cap_mat(:,1)/1000, CA_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(CA_cap_mat(:,11)/1000, CA_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(CA_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(CEN_cap_mat(:,8)/1000, CEN_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(CEN_cap_mat(:,6)/1000, CEN_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(CEN_cap_mat(:,4)/1000, CEN_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(CEN_cap_mat(:,1)/1000, CEN_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(CEN_cap_mat(:,11)/1000, CEN_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(CEN_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(MID_AT_cap_mat_ext(:,8)/1000, MID_AT_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(MID_AT_cap_mat_ext(:,6)/1000, MID_AT_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(MID_AT_cap_mat_ext(:,4)/1000, MID_AT_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(MID_AT_cap_mat_ext(:,1)/1000, MID_AT_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(MID_AT_cap_mat_ext(:,11)/1000, MID_AT_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(MID_AT_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'xticklabel', [],'yticklabel', [],'FontSize',12.5)
grid on

%----third row ---->
nexttile
e = area(SW_cap_mat(:,8)/1000, SW_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SW_cap_mat(:,6)/1000, SW_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SW_cap_mat(:,4)/1000, SW_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(SW_cap_mat(:,1)/1000, SW_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(SW_cap_mat(:,11)/1000, SW_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(SW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'FontSize',12.5)
grid on

nexttile
e = area(TX_cap_mat(:,8)/1000, TX_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(TX_cap_mat(:,6)/1000, TX_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(TX_cap_mat(:,4)/1000, TX_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(TX_cap_mat(:,1)/1000, TX_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(TX_cap_mat(:,11)/1000, TX_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(TX_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on

nexttile
e = area(SE_cap_mat_ext(:,8)/1000, SE_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SE_cap_mat_ext(:,6)/1000, SE_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SE_cap_mat_ext(:,4)/1000, SE_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(SE_cap_mat_ext(:,1)/1000, SE_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(SE_cap_mat_ext(:,11)/1000, SE_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',y_line_w)
xline(min(SE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([x_lim_val_min x_lim_val_max])
ylim([y_lim_val_min y_lim_val_max])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on

title(t,'Blend Mix Relative Error with respect to WND-PV CC Avg, All Regions', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Capacity Credit Relative Error (%)', 'FontSize', 25)

%{
%}
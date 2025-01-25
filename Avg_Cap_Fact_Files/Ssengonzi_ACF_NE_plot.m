% Average capacity factor panel plots for top 1hr to top 75 hrs

x_cap = 1000:1000:70000;
for d = 1

%------- Top 1 hours All Regions ----------------------
NE_1 = readtable('NE Top 1 Hrs.csv');
NE_1_mat = table2array(NE_1);

NE_on_wind_1 = NE_1_mat(:,1:35);
NE_PV_1 = NE_1_mat(:,36:70);
NE_off_wind_1 = NE_1_mat(:,71);
%-----------
CA_1 = readtable('CA Top 1 Hrs.csv');
CA_1_mat = table2array(CA_1);

CA_on_wind_1 = CA_1_mat(:,1:5);
CA_PV_1 = CA_1_mat(:,6:10);
CA_off_wind_1 = CA_1_mat(:,11);
%------------
NW_1 = readtable('NW Top 1 Hrs.csv');
NW_1_mat = table2array(NW_1);

NW_on_wind_1 = NW_1_mat(:,1:25);
NW_PV_1 = NW_1_mat(:,26:50);
NW_off_wind_1 = NW_1_mat(:,51);
%-----------
CEN_1 = readtable('CEN Top 1 Hrs.csv');
CEN_1_mat = table2array(CEN_1);

CEN_on_wind_1 = CEN_1_mat(:,1:35);
CEN_PV_1 = CEN_1_mat(:,36:70);
%-----------
MID_AT_1 = readtable('MID_AT Top 1 Hrs.csv');
MID_AT_1_mat = table2array(MID_AT_1);

MID_AT_on_wind_1 = MID_AT_1_mat(:,1:35);
MID_AT_PV_1 = MID_AT_1_mat(:,36:70);
%-----------
N_CEN_1 = readtable('N_CEN Top 1 Hrs.csv');
N_CEN_1_mat = table2array(N_CEN_1);

N_CEN_on_wind_1 = N_CEN_1_mat(:,1:35);
N_CEN_PV_1 = N_CEN_1_mat(:,36:70);
%-----------
SE_1 = readtable('SE Top 1 Hrs.csv');
SE_1_mat = table2array(SE_1);

SE_on_wind_1 = SE_1_mat(:,1:40);
SE_PV_1 = SE_1_mat(:,41:80);
%-----------
SW_1 = readtable('SW Top 1 Hrs.csv');
SW_1_mat = table2array(SW_1);

SW_on_wind_1 = SW_1_mat(:,1:25);
SW_PV_1 = SW_1_mat(:,26:50);
%-----------
TX_1 = readtable('TX Top 1 Hrs.csv');
TX_1_mat = table2array(TX_1);

TX_on_wind_1 = TX_1_mat(:,1:5);
TX_PV_1 = TX_1_mat(:,6:10);

%------- Top 5 hours All Regions ----------------------
NE_5 = readtable('NE Top 5 Hrs.csv');
NE_5_mat = table2array(NE_5);

NE_on_wind_5 = NE_5_mat(:,1:35);
NE_PV_5 = NE_5_mat(:,36:70);
NE_off_wind_5 = NE_5_mat(:,71);
%-----------
CA_5 = readtable('CA Top 5 Hrs.csv');
CA_5_mat = table2array(CA_5);

CA_on_wind_5 = CA_5_mat(:,1:5);
CA_PV_5 = CA_5_mat(:,6:10);
CA_off_wind_5 = CA_5_mat(:,11);
%------------
NW_5 = readtable('NW Top 5 Hrs.csv');
NW_5_mat = table2array(NW_5);

NW_on_wind_5 = NW_5_mat(:,1:25);
NW_PV_5 = NW_5_mat(:,26:50);
NW_off_wind_5 = NW_5_mat(:,51);
%-----------
CEN_5 = readtable('CEN Top 5 Hrs.csv');
CEN_5_mat = table2array(CEN_5);

CEN_on_wind_5 = CEN_5_mat(:,1:35);
CEN_PV_5 = CEN_5_mat(:,36:70);
%-----------
MID_AT_5 = readtable('MID_AT Top 5 Hrs.csv');
MID_AT_5_mat = table2array(MID_AT_5);

MID_AT_on_wind_5 = MID_AT_5_mat(:,1:35);
MID_AT_PV_5 = MID_AT_5_mat(:,36:70);
%-----------
N_CEN_5 = readtable('N_CEN Top 5 Hrs.csv');
N_CEN_5_mat = table2array(N_CEN_5);

N_CEN_on_wind_5 = N_CEN_5_mat(:,1:35);
N_CEN_PV_5 = N_CEN_5_mat(:,36:70);
%-----------
SE_5 = readtable('SE Top 5 Hrs.csv');
SE_5_mat = table2array(SE_5);

SE_on_wind_5 = SE_5_mat(:,1:40);
SE_PV_5 = SE_5_mat(:,41:80);
%-----------
SW_5 = readtable('SW Top 5 Hrs.csv');
SW_5_mat = table2array(SW_5);

SW_on_wind_5 = SW_5_mat(:,1:25);
SW_PV_5 = SW_5_mat(:,26:50);
%-----------
TX_5 = readtable('TX Top 5 Hrs.csv');
TX_5_mat = table2array(TX_5);

TX_on_wind_5 = TX_5_mat(:,1:5);
TX_PV_5 = TX_5_mat(:,6:10);

%------- Top 10 hours All Regions ----------------------
NE_10 = readtable('NE Top 10 Hrs.csv');
NE_10_mat = table2array(NE_10);

NE_on_wind_10 = NE_10_mat(:,1:35);
NE_PV_10 = NE_10_mat(:,36:70);
NE_off_wind_10 = NE_10_mat(:,71);
%-----------
CA_10 = readtable('CA Top 10 Hrs.csv');
CA_10_mat = table2array(CA_10);

CA_on_wind_10 = CA_10_mat(:,1:5);
CA_PV_10 = CA_10_mat(:,6:10);
CA_off_wind_10 = CA_10_mat(:,11);
%------------
NW_10 = readtable('NW Top 10 Hrs.csv');
NW_10_mat = table2array(NW_10);

NW_on_wind_10 = NW_10_mat(:,1:25);
NW_PV_10 = NW_10_mat(:,26:50);
NW_off_wind_10 = NW_10_mat(:,51);
%-----------
CEN_10 = readtable('CEN Top 10 Hrs.csv');
CEN_10_mat = table2array(CEN_10);

CEN_on_wind_10 = CEN_10_mat(:,1:35);
CEN_PV_10 = CEN_10_mat(:,36:70);
%-----------
MID_AT_10 = readtable('MID_AT Top 10 Hrs.csv');
MID_AT_10_mat = table2array(MID_AT_10);

MID_AT_on_wind_10 = MID_AT_10_mat(:,1:35);
MID_AT_PV_10 = MID_AT_10_mat(:,36:70);
%-----------
N_CEN_10 = readtable('N_CEN Top 10 Hrs.csv');
N_CEN_10_mat = table2array(N_CEN_10);

N_CEN_on_wind_10 = N_CEN_10_mat(:,1:35);
N_CEN_PV_10 = N_CEN_10_mat(:,36:70);
%-----------
SE_10 = readtable('SE Top 10 Hrs.csv');
SE_10_mat = table2array(SE_10);

SE_on_wind_10 = SE_10_mat(:,1:40);
SE_PV_10 = SE_10_mat(:,41:80);
%-----------
SW_10 = readtable('SW Top 10 Hrs.csv');
SW_10_mat = table2array(SW_10);

SW_on_wind_10 = SW_10_mat(:,1:25);
SW_PV_10 = SW_10_mat(:,26:50);
%-----------
TX_10 = readtable('TX Top 10 Hrs.csv');
TX_10_mat = table2array(TX_10);

TX_on_wind_10 = TX_10_mat(:,1:5);
TX_PV_10 = TX_10_mat(:,6:10);

%------- Top 15 hours All Regions ----------------------
NE_15 = readtable('NE Top 15 Hrs.csv');
NE_15_mat = table2array(NE_15);

NE_on_wind_15 = NE_15_mat(:,1:35);
NE_PV_15 = NE_15_mat(:,36:70);
NE_off_wind_15 = NE_15_mat(:,71);
%-----------
CA_15 = readtable('CA Top 15 Hrs.csv');
CA_15_mat = table2array(CA_15);

CA_on_wind_15 = CA_15_mat(:,1:5);
CA_PV_15 = CA_15_mat(:,6:10);
CA_off_wind_15 = CA_15_mat(:,11);
%------------
NW_15 = readtable('NW Top 15 Hrs.csv');
NW_15_mat = table2array(NW_15);

NW_on_wind_15 = NW_15_mat(:,1:25);
NW_PV_15 = NW_15_mat(:,26:50);
NW_off_wind_15 = NW_15_mat(:,51);
%-----------
CEN_15 = readtable('CEN Top 15 Hrs.csv');
CEN_15_mat = table2array(CEN_15);

CEN_on_wind_15 = CEN_15_mat(:,1:35);
CEN_PV_15 = CEN_15_mat(:,36:70);
%-----------
MID_AT_15 = readtable('MID_AT Top 15 Hrs.csv');
MID_AT_15_mat = table2array(MID_AT_15);

MID_AT_on_wind_15 = MID_AT_15_mat(:,1:35);
MID_AT_PV_15 = MID_AT_15_mat(:,36:70);
%-----------
N_CEN_15 = readtable('N_CEN Top 15 Hrs.csv');
N_CEN_15_mat = table2array(N_CEN_15);

N_CEN_on_wind_15 = N_CEN_15_mat(:,1:35);
N_CEN_PV_15 = N_CEN_15_mat(:,36:70);
%-----------
SE_15 = readtable('SE Top 15 Hrs.csv');
SE_15_mat = table2array(SE_15);

SE_on_wind_15 = SE_15_mat(:,1:40);
SE_PV_15 = SE_15_mat(:,41:80);
%-----------
SW_15 = readtable('SW Top 15 Hrs.csv');
SW_15_mat = table2array(SW_15);

SW_on_wind_15 = SW_15_mat(:,1:25);
SW_PV_15 = SW_15_mat(:,26:50);
%-----------
TX_15 = readtable('TX Top 15 Hrs.csv');
TX_15_mat = table2array(TX_15);

TX_on_wind_15 = TX_15_mat(:,1:5);
TX_PV_15 = TX_15_mat(:,6:10);

%------- Top 20 hours All Regions ----------------------
NE_20 = readtable('NE Top 20 Hrs.csv');
NE_20_mat = table2array(NE_20);

NE_on_wind_20 = NE_20_mat(:,1:35);
NE_PV_20 = NE_20_mat(:,36:70);
NE_off_wind_20 = NE_20_mat(:,71);
%-----------
CA_20 = readtable('CA Top 20 Hrs.csv');
CA_20_mat = table2array(CA_20);

CA_on_wind_20 = CA_20_mat(:,1:5);
CA_PV_20 = CA_20_mat(:,6:10);
CA_off_wind_20 = CA_20_mat(:,11);
%------------
NW_20 = readtable('NW Top 20 Hrs.csv');
NW_20_mat = table2array(NW_20);

NW_on_wind_20 = NW_20_mat(:,1:25);
NW_PV_20 = NW_20_mat(:,26:50);
NW_off_wind_20 = NW_20_mat(:,51);
%-----------
CEN_20 = readtable('CEN Top 20 Hrs.csv');
CEN_20_mat = table2array(CEN_20);

CEN_on_wind_20 = CEN_20_mat(:,1:35);
CEN_PV_20 = CEN_20_mat(:,36:70);
%-----------
MID_AT_20 = readtable('MID_AT Top 20 Hrs.csv');
MID_AT_20_mat = table2array(MID_AT_20);

MID_AT_on_wind_20 = MID_AT_20_mat(:,1:35);
MID_AT_PV_20 = MID_AT_20_mat(:,36:70);
%-----------
N_CEN_20 = readtable('N_CEN Top 20 Hrs.csv');
N_CEN_20_mat = table2array(N_CEN_20);

N_CEN_on_wind_20 = N_CEN_20_mat(:,1:35);
N_CEN_PV_20 = N_CEN_20_mat(:,36:70);
%-----------
SE_20 = readtable('SE Top 20 Hrs.csv');
SE_20_mat = table2array(SE_20);

SE_on_wind_20 = SE_20_mat(:,1:40);
SE_PV_20 = SE_20_mat(:,41:80);
%-----------
SW_20 = readtable('SW Top 20 Hrs.csv');
SW_20_mat = table2array(SW_20);

SW_on_wind_20 = SW_20_mat(:,1:25);
SW_PV_20 = SW_20_mat(:,26:50);
%-----------
TX_20 = readtable('TX Top 20 Hrs.csv');
TX_20_mat = table2array(TX_20);

TX_on_wind_20 = TX_20_mat(:,1:5);
TX_PV_20 = TX_20_mat(:,6:10);

%------- Top 25 hours All Regions ----------------------
NE_25 = readtable('NE Top 25 Hrs.csv');
NE_25_mat = table2array(NE_25);

NE_on_wind_25 = NE_25_mat(:,1:35);
NE_PV_25 = NE_25_mat(:,36:70);
NE_off_wind_25 = NE_25_mat(:,71);
%-----------
CA_25 = readtable('CA Top 25 Hrs.csv');
CA_25_mat = table2array(CA_25);

CA_on_wind_25 = CA_25_mat(:,1:5);
CA_PV_25 = CA_25_mat(:,6:10);
CA_off_wind_25 = CA_25_mat(:,11);
%------------
NW_25 = readtable('NW Top 25 Hrs.csv');
NW_25_mat = table2array(NW_25);

NW_on_wind_25 = NW_25_mat(:,1:25);
NW_PV_25 = NW_25_mat(:,26:50);
NW_off_wind_25 = NW_25_mat(:,51);
%-----------
CEN_25 = readtable('CEN Top 25 Hrs.csv');
CEN_25_mat = table2array(CEN_25);

CEN_on_wind_25 = CEN_25_mat(:,1:35);
CEN_PV_25 = CEN_25_mat(:,36:70);
%-----------
MID_AT_25 = readtable('MID_AT Top 25 Hrs.csv');
MID_AT_25_mat = table2array(MID_AT_25);

MID_AT_on_wind_25 = MID_AT_25_mat(:,1:35);
MID_AT_PV_25 = MID_AT_25_mat(:,36:70);
%-----------
N_CEN_25 = readtable('N_CEN Top 25 Hrs.csv');
N_CEN_25_mat = table2array(N_CEN_25);

N_CEN_on_wind_25 = N_CEN_25_mat(:,1:35);
N_CEN_PV_25 = N_CEN_25_mat(:,36:70);
%-----------
SE_25 = readtable('SE Top 25 Hrs.csv');
SE_25_mat = table2array(SE_25);

SE_on_wind_25 = SE_25_mat(:,1:40);
SE_PV_25 = SE_25_mat(:,41:80);
%-----------
SW_25 = readtable('SW Top 25 Hrs.csv');
SW_25_mat = table2array(SW_25);

SW_on_wind_25 = SW_25_mat(:,1:25);
SW_PV_25 = SW_25_mat(:,26:50);
%-----------
TX_25 = readtable('TX Top 25 Hrs.csv');
TX_25_mat = table2array(TX_25);

TX_on_wind_25 = TX_25_mat(:,1:5);
TX_PV_25 = TX_25_mat(:,6:10);

%------- Top 30 hours All Regions ----------------------
NE_30 = readtable('NE Top 30 Hrs.csv');
NE_30_mat = table2array(NE_30);

NE_on_wind_30 = NE_30_mat(:,1:35);
NE_PV_30 = NE_30_mat(:,36:70);
NE_off_wind_30 = NE_30_mat(:,71);
%-----------
CA_30 = readtable('CA Top 30 Hrs.csv');
CA_30_mat = table2array(CA_30);

CA_on_wind_30 = CA_30_mat(:,1:5);
CA_PV_30 = CA_30_mat(:,6:10);
CA_off_wind_30 = CA_30_mat(:,11);
%------------
NW_30 = readtable('NW Top 30 Hrs.csv');
NW_30_mat = table2array(NW_30);

NW_on_wind_30 = NW_30_mat(:,1:25);
NW_PV_30 = NW_30_mat(:,26:50);
NW_off_wind_30 = NW_30_mat(:,51);
%-----------
CEN_30 = readtable('CEN Top 30 Hrs.csv');
CEN_30_mat = table2array(CEN_30);

CEN_on_wind_30 = CEN_30_mat(:,1:35);
CEN_PV_30 = CEN_30_mat(:,36:70);
%-----------
MID_AT_30 = readtable('MID_AT Top 30 Hrs.csv');
MID_AT_30_mat = table2array(MID_AT_30);

MID_AT_on_wind_30 = MID_AT_30_mat(:,1:35);
MID_AT_PV_30 = MID_AT_30_mat(:,36:70);
%-----------
N_CEN_30 = readtable('N_CEN Top 30 Hrs.csv');
N_CEN_30_mat = table2array(N_CEN_30);

N_CEN_on_wind_30 = N_CEN_30_mat(:,1:35);
N_CEN_PV_30 = N_CEN_30_mat(:,36:70);
%-----------
SE_30 = readtable('SE Top 30 Hrs.csv');
SE_30_mat = table2array(SE_30);

SE_on_wind_30 = SE_30_mat(:,1:40);
SE_PV_30 = SE_30_mat(:,41:80);
%-----------
SW_30 = readtable('SW Top 30 Hrs.csv');
SW_30_mat = table2array(SW_30);

SW_on_wind_30 = SW_30_mat(:,1:25);
SW_PV_30 = SW_30_mat(:,26:50);
%-----------
TX_30 = readtable('TX Top 30 Hrs.csv');
TX_30_mat = table2array(TX_30);

TX_on_wind_30 = TX_30_mat(:,1:5);
TX_PV_30 = TX_30_mat(:,6:10);

%------- Top 35 hours All Regions ----------------------
NE_35 = readtable('NE Top 35 Hrs.csv');
NE_35_mat = table2array(NE_35);

NE_on_wind_35 = NE_35_mat(:,1:35);
NE_PV_35 = NE_35_mat(:,36:70);
NE_off_wind_35 = NE_35_mat(:,71);
%-----------
CA_35 = readtable('CA Top 35 Hrs.csv');
CA_35_mat = table2array(CA_35);

CA_on_wind_35 = CA_35_mat(:,1:5);
CA_PV_35 = CA_35_mat(:,6:10);
CA_off_wind_35 = CA_35_mat(:,11);
%------------
NW_35 = readtable('NW Top 35 Hrs.csv');
NW_35_mat = table2array(NW_35);

NW_on_wind_35 = NW_35_mat(:,1:25);
NW_PV_35 = NW_35_mat(:,26:50);
NW_off_wind_35 = NW_35_mat(:,51);
%-----------
CEN_35 = readtable('CEN Top 35 Hrs.csv');
CEN_35_mat = table2array(CEN_35);

CEN_on_wind_35 = CEN_35_mat(:,1:35);
CEN_PV_35 = CEN_35_mat(:,36:70);
%-----------
MID_AT_35 = readtable('MID_AT Top 35 Hrs.csv');
MID_AT_35_mat = table2array(MID_AT_35);

MID_AT_on_wind_35 = MID_AT_35_mat(:,1:35);
MID_AT_PV_35 = MID_AT_35_mat(:,36:70);
%-----------
N_CEN_35 = readtable('N_CEN Top 35 Hrs.csv');
N_CEN_35_mat = table2array(N_CEN_35);

N_CEN_on_wind_35 = N_CEN_35_mat(:,1:35);
N_CEN_PV_35 = N_CEN_35_mat(:,36:70);
%-----------
SE_35 = readtable('SE Top 35 Hrs.csv');
SE_35_mat = table2array(SE_35);

SE_on_wind_35 = SE_35_mat(:,1:40);
SE_PV_35 = SE_35_mat(:,41:80);
%-----------
SW_35 = readtable('SW Top 35 Hrs.csv');
SW_35_mat = table2array(SW_35);

SW_on_wind_35 = SW_35_mat(:,1:25);
SW_PV_35 = SW_35_mat(:,26:50);
%-----------
TX_35 = readtable('TX Top 35 Hrs.csv');
TX_35_mat = table2array(TX_35);

TX_on_wind_35 = TX_35_mat(:,1:5);
TX_PV_35 = TX_35_mat(:,6:10);

%------- Top 40 hours All Regions ----------------------
NE_40 = readtable('NE Top 40 Hrs.csv');
NE_40_mat = table2array(NE_40);

NE_on_wind_40 = NE_40_mat(:,1:35);
NE_PV_40 = NE_40_mat(:,36:70);
NE_off_wind_40 = NE_40_mat(:,71);
%-----------
CA_40 = readtable('CA Top 40 Hrs.csv');
CA_40_mat = table2array(CA_40);

CA_on_wind_40 = CA_40_mat(:,1:5);
CA_PV_40 = CA_40_mat(:,6:10);
CA_off_wind_40 = CA_40_mat(:,11);
%------------
NW_40 = readtable('NW Top 40 Hrs.csv');
NW_40_mat = table2array(NW_40);

NW_on_wind_40 = NW_40_mat(:,1:25);
NW_PV_40 = NW_40_mat(:,26:50);
NW_off_wind_40 = NW_40_mat(:,51);
%-----------
CEN_40 = readtable('CEN Top 40 Hrs.csv');
CEN_40_mat = table2array(CEN_40);

CEN_on_wind_40 = CEN_40_mat(:,1:35);
CEN_PV_40 = CEN_40_mat(:,36:70);
%-----------
MID_AT_40 = readtable('MID_AT Top 40 Hrs.csv');
MID_AT_40_mat = table2array(MID_AT_40);

MID_AT_on_wind_40 = MID_AT_40_mat(:,1:35);
MID_AT_PV_40 = MID_AT_40_mat(:,36:70);
%-----------
N_CEN_40 = readtable('N_CEN Top 40 Hrs.csv');
N_CEN_40_mat = table2array(N_CEN_40);

N_CEN_on_wind_40 = N_CEN_40_mat(:,1:35);
N_CEN_PV_40 = N_CEN_40_mat(:,36:70);
%-----------
SE_40 = readtable('SE Top 40 Hrs.csv');
SE_40_mat = table2array(SE_40);

SE_on_wind_40 = SE_40_mat(:,1:40);
SE_PV_40 = SE_40_mat(:,41:80);
%-----------
SW_40 = readtable('SW Top 40 Hrs.csv');
SW_40_mat = table2array(SW_40);

SW_on_wind_40 = SW_40_mat(:,1:25);
SW_PV_40 = SW_40_mat(:,26:50);
%-----------
TX_40 = readtable('TX Top 40 Hrs.csv');
TX_40_mat = table2array(TX_40);

TX_on_wind_40 = TX_40_mat(:,1:5);
TX_PV_40 = TX_40_mat(:,6:10);

%------- Top 45 hours All Regions ----------------------
NE_45 = readtable('NE Top 45 Hrs.csv');
NE_45_mat = table2array(NE_45);

NE_on_wind_45 = NE_45_mat(:,1:35);
NE_PV_45 = NE_45_mat(:,36:70);
NE_off_wind_45 = NE_45_mat(:,71);
%-----------
CA_45 = readtable('CA Top 45 Hrs.csv');
CA_45_mat = table2array(CA_45);

CA_on_wind_45 = CA_45_mat(:,1:5);
CA_PV_45 = CA_45_mat(:,6:10);
CA_off_wind_45 = CA_45_mat(:,11);
%------------
NW_45 = readtable('NW Top 45 Hrs.csv');
NW_45_mat = table2array(NW_45);

NW_on_wind_45 = NW_45_mat(:,1:25);
NW_PV_45 = NW_45_mat(:,26:50);
NW_off_wind_45 = NW_45_mat(:,51);
%-----------
CEN_45 = readtable('CEN Top 45 Hrs.csv');
CEN_45_mat = table2array(CEN_45);

CEN_on_wind_45 = CEN_45_mat(:,1:35);
CEN_PV_45 = CEN_45_mat(:,36:70);
%-----------
MID_AT_45 = readtable('MID_AT Top 45 Hrs.csv');
MID_AT_45_mat = table2array(MID_AT_45);

MID_AT_on_wind_45 = MID_AT_45_mat(:,1:35);
MID_AT_PV_45 = MID_AT_45_mat(:,36:70);
%-----------
N_CEN_45 = readtable('N_CEN Top 45 Hrs.csv');
N_CEN_45_mat = table2array(N_CEN_45);

N_CEN_on_wind_45 = N_CEN_45_mat(:,1:35);
N_CEN_PV_45 = N_CEN_45_mat(:,36:70);
%-----------
SE_45 = readtable('SE Top 45 Hrs.csv');
SE_45_mat = table2array(SE_45);

SE_on_wind_45 = SE_45_mat(:,1:40);
SE_PV_45 = SE_45_mat(:,41:80);
%-----------
SW_45 = readtable('SW Top 45 Hrs.csv');
SW_45_mat = table2array(SW_45);

SW_on_wind_45 = SW_45_mat(:,1:25);
SW_PV_45 = SW_45_mat(:,26:50);
%-----------
TX_45 = readtable('TX Top 45 Hrs.csv');
TX_45_mat = table2array(TX_45);

TX_on_wind_45 = TX_45_mat(:,1:5);
TX_PV_45 = TX_45_mat(:,6:10);

%------- Top 50 hours All Regions ----------------------
NE_50 = readtable('NE Top 50 Hrs.csv');
NE_50_mat = table2array(NE_50);

NE_on_wind_50 = NE_50_mat(:,1:35);
NE_PV_50 = NE_50_mat(:,36:70);
NE_off_wind_50 = NE_50_mat(:,71);
%-----------
CA_50 = readtable('CA Top 50 Hrs.csv');
CA_50_mat = table2array(CA_50);

CA_on_wind_50 = CA_50_mat(:,1:5);
CA_PV_50 = CA_50_mat(:,6:10);
CA_off_wind_50 = CA_50_mat(:,11);
%------------
NW_50 = readtable('NW Top 50 Hrs.csv');
NW_50_mat = table2array(NW_50);

NW_on_wind_50 = NW_50_mat(:,1:25);
NW_PV_50 = NW_50_mat(:,26:50);
NW_off_wind_50 = NW_50_mat(:,51);
%-----------
CEN_50 = readtable('CEN Top 50 Hrs.csv');
CEN_50_mat = table2array(CEN_50);

CEN_on_wind_50 = CEN_50_mat(:,1:35);
CEN_PV_50 = CEN_50_mat(:,36:70);
%-----------
MID_AT_50 = readtable('MID_AT Top 50 Hrs.csv');
MID_AT_50_mat = table2array(MID_AT_50);

MID_AT_on_wind_50 = MID_AT_50_mat(:,1:35);
MID_AT_PV_50 = MID_AT_50_mat(:,36:70);
%-----------
N_CEN_50 = readtable('N_CEN Top 50 Hrs.csv');
N_CEN_50_mat = table2array(N_CEN_50);

N_CEN_on_wind_50 = N_CEN_50_mat(:,1:35);
N_CEN_PV_50 = N_CEN_50_mat(:,36:70);
%-----------
SE_50 = readtable('SE Top 50 Hrs.csv');
SE_50_mat = table2array(SE_50);

SE_on_wind_50 = SE_50_mat(:,1:40);
SE_PV_50 = SE_50_mat(:,41:80);
%-----------
SW_50 = readtable('SW Top 50 Hrs.csv');
SW_50_mat = table2array(SW_50);

SW_on_wind_50 = SW_50_mat(:,1:25);
SW_PV_50 = SW_50_mat(:,26:50);
%-----------
TX_50 = readtable('TX Top 50 Hrs.csv');
TX_50_mat = table2array(TX_50);

TX_on_wind_50 = TX_50_mat(:,1:5);
TX_PV_50 = TX_50_mat(:,6:10);

%------- Top 55 hours All Regions ----------------------
NE_55 = readtable('NE Top 55 Hrs.csv');
NE_55_mat = table2array(NE_55);

NE_on_wind_55 = NE_55_mat(:,1:35);
NE_PV_55 = NE_55_mat(:,36:70);
NE_off_wind_55 = NE_55_mat(:,71);
%-----------
CA_55 = readtable('CA Top 55 Hrs.csv');
CA_55_mat = table2array(CA_55);

CA_on_wind_55 = CA_55_mat(:,1:5);
CA_PV_55 = CA_55_mat(:,6:10);
CA_off_wind_55 = CA_55_mat(:,11);
%------------
NW_55 = readtable('NW Top 55 Hrs.csv');
NW_55_mat = table2array(NW_55);

NW_on_wind_55 = NW_55_mat(:,1:25);
NW_PV_55 = NW_55_mat(:,26:50);
NW_off_wind_55 = NW_55_mat(:,51);
%-----------
CEN_55 = readtable('CEN Top 55 Hrs.csv');
CEN_55_mat = table2array(CEN_55);

CEN_on_wind_55 = CEN_55_mat(:,1:35);
CEN_PV_55 = CEN_55_mat(:,36:70);
%-----------
MID_AT_55 = readtable('MID_AT Top 55 Hrs.csv');
MID_AT_55_mat = table2array(MID_AT_55);

MID_AT_on_wind_55 = MID_AT_55_mat(:,1:35);
MID_AT_PV_55 = MID_AT_55_mat(:,36:70);
%-----------
N_CEN_55 = readtable('N_CEN Top 55 Hrs.csv');
N_CEN_55_mat = table2array(N_CEN_55);

N_CEN_on_wind_55 = N_CEN_55_mat(:,1:35);
N_CEN_PV_55 = N_CEN_55_mat(:,36:70);
%-----------
SE_55 = readtable('SE Top 55 Hrs.csv');
SE_55_mat = table2array(SE_55);

SE_on_wind_55 = SE_55_mat(:,1:40);
SE_PV_55 = SE_55_mat(:,41:80);
%-----------
SW_55 = readtable('SW Top 55 Hrs.csv');
SW_55_mat = table2array(SW_55);

SW_on_wind_55 = SW_55_mat(:,1:25);
SW_PV_55 = SW_55_mat(:,26:50);
%-----------
TX_55 = readtable('TX Top 55 Hrs.csv');
TX_55_mat = table2array(TX_55);

TX_on_wind_55 = TX_55_mat(:,1:5);
TX_PV_55 = TX_55_mat(:,6:10);

%------- Top 60 hours All Regions ----------------------
NE_60 = readtable('NE Top 60 Hrs.csv');
NE_60_mat = table2array(NE_60);

NE_on_wind_60 = NE_60_mat(:,1:35);
NE_PV_60 = NE_60_mat(:,36:70);
NE_off_wind_60 = NE_60_mat(:,71);
%-----------
CA_60 = readtable('CA Top 60 Hrs.csv');
CA_60_mat = table2array(CA_60);

CA_on_wind_60 = CA_60_mat(:,1:5);
CA_PV_60 = CA_60_mat(:,6:10);
CA_off_wind_60 = CA_60_mat(:,11);
%------------
NW_60 = readtable('NW Top 60 Hrs.csv');
NW_60_mat = table2array(NW_60);

NW_on_wind_60 = NW_60_mat(:,1:25);
NW_PV_60 = NW_60_mat(:,26:50);
NW_off_wind_60 = NW_60_mat(:,51);
%-----------
CEN_60 = readtable('CEN Top 60 Hrs.csv');
CEN_60_mat = table2array(CEN_60);

CEN_on_wind_60 = CEN_60_mat(:,1:35);
CEN_PV_60 = CEN_60_mat(:,36:70);
%-----------
MID_AT_60 = readtable('MID_AT Top 60 Hrs.csv');
MID_AT_60_mat = table2array(MID_AT_60);

MID_AT_on_wind_60 = MID_AT_60_mat(:,1:35);
MID_AT_PV_60 = MID_AT_60_mat(:,36:70);
%-----------
N_CEN_60 = readtable('N_CEN Top 60 Hrs.csv');
N_CEN_60_mat = table2array(N_CEN_60);

N_CEN_on_wind_60 = N_CEN_60_mat(:,1:35);
N_CEN_PV_60 = N_CEN_60_mat(:,36:70);
%-----------
SE_60 = readtable('SE Top 60 Hrs.csv');
SE_60_mat = table2array(SE_60);

SE_on_wind_60 = SE_60_mat(:,1:40);
SE_PV_60 = SE_60_mat(:,41:80);
%-----------
SW_60 = readtable('SW Top 60 Hrs.csv');
SW_60_mat = table2array(SW_60);

SW_on_wind_60 = SW_60_mat(:,1:25);
SW_PV_60 = SW_60_mat(:,26:50);
%-----------
TX_60 = readtable('TX Top 60 Hrs.csv');
TX_60_mat = table2array(TX_60);

TX_on_wind_60 = TX_60_mat(:,1:5);
TX_PV_60 = TX_60_mat(:,6:10);

%------- Top 65 hours All Regions ----------------------
NE_65 = readtable('NE Top 65 Hrs.csv');
NE_65_mat = table2array(NE_65);

NE_on_wind_65 = NE_65_mat(:,1:35);
NE_PV_65 = NE_65_mat(:,36:70);
NE_off_wind_65 = NE_65_mat(:,71);
%-----------
CA_65 = readtable('CA Top 65 Hrs.csv');
CA_65_mat = table2array(CA_65);

CA_on_wind_65 = CA_65_mat(:,1:5);
CA_PV_65 = CA_65_mat(:,6:10);
CA_off_wind_65 = CA_65_mat(:,11);
%------------
NW_65 = readtable('NW Top 65 Hrs.csv');
NW_65_mat = table2array(NW_65);

NW_on_wind_65 = NW_65_mat(:,1:25);
NW_PV_65 = NW_65_mat(:,26:50);
NW_off_wind_65 = NW_65_mat(:,51);
%-----------
CEN_65 = readtable('CEN Top 65 Hrs.csv');
CEN_65_mat = table2array(CEN_65);

CEN_on_wind_65 = CEN_65_mat(:,1:35);
CEN_PV_65 = CEN_65_mat(:,36:70);
%-----------
MID_AT_65 = readtable('MID_AT Top 65 Hrs.csv');
MID_AT_65_mat = table2array(MID_AT_65);

MID_AT_on_wind_65 = MID_AT_65_mat(:,1:35);
MID_AT_PV_65 = MID_AT_65_mat(:,36:70);
%-----------
N_CEN_65 = readtable('N_CEN Top 65 Hrs.csv');
N_CEN_65_mat = table2array(N_CEN_65);

N_CEN_on_wind_65 = N_CEN_65_mat(:,1:35);
N_CEN_PV_65 = N_CEN_65_mat(:,36:70);
%-----------
SE_65 = readtable('SE Top 65 Hrs.csv');
SE_65_mat = table2array(SE_65);

SE_on_wind_65 = SE_65_mat(:,1:40);
SE_PV_65 = SE_65_mat(:,41:80);
%-----------
SW_65 = readtable('SW Top 65 Hrs.csv');
SW_65_mat = table2array(SW_65);

SW_on_wind_65 = SW_65_mat(:,1:25);
SW_PV_65 = SW_65_mat(:,26:50);
%-----------
TX_65 = readtable('TX Top 65 Hrs.csv');
TX_65_mat = table2array(TX_65);

TX_on_wind_65 = TX_65_mat(:,1:5);
TX_PV_65 = TX_65_mat(:,6:10);

%------- Top 70 hours All Regions ----------------------
NE_70 = readtable('NE Top 70 Hrs.csv');
NE_70_mat = table2array(NE_70);

NE_on_wind_70 = NE_70_mat(:,1:35);
NE_PV_70 = NE_70_mat(:,36:70);
NE_off_wind_70 = NE_70_mat(:,71);
%-----------
CA_70 = readtable('CA Top 70 Hrs.csv');
CA_70_mat = table2array(CA_70);

CA_on_wind_70 = CA_70_mat(:,1:5);
CA_PV_70 = CA_70_mat(:,6:10);
CA_off_wind_70 = CA_70_mat(:,11);
%------------
NW_70 = readtable('NW Top 70 Hrs.csv');
NW_70_mat = table2array(NW_70);

NW_on_wind_70 = NW_70_mat(:,1:25);
NW_PV_70 = NW_70_mat(:,26:50);
NW_off_wind_70 = NW_70_mat(:,51);
%-----------
CEN_70 = readtable('CEN Top 70 Hrs.csv');
CEN_70_mat = table2array(CEN_70);

CEN_on_wind_70 = CEN_70_mat(:,1:35);
CEN_PV_70 = CEN_70_mat(:,36:70);
%-----------
MID_AT_70 = readtable('MID_AT Top 70 Hrs.csv');
MID_AT_70_mat = table2array(MID_AT_70);

MID_AT_on_wind_70 = MID_AT_70_mat(:,1:35);
MID_AT_PV_70 = MID_AT_70_mat(:,36:70);
%-----------
N_CEN_70 = readtable('N_CEN Top 70 Hrs.csv');
N_CEN_70_mat = table2array(N_CEN_70);

N_CEN_on_wind_70 = N_CEN_70_mat(:,1:35);
N_CEN_PV_70 = N_CEN_70_mat(:,36:70);
%-----------
SE_70 = readtable('SE Top 70 Hrs.csv');
SE_70_mat = table2array(SE_70);

SE_on_wind_70 = SE_70_mat(:,1:40);
SE_PV_70 = SE_70_mat(:,41:80);
%-----------
SW_70 = readtable('SW Top 70 Hrs.csv');
SW_70_mat = table2array(SW_70);

SW_on_wind_70 = SW_70_mat(:,1:25);
SW_PV_70 = SW_70_mat(:,26:50);
%-----------
TX_70 = readtable('TX Top 70 Hrs.csv');
TX_70_mat = table2array(TX_70);

TX_on_wind_70 = TX_70_mat(:,1:5);
TX_PV_70 = TX_70_mat(:,6:10);


%------- Top 75 hours All Regions ----------------------
NE_75 = readtable('NE Top 75 Hrs.csv');
NE_75_mat = table2array(NE_75);

NE_on_wind_75 = NE_75_mat(:,1:35);
NE_PV_75 = NE_75_mat(:,36:70);
NE_off_wind_75 = NE_75_mat(:,71);
%-----------
CA_75 = readtable('CA Top 75 Hrs.csv');
CA_75_mat = table2array(CA_75);

CA_on_wind_75 = CA_75_mat(:,1:5);
CA_PV_75 = CA_75_mat(:,6:10);
CA_off_wind_75 = CA_75_mat(:,11);
%------------
NW_75 = readtable('NW Top 75 Hrs.csv');
NW_75_mat = table2array(NW_75);

NW_on_wind_75 = NW_75_mat(:,1:25);
NW_PV_75 = NW_75_mat(:,26:50);
NW_off_wind_75 = NW_75_mat(:,51);
%-----------
CEN_75 = readtable('CEN Top 75 Hrs.csv');
CEN_75_mat = table2array(CEN_75);

CEN_on_wind_75 = CEN_75_mat(:,1:35);
CEN_PV_75 = CEN_75_mat(:,36:70);
%-----------
MID_AT_75 = readtable('MID_AT Top 75 Hrs.csv');
MID_AT_75_mat = table2array(MID_AT_75);

MID_AT_on_wind_75 = MID_AT_75_mat(:,1:35);
MID_AT_PV_75 = MID_AT_75_mat(:,36:70);
%-----------
N_CEN_75 = readtable('N_CEN Top 75 Hrs.csv');
N_CEN_75_mat = table2array(N_CEN_75);

N_CEN_on_wind_75 = N_CEN_75_mat(:,1:35);
N_CEN_PV_75 = N_CEN_75_mat(:,36:70);
%-----------
SE_75 = readtable('SE Top 75 Hrs.csv');
SE_75_mat = table2array(SE_75);

SE_on_wind_75 = SE_75_mat(:,1:40);
SE_PV_75 = SE_75_mat(:,41:80);
%-----------
SW_75 = readtable('SW Top 75 Hrs.csv');
SW_75_mat = table2array(SW_75);

SW_on_wind_75 = SW_75_mat(:,1:25);
SW_PV_75 = SW_75_mat(:,26:50);
%-----------
TX_75 = readtable('TX Top 75 Hrs.csv');
TX_75_mat = table2array(TX_75);

TX_on_wind_75 = TX_75_mat(:,1:5);
TX_PV_75 = TX_75_mat(:,6:10);

end
% Above is code for referencing files

% >>>>>----- NE plots ----->>>>>
for d = 1
%figure(1)

% Figure parameters
x0=100;y0=-200;width=1250;height=920;
figure('Renderer', 'Painters','Position', [x0,y0,width,height]);
%get(gcf,'Position')

t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, NE_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_1, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_1, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[],'FontSize',10)
title('Top 1 Hour','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_5, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_5, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_10, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_10, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_15, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_15, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours','FontSize',13)

h(1) = plot(1:2,1:2, 'color', '#0096FF')
h(2) = plot(1:2,1:2, 'color', '#FFBF00')
h(3) = plot(1:2,1:2, 'color', '#000000','LineWidth',2)
legend(h([1,2,3]),{'Onshore Wind', 'Solar','Offshore Wind'},'Location','northeast','EdgeColor',[0.5 0.5 0.5],'LineWidth',2,'FontSize',14)

nexttile
plot(x_cap/1000, NE_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_20, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_20, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_25, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_25, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_30, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_30, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_35, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_35, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_40, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_40, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_45, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_45, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_50, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_50, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_55, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_55, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_60, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_60, 'color', '#000000','LineWidth',2)
ylim([0 1])
set(gca)
grid on

title('Top 60 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_65, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_65, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_70, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_70, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours','FontSize',13)

nexttile
plot(x_cap/1000, NE_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, NE_PV_75, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NE_off_wind_75, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours','FontSize',13)

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
%title(t,'NE Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

%saveas(gcf, 'testsave1.emf')

end
% NE plot code


%{
% >>>>>----- CA plots ----->>>>>
for d = 1
figure(2)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, CA_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_1, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_1, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, CA_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_5, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_5, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_10, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_10, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_15, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_15, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_20, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_20, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_25, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_25, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_30, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_30, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_35, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_35, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_40, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_40, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_45, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_45, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_50, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_50, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_55, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_55, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_60, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_60, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_65, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_65, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_70, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_70, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, CA_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, CA_PV_75, 'color', '#FFBF00')
hold on
plot(x_cap/1000, CA_off_wind_75, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'CA Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% CA plot code

% >>>>>----- NW plots ----->>>>>
for d = 1
figure(3)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, NW_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_1, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_1, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, NW_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_5, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_5, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_10, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_10, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_15, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_15, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_20, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_20, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_25, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_25, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_30, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_30, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_35, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_35, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_40, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_40, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_45, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_45, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_50, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_50, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_55, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_55, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_60, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_60, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_65, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_65, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_70, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_70, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, NW_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, NW_PV_75, 'color', '#FFBF00')
hold on
plot(x_cap/1000, NW_off_wind_75, 'color', '#000000','LineWidth',2)
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'NW Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% NW plot code

% >>>>>----- CEN plots ----->>>>>
for d = 1
figure(4)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, CEN_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, CEN_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, CEN_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, CEN_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'CEN Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% CEN plot code

% >>>>>----- MID_AT plots ----->>>>>
for d = 1
figure(5)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, MID_AT_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, MID_AT_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, MID_AT_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, MID_AT_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'MID AT Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% MID_AT plot code

% >>>>>----- N_CEN plots ----->>>>>
for d = 1
figure(6)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, N_CEN_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, N_CEN_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, N_CEN_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, N_CEN_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'N CEN Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% N_CEN plot code

% >>>>>----- SE plots ----->>>>>
for d = 1
figure(7)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, SE_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, SE_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, SE_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, SE_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'SE Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% SE plot code

% >>>>>----- SW plots ----->>>>>
for d = 1
figure(8)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, SW_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, SW_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, SW_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, SW_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'SW Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% SW plot code

% >>>>>----- TX plots ----->>>>>
for d = 1
figure(9)
t = tiledlayout(4,4,'TileSpacing','tight')

nexttile
plot(x_cap/1000, TX_on_wind_1, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_1, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 1 Hour')

nexttile
plot(x_cap/1000, TX_on_wind_5, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_5, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 5 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_10, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_10, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 10 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_15, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_15, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 15 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_20, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_20, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 20 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_25, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_25, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 25 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_30, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_30, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 30 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_35, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_35, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 35 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_40, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_40, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[])
title('Top 40 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_45, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_45, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 45 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_50, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_50, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 50 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_55, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_55, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'xticklabel',[], 'yticklabel', [])
title('Top 55 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_60, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_60, 'color', '#FFBF00')
ylim([0 1])
grid on

title('Top 60 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_65, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_65, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 65 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_70, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_70, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 70 Hours')

nexttile
plot(x_cap/1000, TX_on_wind_75, 'color', '#0096FF')
hold on
plot(x_cap/1000, TX_PV_75, 'color', '#FFBF00')
ylim([0 1])
grid on
set(gca,'yticklabel', [])
title('Top 75 Hours')

%legend('Wind','Solar','OffWind','Location','bestoutside','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)

% Specify common title, X and Y labels
title(t,'TX Average Capacity Factor for top hours vs. Load increment', 'FontSize', 25)
xlabel(t,'Power Capacity Level (GW)', 'FontSize', 25)
ylabel(t,'Average Capacity Factor','FontSize', 25)

end
% TX plot code
%}

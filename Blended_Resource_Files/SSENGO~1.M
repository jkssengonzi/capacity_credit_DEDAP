% Test 3, tile representations

%{
The column order of blends is:
bl_0_100
bl_10_90
bl_20_80
bl_30_70
bl_40_60
bl_50_50
bl_60_40
bl_70_30
bl_80_20
bl_90_10
bl_100_0
%}

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

%-----
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

%----
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

%-----
MID_AT_pen_level = readtable('PLT_28_bl_1_MID_AT_Penetration_levels_df.csv');
MID_AT_credits = readtable('PLT_28_bl_1_MID_AT_Cap_credits_df.csv'); 
MID_AT_cap_level = readtable('PLT_28_bl_1 MID_AT Capacity_levels_df.csv');
MID_AT_pen_mat = table2array(MID_AT_pen_level);
MID_AT_cred_mat = table2array(MID_AT_credits);
MID_AT_cap_mat_initial = table2array(MID_AT_cap_level);
MID_AT_cap_mat = MID_AT_cap_mat_initial(2:101,:); % 100 increments for MID_AT

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

%----
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

%----
SE_pen_level = readtable('PLT_28_bl_1_SE_Penetration_levels_df.csv');
SE_credits = readtable('PLT_28_bl_1_SE_Cap_credits_df.csv'); 
SE_cap_level = readtable('PLT_28_bl_1 SE Capacity_levels_df.csv');
SE_pen_mat = table2array(SE_pen_level);
SE_cred_mat = table2array(SE_credits);
SE_cap_mat_initial = table2array(SE_cap_level);
SE_cap_mat = SE_cap_mat_initial(2:101,:); % 100 increments for SE

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

%----
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

%----
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



% -------- Comparison tile figure, penetration level ----------------->
% Figure parameters
x0=100;y0=-200;width=1350;height=872;
figure('Position', [x0,y0,width,height]);
%figure(1) % panel plot for all regions, penetration level
t = tiledlayout(3,3, 'TileSpacing','tight'); %, 'TileSpacing','tight'

x_lim_val = 55;
y_lim_val = 0.9;

%----first row--->
nexttile
h1 = plot(NW_PV_pen*100, NW_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(NW_on_wind_pen*100, NW_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(NW_avg_pen*100, NW_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(NW_bl_50_50_pen*100, NW_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on
%j = annotation('textbox');
%sz = j.FontSize;
%j.FontSize = 12;
%title('NW')

nexttile
h1 = plot(N_CEN_PV_pen*100, N_CEN_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(N_CEN_on_wind_pen*100, N_CEN_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(N_CEN_avg_pen*100, N_CEN_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(N_CEN_bl_50_50_pen*100, N_CEN_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('N_CEN')

nexttile
h1 = plot(NE_PV_pen*100, NE_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(NE_on_wind_pen*100, NE_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(NE_avg_pen*100, NE_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(NE_bl_50_50_pen*100, NE_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('NE')
legend([h1,h2,h3,h4])

%----second row--->
nexttile
h1 = plot(CA_PV_pen*100, CA_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(CA_on_wind_pen*100, CA_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(CA_avg_pen*100, CA_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(CA_bl_50_50_pen*100, CA_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel',[],'FontSize',12.5)
grid on
%title('CA')

nexttile
h1 = plot(CEN_PV_pen*100, CEN_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(CEN_on_wind_pen*100, CEN_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(CEN_avg_pen*100, CEN_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(CEN_bl_50_50_pen*100, CEN_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('CEN')

nexttile
h1 = plot(MID_AT_PV_pen*100, MID_AT_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(MID_AT_on_wind_pen*100, MID_AT_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(MID_AT_avg_pen*100, MID_AT_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(MID_AT_bl_50_50_pen*100, MID_AT_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('MID_AT')


%----third row

nexttile
h1 = plot(SW_PV_pen*100, SW_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(SW_on_wind_pen*100, SW_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(SW_avg_pen*100, SW_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(SW_bl_50_50_pen*100, SW_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'FontSize',12.5)
grid on
%title('SW')

nexttile
h1 = plot(TX_PV_pen*100, TX_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(TX_on_wind_pen*100, TX_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(TX_avg_pen*100, TX_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(TX_bl_50_50_pen*100, TX_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on
%title('TX')

nexttile
h1 = plot(SE_PV_pen*100, SE_PV_CC,'--','DisplayName',"RepClus: PV",'color', '#FFBF00','LineWidth',1.5); % Plot of PV Representative cluster
hold on
h2 = plot(SE_on_wind_pen*100, SE_on_wind_CC,'--','DisplayName',"RepClus: WND",'color','#4472C4','LineWidth',1.5); % Plot of WND Representative cluster
hold on
h3 = plot(SE_avg_pen*100, SE_avg_CC,'DisplayName',"WND-PV CC avg",'color', '#006400','LineWidth',1.5); % Plot of WND-PV CC average
hold on
h4 = plot(SE_bl_50_50_pen*100, SE_bl_50_50_CC,'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',1.5); % Plot of WND-PV CC average
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on
%title('SE')

title(t,'Resource Capacity Credit vs. Penetration Level, All Regions', 'FontSize', 25)
xlabel(t,'Power Penetration Level (%)', 'FontSize', 25)
ylabel(t,'Capacity Credit', 'FontSize', 25)



%-----------------------------------------------
%-----------------------------------------------
% -------- Comparison tile figure, penetration level ----------------->
% Figure parameters
x0=100;y0=-200;width=1350;height=872;
figure('Position', [x0,y0,width,height]);
%figure(1) % panel plot for all regions, penetration level
j = tiledlayout(3,3, 'TileSpacing','tight'); %, 'TileSpacing','tight'

%x_lim_val = 55;
%y_lim_val = 0.9;

%----first row--->
nexttile
b1 = plot(NW_pen_mat(:,1)*100, NW_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(NW_pen_mat(:,2)*100, NW_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(NW_pen_mat(:,3)*100, NW_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(NW_pen_mat(:,4)*100, NW_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(NW_pen_mat(:,5)*100, NW_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(NW_pen_mat(:,6)*100, NW_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(NW_pen_mat(:,7)*100, NW_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(NW_pen_mat(:,8)*100, NW_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(NW_pen_mat(:,9)*100, NW_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(NW_pen_mat(:,10)*100, NW_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(NW_pen_mat(:,11)*100, NW_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
b1 = plot(N_CEN_pen_mat(:,1)*100, N_CEN_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(N_CEN_pen_mat(:,2)*100, N_CEN_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(N_CEN_pen_mat(:,3)*100, N_CEN_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(N_CEN_pen_mat(:,4)*100, N_CEN_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(N_CEN_pen_mat(:,5)*100, N_CEN_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(N_CEN_pen_mat(:,6)*100, N_CEN_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(N_CEN_pen_mat(:,7)*100, N_CEN_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(N_CEN_pen_mat(:,8)*100, N_CEN_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(N_CEN_pen_mat(:,9)*100, N_CEN_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(N_CEN_pen_mat(:,10)*100, N_CEN_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(N_CEN_pen_mat(:,11)*100, N_CEN_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'yticklabel',[],'FontSize',12.5)
grid on

nexttile
b1 = plot(NE_pen_mat(:,1)*100, NE_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(NE_pen_mat(:,2)*100, NE_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(NE_pen_mat(:,3)*100, NE_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(NE_pen_mat(:,4)*100, NE_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(NE_pen_mat(:,5)*100, NE_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(NE_pen_mat(:,6)*100, NE_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(NE_pen_mat(:,7)*100, NE_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(NE_pen_mat(:,8)*100, NE_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(NE_pen_mat(:,9)*100, NE_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(NE_pen_mat(:,10)*100, NE_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(NE_pen_mat(:,11)*100, NE_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'yticklabel',[],'FontSize',12.5)
grid on
legend([b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11],'FontSize',8)

%----second row--->
nexttile
b1 = plot(CA_pen_mat(:,1)*100, CA_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(CA_pen_mat(:,2)*100, CA_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(CA_pen_mat(:,3)*100, CA_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(CA_pen_mat(:,4)*100, CA_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(CA_pen_mat(:,5)*100, CA_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(CA_pen_mat(:,6)*100, CA_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(CA_pen_mat(:,7)*100, CA_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(CA_pen_mat(:,8)*100, CA_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(CA_pen_mat(:,9)*100, CA_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(CA_pen_mat(:,10)*100, CA_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(CA_pen_mat(:,11)*100, CA_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on

nexttile
b1 = plot(CEN_pen_mat(:,1)*100, CEN_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(CEN_pen_mat(:,2)*100, CEN_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(CEN_pen_mat(:,3)*100, CEN_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(CEN_pen_mat(:,4)*100, CEN_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(CEN_pen_mat(:,5)*100, CEN_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(CEN_pen_mat(:,6)*100, CEN_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(CEN_pen_mat(:,7)*100, CEN_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(CEN_pen_mat(:,8)*100, CEN_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(CEN_pen_mat(:,9)*100, CEN_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(CEN_pen_mat(:,10)*100, CEN_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(CEN_pen_mat(:,11)*100, CEN_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'yticklabel',[],'FontSize',12.5)
grid on

nexttile
b1 = plot(MID_AT_pen_mat(:,1)*100, MID_AT_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(MID_AT_pen_mat(:,2)*100, MID_AT_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(MID_AT_pen_mat(:,3)*100, MID_AT_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(MID_AT_pen_mat(:,4)*100, MID_AT_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(MID_AT_pen_mat(:,5)*100, MID_AT_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(MID_AT_pen_mat(:,6)*100, MID_AT_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(MID_AT_pen_mat(:,7)*100, MID_AT_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(MID_AT_pen_mat(:,8)*100, MID_AT_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(MID_AT_pen_mat(:,9)*100, MID_AT_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(MID_AT_pen_mat(:,10)*100, MID_AT_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(MID_AT_pen_mat(:,11)*100, MID_AT_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'xticklabel', [],'yticklabel',[],'FontSize',12.5)
grid on


%-----third row --->

nexttile
b1 = plot(SW_pen_mat(:,1)*100, SW_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(SW_pen_mat(:,2)*100, SW_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(SW_pen_mat(:,3)*100, SW_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(SW_pen_mat(:,4)*100, SW_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(SW_pen_mat(:,5)*100, SW_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(SW_pen_mat(:,6)*100, SW_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(SW_pen_mat(:,7)*100, SW_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(SW_pen_mat(:,8)*100, SW_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(SW_pen_mat(:,9)*100, SW_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(SW_pen_mat(:,10)*100, SW_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(SW_pen_mat(:,11)*100, SW_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'FontSize',12.5)
grid on

nexttile
b1 = plot(TX_pen_mat(:,1)*100, TX_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(TX_pen_mat(:,2)*100, TX_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(TX_pen_mat(:,3)*100, TX_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(TX_pen_mat(:,4)*100, TX_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(TX_pen_mat(:,5)*100, TX_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(TX_pen_mat(:,6)*100, TX_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(TX_pen_mat(:,7)*100, TX_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(TX_pen_mat(:,8)*100, TX_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(TX_pen_mat(:,9)*100, TX_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(TX_pen_mat(:,10)*100, TX_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(TX_pen_mat(:,11)*100, TX_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on

nexttile
b1 = plot(SE_pen_mat(:,1)*100, SE_cred_mat(:,1),'DisplayName',"WND-PV,0-100 blend",'color', '#FFC000');
hold on
b2 = plot(SE_pen_mat(:,2)*100, SE_cred_mat(:,2),'DisplayName',"WND-PV,10-90 blend",'color', '#ECB814');
hold on
b3 = plot(SE_pen_mat(:,3)*100, SE_cred_mat(:,3),'DisplayName',"WND-PV,20-80 blend",'color', '#D9B028');
hold on
b4 = plot(SE_pen_mat(:,4)*100, SE_cred_mat(:,4),'DisplayName',"WND-PV,30-70 blend",'color', '#C6A83B');
hold on
b5 = plot(SE_pen_mat(:,5)*100, SE_cred_mat(:,5),'DisplayName',"WND-PV,40-60 blend",'color', '#B4A04F');
hold on
b6 = plot(SE_pen_mat(:,6)*100, SE_cred_mat(:,6),'DisplayName',"WND-PV,50-50 blend",'color', '#A19962','LineWidth',2);
hold on
b7 = plot(SE_pen_mat(:,7)*100, SE_cred_mat(:,7),'DisplayName',"WND-PV,60-40 blend",'color', '#8E9176');
hold on
b8 = plot(SE_pen_mat(:,8)*100, SE_cred_mat(:,8),'DisplayName',"WND-PV,70-30 blend",'color', '#7C898A');
hold on
b9 = plot(SE_pen_mat(:,9)*100, SE_cred_mat(:,9),'DisplayName',"WND-PV,80-20 blend",'color', '#69819D');
hold on
b10 = plot(SE_pen_mat(:,10)*100, SE_cred_mat(:,10),'DisplayName',"WND-PV,90-10 blend",'color', '#5679B1');
hold on
b11 = plot(SE_pen_mat(:,11)*100, SE_cred_mat(:,11),'DisplayName',"WND-PV,100-0 blend",'color', '#4472C4');
xlim([0 x_lim_val])
ylim([0 y_lim_val])
set(gca,'yticklabel', [],'FontSize',12.5)
grid on


title(j,'Resource Capacity Credit vs. Penetration Level, All regions', 'FontSize', 25)
xlabel(j,'Power Penetration Level (%)', 'FontSize', 25)
ylabel(j,'Capacity Credit', 'FontSize', 25)


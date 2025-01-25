% Region Plots Collection, MIT Zephyr Data

NE_pen_level = readtable('PLT_28_E1_NE_Penetration_levels_df.csv');
NE_credits = readtable('PLT_28_E1_NE_Cap_credits_df.csv'); 
NE_pen_mat = table2array(NE_pen_level);
NE_cred_mat = table2array(NE_credits);

NE_on_wind_pen = NE_pen_mat(:,1:35);
NE_PV_pen = NE_pen_mat(:,36:70);
NE_off_wind_pen = NE_pen_mat(:,71);
NE_on_wind_CC = NE_cred_mat(:,1:35);
NE_PV_CC = NE_cred_mat(:,36:70);
NE_off_wind_CC = NE_cred_mat(:,71);

%-----------------------------------
CA_pen_level = readtable('PLT_28_E1_CA_Penetration_levels_df.csv');
CA_credits = readtable('PLT_28_E1_CA_Cap_credits_df.csv'); 
CA_pen_mat = table2array(CA_pen_level);
CA_cred_mat = table2array(CA_credits);

CA_on_wind_pen = CA_pen_mat(:,1:5);
CA_PV_pen = CA_pen_mat(:,6:10);
CA_off_wind_pen = CA_pen_mat(:,11);
CA_on_wind_CC = CA_cred_mat(:,1:5);
CA_PV_CC = CA_cred_mat(:,6:10);
CA_off_wind_CC = CA_cred_mat(:,1);

%-----------------------------------
NW_pen_level = readtable('PLT_28_E1_NW_Penetration_levels_df.csv');
NW_credits = readtable('PLT_28_E1_NW_Cap_credits_df.csv'); 
NW_pen_mat = table2array(NW_pen_level);
NW_cred_mat = table2array(NW_credits);

NW_on_wind_pen = NW_pen_mat(:,1:25);
NW_PV_pen = NW_pen_mat(:,26:50);
NW_off_wind_pen = NW_pen_mat(:,51);
NW_on_wind_CC = NW_cred_mat(:,1:25);
NW_PV_CC = NW_cred_mat(:,26:50);
NW_off_wind_CC = NW_cred_mat(:,51);

%-----------------------------------
CEN_pen_level = readtable('PLT_28_E1_CEN_Penetration_levels_df.csv');
CEN_credits = readtable('PLT_28_E1_CEN_Cap_credits_df.csv'); 
CEN_pen_mat = table2array(CEN_pen_level);
CEN_cred_mat = table2array(CEN_credits);

CEN_on_wind_pen = CEN_pen_mat(:,1:35);
CEN_PV_pen = CEN_pen_mat(:,36:70);
CEN_on_wind_CC = CEN_cred_mat(:,1:35);
CEN_PV_CC = CEN_cred_mat(:,36:70);

%-----------------------------------
MID_AT_pen_level = readtable('PLT_28_E1_MID_AT_Penetration_levels_df.csv');
MID_AT_credits = readtable('PLT_28_E1_MID_AT_Cap_credits_df.csv'); 
MID_AT_pen_mat = table2array(MID_AT_pen_level);
MID_AT_cred_mat = table2array(MID_AT_credits);

MID_AT_on_wind_pen = MID_AT_pen_mat(:,1:35);
MID_AT_PV_pen = MID_AT_pen_mat(:,36:70);
MID_AT_on_wind_CC = MID_AT_cred_mat(:,1:35);
MID_AT_PV_CC = MID_AT_cred_mat(:,36:70);

%-----------------------------------
N_CEN_pen_level = readtable('PLT_28_E1_N_CEN_Penetration_levels_df.csv');
N_CEN_credits = readtable('PLT_28_E1_N_CEN_Cap_credits_df.csv'); 
N_CEN_pen_mat = table2array(N_CEN_pen_level);
N_CEN_cred_mat = table2array(N_CEN_credits);

N_CEN_on_wind_pen = N_CEN_pen_mat(:,1:35);
N_CEN_PV_pen = N_CEN_pen_mat(:,36:70);
N_CEN_on_wind_CC = N_CEN_cred_mat(:,1:35);
N_CEN_PV_CC = N_CEN_cred_mat(:,36:70);

%-----------------------------------
SE_pen_level = readtable('PLT_28_E1_SE_Penetration_levels_df.csv');
SE_credits = readtable('PLT_28_E1_SE_Cap_credits_df.csv'); 
SE_pen_mat = table2array(SE_pen_level);
SE_cred_mat = table2array(SE_credits);

SE_on_wind_pen = SE_pen_mat(:,1:40);
SE_PV_pen = SE_pen_mat(:,41:80);
SE_on_wind_CC = SE_cred_mat(:,1:40);
SE_PV_CC = SE_cred_mat(:,41:80);

%-----------------------------------
SW_pen_level = readtable('PLT_28_E1_SW_Penetration_levels_df.csv');
SW_credits = readtable('PLT_28_E1_SW_Cap_credits_df.csv'); 
SW_pen_mat = table2array(SW_pen_level);
SW_cred_mat = table2array(SW_credits);

SW_on_wind_pen = SW_pen_mat(:,1:25);
SW_PV_pen = SW_pen_mat(:,26:50);
SW_on_wind_CC = SW_cred_mat(:,1:25);
SW_PV_CC = SW_cred_mat(:,26:50);

%-----------------------------------
TX_pen_level = readtable('PLT_28_E1_TX_Penetration_levels_df.csv');
TX_credits = readtable('PLT_28_E1_TX_Cap_credits_df.csv'); 
TX_pen_mat = table2array(TX_pen_level);
TX_cred_mat = table2array(TX_credits);

TX_on_wind_pen = TX_pen_mat(:,1:5);
TX_PV_pen = TX_pen_mat(:,6:10);
TX_on_wind_CC = TX_cred_mat(:,1:5);
TX_PV_CC = TX_cred_mat(:,6:10);



%---------------------- All resources Plot -------------------------->

% Figure parameters
x0=100;y0=-200;width=1290;height=872;
figure('Position', [x0,y0,width,height]);
%figure(1) % panel plot for all regions, penetration level
t = tiledlayout(3,3, 'TileSpacing','tight');

%----first row--->
nexttile
plot(NW_on_wind_pen*100, NW_on_wind_CC, 'color', '#0096FF')
hold on
plot(NW_PV_pen*100, NW_PV_CC, 'color', '#FFBF00')
hold on
plot(NW_off_wind_pen*100, NW_off_wind_CC, 'color', '#000000','LineWidth',2)
xlim([0 70])
ylim([0 1])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on
%text(xlim(1),ylim(2),'NW')
%title('NW')

nexttile
plot(N_CEN_on_wind_pen*100, N_CEN_on_wind_CC, 'color', '#0096FF')
hold on
plot(N_CEN_PV_pen*100, N_CEN_PV_CC, 'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('N CEN')

nexttile
plot(NE_on_wind_pen*100, NE_on_wind_CC, 'color', '#0096FF')
hold on
plot(NE_PV_pen*100, NE_PV_CC, 'color', '#FFBF00')
hold on
plot(NE_off_wind_pen*100, NE_off_wind_CC, 'color', '#000000','LineWidth',2)
hold on

h(1) = plot(1:2,1:2, 'color', '#0096FF');
h(2) = plot(1:2,1:2, 'color', '#FFBF00');
h(3) = plot(1:2,1:2, 'color', '#000000','LineWidth',2);
legend(h([1,2,3]),{'Onshore Wind', 'Solar','Offshore Wind'},'Location','northeast','EdgeColor',[0.5 0.5 0.5],'LineWidth',2,'FontSize',14)

xlim([0 70])
ylim([0 1])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('NE')
%legend('Onshore Wind','Solar','Offshore Wind','Location','best','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)


%---second row--->
nexttile
plot(CA_on_wind_pen*100, CA_on_wind_CC, 'color', '#0096FF')
hold on
plot(CA_PV_pen*100, CA_PV_CC, 'color', '#FFBF00')
hold on
plot(CA_off_wind_pen*100, CA_off_wind_CC, 'color', '#000000','LineWidth',2)
xlim([0 70])
ylim([0 1])
set(gca,'xticklabel', [],'FontSize',12.5)
grid on
%title('CA')

nexttile
plot(CEN_on_wind_pen*100, CEN_on_wind_CC,'color', '#0096FF')
hold on
plot(CEN_PV_pen*100, CEN_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('CEN')

nexttile
plot(MID_AT_on_wind_pen*100, MID_AT_on_wind_CC,'color', '#0096FF')
hold on
plot(MID_AT_PV_pen*100, MID_AT_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
%title('MID AT')


%--- third row--->
nexttile
plot(SW_on_wind_pen*100, SW_on_wind_CC,'color', '#0096FF')
hold on
plot(SW_PV_pen*100, SW_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca,'FontSize',12.5)
grid on
%title('SW')

nexttile
plot(TX_on_wind_pen*100, TX_on_wind_CC,'color', '#0096FF')
hold on
plot(TX_PV_pen*100, TX_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca, 'yticklabel', [],'FontSize',12.5)
grid on
%title('TX')

nexttile
plot(SE_on_wind_pen*100, SE_on_wind_CC,'color', '#0096FF')
hold on
plot(SE_PV_pen*100, SE_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
set(gca, 'yticklabel', [],'FontSize',12.5)
grid on
%title('SE')

% Specify common title, X and Y labels
title(t, 'Resource Capacity Credit vs. Penetration Level, All Regions', 'FontSize', 25)
xlabel(t, 'Power Penetration Level (%)', 'FontSize', 25)
ylabel(t, 'Capacity Credit', 'FontSize', 25)


%--------------- Individual Region plots ---------------->
% ------ first 3 --->
figure(2)
plot(NW_on_wind_pen*100, NW_on_wind_CC, 'color', '#0096FF')
hold on
plot(NW_PV_pen*100, NW_PV_CC, 'color', '#FFBF00')
hold on
plot(NW_off_wind_pen*100, NW_off_wind_CC, 'color', '#000000','LineWidth',2)
xlim([0 70])
ylim([0 1])
%set(gca,'xticklabel', [],'FontSize',12.5)
grid on
%text(xlim(1),ylim(2),'NW')
title('NW')

figure(3)
plot(N_CEN_on_wind_pen*100, N_CEN_on_wind_CC, 'color', '#0096FF')
hold on
plot(N_CEN_PV_pen*100, N_CEN_PV_CC, 'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
title('N CEN')

figure(4)
plot(NE_on_wind_pen*100, NE_on_wind_CC, 'color', '#0096FF')
hold on
plot(NE_PV_pen*100, NE_PV_CC, 'color', '#FFBF00')
hold on
plot(NE_off_wind_pen*100, NE_off_wind_CC, 'color', '#000000','LineWidth',2)
%h(1) = plot(1:2,1:2, 'color', '#0096FF')
%h(2) = plot(1:2,1:2, 'color', '#FFBF00')
%h(3) = plot(1:2,1:2, 'color', '#000000','LineWidth',2)
%legend(h([1,2,3]),{'Onshore Wind', 'Solar','Offshore Wind'},'Location','northeast','EdgeColor',[0.5 0.5 0.5],'LineWidth',2,'FontSize',14)
xlim([0 70])
ylim([0 1])
%(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
title('NE')
%legend('Onshore Wind','Solar','Offshore Wind','Location','best','EdgeColor',[0.5 0.5 0.5],'LineWidth',2)


%--- second 3 --->
figure(5)
plot(CA_on_wind_pen*100, CA_on_wind_CC, 'color', '#0096FF')
hold on
plot(CA_PV_pen*100, CA_PV_CC, 'color', '#FFBF00')
hold on
plot(CA_off_wind_pen*100, CA_off_wind_CC, 'color', '#000000','LineWidth',2)
xlim([0 70])
ylim([0 1])
%set(gca,'xticklabel', [],'FontSize',12.5)
grid on
title('CA')

figure(6)
plot(CEN_on_wind_pen*100, CEN_on_wind_CC,'color', '#0096FF')
hold on
plot(CEN_PV_pen*100, CEN_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
title('CEN')

figure(7)
plot(MID_AT_on_wind_pen*100, MID_AT_on_wind_CC,'color', '#0096FF')
hold on
plot(MID_AT_PV_pen*100, MID_AT_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca,'xticklabel',[], 'yticklabel', [],'FontSize',12.5)
grid on
title('MID AT')


%--- third 3 --->
figure(8)
plot(SW_on_wind_pen*100, SW_on_wind_CC,'color', '#0096FF')
hold on
plot(SW_PV_pen*100, SW_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca,'FontSize',12.5)
grid on
title('SW')

figure(9)
plot(TX_on_wind_pen*100, TX_on_wind_CC,'color', '#0096FF')
hold on
plot(TX_PV_pen*100, TX_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca, 'yticklabel', [],'FontSize',12.5)
grid on
title('TX')

figure(10)
plot(SE_on_wind_pen*100, SE_on_wind_CC,'color', '#0096FF')
hold on
plot(SE_PV_pen*100, SE_PV_CC,'color', '#FFBF00')
xlim([0 70])
ylim([0 1])
%set(gca, 'yticklabel', [],'FontSize',12.5)
grid on
title('SE')


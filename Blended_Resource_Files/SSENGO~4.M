% Test 3 for SW

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


%-------------------
%--------------------- Absolute error, capacity credit points --------
x0=100;y0=50;width=1200;height=700;
figure('Position', [x0,y0,width,height]);


%b = area(SW_cap_mat(:,4)/1000, SW_diff_abs(:,4),'FaceAlpha',0.1);
%b(1).FaceColor = '#C6A83B';

%d = area(SW_cap_mat(:,8)/1000, SW_diff_abs(:,8),'FaceAlpha',0.1);
%d(1).FaceColor = '#7C898A'
e = area(SW_cap_mat(:,8)/1000, SW_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SW_cap_mat(:,6)/1000, SW_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SW_cap_mat(:,4)/1000, SW_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';

b1 = plot(SW_cap_mat(:,1)/1000, SW_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(SW_cap_mat(:,11)/1000, SW_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',2.5)
xline(min(SW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([0 105])
%ylim([0 0.25])
grid on
legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','best')
%legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend'},'Location','best')
%legend({'WND-PV,0-100 blend','WND-PV,30-70 blend','WND-PV,50-50 blend','WND-PV,70-30 blend','WND-PV,100-0 blend'})
title('Blend Mix Absolute Error with respect to WND-PV CC Avg, SW', 'FontSize', 25)
xlabel('Power Capacity Level (GW)', 'FontSize', 25)
ylabel('Capacity Credit Absolute Error', 'FontSize', 25)

%------------------ Relative error for capacity credit ---------------
x0=100;y0=50;width=1200;height=700;
figure('Position', [x0,y0,width,height]);


%b = area(SW_cap_mat(:,4)/1000, SW_diff_rel(:,4),'FaceAlpha',0.1);
%b(1).FaceColor = '#C6A83B';

%d = area(SW_cap_mat(:,8)/1000, SW_diff_rel(:,8),'FaceAlpha',0.1);
%d(1).FaceColor = '#7C898A'
e = area(SW_cap_mat(:,8)/1000, SW_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(SW_cap_mat(:,6)/1000, SW_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(SW_cap_mat(:,4)/1000, SW_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(SW_cap_mat(:,1)/1000, SW_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(SW_cap_mat(:,11)/1000, SW_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);

yline(0,'color', '#006400','LineWidth',2.5)
xline(min(SW_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([0 105])
%ylim([0 0.25])
grid on
legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','best')
%legend({'WND-PV,0-100 blend','WND-PV,30-70 blend','WND-PV,50-50 blend','WND-PV,70-30 blend','WND-PV,100-0 blend'})
title('Blend Mix Relative Error with respect to WND-PV CC Avg, SW', 'FontSize', 25)
xlabel('Power Capacity Level (GW)', 'FontSize', 25)
ylabel('Capacity Credit Relative Error (%)', 'FontSize', 25)



%-----------------------------------------------------------------

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


%-------------------
%--------------------- Absolute error, capacity credit points --------
x0=100;y0=50;width=1200;height=700;
figure('Position', [x0,y0,width,height]);


%b = area(NE_cap_mat(:,4)/1000, NE_diff_abs(:,4),'FaceAlpha',0.1);
%b(1).FaceColor = '#C6A83B';

%d = area(NE_cap_mat(:,8)/1000, NE_diff_abs(:,8),'FaceAlpha',0.1);
%d(1).FaceColor = '#7C898A'
e = area(NE_cap_mat(:,8)/1000, NE_diff_abs(:,8),'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NE_cap_mat(:,6)/1000, NE_diff_abs(:,6),'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NE_cap_mat(:,4)/1000, NE_diff_abs(:,4),'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';

b1 = plot(NE_cap_mat(:,1)/1000, NE_diff_abs(:,1),'--','color', '#FFC000','LineWidth',2);
b11 = plot(NE_cap_mat(:,11)/1000, NE_diff_abs(:,11),'--','color', '#4472C4','LineWidth',2);
yline(0,'color', '#006400','LineWidth',2.5)
xline(min(NE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([0 105])
%ylim([0 0.25])
grid on
legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','best')
%legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend'},'Location','best')
%legend({'WND-PV,0-100 blend','WND-PV,30-70 blend','WND-PV,50-50 blend','WND-PV,70-30 blend','WND-PV,100-0 blend'})
title('Blend Mix Absolute Error with respect to WND-PV CC Avg, NE', 'FontSize', 25)
xlabel('Power Capacity Level (GW)', 'FontSize', 25)
ylabel('Capacity Credit Absolute Error', 'FontSize', 25)

%------------------ Relative error for capacity credit ---------------
x0=100;y0=50;width=1200;height=700;
figure('Position', [x0,y0,width,height]);


%b = area(NE_cap_mat(:,4)/1000, NE_diff_rel(:,4),'FaceAlpha',0.1);
%b(1).FaceColor = '#C6A83B';

%d = area(NE_cap_mat(:,8)/1000, NE_diff_rel(:,8),'FaceAlpha',0.1);
%d(1).FaceColor = '#7C898A'
e = area(NE_cap_mat(:,8)/1000, NE_diff_rel(:,8)*100,'FaceAlpha',0.5,'LineWidth',1.5);
e(1).FaceColor = '#5679B1';
hold on
c = area(NE_cap_mat(:,6)/1000, NE_diff_rel(:,6)*100,'FaceAlpha',0.5,'LineWidth',1.5);
c(1).FaceColor = '#A19962';
a = area(NE_cap_mat(:,4)/1000, NE_diff_rel(:,4)*100,'FaceAlpha',0.5,'LineWidth',1.5);
a(1).FaceColor = '#ECB814';
b1 = plot(NE_cap_mat(:,1)/1000, NE_diff_rel(:,1)*100,'--','color', '#FFC000','LineWidth',2);
b11 = plot(NE_cap_mat(:,11)/1000, NE_diff_rel(:,11)*100,'--','color', '#4472C4','LineWidth',2);

yline(0,'color', '#006400','LineWidth',2.5)
xline(min(NE_cap_mat_initial/1000),'--','color', '#FF0000','LineWidth',1)
xlim([0 105])
%ylim([0 0.25])
grid on
legend({'WND-PV,70-30 blend','WND-PV,50-50 blend','WND-PV,30-70 blend','WND-PV,0-100 blend','WND-PV,100-0 blend','WND-PV CC Avg','Total WND-PV ExistCap'},'Location','best')
%legend({'WND-PV,0-100 blend','WND-PV,30-70 blend','WND-PV,50-50 blend','WND-PV,70-30 blend','WND-PV,100-0 blend'})
title('Blend Mix Relative Error with respect to WND-PV CC Avg, NE', 'FontSize', 25)
xlabel('Power Capacity Level (GW)', 'FontSize', 25)
ylabel('Capacity Credit Relative Error (%)', 'FontSize', 25)

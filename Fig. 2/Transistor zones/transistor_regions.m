clear, close all
load data_panels.mat

%% Prepare figure main
f = figure(1);
f.Position = [30 30 1100 500];
f.Color = [1 1 1];
t = tiledlayout(1,2,"TileSpacing","loose","Padding","compact");

ax1 = nexttile;
plot(R1on.Vin, R1on.V, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(R1off.Vin, R1off.V, '--', 'LineWidth', 1, 'Color', '#3385F5')
plot([0 5],VT1*ones(1,2),'k--','LineWidth',1,HandleVisibility='off')
plot(0.793*ones(1,2), [0 0.38],'k--','LineWidth',1,HandleVisibility='off')
plot(1.051*ones(1,2), [0 0.642],'k--','LineWidth',1,HandleVisibility='off')
xticks([0 0.5 0.793 1.051 1.5 2])
set(gca,"XTickLabel",{'0','0.5','', '', '1.5', '2'})
ylim([0 1.2])
xlabel("{\itV}_{OEND} (V)", "FontSize", 30)
ylabel("{\itV}_{GS1} (V)")
hold off

text(.06,0.49,"V_{TH1}",VerticalAlignment="bottom",FontSize=28)
text(1.107,0.49,"T1 OFF",VerticalAlignment="bottom",FontSize=28)
text(1.107,0.46,"T1 LIN",VerticalAlignment="top",FontSize=28)
text(.45,0.1,"(1)",HorizontalAlignment="center",FontSize=28)
text(1.15,0.23,"(2)",HorizontalAlignment="center",FontSize=28)
text(1.1,0.82,"(3)",HorizontalAlignment="center",FontSize=28)
text(0.7,0.23,"(4)",HorizontalAlignment="center",FontSize=28)

set(gca,"FontSize",30)
set(gca,"LineWidth",1)
xticks([0 0.5 0.793 1.051 1.5]);
xticklabels({"0", "0.5", "{\itV}_{OFF}", "{\itV}_{ON}", "1.5"})
xtickangle(0)

ax2 = nexttile;
plot(T2on.Vin, T2on.VSG2, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(T2off.Vin, T2off.VSG2, '--', 'LineWidth', 1, 'Color', '#3385F5')
plot([0 5],-VT2*ones(1,2),'k--','LineWidth',1,HandleVisibility='off')
plot(0.792*ones(1,2), [0 0.365],'k--','LineWidth',1,HandleVisibility='off')
plot(1.051*ones(1,2), [0 0.405],'k--','LineWidth',1,HandleVisibility='off')
xticks([0 0.5 0.793 1.051 1.5 2])
set(gca,"XTickLabel",{'0','0.5','', '', '1.5', '2'})
ylim([0 0.5])
xlabel("{\itV}_{OEND} (V)", "FontSize", 30)
ylabel("{\itV}_{SG2} (V)")
hold off

text(.05,0.22,"\midV_{TH2}\mid",VerticalAlignment="bottom",FontSize=28)
text(1.107,0.22,"T2 SAT",VerticalAlignment="bottom",FontSize=28)
text(1.107,0.215,"T2 OFF",VerticalAlignment="top",FontSize=28)
text(.45,0.12,"(1)",HorizontalAlignment="center",FontSize=28)
text(1.15,0.34,"(2)",HorizontalAlignment="center",FontSize=28)
text(1.1,0.45,"(3)",HorizontalAlignment="center",FontSize=28)
text(0.7,0.28,"(4)",HorizontalAlignment="center",FontSize=28)

set(gca,"FontSize",30)
set(gca,"LineWidth",1)
xticks([0 0.5 0.793 1.051 1.5]);
xticklabels({"0", "0.5", "{\itV}_{OFF}", "{\itV}_{ON}", "1.5"})
xtickangle(0)

linkaxes([ax1,ax2], 'x')
xlim([0 1.5])
% linkaxes([ax4,ax5,ax6], 'y')
% % ylim([0 1e-3])
% % ylabel(t,"Current (A)")
clear all
close all
load Scurve_data_IV.mat

%% S-curve splitted in regions, I(V)

f = figure(1);
lines_width = 2;
plot(Scurve_sim.V(1:1000), Scurve_sim.I(1:1000),'Color','#F5266D','LineWidth',lines_width);
hold on
plot(Scurve_sim.V(1000:end), Scurve_sim.I(1000:end),'Color','#3385F5','LineWidth',lines_width);
set(gca,"LineWidth",1)
set(gca,"Box","off")

line([0.774 0.774], [0 0.52e-3], "Color", "black", "LineStyle", "--", "LineWidth", 2)
line([1.055 1.055], [0 1e-3], "Color", "black", "LineStyle", "--", "LineWidth", 2)

% Regions indication
text(0.2, 0.1e-3,'Region (1)','FontSize',18)
text(1.1, 0.6e-3,'Region (2)','FontSize',18)
text(0.86, 1.2e-3,'Region (3)','FontSize',18)
text(0.43, 0.33e-3,'Region (4)','FontSize',18)

hold off
xlabel('{\itV}_{OEND} (V)')
ylabel('{\itI}_{OEND} (A)')
set(f,'Color','white')
xlabel('{\itV}_{OEND} (V)')
ylabel('{\itI}_{OEND} (A)')
set(f,'Color','white')
ylim([0 1.5e-3])
xlim([0 1.5])
xticks([0 0.5 0.774 1.055 1.5])
set(gca,"XTickLabel",{'0','0.5','V_{OFF}','V_{ON}',1.5})
% yticks([0 0.137e-3 0.5127e-3 1e-3 1.5e-3])
% set(gca,"YTickLabel",{0,'I_{ON}','I_{OFF}',1,1.5})
set(gca, "FontSize", 26)
clear all
close all

%% S-curve with load line, V(I)
load Scurve_data_VI.mat
f = figure(1);
f.Position(3:4) = [600 500];
lines_width = 1.5;

% rectangle('Position',[0.77 1.44e-4 0.29 3.76e-4],'LineWidth',0.5,'LineStyle','-','FaceColor','#F5CD8B')
hold on
ax2 = scatter(Scurve_meas.V(1:2:length(Scurve_meas.V)/2), Scurve_meas.I(1:2:length(Scurve_meas.I)/2),70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);
ax1 = plot(Scurve_sim.V, Scurve_sim.I,'Color','#F5266D','LineWidth',lines_width);

set(gca,'ColorOrderIndex',1) % To reset the classic color order of Matlab

% loadline_sel = LoadLine_sim.V < max(Scurve_sim.V);
% plot(LoadLine_sim.V(loadline_sel), LoadLine_sim.I(loadline_sel),'k--',...
%     'LineWidth',lines_width);

hold off
legend([ax2, ax1], {'Measures', 'Simulation'}, 'Location', 'northwest',...
    'Box', 'off');
xlabel('{\itV}_{OEND} (V)')
ylabel('{\itI}_{OEND} (A)')
set(f,'Color','white')
ylim([0 1.5e-3])
xlim([0 1.5])
set(gca,'Box','on')
set(gca, "FontSize", 30)

%% S-curve with load line, I(V)
load Scurve_data_IV.mat

f = figure(2);
f.Position(3:4) = [600 500];
lines_width = 1.5;
ax2 = scatter(Scurve_meas.V(1:3:end), Scurve_meas.I(1:3:end),70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);
hold on
ax1 = plot(Scurve_sim.V, Scurve_sim.I,'Color','#F5266D','LineWidth',lines_width);

% loadline_sel = LoadLine_sim.V < max(Scurve_sim.V);
% plot(LoadLine_sim.V(loadline_sel), LoadLine_sim.I(loadline_sel),'k--',...
%     'LineWidth',lines_width);

hold off
legend([ax2, ax1], {'Measures','Simulation'}, 'Location', 'northwest',...
    'Box', 'off');
xlabel('{\itV}_{OEND} (V)')
ylabel('{\itI}_{OEND} (A)')
set(f,'Color','white')
ylim([0 1.5e-3])
xlim([0 1.5])
% xticks([0 0.5 0.774 1.055 1.5])
% set(gca,"XTickLabel",{'0','0.5','V_{OFF}','V_{ON}',1.5})
% yticks([0 0.137e-3 0.5127e-3 1e-3 1.5e-3])
% set(gca,"YTickLabel",{0,'I_{ON}','I_{OFF}',1,1.5})
set(gca, "FontSize", 30)
set(gca, "Box", "on")
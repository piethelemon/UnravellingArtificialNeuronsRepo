clear all
load data_oscillation.mat

%% Current oscillation
f = figure(1);
f.Position(3:4) = [540 365];
lines_width = 1.5;
ax1 = plot(i_sim.t-min(i_sim.t), i_sim.i,'Color','#F5266D','LineWidth',lines_width);
hold  on

time_sel = i_meas.t > min(i_sim.t) & i_meas.t < max(i_sim.t);
set(gca,'ColorOrderIndex',1) % To reset the classic color order of Matlab
ax2 = scatter(i_meas.t(time_sel)-min(i_meas.t(time_sel)), i_meas.i(time_sel),70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);

hold off
legend([ax2, ax1], {'Measurements', 'Simulation'}, 'Location', 'northwest',...
    'Box', 'off');
xlabel('Time_{a} (s)')
ylabel('{\itI}_{spike} (A)')
set(f,'Color','white')
ylim([0 1.5e-3])
% xlim([0 1.5])
set(gca, "FontSize", 30)
%% Voltage oscillation
f = figure(2);
f.Position(3:4) = [540 365];
lines_width = 1.5;
ax1 = plot(v_sim.t-min(v_sim.t), v_sim.v,'Color','#F5266D','LineWidth',lines_width);
hold  on

time_sel = v_meas.t > min(v_sim.t) & v_meas.t < max(v_sim.t);
set(gca,'ColorOrderIndex',1) % To reset the classic color order of Matlab
ax2 = scatter(v_meas.t(time_sel)-min(v_meas.t(time_sel)), v_meas.v(time_sel),70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);

hold off
legend([ax2, ax1], {'Measurements', 'Simulation'}, 'Location', 'northwest',...
    'Box', 'off');
xlabel('Time (s)')
ylabel('{\itV}_{spike} (V)')
set(f,'Color','white')
ylim([0.7 1.2])
set(gca, "FontSize", 30)
% xlim([0 1.5])
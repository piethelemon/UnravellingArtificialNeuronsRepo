clear all, close all
% load time_data.mat
load time_measures_NaCl.mat
load time_data_NaCl.mat

%% Plot of the time oscillation, Na
f = figure(2);
f.Position = [520 20 400 850];
f.Color = [1 1 1];
t = tiledlayout(4,1,"TileSpacing","loose","Padding","loose");

% 0 Hz
ax1 = nexttile;
plot(NaCl_80mM.Time(1:3:end)-0.1, NaCl_80mM.Iout(1:3:end)*100,'o--','MarkerFaceColor',[1 1 1]*0.95)
hold on
plot(sim70mM.t-min(sim70mM.t), sim70mM.I, 'LineWidth', 1, 'Color', '#9E2DA8')
xticklabels([])
set(gca,"FontSize", 20)
set(gca,"LineWidth",1)
ylabel("{\itI}_{spike} (A)","FontSize",24)
ax1.Box = "off";
xticks(0:0.05:0.2)
text(.11, 1.8e-4*1e6, "{\itc}_{Na^+} = 75 mM", "FontSize", 18)
legend({'Measurements', 'Simulations'}, "Location", "northwest", "Box", "off")

% 19 Hz
ax2 = nexttile;

% plot(c2.t-min(c2.t), c2.I, 'LineWidth', 1, 'Color', '#F5266D')
plot(NaCl_80mM.Time(1:3:end)-0.1, NaCl_80mM.Iout(1:3:end),'o--','MarkerFaceColor',[1 1 1]*0.95)
hold on
plot(sim80mM.time-min(sim80mM.time), sim80mM.Iout, 'LineWidth', 1, 'Color', '#9E2DA8')
xticklabels([])
set(gca,"FontSize", 20)
set(gca,"LineWidth",1)
ylabel("{\itI}_{spike} (A)","FontSize",24)
ax2.Box = "off";
xticks(0:0.05:0.2)
text(.11, 1.8e-4*1e6, "{\itc}_{Na^+} = 80 mM", "FontSize", 18)

% 33 Hz
ax3 = nexttile;
plot(NaCl_90mM.Time(1:3:end), NaCl_90mM.Iout(1:3:end),'o--','MarkerFaceColor',[1 1 1]*0.95)
hold on
plot(sim90mM.time-min(sim90mM.time), sim90mM.Iout, 'LineWidth', 1, 'Color', '#9E2DA8')
xticklabels([])
set(gca,"FontSize", 20)
set(gca,"LineWidth",1)
ylabel("{\itI}_{spike} (μA)","FontSize",24)
ax3.Box = "off";
xticks(0:0.05:0.2)
text(.11, 1.8e-4*1e6, "{\itc}_{Na^+} = 90 mM", "FontSize", 18)

% 38 Hz
ax4 = nexttile;
plot(NaCl_150mM.Time(1:3:end), NaCl_150mM.Iout(1:3:end),'o--','MarkerFaceColor',[1 1 1]*0.95)
hold on
plot(sim150mM.time-min(sim150mM.time), sim150mM.Iout, 'LineWidth', 1, 'Color', '#9E2DA8')
set(gca,"FontSize", 20)
set(gca,"LineWidth",1)
ylabel("{\itI}_{spike} (A)","FontSize",24)
ax4.Box = "off";
xticks(0:0.05:0.2)
text(.11, 1.8e-4*1e6, "{\itc}_{Na^+} = 150 mM", "FontSize", 18)

linkaxes([ax1, ax2, ax3, ax4], "xy");
xlim([0 0.151])
ylim([0 2]*1e-4)
% ylabel(t,"{\itI}_{spike} (V)","FontSize",32)
xlabel(t,"Time (s)","FontSize",24)
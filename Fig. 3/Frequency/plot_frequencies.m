clear, close all

%% Frequencies plot
% Data extracted from simulations, measures and analytical model in eq. 5
% of the paper.
load data_frequency_analytical.mat

f = figure(1);
f.Color = [1 1 1];
f.Position = [25 25 485 425];

ax1 = plot(CL, freq, "LineWidth", 1.5, "Color", "#F5266D");
hold on
ax2 = plot(CL_meas, freq_meas, "o", "LineWidth", 1.5, "Color", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95, "MarkerSize", 10);
ax3 = plot(CL_analytical, (freq_analytical-min(freq_analytical))*0.8+min(freq_analytical), "--", "LineWidth", 1.5, "Color", "#8839AB", "MarkerFaceColor", ones(1,3)*0.95, "MarkerSize", 10);
ylabel("f_{spike} (Hz)")
xlabel("C_L (μF)")
legend([ax2 ax1 ax3], {"Measurements", "Simulations", "Analytical model"},"Location", "northeast", "Box", "off");
xlim([0 11])
ylim([0 60])
set(gca, "FontSize", 26)
hold off

%% Measure fitting
load CL_data.mat

fig = figure(2);
fig.Color = [1 1 1];
fig.Position = [25 25 1200 300];
scale = 1e6;

t = tiledlayout(1,3, "TileSpacing", "loose", "Padding","loose");

skip = 2;
ax1 = nexttile;
ax1.LineWidth = 1;
scatter(CL1uF_meas.time(1:skip:end), CL1uF_meas.I(1:skip:end)*scale,70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);
hold on
plot(CL1uF.time-CL1uF.time(1)-0.013, CL1uF.I*scale, "LineWidth", 2, "Color", "#F5266D");
hold off
xlabel("Time (s)")
ylabel("I_{spike} (µA)")
xlim([0 0.3])
leg = legend({"Measurements", "Simulations"}, "Location", "northwest", "Box", "off");
leg.Position = leg.Position + [0 0.12 0 0];

skip = 10;
ax2 = nexttile;
ax2.LineWidth = 1;
scatter(CL5uF_meas.time(1:skip:end), CL5uF_meas.I(1:skip:end)*scale,70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);
hold on
plot(CL5uF.time-CL5uF.time(1)-0.07, CL5uF.I*scale, "LineWidth", 2, "Color", "#F5266D");
hold off
xlabel("Time (s)")
% ylabel("I_{spike} (A)")
leg = legend({"Measurements", "Simulations"}, "Location", "northwest", "Box", "off");
leg.Position = leg.Position + [0 0.12 0 0];

skip = 15;
ax3 = nexttile;
ax3.LineWidth = 1;
scatter(CL10uF_meas.time(1:skip:end)-0.05, CL10uF_meas.I(1:skip:end)*scale,70,'Marker','o','LineWidth',1, "MarkerEdgeColor", "#3385F5", "MarkerFaceColor", ones(1,3)*0.95);
hold on
plot(CL10uF.time-CL10uF.time(1)-0.04, CL10uF.I*scale, "LineWidth", 2, "Color", "#F5266D");
hold off
xlabel("Time (s)")
% ylabel("I_{spike} (A)")
leg = legend({"Measurements", "Simulations"}, "Location", "northwest", "Box", "off");
leg.Position = leg.Position + [0 0.12 0 0];

linkaxes([ax1 ax2 ax3], 'y');
ylim([0.4e-4 1.5e-4]*scale)
linkaxes([ax2 ax3], 'x');
xlim([0 0.3])
% Load data
clear
load gm1/results_gm1.mat
load gm2/results_gm2.mat
load Cv1/results_Cv1.mat
load Cv2/results_Cv2.mat
load R1/results_R1.mat
load R2/results_R2.mat
load VTH1/results_VTH1.mat
load VTH2/results_VTH2.mat

color_VTH1 = {'#362A15', '#C39A54'};
color_VTH2 = {'#144814', '#55D455'};
color_gm1 = {'#63180D', '#EC634F'};
color_gm2 = {'#5C212F', '#D57D91'};
color_R1 = {'#194648', '#5FCACD'};
color_R2 = {'#4B215E', '#B777D4'};
color_Cv1 = {'#355049', '#00FABA'};
color_Cv2 = {'#7A4C52', '#CF3B4F'};
Font_Size = 22;
tick_length = [0.025 0.025];

%% freq + energy
% t = tiledlayout(4,2, "TileSpacing", "loose", "Padding","compact");
y_lim = [-10 110];
y_lim_energy = [-0.5 6.5]*1e-6;

% VTH1
% ax1 = nexttile;
% ax1.LineWidth = 1;
f = figure(1);
f.Position(3) = 350;
plot(results_VTH1.values, results_VTH1.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_VTH1{1})
xlim([0.4 0.48]), xticks(linspace(0.41,0.47,3));
ylim(y_lim)
xlabel("{\itV}_{TH1} (V)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_VTH1.values, results_VTH1.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_VTH1{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% VTH2
% ax2 = nexttile;
% ax2.LineWidth = 1;
f = figure(2);
f.Position(3) = 350;
plot(results_VTH2.values, results_VTH2.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_VTH2{1})
xlim([-0.22 -0.08]), xticks(-0.2:0.05:-0.1)
xtickangle(0)
ylim(y_lim)
xlabel("{\itV}_{TH2} (V)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_VTH2.values, results_VTH2.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_VTH2{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% gm1
% ax3 = nexttile;
% ax3.LineWidth = 1;
f = figure(3);
f.Position(3) = 350;
plot(results_gm1.values, results_gm1.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_gm1{1})
xlim([7 18]*1e-6), xticks(linspace(8,17,3)*1e-6)
ylim(y_lim)
xlabel("{\itg}_{m1} (S/V)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_gm1.values, results_gm1.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_gm1{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% gm2
% ax4 = nexttile;
% ax4.LineWidth = 1;
f = figure(4);
f.Position(3) = 350;
plot(results_gm2.values, results_gm2.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_gm2{1})
xlim([-20 270]*1e-6), xticks(linspace(0,250,3)*1e-6)
ylim(y_lim)
xlabel("{\itg}_{m2} (S/V)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_gm2.values, results_gm2.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_gm2{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% Cv1
% ax3 = nexttile;
% ax3.LineWidth = 1;
f = figure(5);
f.Position(3) = 350;
plot(results_Cv1.values, results_Cv1.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_gm1{1})
xlim([30 70]), xticks(linspace(35,65,4))
ylim(y_lim)
xlabel("{\itC}_{v1} (F/cm^3)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_Cv1.values, results_Cv1.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_gm1{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% Cv2
% ax4 = nexttile;
% ax4.LineWidth = 1;
f = figure(6);
f.Position(3) = 350;
plot(results_Cv2.values, results_Cv2.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_gm2{1})
xlim([10 320]), xticks(linspace(30,300,4))
ylim(y_lim)
xlabel("{\itC}_{v2} (F/cm^3)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_Cv2.values, results_Cv2.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_gm2{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)

% R1
% ax7 = nexttile;
% ax7.LineWidth = 1;
f = figure(7);
f.Position(3) = 350;
plot(results_R1.values, results_R1.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_R1{1})
xlim([5.3 7.8]*1e3), xticks((5.5:1:7.5)*1e3)
ylim(y_lim)
xlabel("{\itR}_1 (\Omega)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_R1.values, results_R1.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_R1{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)
ax = gca();
ax.XAxis.Exponent = 3;

% R2
% ax8 = nexttile;
% ax8.LineWidth = 1;
f = figure(8);
f.Position(3) = 350;
plot(results_R2.values, results_R2.freq, 'o-', 'LineWidth', 1.5, 'MarkerSize', 10, 'MarkerFaceColor', ones(1,3)*0.95, "Color", color_R2{1})
xlim([9 26]*1e3), xticks((10:5:25)*1e3)
ylim(y_lim)
xlabel("{\itR}_2 (\Omega)")
ylabel("f_{spike} (Hz)")
set(gca, "YColor", 'black');
yyaxis right
plot(results_R2.values, results_R2.mean_energy, '^-', 'LineWidth', 1.5, 'MarkerSize', 9, "MarkerFaceColor", ones(1,3)*0.95, "Color", color_R2{2})
ylim(y_lim_energy);
set(gca, "YColor", 'black');
ylabel("E_{spike} (J)")
set(gca, "LineWidth", 1)
set(gca, "FontSize", Font_Size)
set(gca, "TickLength", tick_length)
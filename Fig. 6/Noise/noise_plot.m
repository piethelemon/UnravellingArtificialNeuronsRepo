clear, close all
load noise_data.mat
load noise_measures.mat

%% Prepare figure
f = figure(1);
f.Position = [20 20 600 800];
f.Color = [1 1 1];
t = tiledlayout(3,2);
scale = 1e6;

% Top

ax1 = nexttile;
set(gca,"LineWidth",1)
plot((noise_25mV.time-10),noise_25mV.I*scale, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(noise_meas.Time, noise_meas.Vpp25mV*scale, 'LineWidth',1.5,'Color',[1 1 1]*0.6)
ylabel("{\itI}_{spike} (μA)")
% xlabel("Time (min)")
% title("V_{pp} = 25 mV")

ax2 = nexttile;
rectangle('Position',[0 71.5e-6*scale 2 2*scale],'LineWidth',1.5,'LineStyle','-','FaceColor','#FFAE36')
hold on
xmin = 0.955;
xmax = 1.005;
set(gca,"LineWidth",1)
set(gca, 'Layer', 'top')
set(gca, 'LineWidth', 1)
set(gca, 'Box', "on")
line([0 2], [71.5e-6 71.5e-6]*scale,'LineWidth',1.5,'LineStyle','-', 'Color', 'black')
plot(Scurve25mV.V, Scurve25mV.I*scale, 'LineWidth', 1, 'Color', '#3385F5')
hold on
plot(load25mV.V, load25mV.I*scale, 'w--', 'LineWidth', 1)
% xlabel("{\itV}_{OEND} (V)")
ylabel("{\itI}_{OEND} (μA)")
xticks([1 1.04 1.08])
UL = [1.0028 0.0001962*scale];

ax3 = nexttile;
set(gca,"LineWidth",1)
plot((noise_50mV.time-10),noise_50mV.I*scale, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(noise_meas.Time, noise_meas.Vpp50mV*scale, 'LineWidth',1.5,'Color',[1 1 1]*0.6)
% xlabel("Time (min)")
ylabel("{\itI}_{spike} (μA)")
% title("V_{pp} = 50 mV")

% Bottom
range_color = (1:-0.01:0.2);
map = range_color'.*ones(length(range_color),3);
% colormap((custom_colormap))

ax4 = nexttile;
rectangle('Position',[0 71.5e-6*scale 2 2*scale],'LineWidth',1.5,'LineStyle','-','FaceColor','#FFAE36')
hold on
xmin = 0.955;
xmax = 1.005;
set(gca,"LineWidth",1)
set(gca, 'Layer', 'top')
set(gca, 'LineWidth', 1)
set(gca, 'Box', "on")
line([0 2], [71.5e-6 71.5e-6]*scale,'LineWidth',1.5,'LineStyle','-', 'Color', 'black')
plot(Scurve50mV.V, Scurve50mV.I*scale, 'LineWidth', 1, 'Color', '#3385F5')
hold on
plot(load50mV.V, load50mV.I*scale, 'w--', 'LineWidth', 1)
ylim([0.1 .3]*1e-3*scale)
xlim([0.955 1.005])
% xlabel("{\itV}_{OEND} (V)")
ylabel("{\itI}_{OEND} (μA)")
xticks([1 1.04 1.08])
% UL = [1.0028 0.0001962*scale];

ax5 = nexttile;
set(gca,"LineWidth",1)
plot((noise_150mV.time-10),noise_150mV.I*scale, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(noise_meas.Time, noise_meas.Vpp150mV*scale, 'LineWidth',1.5,'Color',[1 1 1]*0.6)
xlabel("Time (sec)")
ylabel("{\itI}_{spike} (μA)")
% title("V_{pp} = 150 mV")

ax6 = nexttile;
xmin = 0.955;
xmax = 1.005;
rectangle('Position',[0 71.5e-6*scale 2 2*scale],'LineWidth',1.5,'LineStyle','-','FaceColor','#FFAE36')
hold on
set(gca,"LineWidth",1)
set(gca, 'Layer', 'top')
set(gca, 'LineWidth', 1)
set(gca, 'Box', "on")
line([0 2], [71.5e-6 71.5e-6]*scale,'LineWidth',1.5,'LineStyle','-', 'Color', 'black')
plot(Scurve150mV.V, Scurve150mV.I*scale, 'LineWidth', 1, 'Color', '#3385F5')
hold on
plot(load150mV.V, load150mV.I*scale, 'w--', 'LineWidth', 1)
xlabel("{\itV}_{OEND} (V)")
ylabel("{\itI}_{OEND} (μA)")
xticks([1 1.04 1.08])
% UL = [1.0028 0.0001962*scale];



linkaxes([ax1 ax3 ax5], 'xy');
xlim(ax1, [0 10])
ylim(ax1, [0 2e-4]*scale)
linkaxes([ax2 ax4 ax6], 'xy');
ylim([65e-6 80e-6]*scale)
xlim([1.0 1.08])
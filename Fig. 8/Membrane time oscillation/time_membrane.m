clear all, close all
load time_data.mat

%% Plot time data, with Membrane off-on-off
nobio_range = (osc_sim.time > 0.2) & (osc_sim.time < 49.5);
bio_range = (osc_sim.time > 49.5) & (osc_sim.time < 100);
toxin_range = (osc_sim.time > 100);

fig = figure(1);
fig.Color = [1 1 1];
fig.Position = [0 10 600 450];
t = tiledlayout(fig,2,1,"TileSpacing","tight");
ax1 = nexttile;
plot(osc_sim.time(nobio_range), osc_sim.I(nobio_range)*1000-0.1, 'LineWidth', 1, 'Color', '#3385F5')
xticks([0 50 100 150]);
xticklabels([])
hold on
plot(osc_sim.time(bio_range), osc_sim.I(bio_range)*1000-0.1, 'LineWidth', 1, 'Color', '#33C333')
plot(osc_sim.time(toxin_range), osc_sim.I(toxin_range)*1000-.1, 'LineWidth', 1, 'Color', '#F5266D')
line([49.6 49.6], [0 1], "LineWidth", 1, "Color", "black", "LineStyle", "--")
line([100 100], [0 1], "LineWidth", 1, "Color", "black", "LineStyle", "--")
hold off

set(gca, "FontSize", 28)

ax2 = nexttile;
plot(no_bio_meas.time, no_bio_meas.I*1000, 'LineWidth', 1, 'Color', '#3385F5')
hold on
plot(bio_meas.time, bio_meas.I*1000, 'LineWidth', 1, 'Color', '#33C333')
plot(toxin_meas.time, toxin_meas.I*1000, 'LineWidth', 1, 'Color', '#F5266D')
line([49.6 49.6], [0 1], "LineWidth", 1, "Color", "black", "LineStyle", "--")
line([100 100], [0 1], "LineWidth", 1, "Color", "black", "LineStyle", "--")
hold off

linkaxes([ax1 ax2],'xy')
ylim([0 2e-1])
xlim([0 150])
xlabel(t,'Time (s)', 'FontSize', 28)
ylabel(t,'{\itI}_{OAN} (mA)', 'FontSize', 28)
set(gca, "FontSize", 28)
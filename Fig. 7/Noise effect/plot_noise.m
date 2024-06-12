clear all, close all
load data_conc_noise.mat

fig = figure(1);
fig.Position(3:4) = [330 290];
semilogx(IonConc, NoNoise, 's--', 'LineWidth', 1, 'MarkerFaceColor', 0.95*ones(1,3),'Color','#F5266D', 'MarkerSize', 14)
hold on
semilogx(IonConc, WithNoise, '^--', 'LineWidth', 1, 'MarkerFaceColor', 0.95*ones(1,3),'Color','#3385F5', 'MarkerSize', 10)
xlim([1e-3 1e-1])
ylim([33 52])
set(gca, 'TickLength', [0.025 0.05])
xlabel('{\itc} (M)')
ylabel('Frequency (Hz)')
legend({'With noise', 'Without noise'}, 'Location', 'southeast', 'Box', 'off', 'FontSize', 16)
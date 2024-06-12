clear all, close all

%% Plot time data, with Membrane off-on-off
load Freq_res_data.mat

fig = figure(1);
fig.Color = [1 1 1];
fig.Position = [30 30 600 500];
ax = semilogx(freq_res.f, freq_res.Z, 'LineWidth', 1, 'Color', '#F5266D');
xlabel('Frequency (Hz)')
ylabel('|{\itH}_{AB}| (dB)')
ylim([-0.3 0.101])
xticks([1 1e1 1e2 1e3 1e4 1e5])
set(gca, "FontSize", 28)


% ylim([1.1e-4 3.1e-4])
% xlim([0 8])

%% Plot time data, with Membrane off-on-off
load CM_data.mat

fig = figure(2);
fig.Color = [1 1 1];
fig.Position = [30 30 600 500];
semilogx(CM1.f, CM1.Z, 'LineWidth', 1);
hold on
semilogx(CM2.f, CM2.Z, 'LineWidth', 1);
semilogx(CM3.f, CM3.Z, 'LineWidth', 1);
semilogx(CM4.f, CM4.Z, 'LineWidth', 1, 'Color', '#F5266D');
semilogx(CM5.f, CM5.Z, 'LineWidth', 1);
xlabel('Frequency (Hz)')
ylabel('|{\itH}_{AB}| (dB)')
legend({"C_M = 1 nF", "C_M = 10 nF", "C_M = 100 nF", "C_M = 470 nF", "C_M = 1 μF"}, "Location", "southwest", "Box", "off", "FontSize", 20)
ylim([-0.8 0])
xticks([1 1e1 1e2 1e3 1e4 1e5])
set(gca, "FontSize", 28)
hold off

% ylim([1.1e-4 3.1e-4])
% xlim([0 8])

%% Plot time data, with Membrane off-on-off
load RM_data.mat

fig = figure(3);
fig.Color = [1 1 1];
fig.Position = [30 30 600 500];
semilogx(RM1.f, RM1.Z, 'LineWidth', 1);
hold on
semilogx(RM2.f, RM2.Z, 'LineWidth', 1);
semilogx(RM3.f, RM3.Z, 'LineWidth', 1, 'Color', '#F5266D');
semilogx(RM4.f, RM4.Z, 'LineWidth', 1);
semilogx(RM5.f, RM5.Z, 'LineWidth', 1);
xlabel('Frequency (Hz)')
ylabel('|{\itH}_{AB}| (dB)')
legend({"R_M = 100 \Omega", "R_M = 1 k\Omega", "R_M = 1.75 k\Omega", "R_M = 3 k\Omega", "R_M = 10 k\Omega"}, "Location", "southeast", "Box", "off", "FontSize", 20)
ylim([-0.3 0.101])
xticks([1 1e1 1e2 1e3 1e4 1e5])
set(gca, "FontSize", 28)
hold off

% ylim([1.1e-4 3.1e-4])
% xlim([0 8])
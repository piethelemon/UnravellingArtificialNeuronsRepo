clear all, close all
load data_res.mat
x = 0:.001:5;
y = ones(size(x));
tau_complete = [];
RM = [];

%% Case 1.75k
sel = tau1_75k.t > 4.5;
stability = mean(tau1_75k.I(sel));
plot(tau1_75k.t, tau1_75k.I-stability);
hold on
top = max(tau1_75k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .347;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 2k
sel = tau2k.t > 4.5;
stability = mean(tau2k.I(sel));
plot(tau2k.t, tau2k.I-stability);
hold on
top = max(tau2k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .292;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 2.3k
sel = tau2_3k.t > 4.5;
stability = mean(tau2_3k.I(sel));
plot(tau2_3k.t, tau2_3k.I-stability);
hold on
top = max(tau2_3k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .252;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 2.6k
sel = tau2_6k.t > 4.5;
stability = mean(tau2_6k.I(sel));
plot(tau2_6k.t, tau2_6k.I-stability);
hold on
top = max(tau2_6k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .225;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 3k
sel = tau3k.t > 4.5;
stability = mean(tau3k.I(sel));
plot(tau3k.t, tau3k.I-stability);
hold on
top = max(tau3k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .204;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 3.3k
sel = tau3_3k.t > 4.5;
stability = mean(tau3_3k.I(sel));
plot(tau3_3k.t, tau3_3k.I-stability);
hold on
top = max(tau3_3k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .190;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 3.6k
sel = tau3_6k.t > 4.5;
stability = mean(tau3_6k.I(sel));
plot(tau3_6k.t, tau3_6k.I-stability);
hold on
top = max(tau3_6k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .180;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 4k
sel = tau4k.t > 4.5;
stability = mean(tau4k.I(sel));
plot(tau4k.t, tau4k.I-stability);
hold on
top = max(tau4k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .172;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 4.5k
sel = tau4_5k.t > 4.5;
stability = mean(tau4_5k.I(sel));
plot(tau4_5k.t, tau4_5k.I-stability);
hold on
top = max(tau4_5k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .163;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 5k
% sel = tau5k.t > 4.5;
% stability = mean(tau5k.I(sel));
% plot(tau5k.t, tau5k.I-stability);
% hold on
% top = max(tau5k.I);
% tau_value = (top-stability)/exp(1);
% line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
% tau = .148;
% line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
% scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
% hold off
% tau_complete = [tau_complete tau];
% 
% set(gca, "FontSize", 28)
% xlim([0 5])
% ylim([-1e-4 1e-4])

%% Case 6k
sel = tau6k.t > 4.5;
stability = mean(tau6k.I(sel));
plot(tau6k.t, tau6k.I-stability);
hold on
top = max(tau6k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .144;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 7k
sel = tau7k.t > 4.5;
stability = mean(tau7k.I(sel));
plot(tau7k.t, tau7k.I-stability);
hold on
top = max(tau7k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .140;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 8.5k
sel = tau8_5k.t > 4.5;
stability = mean(tau8_5k.I(sel));
plot(tau8_5k.t, tau8_5k.I-stability);
hold on
top = max(tau8_5k.I);
tau_value = (top-stability)/exp(1);
line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
tau = .137;
line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
hold off
tau_complete = [tau_complete tau];

set(gca, "FontSize", 28)
xlim([0 5])
ylim([-1e-4 1e-4])

%% Case 10k
% sel = tau10k.t > 4.5;
% stability = mean(tau10k.I(sel));
% plot(tau10k.t, tau10k.I-stability);
% hold on
% top = max(tau10k.I);
% tau_value = (top-stability)/exp(1);
% line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
% tau = .119;
% line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
% scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
% hold off
% tau_complete = [tau_complete tau];
% 
% set(gca, "FontSize", 28)
% xlim([0 5])
% ylim([-1e-4 1e-4])

%% Case 12k
% sel = tau12k.t > 4.5;
% stability = mean(tau12k.I(sel));
% plot(tau12k.t, tau12k.I-stability);
% hold on
% top = max(tau12k.I);
% tau_value = (top-stability)/exp(1);
% line(x, y*tau_value, 'Color', 'k', 'LineStyle', '--')
% tau = .119;
% line([tau tau], [0 top-stability], 'Color', 'k', 'LineStyle', '--')
% scatter(tau, tau_value, 80, 'xk', 'LineWidth', 2)
% hold off
% tau_complete = [tau_complete tau];
% 
% set(gca, "FontSize", 28)
% xlim([0 5])
% ylim([-1e-4 1e-4])

%% Tau plot
RM = [1.75 2 2.3 2.6 3 3.3 3.6 4 4.5 6 7 8.5];

fig = figure(1);
fig.Color = [1 1 1];
fig.Position = [30 30 600 500];
plot(RM, tau_complete, 'o--', 'MarkerSize', 18, 'Color', '#3385F5', "MarkerFaceColor", ones(1,3)*0.95, "LineWidth", 1.5)
xlim([1 10.2])
ylim([0.1 .4])
xlabel('{\itR}_M (k\Omega)')
ylabel('\tau (s)')
set(gca, "FontSize", 30)
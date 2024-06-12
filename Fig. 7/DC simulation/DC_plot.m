clear all, close all
load DC_data.mat

% Color scheme
color = flipud(['#0b499d';
    '#0e5fce';
    '#1d77f1';
    '#3585f3';
    '#4c94f5';
    '#64a2f7';
    '#94bffa']);

%% Zoom plot alt.
fig = figure(2);
fig.Position = [20 20 400 700];
colororder(color);
fig.Color = [1 1 1];
tiledlayout(2, 1, "TileSpacing", "loose", "Padding", "loose");
scale = 1;

ax2 = nexttile();

% rectangle("Position", [0 0.000169 10 10], "FaceColor", "#ffbca3")
patch([0.9798 1.3914 1.0407 0.8238], [0.0654 0.098 0.1444 0.1024]*1e-3*scale, [1 0.6823 0.2118])
set(gca, 'Layer', 'top')
set(gca, 'LineWidth', 1)
set(gca, 'Box', "on")
hold on
plot(VT00.V, VT00.I*scale, 'LineWidth', 2)
plot(VT0.V, VT0.I*scale, 'LineWidth', 2)
plot(VT1.V, VT1.I*scale, 'LineWidth', 2)
plot(VT2.V, VT2.I*scale, 'LineWidth', 2)
plot(VT3.V, VT3.I*scale, 'LineWidth', 2)
plot(VT4.V, VT4.I*scale, 'LineWidth', 2)
plot(VT5.V, VT5.I*scale, 'LineWidth', 2)
plot(LoadLine.V, LoadLine.I*scale, "k--", "LineWidth", 1.5)
xlim([0.65 1.55])
xticks([0.8:0.2:1.4])
xticklabels({'0.8','1.0','1.2','1.4',})
ylim([0.05e-3 0.180e-3]*scale)
% yticks(0:50e-6*1e6:200e-6*scale)
xlabel("{\itV}_{OEND} (V)")
ylabel("{\itI}_{OEND} (A)")
% ax1.XAxis.Visible = "off";
xtickangle(0)
set(gca, "FontSize", 24)
scatter(V_op_ax2, I_op_ax2*scale, 180, "black", 'x', "LineWidth", 2)
hold off

% annotation('textarrow',[0.687,0.246], [0.679,0.797],...
%     "String", " {\itC}", "VerticalAlignment","middle","FontSize",14,...
%     "HeadStyle", "plain", "LineWidth", 1)

ax3 = nexttile;
rectangle("Position", [18e-3 0 0.24 13*scale], "FaceColor", [1 0.6823 0.2118])
hold on
yyaxis left
plot(c, V_op, "x-.", "LineWidth", 1.5, "MarkerSize", 14, "Color", "#0f6ae6")
% set(gca, "YColor", "#3385F5")
set(gca, "YColor", "black")
ylabel("{\itV}_{U} (V)")
ylim([0.8 1.4])
yticks([0.8:0.2:1.4])
yyaxis right
plot(c, I_op*scale, "+-.", "LineWidth", 1.5, "MarkerSize", 14, "Color", "#912212", "MarkerFaceColor", ones(1,3)*0.95)
% set(gca, "YColor", "#F5266D")
set(gca, "YColor", "black")
ylabel("{\itI}_{U} (A)")
xlabel("{\itc} (M)")
xlim([1e-3 3])
xticks([1e-3, 1e-2, 1e-1, 1])
xticklabels(["10^{-3}", "10^{-2}", "10^{-1}", "10^{0}"])
xtickangle(0)
ylim([90e-6 120e-6]*scale)
% text(1.2e-4, 0.11, "No excitability", "FontSize", 24, "VerticalAlignment", "bottom", "HorizontalAlignment", "right", "Rotation",-90)
% text(2.1e-3, 0.11, "Excit.", "FontSize", 24, "VerticalAlignment", "bottom", "HorizontalAlignment", "right", "Rotation",-90)
% xticks([0.5 1 1.5])
set(gca, "FontSize", 24)
set(gca, "XScale", "log")
set(gca, 'Layer', 'top')
set(gca, 'LineWidth', 1)
set(gca, 'Box', "on")
set(gca, "XMinorGrid","off")

annotation('textarrow',[0.200 0.295],...
    [0.18 0.18],'String',{'No','excitability'},...
    'FontSize',18,'HeadStyle','ellipse');
annotation('textarrow',[0.55,0.55],...
    [0.459 0.41],'String',{'Excitability'},...
    'FontSize',18,'HeadStyle','ellipse','HorizontalAlignment','left');
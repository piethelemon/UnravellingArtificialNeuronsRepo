clear, close all
load data.mat

%% Prepare figure
startt = t(1);
endt = 6.5;
f = figure(1);
f.Position(3:4) = [350 800];
f.Color = [1 1 1];
tile = tiledlayout(6,1, "TileSpacing", "compact", "Padding","compact");
Vexc = unique(dVexc);

ax1 = nexttile;
ax1.LineWidth = 1;
time = t(dVexc == Vexc(1));
curr = I(dVexc == Vexc(1));
l1 = plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D');
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 0 V",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax1.Box = 'off';

ax2 = nexttile;
set(gca,"LineWidth",1)
time = t(dVexc == Vexc(2));
curr = I(dVexc == Vexc(2));
plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D')
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 2 µV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax2.Box = 'off';

ax3 = nexttile;
set(gca,"LineWidth",1)
time = t(dVexc == Vexc(3));
curr = I(dVexc == Vexc(3));
plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D')
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 4 µV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax3.Box = 'off';

ax4 = nexttile;
set(gca,"LineWidth",1)
time = t(dVexc == Vexc(4));
curr = I(dVexc == Vexc(4));
plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D')
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 10 µV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax4.Box = 'off';

ax5 = nexttile;
set(gca,"LineWidth",1)
time = t(dVexc == Vexc(5));
curr = I(dVexc == Vexc(5));
plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D')
% ylim([0 1e-3])
% xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 20 µV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax5.Box = 'off';

ax6 = nexttile;
set(gca,"LineWidth",1)
time = t(dVexc == Vexc(6));
curr = I(dVexc == Vexc(6));
plot(time-startt, curr, 'LineWidth', 1, 'Color', '#F5266D')
title("V_{exc} = 40 µV",'FontWeight','Normal')
% ylabel("{\itI}_{OAN} (A)")
set(gca, "FontSize", 14)
ax6.Box = 'off';

linkaxes([ax1,ax2,ax3,ax4,ax5,ax6], 'xy')
xlabel(tile,"Time (s)", "FontSize", 22)
xlim([0 endt-startt])
ylim([0.5e-4 1.5e-4])
ylabel(tile,"{\itI}_{spike} (A)", "FontSize", 22)
clear, close all
load single_neuron_vin_osc.mat
load vin_osc_measures.mat

%% Prepare figure
startt = 3;
endt = 6.5;
f = figure(1);
f.Position = [20 20 350 800];
f.Color = [1 1 1];
t = tiledlayout(6,1, "TileSpacing", "compact", "Padding","compact");

ax1 = nexttile;
ax1.LineWidth = 1;
hold on
l1 = plot(dV0.time-startt,dV0.I, 'LineWidth', 1, 'Color', '#F5266D');
l2 = plot(dVth.Time+dV0.time(1)+1.5-startt,dVth.Vth,'-.','Color',"#7cb1f9",'LineWidth',1);
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 0 V",'FontWeight','Normal')
set(gca, "FontSize", 14)
legend([l2,l1],{'Measurements','Simulation'},'Box','off','Location','northwest')
ax1.Box = 'off';

ax2 = nexttile;
set(gca,"LineWidth",1)
hold on
plot(dV002.time-startt,dV002.I, 'LineWidth', 1, 'Color', '#F5266D')
plot(dVth.Time+dV0.time(1)+1.3-startt,dVth.Vth2mV,'-.','Color',"#7cb1f9",'LineWidth',1)
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 2 mV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax2.Box = 'off';

ax3 = nexttile;
set(gca,"LineWidth",1)
hold on
plot(dV004.time-startt,dV004.I, 'LineWidth', 1, 'Color', '#F5266D')
plot(dVth.Time+dV0.time(1)+1.28-startt,dVth.Vth4mV,'-.','Color',"#7cb1f9",'LineWidth',1)
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 4 mV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax3.Box = 'off';

ax4 = nexttile;
set(gca,"LineWidth",1)
hold on
plot(dV010.time-startt,dV010.I, 'LineWidth', 1, 'Color', '#F5266D')
plot(dVth.Time+dV0.time(1)+1.4-startt,dVth.Vth10mV,'-.','Color',"#7cb1f9",'LineWidth',1)
% ylim([0 1e-3])
% % xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 10 mV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax4.Box = 'off';

ax5 = nexttile;
set(gca,"LineWidth",1)
hold on
plot(dV020.time-startt,dV020.I, 'LineWidth', 1, 'Color', '#F5266D')
plot(dVth.Time+dV0.time(1)+1.45-startt,dVth.Vth20mV,'-.','Color',"#7cb1f9",'LineWidth',1)
% ylim([0 1e-3])
% xlabel("Time (s)")
% ylabel("{\itI}_{OAN} (A)")
title("V_{exc} = 20 mV",'FontWeight','Normal')
set(gca, "FontSize", 14)
ax5.Box = 'off';

ax6 = nexttile;
set(gca,"LineWidth",1)
plot(dV040.time-startt,dV040.I, 'LineWidth', 1, 'Color', '#F5266D')
hold on
plot(dVth.Time+dV0.time(1)+1.01-startt,dVth.Vth40mV,'-.','Color',"#7cb1f9",'LineWidth',1)
title("V_{exc} = 40 mV",'FontWeight','Normal')
% ylabel("{\itI}_{OAN} (A)")
set(gca, "FontSize", 14)
ax6.Box = 'off';

linkaxes([ax1,ax2,ax3,ax4,ax5,ax6], 'xy')
xlabel(t,"Time (s)", "FontSize", 24)
xlim([0 endt-startt])
ylim([0.5e-4 1.5e-4])
ylabel(t,"{\itI}_{spike} (A)", "FontSize", 24)
clear, close all
load data_vout.mat

fig = figure(1);
fig.Color = [1 1 1];
fig.Position = [25 25 450 360];
scale = 1;

Vout = (Vout-mean(Vout))*0.34 + 0.78;

skip = 1;
ax1 = nexttile;
ax1.LineWidth = 1;
plot(time-time(1), Vout*scale, "LineWidth", 2, "Color", "#F5266D");
xlabel("Time (s)")
ylabel("V_{spike} (V)")
xlim([0 0.1])
xticks(0:0.05:0.15)
xtickangle(0)
ylim([0.7 0.85])
% leg = legend({"Measurements", "Simulations"}, "Location", "northwest", "Box", "off");
% leg.Position = leg.Position + [0 0.12 0 0];
set(gca, "TickLength", [0.03 0.03])
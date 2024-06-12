clear all, close all

% Concentrazioni esterne
% Concetrazione K+:     3-12 mM -> range da circa 1 a 15 mM
% Concentrazione Na+:   130-150 mM -> range da circa 80 a 160 mM
% Concentrazione Ca2+:  ~1 mM -> range attorno 1 mM

CL = 6.38e-6;
RL = 5e3;
Vt2 = -.218;
kp1 = 3.04e-4;
kp2 = 7.5e-3;
R1 = 655;
R2 = 6900;
f_sim_K  = [0 0 0 0 0 33.7 38.15 41.48 43.7 45.93 47.78 49.26 50.74 51.85 52.96 54.07 55.19 55.93 57.03];
f_sim_Ca = [0 0 0 0 33.7 39.26 41.85 43.7 45.19 46.3 47.41 48.52 49.26 50 50.37 51.11 51.48 52.22 52.59 53.27];
f_sim_Na = [0 0 0 0 0 33.7 35.56 37.41 38.52 40 41.11 41.85 42.96 43.7 44.44 45.19 46.17 46.89];
f_meas_Na = [24.90 33.27 50];
c_meas_Na = [80 90 150]*1e-3;

c_K = [0.5 1 1.5 2 2.5 (3:16)]*1e-3;
% c_K = [0.5 1 1.5 2 2.5 linspace(3, 160, length(f_sim_K))]*1e-3;
c_Ca = ([0.2 0.4 0.6 0.8 1:16])*1e-3;
c_Na = ([55 60 65 70 75 80:10:200])*1e-3;
Vi = 2;
K_0 = 0.0065;
Ca_0 = 0.0055;
Na_0 = 0.2;
Vt1_K  = 0.52-log10(c_K/K_0)*0.06;
Vt1_Ca = 0.52-log10(c_Ca/Ca_0)*0.03;
Vt1_Na = 0.52-log10(c_Na/Na_0)*0.06;
% Von = (R1+R2)*2.5*kp1*(Vt2*(2*Vt1+Vt2))/(2*2.5*kp1*R1*Vt2-1)-Vt2;
% Voff = (Vt1/5/kp2/R1).^(2.18)+Vt1-Vt2;
% RT2 = 1./(2*kp2*5*sqrt(Vt1/R1/5/kp2));
% I0 = Voff./(R1+RT2);

% T = RL*CL*((R1+R2)/(R1+R2+RL)*log(((R1+R2)*Vi-(R1+R2+RL)*Voff)./((R1+R2)*Vi-(R1+R2+RL)*Von))+(R1+RT2)./(R1+RT2+RL).*log(((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Von)./((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Voff)));
% f = 1./T;
%% plot
fig = figure(1);
fig.Position = [0 20 800 250];
fig.Color = [1 1 1];
tiledlayout(1, 3, "TileSpacing", "loose", "Padding", "loose");

% Na+
Von = (R1+R2)*2.5*kp1*(Vt2*(2*Vt1_Na+Vt2))/(2*2.5*kp1*R1*Vt2-1)-Vt2;
Voff = (Vt1_Na/5/kp2/R1).^(2.18)+Vt1_Na-Vt2;
RT2 = 1./(2*kp2*5*sqrt(Vt1_Na/R1/5/kp2));
I0 = Voff./(R1+RT2);
T = RL*CL*((R1+R2)/(R1+R2+RL)*log(((R1+R2)*Vi-(R1+R2+RL)*Voff)./((R1+R2)*Vi-(R1+R2+RL)*Von))+(R1+RT2)./(R1+RT2+RL).*log(((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Von)./((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Voff)));
f = 1./T;
ax3 = nexttile;
% plot(c_K(1:end-1), f(1:end-1), "Color", "#0072BD");
% plot(c_K(1:end-1), f_sim(1:end-1), "o", "Color", "#0072BD", "HandleVisibility", "off");
plot(c_Na(6:end)*1000, f(6:end), "Color", "#9E2DA8");
hold on
line([.08 .08]*1000, [0 200], "Color", "black", "LineStyle", "--");
plot(c_Na(1:end-1)*1000, f_sim_Na(1:end-1)-7*(f_sim_Na(1:end-1)>0), "o", "MarkerSize", 8, "Color", "#9E2DA8", "HandleVisibility", "off", "MarkerFaceColor", ones(1,3)*0.95);
% line([.01 .01], [0 200], "Color", "black", "LineStyle", "--");
% text(0.0085, 115, sprintf("Pathological\nrange"), "FontSize", 18, "HorizontalAlignment", "right", "VerticalAlignment", "top")
% text(0.011, 115, "Physiological range", "FontSize", 18, "HorizontalAlignment", "left", "VerticalAlignment", "top")
hold off
set(gca,"LineWidth",1)
xlabel("{\itc} (mM)")
ylabel("f_{spike} (Hz)")
xlim([0.05 0.20]*1000)
xticks([50 100 150 200])
xtickangle(0)
yticks(0:30:60);
% yticklabels([]);
legend({"Na^{+}"}, "Location", "southeast", "Box", "off")
set(gca,"FontSize", 24)

% K+
Von = (R1+R2)*2.5*kp1*(Vt2*(2*Vt1_K+Vt2))/(2*2.5*kp1*R1*Vt2-1)-Vt2;
Voff = (Vt1_K/5/kp2/R1).^(2.18)+Vt1_K-Vt2;
RT2 = 1./(2*kp2*5*sqrt(Vt1_K/R1/5/kp2));
I0 = Voff./(R1+RT2);
T = RL*CL*((R1+R2)/(R1+R2+RL)*log(((R1+R2)*Vi-(R1+R2+RL)*Voff)./((R1+R2)*Vi-(R1+R2+RL)*Von))+(R1+RT2)./(R1+RT2+RL).*log(((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Von)./((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Voff)));
f = 1./T;
ax1 = nexttile;
plot(c_K(6:end)*1000, f(6:end), "Color", "#3385F5");
hold on
line([.003 .003]*1000, [0 200], "Color", "black", "LineStyle", "--");
plot(c_K(1:end)*1000, f_sim_K(1:end)-7*(f_sim_K(1:end)>0), "o", "MarkerSize", 8, "Color", "#3385F5", "HandleVisibility", "off", "MarkerFaceColor", ones(1,3)*0.95);
% plot(c_Ca(1:end-1), f(1:end-1), "Color", "#A2142F   ");
% plot(c_Ca(1:end-1), f_sim(1:end-1), "o", "Color", "#A2142F", "HandleVisibility", "off");
% line([.012 .012], [0 200], "Color", "black", "LineStyle", "--");
% text(0.011, 115, sprintf("Pathological\nrange"), "FontSize", 18, "HorizontalAlignment", "right", "VerticalAlignment", "top")
% text(0.015, 115, "Physiological range", "FontSize", 18, "HorizontalAlignment", "left", "VerticalAlignment", "top")
hold off
set(gca,"LineWidth",1)
xlabel("{\itc} (mM)")
ylabel("f_{spike} (Hz)")
xlim([0 0.0158]*1000)
xticks([0 5 10 15])
yticks(0:30:60);
xtickangle(0)
legend({"K^+"}, "Location", "southeast", "Box", "off")
set(gca,"FontSize", 24)

% Ca2+
% Vt1_Ca = [0.53 0.5275 0.525 .5224 .5199 .5174 .5149 .5123 .5098 .5073 .5048 .5023 .4997 .4972 .4947];
% c_Ca = 0.001*10.^(-(Vt1_Ca-0.53)/0.03);
Von = (R1+R2)*2.5*kp1*(Vt2*(2*Vt1_Ca+Vt2))/(2*2.5*kp1*R1*Vt2-1)-Vt2;
Voff = (Vt1_Ca/5/kp2/R1).^(2.18)+Vt1_Ca-Vt2;
RT2 = 1./(2*kp2*5*sqrt(Vt1_Ca/R1/5/kp2));
I0 = Voff./(R1+RT2);
T = RL*CL*((R1+R2)/(R1+R2+RL)*log(((R1+R2)*Vi-(R1+R2+RL)*Voff)./((R1+R2)*Vi-(R1+R2+RL)*Von))+(R1+RT2)./(R1+RT2+RL).*log(((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Von)./((R1+RT2).*(Vi-RL*I0)-(R1+RT2+RL).*Voff)));
f = 1./T;
ax2 = nexttile;
% plot(c_K(1:end-1), f(1:end-1), "Color", "#0072BD");
% plot(c_K(1:end-1), f_sim(1:end-1), "o", "Color", "#0072BD", "HandleVisibility", "off");
lim = c_Ca >= 0.001;
lim(1) = 0;
plot(c_Ca(lim)*1000, f(lim), "Color", "#F5266D");
hold on
line([.001 .001]*1000, [0 200], "Color", "black", "LineStyle", "--");
plot(c_Ca(1:end)*1000, f_sim_Ca(1:end)-7*(f_sim_Ca(1:end)>0), "o", "MarkerSize", 8, "Color", "#F5266D", "HandleVisibility", "off", "MarkerFaceColor", ones(1,3)*0.95);
% line([.01 .01], [0 200], "Color", "black", "LineStyle", "--");
% text(0.0085, 115, sprintf("Pathological\nrange"), "FontSize", 18, "HorizontalAlignment", "right", "VerticalAlignment", "top")
% text(0.011, 115, "Physiological range", "FontSize", 18, "HorizontalAlignment", "left", "VerticalAlignment", "top")
hold off
set(gca,"LineWidth",1)
xlabel("{\itc} (mM)")
ylabel("f_{spike} (Hz)")
xlim([0 0.0108]*1000)
xticks([0 5 10 15])
yticks(0:30:60);
% yticklabels([]);
legend({"Ca^{2+}"}, "Location", "southeast", "Box", "off")
set(gca,"FontSize", 24)

linkaxes([ax1, ax2, ax3], "y")
ylim(ax1, [0 60])
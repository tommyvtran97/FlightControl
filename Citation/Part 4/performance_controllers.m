%%% Analysis and comparison of the handling qualities with classic and
%%% fault tolerant flight control (ANDI), before and after activation of
%%% failure

save = 0;
tb = 10/0.01;


%% Present the result classic vs FTFC
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(y(tb:end,1), y(tb:end,2))
plot(y_est(tb:end,1), y_est(tb:end,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_X$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;
legend('Analytical Data', 'Model Data');
grid on

subplot(322)
hold on
plot(y(tb:end,1), y(tb:end,3))
plot(y_est(tb:end,1), y_est(tb:end,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Z$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(y(tb:end,1), y(tb:end,4))
plot(y_est(tb:end,1), y_est(tb:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(y(tb:end,1), y(tb:end,5))
plot(y_est(tb:end,1), y_est(tb:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(y(tb:end,1), y(tb:end,6))
plot(y_est(tb:end,1), y_est(tb:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(y(tb:end,1), y(tb:end,7))
plot(y_est(tb:end,1), y_est(tb:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/aero_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 


%% ------------------------------------------------------------------------
plotID = 2001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(311)
plot(he(:,1), he(:,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('altitude [m]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 4;
label1.Position(1) = label_ref1;
grid on

subplot(312)
plot(xe(:,1), xe(:,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('x-distance [m]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(313)
plot(ye(:,1), ye(:,2))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('y-distance [m]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/2D_trajectory_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 3001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
plot3(xe(:,2), ye(:,2), he(:,2))
xlabel('x [m]', 'interpreter', 'latex');
ylabel('y [m]', 'interpreter', 'latex');
zlabel('z [m]', 'interpreter', 'latex');
grid on;
legend('Classical Rate Controller')
view(45,45);

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/3D_trajectory');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 4001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(var(tb:end,1), var(tb:end,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_X}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;
legend('Variance of the Innovation');
grid on

subplot(322)
hold on
plot(var(tb:end,1), var(tb:end,3),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Z}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(var(tb:end,1), var(tb:end,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_m}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(var(tb:end,1), var(tb:end,5),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(var(tb:end,1), var(tb:end,6),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$\sigma^2_{C_l}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(var(tb:end,1), var(tb:end,7),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/variance_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 5001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
plot(trigger(:,1), trigger(:,2))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('Reset [-]')
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/trigger_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(311)
plot(para(tb:end,1), para(tb:end,18))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$C_{Y_{\delta_a}}$ [-]', 'interpreter', 'latex')
grid on

subplot(312)
plot(para(tb:end,1), para(tb:end,24))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$C_{l_{\delta_a}}$ [-]', 'interpreter', 'latex')
grid on

subplot(313)
plot(para(tb:end,1), para(tb:end,30))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$C_{n_{\delta_a}}$ [-]', 'interpreter', 'latex')
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic/control_derivative_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 


%% ------------------------------------------------------------------------
plotID = 7001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout(tb:end), classic_deflection.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout(tb:end), classic_deflection.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$p$ [rad/s]','interpreter', 'latex')
legend('Reference', 'Signal', 'location', 'northeast')
grid on;

subplot(222)
hold on;
plot(tout(tb:end), classic_deflection.signals(1).values(tb:end,2), 'r--', 'LineWidth',2)
plot(tout(tb:end), classic_deflection.signals(2).values(tb:end,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$q$ [rad/s]','interpreter', 'latex')
grid on;

subplot(223)
hold on;
plot(tout(tb:end), classic_deflection.signals(1).values(tb:end,3), 'r--', 'LineWidth',2)
plot(tout(tb:end), classic_deflection.signals(2).values(tb:end,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
ylabel('$r$ [rad/s]','interpreter', 'latex')
grid on;

subplot(224)
hold on;
plot(tout(tb:end), classic_beta.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout(tb:end), classic_beta.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
ylabel('$\beta$ [rad/s]','interpreter', 'latex')
grid on;

if (save)
    figpath = 'Figures/'
    fpath = sprintf('Classic/deflection_classic');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

% save classic_failed.mat;

%===================================================================
%       This script shows the results between the classical 
%       and ANDI controller by analyzing the handling qualities
%       and performance with and without failure activation
% 
% Written by: Tommy Tran (4449142)
%===================================================================

clc;
clear;

load('Data/classic_unfailed.mat')
load('Data/classic_failed.mat')
load('Data/ANDI_unfailed.mat')
load('Data/ANDI_failed.mat')

save = 0;
tb = 10/0.01;

%% Present Results Classic Controller vs ANDI Controller
%% ------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(421)
hold on
plot(y_classic_unf(tb:end,1), y_classic_unf(tb:end,4))
plot(y_est_classic_unf(tb:end,1), y_est_classic_unf(tb:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('Classic Analytical Unfailed', 'Classic Model Unfailed', 'location', 'northwest')
grid on

subplot(422)
hold on
plot(y_andi_unf(tb:end,1), y_andi_unf(tb:end,4))
plot(y_est_andi_unf(tb:end,1), y_est_andi_unf(tb:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 25;
label2.Position(1) = label_ref2;
legend('ANDI Analytical Unfailed', 'ANDI Model Unfailed', 'location', 'northwest')
grid on

subplot(423)
hold on
plot(y_classic_unf(tb:end,1), y_classic_unf(tb:end,5))
plot(y_est_classic_unf(tb:end,1), y_est_classic_unf(tb:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(424)
hold on
plot(y_andi_unf(tb:end,1), y_andi_unf(tb:end,5))
plot(y_est_andi_unf(tb:end,1), y_est_andi_unf(tb:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(425)
hold on
plot(y_classic_unf(tb:end,1), y_classic_unf(tb:end,6))
plot(y_est_classic_unf(tb:end,1), y_est_classic_unf(tb:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(426)
hold on
plot(y_andi_unf(tb:end,1), y_andi_unf(tb:end,6))
plot(y_est_andi_unf(tb:end,1), y_est_andi_unf(tb:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(427)
hold on
plot(y_classic_unf(tb:end,1), y_classic_unf(tb:end,7))
plot(y_est_classic_unf(tb:end,1), y_est_classic_unf(tb:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(428)
hold on
plot(y_andi_unf(tb:end,1), y_andi_unf(tb:end,7))
plot(y_est_andi_unf(tb:end,1), y_est_andi_unf(tb:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/aero_classic_andi1');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 1002;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(421)
hold on
plot(y_classic_fail(tb:end,1), y_classic_fail(tb:end,4))
plot(y_est_classic_fail(tb:end,1), y_est_classic_fail(tb:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 30;
label1.Position(1) = label_ref1;
legend('Classic Analytical Failed', 'Classic Model Failed', 'location', 'northwest')
grid on

subplot(422)
hold on
plot(y_andi_fail(tb:end,1), y_andi_fail(tb:end,4))
plot(y_est_andi_fail(tb:end,1), y_est_andi_fail(tb:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 10;
label2.Position(1) = label_ref2;
legend('ANDI Analytical Failed', 'ANDI Model Failed', 'location', 'northwest')
grid on

subplot(423)
hold on
plot(y_classic_fail(tb:end,1), y_classic_fail(tb:end,5))
plot(y_est_classic_fail(tb:end,1), y_est_classic_fail(tb:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(424)
hold on
plot(y_andi_fail(tb:end,1), y_andi_fail(tb:end,5))
plot(y_est_andi_fail(tb:end,1), y_est_andi_fail(tb:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(425)
hold on
plot(y_classic_fail(tb:end,1), y_classic_fail(tb:end,6))
plot(y_est_classic_fail(tb:end,1), y_est_classic_fail(tb:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(426)
hold on
plot(y_andi_fail(tb:end,1), y_andi_fail(tb:end,6))
plot(y_est_andi_fail(tb:end,1), y_est_andi_fail(tb:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(427)
hold on
plot(y_classic_fail(tb:end,1), y_classic_fail(tb:end,7))
plot(y_est_classic_fail(tb:end,1), y_est_classic_fail(tb:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(428)
hold on
plot(y_andi_fail(tb:end,1), y_andi_fail(tb:end,7))
plot(y_est_andi_fail(tb:end,1), y_est_andi_fail(tb:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/aero_classic_andi2');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 2001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
hold on;
plot3(xe_classic_unf(:,2), ye_classic_unf(:,2), he_classic_unf(:,2))
plot3(xe_classic_fail(:,2), ye_classic_fail(:,2), he_classic_fail(:,2))
plot3(xe_andi_unf(:,2), ye_andi_unf(:,2), he_andi_unf(:,2))
plot3(xe_andi_fail(:,2), ye_andi_fail(:,2), he_andi_fail(:,2))
xlabel('x [m]', 'interpreter', 'latex');
ylabel('y [m]', 'interpreter', 'latex');
zlabel('z [m]', 'interpreter', 'latex');
grid on;
legend('Classical Controller Unfailed', 'Classical Controller Failed', 'ANDI Controller Unfailed', 'ANDI Controller Failed')
view(45,80);

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/3D_trajectory_classic_andi');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 3001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(var_classic_fail(1000:end,1), var_classic_fail(1000:end,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('Classical Failed', 'location', 'northwest')
grid on

subplot(322)
hold on
plot(var_andi_fail(1000:end,1), var_andi_fail(1000:end,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 20;
label2.Position(1) = label_ref2;
legend('ANDI Failed', 'location', 'northwest')
grid on

subplot(323)
hold on
plot(var_classic_fail(1000:end,1), var_classic_fail(1000:end,3),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label = ylabel('$\sigma^2_{C_l}$ [-]', 'interpreter', 'latex');
label.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(var_andi_fail(1000:end,1), var_andi_fail(1000:end,3),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_l}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(var_classic_fail(1000:end,1), var_classic_fail(1000:end,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(var_andi_fail(1000:end,1), var_andi_fail(1000:end,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/variance_classic_andi');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 4001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(121)
plot(trigger_classic_fail(:,1), trigger_classic_fail(:,2))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('Reset [-]', 'interpreter', 'latex')
legend('Classical Failed', 'location', 'northwest')
grid on;

subplot(122)
plot(trigger_andi_fail(:,1), trigger_andi_fail(:,2))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('Reset [-]', 'interpreter', 'latex')
legend('ANDI Failed', 'location', 'northwest')
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/trigger_classic_andi');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 5001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on;
plot(para_classic_unf(tb:end,1), para_classic_unf(tb:end,18))
plot(para_classic_fail(tb:end,1), para_classic_fail(tb:end,18))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{Y_{\delta_a}}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('Classic Unfailed', 'Classic Failed', 'location', 'northwest')
grid on

subplot(322)
hold on;
plot(para_andi_unf(tb:end,1), para_andi_unf(tb:end,18))
plot(para_andi_fail(tb:end,1), para_andi_fail(tb:end,18))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{Y_{\delta_a}}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 10;
label2.Position(1) = label_ref2;
legend('ANDI Unfailed', 'ANDI Failed', 'location', 'northwest')
grid on

subplot(323)
hold on;
plot(para_classic_unf(tb:end,1), para_classic_unf(tb:end,24))
plot(para_classic_fail(tb:end,1), para_classic_fail(tb:end,24))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{l_{\delta_a}}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on;
plot(para_andi_unf(tb:end,1), para_andi_unf(tb:end,24))
plot(para_andi_fail(tb:end,1), para_andi_fail(tb:end,24))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{l_{\delta_a}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on;
plot(para_classic_unf(tb:end,1), para_classic_unf(tb:end,30))
plot(para_classic_fail(tb:end,1), para_classic_fail(tb:end,30))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{n_{\delta_a}}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on;
plot(para_andi_unf(tb:end,1), para_andi_unf(tb:end,30))
plot(para_andi_fail(tb:end,1), para_andi_fail(tb:end,30))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{n_{\delta_a}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/control_derivative_classic_andi');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 


%% ------------------------------------------------------------------------
plotID = 6001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_classic_unf, classic_pqr_unf.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_classic_unf, classic_pqr_unf.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 10;
label1.Position(1) = label_ref1;
legend('Classic Reference Unfailed', 'Classic Signal Unfailed', 'location', 'northwest')
grid on;

subplot(222)
hold on;
plot(tout_classic_unf, classic_pqr_unf.signals(1).values(:,2), 'r--', 'LineWidth',2)
plot(tout_classic_unf, classic_pqr_unf.signals(2).values(:,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 20;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_classic_unf, classic_pqr_unf.signals(1).values(:,3), 'r--', 'LineWidth',2)
plot(tout_classic_unf, classic_pqr_unf.signals(2).values(:,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_classic_unf, classic_beta_unf.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_classic_unf, classic_beta_unf.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/deflection_classic_andi1');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6002;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 10;
label1.Position(1) = label_ref1;
legend('ANDI Reference Unfailed', 'ANDI Signal Unfailed', 'location', 'northwest')
grid on;

subplot(222)
hold on;
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(1).values(tb:end,2), 'r--', 'LineWidth',2)
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(2).values(tb:end,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 18;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(1).values(tb:end,3), 'r--', 'LineWidth',2)
plot(tout_andi_unf(tb:end), ANDI_pqr_unf.signals(2).values(tb:end,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_andi_unf(tb:end), ANDI_beta_unf.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout_andi_unf(tb:end), ANDI_beta_unf.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/deflection_classic_andi2');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6003;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_classic_fail, classic_pqr_fail.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_classic_fail, classic_pqr_fail.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('Classic Reference Failed', 'Classic Signal Failed', 'location', 'northwest')
grid on;

subplot(222)
hold on;
plot(tout_classic_fail, classic_pqr_fail.signals(1).values(:,2), 'r--', 'LineWidth',2)
plot(tout_classic_fail, classic_pqr_fail.signals(2).values(:,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 15;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_classic_fail, classic_pqr_fail.signals(1).values(:,3), 'r--', 'LineWidth',2)
plot(tout_classic_fail, classic_pqr_fail.signals(2).values(:,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_classic_fail, classic_beta_fail.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_classic_fail, classic_beta_fail.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/deflection_classic_andi3');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6004;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('ANDI Reference Failed', 'ANDI Signal Failed', 'location', 'northwest')
grid on;

subplot(222)
hold on;
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(1).values(tb:end,2), 'r--', 'LineWidth',2)
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(2).values(tb:end,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 20;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(1).values(tb:end,3), 'r--', 'LineWidth',2)
plot(tout_andi_fail(tb:end), ANDI_pqr_fail.signals(2).values(tb:end,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_andi_fail(tb:end), ANDI_beta_fail.signals(1).values(tb:end,1), 'r--', 'LineWidth',2)
plot(tout_andi_fail(tb:end), ANDI_beta_fail.signals(2).values(tb:end,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5);
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_ANDI/deflection_classic_andi4');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

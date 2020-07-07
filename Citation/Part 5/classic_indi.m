%%% Analysis and comparison of the handling qualities with classic and
%%% fault tolerant flight control (INDI), before and after activation of
%%% failure

clc;
clear;

save = 0;
load('Data/classic_unfailed.mat')
load('Data/classic_failed.mat')
load('Data/INDI_unfailed.mat')
load('Data/INDI_failed.mat')

%% Present the result classic vs FTFC
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(y_classic_unf(:,1), y_classic_unf(:,5))
plot(y_indi_unf(:,1), y_indi_unf(:,5))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 8;
label1.Position(1) = label_ref1;
legend('Classic Unfailed', 'INDI Unfailed')
grid on

subplot(322)
hold on
plot(y_classic_fail(:,1), y_classic_fail(:,5))
plot(y_indi_fail(:,1), y_indi_fail(:,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 3;
label2.Position(1) = label_ref2;
legend('Classic Failed', 'INDI Failed')
grid on

subplot(323)
hold on
plot(y_classic_unf(:,1), y_classic_unf(:,6))
plot(y_indi_unf(:,1), y_indi_unf(:,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(y_classic_fail(:,1), y_classic_fail(:,6))
plot(y_indi_fail(:,1), y_indi_fail(:,6))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(y_classic_unf(:,1), y_classic_unf(:,7))
plot(y_indi_unf(:,1), y_indi_unf(:,7))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(y_classic_fail(:,1), y_classic_fail(:,7))
plot(y_indi_fail(:,1), y_indi_fail(:,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/aero_classic_indi');
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
plot3(xe_indi_unf(:,2), ye_indi_unf(:,2), he_indi_unf(:,2))
plot3(xe_indi_fail(:,2), ye_indi_fail(:,2), he_indi_fail(:,2))
xlabel('x [m]', 'interpreter', 'latex');
ylabel('y [m]', 'interpreter', 'latex');
zlabel('z [m]', 'interpreter', 'latex');
grid on;
legend('Classical Controller Unfailed', 'Classical Controller Failed', 'INDI Controller Unfailed', 'INDI Controller Failed')
view(45,80);

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/3D_trajectory_classic_indi');
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
label_ref1 = label1.Position(1) - 13;
label1.Position(1) = label_ref1;
legend('Classical Failed')
grid on

subplot(322)
hold on
plot(var_indi_fail(1000:end,1), var_indi_fail(1000:end,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 13;
label2.Position(1) = label_ref2;
legend('INDI Failed')
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
plot(var_indi_fail(1000:end,1), var_indi_fail(1000:end,3),'LineWidth',2)
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
plot(var_indi_fail(1000:end,1), var_indi_fail(1000:end,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/variance_classic_indi');
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
legend('Classical Failed')
grid on;

subplot(122)
plot(trigger_indi_fail(:,1), trigger_indi_fail(:,2))
xlabel('time [s]', 'interpreter', 'latex')
ylabel('Reset [-]', 'interpreter', 'latex')
legend('INDI Failed')
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/trigger_classic_indi');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 5001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on;
plot(para_classic_unf(:,1), para_classic_unf(:,18))
plot(para_indi_unf(:,1), para_indi_unf(:,18))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{Y_{\delta_a}}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 10;
label1.Position(1) = label_ref1;
legend('Classic Unfailed', 'INDI Unfailed')
grid on

subplot(322)
hold on;
plot(para_classic_fail(:,1), para_classic_fail(:,18))
plot(para_indi_fail(:,1), para_indi_fail(:,18))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{Y_{\delta_a}}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 10;
label2.Position(1) = label_ref2;
legend('Classic Failed', 'INDI Failed')
grid on

subplot(323)
hold on;
plot(para_classic_unf(:,1), para_classic_unf(:,24))
plot(para_indi_unf(:,1), para_indi_unf(:,24))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{l_{\delta_a}}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on;
plot(para_classic_fail(:,1), para_classic_fail(:,24))
plot(para_indi_fail(:,1), para_indi_fail(:,24))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{l_{\delta_a}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on;
plot(para_classic_unf(:,1), para_classic_unf(:,30))
plot(para_indi_unf(:,1), para_indi_unf(:,30))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_{n_{\delta_a}}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on;
plot(para_classic_fail(:,1), para_classic_fail(:,30))
plot(para_indi_fail(:,1), para_indi_fail(:,30))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_{n_{\delta_a}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/control_derivative_classic_indi');
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
legend('Classic Reference Unfailed', 'Classic Signal Unfailed', 'location', 'northeast')
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
    fpath = sprintf('Classic_INDI/deflection_classic_indi1');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6002;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_indi_unf, INDI_pqr_unf.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_indi_unf, INDI_pqr_unf.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 10;
label1.Position(1) = label_ref1;
legend('INDI Reference Unfailed', 'INDI Signal Unfailed', 'location', 'northeast')
grid on;

subplot(222)
hold on;
plot(tout_indi_unf, INDI_pqr_unf.signals(1).values(:,2), 'r--', 'LineWidth',2)
plot(tout_indi_unf, INDI_pqr_unf.signals(2).values(:,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 18;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_indi_unf, INDI_pqr_unf.signals(1).values(:,3), 'r--', 'LineWidth',2)
plot(tout_indi_unf, INDI_pqr_unf.signals(2).values(:,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_indi_unf, INDI_beta_unf.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_indi_unf, INDI_beta_unf.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/deflection_classic_indi2');
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
legend('Classic Reference Failed', 'Classic Signal Failed', 'location', 'northeast')
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
    fpath = sprintf('Classic_INDI/deflection_classic_indi3');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

%% ------------------------------------------------------------------------
plotID = 6004;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on;
plot(tout_indi_fail, INDI_pqr_fail.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_indi_fail, INDI_pqr_fail.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ [rad/s]','interpreter', 'latex');
label_ref1 = label1.Position(1) - 20;
label1.Position(1) = label_ref1;
legend('INDI Reference Failed', 'INDI Signal Failed', 'location', 'northeast')
grid on;

subplot(222)
hold on;
plot(tout_indi_fail, INDI_pqr_fail.signals(1).values(:,2), 'r--', 'LineWidth',2)
plot(tout_indi_fail, INDI_pqr_fail.signals(2).values(:,2), 'b-')
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ [rad/s]','interpreter', 'latex');
label_ref2 = label2.Position(1) - 20;
label2.Position(1) = label_ref2;
grid on;

subplot(223)
hold on;
plot(tout_indi_fail, INDI_pqr_fail.signals(1).values(:,3), 'r--', 'LineWidth',2)
plot(tout_indi_fail, INDI_pqr_fail.signals(2).values(:,3), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5)
label1 = ylabel('$r$ [rad/s]','interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(224)
hold on;
plot(tout_indi_fail, INDI_beta_fail.signals(1).values(:,1), 'r--', 'LineWidth',2)
plot(tout_indi_fail, INDI_beta_fail.signals(2).values(:,1), 'b-')
xlabel('time [s]', 'interpreter', 'latex', 'LineWidth',5);
label2 = ylabel('$\beta$ [rad/s]','interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('Classic_INDI/deflection_classic_indi4');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

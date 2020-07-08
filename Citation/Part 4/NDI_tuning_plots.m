%===================================================================
%       This script shows the step input response obtained from
%       tuning the INDI and ANDI controller with specific PI 
%       controller gains
% 
% Written by: Tommy Tran (4449142)
%===================================================================

clc;
clear;

load('Data/INDI_tuning_response.mat');
load('Data/ANDI_tuning_response.mat');

save = 1;

%% Present Results PI Tuning INDI and ANDI
%% ------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, p_andi_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0;
label1.Position(1) = label_ref1;
legend('Reference', 'Signal', 'location', 'south')

subplot(222)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, q_andi_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref2 = label1.Position(1) - 1;
label2.Position(1) = label_ref2;


subplot(223)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, r_andi_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$r$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label1.Position(1) = label_ref1;

subplot(224)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, beta_andi_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\beta$ [$rad$]',  'interpreter', 'latex');
label2.Position(1) = label_ref2;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('andi_tuning');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

plotID = 1002;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, p_indi_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0;
label1.Position(1) = label_ref1;
legend('Reference', 'Signal', 'location', 'south')

subplot(222)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, q_andi_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref2 = label1.Position(1) - 1;
label2.Position(1) = label_ref2;


subplot(223)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, r_indi_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$r$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label1.Position(1) = label_ref1;

subplot(224)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, beta_indi_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\beta$ [$rad$]',  'interpreter', 'latex');
label2.Position(1) = label_ref2;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('indi_tuning');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 
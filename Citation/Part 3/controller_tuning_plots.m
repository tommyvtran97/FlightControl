%===================================================================
%       This script shows the results from tuning the classic
%       controller with a step response as input and specific
%       set of gains
% 
% Written by: Tommy Tran (4449142)
%===================================================================

clc;
clear;

load('Data/classic_tuning_response.mat');
save = 0;

% -------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, p_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$p$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0;
label1.Position(1) = label_ref1;
legend('Reference', 'Signal', 'location', 'northwest')

subplot(222)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, q_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$q$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label_ref2 = label1.Position(1) - 1;
label2.Position(1) = label_ref2;


subplot(223)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, r_input)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$r$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label1.Position(1) = label_ref1;

subplot(224)
hold on
grid on
plot(t, step_input, 'b--')
plot(t, beta_input)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\beta$ $[\frac{rad}{s}$]',  'interpreter', 'latex');
label2.Position(1) = label_ref2;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('classic_tuning');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

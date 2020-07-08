%===================================================================
%       This script shows the results of the aerodynamic parameters
%       by changing the forgetting factor in increments of 0.2
%       starting from 1 and descending.
% 
% Written by: Tommy Tran (4449142)
%===================================================================

clc;
clear;

load('Data/forgetting_factor.mat')

save = 0;
tb = 169.9/0.01;
te = 170.4/0.01;

%% Present Result Forgetting Factor
%% ------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
plot(FF1(tb:te,1), FF1(tb:te,2),FF2(tb:te,1), FF2(tb:te,2),FF3(tb:te,1), FF3(tb:te,2),FF4(tb:te,1), FF4(tb:te,2),FF5(tb:te,1), FF5(tb:te,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\epsilon_{C_{X}}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0.03;
label1.Position(1) = label_ref1;
legend('$\lambda$ = 1','$\lambda$ = 0.8','$\lambda$ = 0.6','$\lambda$ = 0.4','$\lambda$ = 0.2', 'northeast','interpreter','latex', 'location', 'northwest')
grid on;

subplot(322)
plot(FF1(tb:te,1), FF1(tb:te,3),FF2(tb:te,1), FF2(tb:te,3),FF3(tb:te,1), FF3(tb:te,3),FF4(tb:te,1), FF4(tb:te,3),FF5(tb:te,1), FF5(tb:te,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\epsilon_{C_{Z}}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 0.03;
label2.Position(1) = label_ref2;
grid on;

subplot(323)
plot(FF1(tb:te,1), FF1(tb:te,4),FF2(tb:te,1), FF2(tb:te,4),FF3(tb:te,1), FF3(tb:te,4),FF4(tb:te,1), FF4(tb:te,4),FF5(tb:te,1), FF5(tb:te,4))
xlabel('time [s]', 'interpreter', 'latex')
label = ylabel('$\epsilon_{C_{m}}$ [-]', 'interpreter', 'latex');
label.Position(1) = label_ref1;
grid on;

subplot(324)
plot(FF1(tb:te,1), FF1(tb:te,5),FF2(tb:te,1), FF2(tb:te,5),FF3(tb:te,1), FF3(tb:te,5),FF4(tb:te,1), FF4(tb:te,5),FF5(tb:te,1), FF5(tb:te,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\epsilon_{C_{Y}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

subplot(325)
plot(FF1(tb:te,1), FF1(tb:te,6),FF2(tb:te,1), FF2(tb:te,6),FF3(tb:te,1), FF3(tb:te,6),FF4(tb:te,1), FF4(tb:te,6),FF5(tb:te,1), FF5(tb:te,6))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\epsilon_{C_{l}}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on;

subplot(326)
plot(FF1(tb:te,1), FF1(tb:te,7),FF2(tb:te,1), FF2(tb:te,7),FF3(tb:te,1), FF3(tb:te,7),FF4(tb:te,1), FF4(tb:te,7),FF5(tb:te,1), FF5(tb:te,7))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\epsilon_{C_{n}}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('forgetting_factor');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 


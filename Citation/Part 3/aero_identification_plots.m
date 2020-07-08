%===================================================================
%       This script shows the aerodynamic identification results
%       by flying the aircraft in cruise condition and activation
%       the failure mode. 
% 
% Written by: Tommy Tran (4449142)
%===================================================================

clc;
clear;

load('Data/classic_cruise.mat');
save = 0;

tb = 120/0.01; 
te = 200/0.01;

%% ------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout(tb:te), y(tb:te,2))
plot(tout(tb:te), y_est(tb:te,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_X$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;
legend('Analytical Data', 'Model Data', 'location', 'northwest');
grid on

subplot(322)
hold on
plot(tout(tb:te), y(tb:te,3))
plot(tout(tb:te), y_est(tb:te,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Z$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout(tb:te), y(tb:te,4))
plot(tout(tb:te), y_est(tb:te,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout(tb:te), y(tb:te,5))
plot(tout(tb:te), y_est(tb:te,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout(tb:te), y(tb:te,6))
plot(tout(tb:te), y_est(tb:te,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout(tb:te), y(tb:te,7))
plot(tout(tb:te), y_est(tb:te,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('aerodynamics');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 
%% ------------------------------------------------------------------------
plotID = 2001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout(tb:te), var(tb:te,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_X}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;
legend('Variance of the Innovation', 'location', 'northwest');
grid on

subplot(322)
hold on
plot(tout(tb:te), var(tb:te,3),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Z}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout(tb:te), var(tb:te,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_m}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout(tb:te), var(tb:te,5),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout(tb:te), var(tb:te,6),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$\sigma^2_{C_l}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout(tb:te), var(tb:te,7),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('variance');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 
%% ------------------------------------------------------------------------
plotID = 3001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout(tb:te), avg(tb:te,2),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\mu_{C_X}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;
legend('Moving Average of Square Innovation', 'location', 'northwest');
grid on

subplot(322)
hold on
plot(tout(tb:te), avg(tb:te,3),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\mu_{C_Z}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout(tb:te), avg(tb:te,4),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\mu_{C_m}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout(tb:te), avg(tb:te,5),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\mu_{C_Y}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout(tb:te), avg(tb:te,6),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$\mu_{C_l}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout(tb:te), avg(tb:te,7),'LineWidth',2)
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$\mu_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

if (save)
    figpath = 'Figures/';
    fpath = sprintf('average');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 
%% ------------------------------------------------------------------------
plotID = 4001;
figure(plotID);
set(plotID, 'Position', [0 0 2000 1000], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,1),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,1),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label1 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 5;
label1.Position(1) = label_ref1;

subplot(322)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,2),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,2),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label2 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 5;
label2.Position(1) = label_ref2;

subplot(323)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,3),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,3),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label1 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;

subplot(324)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,4),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,4),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label2 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;

subplot(325)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,5),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,5),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label1 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;

subplot(326)
hold on
plot3(ones(size(tout(tb:te),1),1)*0, tout(tb:te), corr.signals(1).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*0,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(2).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*10,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(3).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*20,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(4).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*30,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(5).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*40,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(6).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*50,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(7).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*60,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(8).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*70,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(9).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*80,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(10).values(tb:te,6),'b')
plot3(ones(size(tout(tb:te),1),1)*90,tout(tb:te),corr.signals(11).values(tb:te,6),'r')
grid on
view(45,45)

xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
label2 = zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;

if (save)
    figpath = 'Figures/';
    fpath = sprintf('autocorrelation');
    savefname = strcat(figpath, fpath);
    print(plotID, '-dpng', '-r300', savefname);
end 

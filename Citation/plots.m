%% Present the results

t_begin = 80/0.01; 


%% ------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout, y(:,2))
plot(tout, y_est(:,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_X$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0.07;
label1.Position(1) = label_ref1;
legend('Validation Data', 'Identification Data');
grid on

subplot(322)
hold on
plot(tout, y(:,3))
plot(tout, y_est(:,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Z$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 0.07;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout, y(:,4))
plot(tout, y_est(:,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$C_m$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout, y(:,5))
plot(tout, y_est(:,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$C_Y$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout, y(:,6))
plot(tout, y_est(:,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$C_l$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout, y(:,7))
plot(tout, y_est(:,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$C_n$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on
%% ------------------------------------------------------------------------
plotID = 2001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout(t_begin:end), var(t_begin:end,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_X}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0.5;
label1.Position(1) = label_ref1;
legend('Validation Data', 'Identification Data');
grid on

subplot(322)
hold on
plot(tout(t_begin:end), var(t_begin:end,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Z}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 0.15;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout(t_begin:end), var(t_begin:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\sigma^2_{C_m}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout(t_begin:end), var(t_begin:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\sigma^2_{C_Y}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout(t_begin:end), var(t_begin:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$\sigma^2_{C_l}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout(t_begin:end), var(t_begin:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$\sigma^2_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on
%% ------------------------------------------------------------------------
plotID = 3001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot(tout(t_begin:end), avg(t_begin:end,2))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\mu_{C_X}$ [-]', 'interpreter', 'latex');
label_ref1 = label1.Position(1) - 0.07;
label1.Position(1) = label_ref1;
legend('Validation Data', 'Identification Data');
grid on

subplot(322)
hold on
plot(tout(t_begin:end), avg(t_begin:end,3))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\mu_{C_Z}$ [-]', 'interpreter', 'latex');
label_ref2 = label2.Position(1) - 0.07;
label2.Position(1) = label_ref2;
grid on

subplot(323)
hold on
plot(tout(t_begin:end), avg(t_begin:end,4))
xlabel('time [s]', 'interpreter', 'latex')
label1 = ylabel('$\mu_{C_m}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(324)
hold on
plot(tout(t_begin:end), avg(t_begin:end,5))
xlabel('time [s]', 'interpreter', 'latex')
label2 = ylabel('$\mu_{C_Y}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on

subplot(325)
hold on
plot(tout(t_begin:end), avg(t_begin:end,6))
xlabel('time [s]', 'interpreter', 'latex');
label1 = ylabel('$\mu_{C_l}$ [-]', 'interpreter', 'latex');
label1.Position(1) = label_ref1;
grid on

subplot(326)
hold on
plot(tout(t_begin:end), avg(t_begin:end,7))
xlabel('time [s]', 'interpreter', 'latex');
label2 = ylabel('$\mu_{C_n}$ [-]', 'interpreter', 'latex');
label2.Position(1) = label_ref2;
grid on
%% ------------------------------------------------------------------------
plotID = 4001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(321)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,1),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,1),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

subplot(322)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,2),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,2),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

subplot(323)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,3),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,3),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

subplot(324)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,4),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,4),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

subplot(325)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,5),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,5),'r')
grid on
view(45,45)
xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

subplot(326)
hold on
plot3(ones(size(tout(t_begin:end),1),1)*0, tout(t_begin:end), corr.signals(1).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*0,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(2).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*10,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(3).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*20,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(4).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*30,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(5).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*40,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(6).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*50,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(7).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*60,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(8).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*70,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(9).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*80,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(10).values(t_begin:end,6),'b')
plot3(ones(size(tout(t_begin:end),1),1)*90,tout(t_begin:end),corr.signals(11).values(t_begin:end,6),'r')
grid on
view(45,45)

xlabel('$K_{gap}$ [-]', 'interpreter', 'latex')
ylabel('time [s]', 'interpreter', 'latex')
zlabel('$\pi_{k_gap}$ [-]', 'interpreter', 'latex')

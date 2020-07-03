p_input = load('Data/p_input.mat');
q_input = load('Data/q_input.mat');
r_input = load('Data/r_input.mat');
b_input = load('Data/beta_input.mat');

step = load('Data/step_input.mat');
t = load('Data/time_classic.mat');

% -------------------------------------------------------------------------
plotID = 1001;
figure(plotID);
set(plotID, 'Position', [0 0 1500 500], 'defaultaxesfontsize', 16, 'defaulttextfontsize', 14, 'color', [0.941, 0.941, 0.941], 'PaperPositionMode', 'auto');
subplot(221)
hold on
grid on
plot(t.tout, step.step, 'b--')
plot(t.tout, p_input.input1)
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$p$ $[\frac{rad}{s}$]',  'interpreter', 'latex')

subplot(222)
hold on
grid on
plot(t.tout, step.step, 'b--')
plot(t.tout, q_input.input2)
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$q$ $[\frac{rad}{s}$]',  'interpreter', 'latex')

subplot(223)
hold on
grid on
plot(t.tout, step.step, 'b--')
plot(t.tout, r_input.input3)
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$r$ $[\frac{rad}{s}$]',  'interpreter', 'latex')

subplot(224)
hold on
grid on
plot(t.tout, step.step, 'b--')
plot(t.tout, b_input.input4)
xlabel('time [s]', 'interpreter', 'latex')
ylabel('$\beta$ $[\frac{rad}{s}$]',  'interpreter', 'latex')
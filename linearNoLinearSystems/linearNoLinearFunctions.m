clc;
clear;
close all;

lw = 4;                  % Signal's line width
fz = 24;                 % font size per subplot
% --- Parameters ---
Fs = 20;                 % Sampling frequency for discrete signal (Hz)
t_cont = 0:0.01:2;       % Continuous time vector (0 to 2 seconds, high resolution)
t_disc = 0:1/Fs:2;       % Discrete time vector sampled at Fs

% --- Linear Signal: y(t) = at + b ---
a = 2;                   % Slope
b = 1;                   % Intercept
x_t_linear = a * t_cont + b;  % Continuous-time linear signal
x_n_linear = a * t_disc + b;  % Discrete-time linear signal

% Plot Linear Signal
fig1 = figure('WindowState', 'maximized');
subplot(2,1,1);
plot(t_cont, x_t_linear, 'b', 'LineWidth', lw);  % Continuous linear signal
hold on;
stem(t_disc, x_n_linear, 'r', 'LineWidth', lw-1);  % Discrete linear signal
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Linear Signal: $y(x) = 2x + 1$', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Non-linear Signal: y(t) = t^2 ---
x_t_nonlinear = t_cont.^2;      % Continuous-time non-linear (quadratic) signal
x_n_nonlinear = t_disc.^2;      % Discrete-time non-linear (quadratic) signal

% Plot Non-linear Signal
subplot(2,1,2);
plot(t_cont, x_t_nonlinear, 'b', 'LineWidth', lw);  % Continuous quadratic signal
hold on;
stem(t_disc, x_n_nonlinear, 'r', 'LineWidth', lw-1);  % Discrete quadratic signal
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Non-linear Signal: $y(x) = x^2$', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

exportgraphics(fig1, 'linearNoLinearFunctions.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'linearNoLinearFunctions.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

clc;
close all;
clear;

lw = 4;                  % Signal's line width
fz = 24;                 % font size per subplot
% --- Parameters ---
Fs = 40;                 % Sampling frequency for discrete signal (Hz)
t_cont = 0:0.001:1;      % Continuous time vector (for both signals)
t_disc = 0:1/Fs:1;       % Discrete time vector based on Fs

% --- Periodic Signal: Sinusoidal Signal ---
f_periodic = 5;  % Frequency of the periodic signal (Hz)
x_t_periodic = sin(2*pi*f_periodic*t_cont);  % Continuous-time periodic signal
x_n_periodic = sin(2*pi*f_periodic*t_disc);  % Discrete-time periodic signal

% Plot Periodic Signal
fig1 = figure('WindowState', 'maximized');
subplot(2,1,1);
plot(t_cont, x_t_periodic, 'b', 'LineWidth', lw);  % Continuous signal plot
hold on;
stem(t_disc, x_n_periodic, 'r', 'LineWidth', lw-1);  % Discrete signal plot
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Periodic Signal: Sinusoidal', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Aperiodic Signal: Chirp Signal ---
f0 = 0;          % Initial frequency (Hz)
f1 = 10;         % Final frequency (Hz)
x_t_aperiodic = chirp(t_cont, f0, 2, f1);   % Continuous-time chirp signal
x_n_aperiodic = chirp(t_disc, f0, 2, f1);   % Discrete-time chirp signal

% Plot Aperiodic Signal
subplot(2,1,2);
plot(t_cont, x_t_aperiodic, 'b', 'LineWidth', lw);  % Continuous signal plot
hold on;
stem(t_disc, x_n_aperiodic, 'r', 'LineWidth', lw-1);  % Discrete signal plot
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Aperiodic Signal: Chirp Signal', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

exportgraphics(fig1, 'evenOddFunctions.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'evenOddFunctions.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

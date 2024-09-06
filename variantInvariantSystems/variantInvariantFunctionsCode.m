clc;
clear;
close all;

lw = 4;                  % Signal's line width
fz = 24;                 % Font size per subplot
Fs = 20;                 % Sampling frequency for discrete signal (Hz)
x_cont = 0:0.01:2;       % Continuous x vector (0 to 2 seconds, high resolution)
x_disc = 0:1/Fs:2;       % Discrete x vector sampled at Fs

% --- Time-Invariant Signal: y(x) = sin(2*pi*f*x) ---
f = 2;  % Frequency of the sinusoidal signal
y_x_invariant = sin(2*pi*f*x_cont);  % Continuous-time time-invariant signal
y_n_invariant = sin(2*pi*f*x_disc);  % Discrete-time time-invariant signal

% Plot Time-Invariant Signal
fig1 = figure('WindowState', 'maximized');
subplot(2,1,1);
plot(x_cont, y_x_invariant, 'b', 'LineWidth', lw);  % Continuous time-invariant signal
hold on;
stem(x_disc, y_n_invariant, 'r', 'LineWidth', lw-1);  % Discrete time-invariant signal
xlabel('x', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Time-Invariant Signal: $y(x) = \sin(2 \pi f x)$', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Time-Variant Signal: y(x) = x*sin(2*pi*f*x) ---
y_x_variant = x_cont .* sin(2*pi*f*x_cont);  % Continuous-time time-variant signal
y_n_variant = x_disc .* sin(2*pi*f*x_disc);  % Discrete-time time-variant signal

% Plot Time-Variant Signal
subplot(2,1,2);
plot(x_cont, y_x_variant, 'b', 'LineWidth', lw);  % Continuous time-variant signal
hold on;
stem(x_disc, y_n_variant, 'r', 'LineWidth', lw-1);  % Discrete time-variant signal
xlabel('x', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Time-Variant Signal: $y(x) = x \cdot \sin(2 \pi f x)$', 'Interpreter', 'latex');
legend({'Continuous', 'Discrete'}, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

exportgraphics(fig1, 'timeInvariantTimeVariant_x.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'timeInvariantTimeVariant_x.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

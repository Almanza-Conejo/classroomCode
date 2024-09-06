clc;
close all;
clear;

% Normalizing the time range to be from 0 to 1 for both continuous and discrete signals
t = linspace(0, 1, 801);  % Continuous time vector normalized from 0 to 1 (801 points)
n = linspace(0, 1, 9);    % Discrete time vector normalized from 0 to 1 (9 points)
lw = 3;                   % Signal's line with
fz = 24;                  % font size per subplot

% --- Plot (a): Even signal in continuous time ---
% Defining the even signal for (a) to match the shape of (b)
x_t_even = 5 - abs(8*(t-0.5));  % Adjusting the time shift and scaling
x_t_even(x_t_even < 0) = 0;     % Set negative values to zero for proper shape
x_t_even = x_t_even / max(x_t_even);  % Normalization

% Plotting (a)
fig1 = figure('WindowState', 'maximized');
subplot(2, 2, 1); % Position (a) in a 2x2 grid
plot(t, x_t_even, 'LineWidth', lw);
xlabel('Normalized Time (0 to 1)', 'Interpreter', 'latex');
ylabel('x(t)', 'Interpreter', 'latex');
title('(a) Even Signal in Continuous Time (Normalized)', 'Interpreter', 'latex');
axis([0 1 -0.2 1.2]);
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Plot (b): Even signal in discrete time ---
% Defining the even signal for (b) and normalizing it
x_n_even = [1, 2, 3, 4, 5, 4, 3, 2, 1];
x_n_even = x_n_even / max(x_n_even);  % Normalization

% Plotting (b)
subplot(2, 2, 2); % Position (b)
stem(n, x_n_even, 'LineWidth', lw, 'MarkerSize', 8);
xlabel('Normalized Time (0 to 1)', 'Interpreter', 'latex');
ylabel('x[n]', 'Interpreter', 'latex');
title('(b) Even Signal in Discrete Time (Normalized)', 'Interpreter', 'latex');
axis([0 1 -0.2 1.2]);
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Plot (c): Odd signal in continuous time ---
% Defining the odd signal for (c) and normalizing it
x_t_odd = (8*(t-0.5)).^3;  % Adjusting the scaling to fit the normalized time range
x_t_odd = x_t_odd / max(abs(x_t_odd));  % Normalization

% Plotting (c)
subplot(2, 2, 3); % Position (c)
plot(t, x_t_odd, 'LineWidth', lw);
xlabel('Normalized Time (0 to 1)', 'Interpreter', 'latex');
ylabel('x(t)', 'Interpreter', 'latex');
title('(c) Odd Signal in Continuous Time (Normalized)', 'Interpreter', 'latex');
axis([0 1 -1.2 1.2]);
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

% --- Plot (d): Odd signal in discrete time ---
% Defining the odd signal for (d) and normalizing it
x_n_odd = [-4, -3, -2, -1, 0, 1, 2, 3, 4];
x_n_odd = x_n_odd / max(abs(x_n_odd));  % Normalization

% Plotting (d)
subplot(2, 2, 4); % Position (d)
stem(n, x_n_odd, 'LineWidth', lw, 'MarkerSize', 8);
xlabel('Normalized Time (0 to 1)', 'Interpreter', 'latex');
ylabel('x[n]', 'Interpreter', 'latex');
title('(d) Odd Signal in Discrete Time (Normalized)', 'Interpreter', 'latex');
axis([0 1 -1.2 1.2]);
grid on;
set(gca, 'FontSize', fz, 'TickLabelInterpreter', 'latex');

exportgraphics(fig1, 'evenOddFunctions.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'evenOddFunctions.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

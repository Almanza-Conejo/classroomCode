clc;
close all;
clear;

% Signal parameters
signalFrequency = 1;               % Frequency of the sinusoidal signal (Hz)
samplingFrequency = 20;            % Sampling frequency (Hz)
continuousTime = 0:0.001:2;        % Continuous time vector (2 seconds with high resolution)
discreteTime = 0:1/samplingFrequency:2; % Discrete time vector

% Generating the sinusoidal signal
continuousSignal = sin(2*pi*signalFrequency*continuousTime);  % Continuous signal
discreteSignal = sin(2*pi*signalFrequency*discreteTime);       % Discrete signal

% Plotting the continuous signal
fig1 = figure('WindowState', 'maximized');
plot(continuousTime, continuousSignal, 'b', 'LineWidth', 4);
hold on;

% Plotting the discrete samples
stem(discreteTime, discreteSignal, 'r', 'LineWidth', 3);

% Configuring the plot
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('Amplitude', 'Interpreter', 'latex');
title('Sinusoidal Signal with Continuous Envelope and Discrete Samples', ...
    'Interpreter', 'latex');
legend({'Continuous Signal', 'Discrete Samples'}, ...
    'Interpreter', 'latex');
set(gca, 'FontSize', 28, ...
    'TickLabelInterpreter', 'latex');
grid on;
hold off;

% Exporting the plot as an image
exportgraphics(fig1, 'dcFunction.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'dcFunction.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

clc;
close all;
clear;

% Parámetros de la señal
f = 1;                  % Frecuencia de la señal senoidal (Hz)
Fs = 20;                % Frecuencia de muestreo (Hz)
t_continuo = 0:0.001:2; % Vector de tiempo continuo (2 segundos con alta resolución)
t_discreto = 0:1/Fs:2;  % Vector de tiempo discreto

% Generación de la señal senoidal
senal_continuo = sin(2*pi*f*t_continuo);  % Señal continua
senal_discreta = sin(2*pi*f*t_discreto);  % Señal discreta

% Graficar la señal continua
fig1 = figure('WindowState', 'maximized');
plot(t_continuo, senal_continuo, 'b', 'LineWidth', 4);
hold on;

% Graficar las muestras discretas
stem(t_discreto, senal_discreta, 'r', 'LineWidth', 3);

% Configuración de la gráfica
xlabel('Tiempo (s)', 'Interpreter', 'latex');
ylabel('Amplitud', 'Interpreter', 'latex');
title('Senal Senoidal con Envolvente Continua y Muestras Discretas', ...
    'Interpreter', 'latex');
legend({'Senal Continua', 'Muestras Discretas'}, ...
    'Interpreter', 'latex');
set(gca, 'FontSize', 28, ...
    'TickLabelInterpreter', 'latex');
grid on;
hold off;

exportgraphics(fig1, 'dcFunction.png', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'image');
exportgraphics(fig1, 'dcFunction.pdf', ...
    'BackgroundColor', 'none', ...
    'ContentType', 'vector');

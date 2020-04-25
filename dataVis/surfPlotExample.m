%This script draws 3d surface diagram.

clear all;
close all;
clc;
x = linspace(-3.2,3.2,100); % 1-by-100
y = linspace(3.2,-3.2,100); % 1-by-100
z1 = sin (sqrt (x.^2 + y.^2))' * (sqrt (x.^2 + y.^2)); % 100-by-100
z2 = sombrero();
disppos = [10 40 600 200]; %display position on screen[left, bottom, width, height]
fig = figure('Position', disppos);
subplot(1, 2, 1);
surf(x,y,z1);
title("Surface Plot Example 1");
subplot(1, 2, 2);
surf(z2);
title("Surface Plot Example 2");
set(fig, 'paperunits', 'inches', 'paperPosition', [0, 0, 5, 2])
saveas(fig, 'surfplot.png');
savefig (fig, 'surfplot.fig', "compact");
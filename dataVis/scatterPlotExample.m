%This script plots scatter plot with different arguments.

clear all;
close all;
clc;
disppos = [10 40 1000 200]; %display position on screen[left, bottom, width, height]
fig = figure('Position', disppos);
x = rand(1,100);
y = rand(1,100);
subplot(1,4,1);
scatter(x, y); % no extra input parameters
title("Simple Scatter Plot");
subplot(1,4,2);
scatter(x,y,50); % marker size
title("marker size defined");
subplot(1,4,3);
scatter(x,y,50, 'r'); % marker color
title("marker color red");
subplot(1,4,4);
scatter(x,y,50, 'r', 's'); % marker color
title("marker style square");
set(fig, 'paperunits', 'inches', 'paperPosition', [0, 0, 10, 2])
saveas(fig, 'scatterplot.png');
savefig (fig, 'scatterplot.fig', "compact");


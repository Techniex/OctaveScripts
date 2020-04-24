%This script draws multiple line plots in one plot area.

clear all;
close all;
clc;
x = linspace(0,10, 100);
y1 = sin(x);
y2 = cos(x);
fig = figure();
hold on;
plot(x,y1, 'r--o');
plot(x,y2, 'b-d');
legend("sinusoidal plot", "cosine plot");
title("Line Plot");
saveas(fig, 'lineplot.png');
savefig (fig, 'lineplot.fig', "compact");
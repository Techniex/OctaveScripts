%This script draws a bar plot.

clear all;
close all;
clc;
x = linspace(0,10, 100);
y = abs(randn(1,100));
fig = figure();
hold on;
bar(x,y, 'r');
legend("random normal distribution plot");
title("Bar Plot");
saveas(fig, 'barplot.png');
savefig (fig, 'barplot.fig', "compact");
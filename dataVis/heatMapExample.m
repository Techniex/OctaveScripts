%This script draws heatmap using imagesc.
%Heatmap function is not yet implemented in Octave.

clear all;
close all;
clc;
x = linspace(-10,10,1000); % 1-by-100
y = linspace(10,-10,1000); % 1-by-100
z = sin (x)' * cos(y); % 100-by-100
fig = figure();
imagesc(x,y,z);
xlabel("x");
ylabel("y");
title("sin (x)' * cos(y)")
colorbar();
saveas(fig, 'heatplot.png');
savefig (fig, 'heatplot.fig', "compact");
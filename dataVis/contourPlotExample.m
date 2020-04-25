%This script draws heatmap using imagesc.
%Heatmap function is not yet implemented in Octave.

clear all;
close all;
clc;
x = linspace(-3.2,3.2,1000); % 1-by-100
y = linspace(3.2,-3.2,1000); % 1-by-100
z = sin (x)' * cos(y); % 100-by-100
fig = figure();
colormap("rainbow");
subplot(2,2,1);
contour(x,y,z);
title("Default");
subplot(2,2,2);
contour(x,y,z,20);
title("20 ISO lines");
subplot(2,2,3);
contour(x,y,z, 50);
title("50 ISO lines");
subplot(2,2,4);
contour(x,y,z,100);
title("100 ISO lines");

saveas(fig, 'contourplot.png');
savefig (fig, 'contourplot.fig', "compact");
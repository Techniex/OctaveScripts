%This script draws 3d mesh diagram.

clear all;
close all;
clc;
x = linspace(-1,1,100); % 1-by-100
y = linspace(-1,1,100); % 1-by-100
z = sin(x)'*cos(y); % 100-by-100
fig = figure();
mesh(x,y,z);
xlabel("x value");
ylabel("y value");
zlabel("z value");
title("Mesh Plot Example");
saveas(fig, 'meshplot.png');
savefig (fig, 'meshplot.fig', "compact");
%This script draws line plot in 3d space.

clear all;
close all;
clc;
x = linspace(1,20,200);
y = sin(x);
z= cos(x);
fig = figure();
plot3(y,z,x);
xlabel("sin(x)");
ylabel("cos(x)");
zlabel("x");
grid on;
grid minor on;
title("plot3 example");
saveas(fig, 'lineplot3.png');
savefig (fig, 'lineplot3.fig', "compact");
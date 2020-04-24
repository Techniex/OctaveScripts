%This script draws histogram.

clear all;
close all;
clc;
x = randn(1,100000);
fig = figure();
hist(x, 100); %data, number of bins
xlabel("data bins");
ylabel("Occurance");
title("Hist Plot Example");
saveas(fig, 'histplot.png');
savefig (fig, 'histplot.fig', "compact");
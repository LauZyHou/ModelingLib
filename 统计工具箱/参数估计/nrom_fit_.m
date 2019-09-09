clear;clc;

% 正态分布的参数估计,normfit可同时获得其点估计和区间估计
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
alpha = 0.05; % 显著性水平
[muhat,sigmahat,muci,sigmaci] = normfit(x,alpha);
muhat % x的均值的点估计
sigmahat % x的标准差的点估计
muci % x的均值的区间估计
sigmaci % x的标准差的区间估计
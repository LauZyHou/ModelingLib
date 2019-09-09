clear;clc;

% 泊松分布的点估计和区间估计
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
alpha = 0.05; % 显著性水平
[lambdahat, lambdaci] = poissfit(x,alpha);

lambdahat % 泊松分布参数Lambda的点估计
lambdaci % 泊松分布参数lambdaci的区间估计
clear;clc;

% 总体方差sigma^2未知时，总体均值的检验使用t-检验
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
alpha = 0.05; % 显著性水平
tail = 0; % 0:检验假设"x的均值等于m",1:大于,-1:小于
m = 41.7; % 估计的均值
[h,sig,ci] = ttest(x,m,alpha,tail);

h % 1:可以拒绝假设,0:不能拒绝假设
sig % 假设成立的概率
ci % 均值的1-alpha置信区间
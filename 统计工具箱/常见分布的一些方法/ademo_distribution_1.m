clear;clc;

% 常见的分布的函数见README中的讲解

% 例:画出正态分布N(0,1)和N(1,2^2)的概率密度函数图形
% 这样就要用正态分布`norm`的概率密度函数`pdf`即`normpdf`
% 传入随机变量取值采样点,分布的参数(均值和标准差)
x = -6:0.01:6;
y1 = normpdf(x);
y2 = normpdf(x,1,2);

plot(x,y1,x,y2);
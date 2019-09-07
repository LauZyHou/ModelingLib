clear;clc;
% 原始数据
x=0:0.1:1;
y=[-0.447 1.978 3.28 6.16 7.08 7.34 7.66 9.56 9.48 9.30 11.2];

% 线性最小二乘拟合 多项式方式
A = polyfit(x,y,2);
z = polyval(A,x); % 计算多项式的值

% 绘图
plot(x,y,'k+',x,z,'r');

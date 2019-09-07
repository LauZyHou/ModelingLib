clear;clc;

% 一元函数无约束问题(只是对一个变量限制一下区间)

% fminbnd函数的算法基于黄金分割法和二次插值法
% 它要求目标函数必须是连续函数，并且只能给出局部最优解

f = @(x) 2.*exp(-x).*sin(x); % 目标函数
fplot(f,[0,8]); % 作图
[xmin,ymin] = fminbnd(f,0,8); % 求最小值

% 因为fminbnd就是求最小值的,这里将目标函数取反
f1 = @(x) -2.*exp(-x).*sin(x);
[x1min,y1min] = fminbnd(f1,0,8);
xmax = x1min;
ymax = -y1min;

xmin,ymin,xmax,ymax
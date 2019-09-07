clear;clc;
% -5~5取11个基点
x0 = linspace(-5,5,11);
y0 = 1 ./ (1+x0.^2);

% 三次样条插值
x = linspace(-5,5,100);
y = interp1(x0,y0,x,'spline');

% 绘制和真实函数的比较图
x1 = linspace(-5,5,100);
y1 = 1 ./ (1+x1.^2);
plot(x1,y1,'k',x0,y0,'o',x,y,'r');
clear;clc;

% 多元函数无约束问题(只是对多个变量限制一下区间)
% 使用fminsearch

% 求Rosenbrock函数f(x1,x2)=100(x2-x1^2)^2+(1-x1)^2 的极小值点

% 为直观,先绘制Rosenbrock函数的三维图像和等高线图
[x,y]=meshgrid(-2:0.01:2, -1:0.01:3);
z = 100*(y-x.^2).^2+(1-x).^2;
subplot(1,2,1);
mesh(x,y,z); title('Rosenbrock Function');
subplot(1,2,2);
contour(x,y,z,20);
drawnow;
title('Contour of Rosenbrock');
hold on;
plot(-1.2,2,'o'); text(-1.2,2,'start point');
plot(1,1,'o'); text(1,1,'solution');

% 求解极值
f= '100*(x(2)-x(1)^2)^2+(1-x(1))^2';
[x, fval, exitflag, output] = fminsearch(f,[-1.2,2]);
x,fval,exitflag,output
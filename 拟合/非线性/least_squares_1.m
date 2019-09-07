clear;clc;
% 拟合的基础点
tdata = 100:100:1000;
cdata = 1e-03*[4.54,4.99,5.35,5.65,5.90,6.10,6.26,6.39,6.50,6.59];

% 迭代的初始值,即设置a,b,c迭代前的值
x0=[0.2,0.05,0.05];
% 非线性最小二乘拟合 使用lsqcurvefit实现,返回的x里就是要求的参数a,b,c
x = lsqcurvefit('curvefun1',x0,tdata,cdata);
display(x);

% 计算拟合后的函数值,并绘制图像
fdata = curvefun1(x,tdata);
plot(tdata,cdata,'k+',tdata,fdata,'o');

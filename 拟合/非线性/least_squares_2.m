clear;clc;

% 迭代的初始值,即设置a,b,c迭代前的值
x0=[0.2,0.05,0.05];
% 非线性最小二乘拟合 使用lsqnonlin实现,返回的x里就是要求的参数a,b,c
opt = optimset('TolFun',1e-9);
x = lsqnonlin('curvefun2',x0,[],[],opt);
display(x);

% 为了绘图补一下数据
tdata = 100:100:1000;
cdata = 1e-03*[4.54,4.99,5.35,5.65,5.90,6.10,6.26,6.39,6.50,6.59];

% 计算拟合后的函数值,并绘制图像
fdata = curvefun2(x);
plot(tdata,cdata,'k+',tdata,fdata,'o');

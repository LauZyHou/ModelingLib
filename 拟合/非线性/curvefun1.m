% 此文件是用于lsqcurvefit做非线性拟合的非线性函数

function [f] = curvefun1(x, tdata)
%CURVEFUN1 计算a加上b乘以e的负0.02kt次幂
%   a,b,c分别对应参数x的三个分量
f = x(1)+x(2)*exp(-0.02*x(3)*tdata);
end


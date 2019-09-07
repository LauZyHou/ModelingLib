function [f] = myfun2(x)
%MYFUN2 演示fmincon做非线性规划
%   输入x,输出目标值
f = -x(1)-2*x(2)+(1/2)*x(1)^2+(1/2)*x(2)^2;
end


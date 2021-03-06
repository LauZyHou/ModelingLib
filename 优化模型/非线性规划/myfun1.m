function [f] = myfun1(x)
%MYFUN1 用于演示使用fminunc的多元函数无约束问题
%   输入x,输出优化目标即总利润的相反数(用于求相反数的最小)
y1 = ((100-x(1)-0.1*x(2))-(30*exp(-0.015*x(1)) +20))*x(1);
y2 = ((280-0.2*x(1)-2*x(2))-(100*exp(-0.02*x(2)) +30))*x(2);
f = -y1-y2;
end


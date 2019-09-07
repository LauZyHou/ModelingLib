clear;clc;

% 非线性规划,这里解的也是一个二次规划问题,但使用fmincon不必化为标准型

% 本例见优化模型2 PPT第47页
x0 = [1;1];A=[2 3;1 4];b=[6;5];
A1 = [];b1=[];
LB = [0;0];UB=[];
[x,fval] = fmincon('myfun2',x0,A,b,A1,b1,LB,UB);
x,fval
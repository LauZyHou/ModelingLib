clear;clc;

% 二次规划,化为标准型后使用
% X = quadprog(H,C,A,b,A1,b1,LB,UB,X0)

% 本例见优化模型2 PPT第42页
H=[2 -2;-2 4];
C=[-2;-6];
A=[1 1; -1 2];
b=[2;2];
A1=[];b1=[];
LB=[0;0];UB=[];
[x,z] = quadprog(H,C,A,b,A1,b1,LB,UB);
x,z
clear;clc;
%{
min z = 6x1+3x2+4x3
s.t. x1+x2+x3=120
x1 ≥ 30
0 ≤ x2 ≤50
x3 ≥ 20
%}

% [X, fval] = linprog(c,A,b,Aeq,beq,lb,ub,X0)
% 其中c为系数,此中即[6 3 4],优化目标是cX中各项之和
% A和b为约束AX<=b,这里即A=[0 1 0],b=50
% Aeq和beq为约束AeqX=beq,这里即Aeq=[1 1 1],beq=120
% lb,ub为参数的下界和上界,这里即lb=[30;0;20]
% ub=[Inf;50;Inf]但这个50上面也约束过了,直接用[]也可以
% X0为为X选取的初始值
% 返回值:X是求得的最优解,fval是在X处的目标函数值

c = [6 3 4];
A = [0 1 0];
b = 50;
Aeq = [1 1 1];
beq = 120;
lb = [30;0;20];
ub = [Inf;50;Inf];
X0 = [0 0 0];
[x,fval] = linprog(c,A,b,Aeq,beq,lb,ub,X0);
x,fval


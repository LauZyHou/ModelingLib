clear;clc;
%{
min z = 6x1+3x2+4x3
s.t. x1+x2+x3=120
x1 �� 30
0 �� x2 ��50
x3 �� 20
%}

% [X, fval] = linprog(c,A,b,Aeq,beq,lb,ub,X0)
% ����cΪϵ��,���м�[6 3 4],�Ż�Ŀ����cX�и���֮��
% A��bΪԼ��AX<=b,���ＴA=[0 1 0],b=50
% Aeq��beqΪԼ��AeqX=beq,���ＴAeq=[1 1 1],beq=120
% lb,ubΪ�������½���Ͻ�,���Ｔlb=[30;0;20]
% ub=[Inf;50;Inf]�����50����ҲԼ������,ֱ����[]Ҳ����
% X0ΪΪXѡȡ�ĳ�ʼֵ
% ����ֵ:X����õ����Ž�,fval����X����Ŀ�꺯��ֵ

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


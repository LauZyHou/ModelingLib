clear;clc;

% ���ι滮,��Ϊ��׼�ͺ�ʹ��
% X = quadprog(H,C,A,b,A1,b1,LB,UB,X0)

% �������Ż�ģ��2 PPT��42ҳ
H=[2 -2;-2 4];
C=[-2;-6];
A=[1 1; -1 2];
b=[2;2];
A1=[];b1=[];
LB=[0;0];UB=[];
[x,z] = quadprog(H,C,A,b,A1,b1,LB,UB);
x,z
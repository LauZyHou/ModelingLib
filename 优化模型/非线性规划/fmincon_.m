clear;clc;

% �����Թ滮,������Ҳ��һ�����ι滮����,��ʹ��fmincon���ػ�Ϊ��׼��

% �������Ż�ģ��2 PPT��47ҳ
x0 = [1;1];A=[2 3;1 4];b=[6;5];
A1 = [];b1=[];
LB = [0;0];UB=[];
[x,fval] = fmincon('myfun2',x0,A,b,A1,b1,LB,UB);
x,fval
clear;clc;

% 常见的分布的函数见README中的讲解

% 例:计算x使得X~N(0,1)中P(X<x)=0.8,也就是去计算概率分布的一个分位数
% 这样就要用正态分布`norm`的逆概率分布函数`inv`即`norminv`
x = norminv(0.8,0,1);

x
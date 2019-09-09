clear;clc;

% 常见的分布的函数见README中的讲解

% 例:计算X~N(0,1)的概率P{-1<X<1}
% 这样就要用正态分布`norm`的概率分布函数`cdf`即`normcdf`
pb = normcdf(1);
pa = normcdf(-1);

pb - pa
clear;clc;

% 常见的分布的函数见README中的讲解

% 例:计算X~N(3,5^2)的均值和方差,这对正态分布似乎没什么用
% 这样就要用正态分布`norm`计算均值方差的`stat`即`normstat`
[miu,sig2] = normstat(3,5);

miu,sig2
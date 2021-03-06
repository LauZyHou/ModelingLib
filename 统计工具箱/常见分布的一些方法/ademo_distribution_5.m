clear;clc;

% 常见的分布的函数见README中的讲解

% 例1:产生2x3的随机数矩阵,均值分别是:
% 1 2 3 ; 4 5 6
% 方差都取0.1^2

% 这样就要用正态分布`norm`生成随机数的`rnd`即`normrnd`
M1 = normrnd([1 2 3 ; 4 5 6],0.1,2,3);
M1

% 例2:产生2x3的随机数矩阵X~N(5,3^2)
M2 = normrnd(5,3,2,3);
M2

clear;clc;

% 基本统计量

x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
a = mean(x); % 均值
b = median(x); % 中位数
c = std(x); % 标准差
d = var(x); % 方差
e = skewness(x); % 偏度(反映分布的对称性,>0右偏态表示位于均值右边的比左边多)
f = kurtosis(x); % 峰度(对分布形状的度量,正态分布为3,>3表示有更多偏离均值的数据)


clear;clc;

% 生成和保存数据

% 等差数列,这里是年份
t = 78:87;

% 没规律的数字手动写进来
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
y = [41.4,51.8,61.7,67.9,68.7,77.5,95.9,137.4,155.0,175.0];

% 保存数据到data文件中
save data t x y

% 要使用时,读取data文件里的数据,就可以在工作区看到变量已经读取进来了
laod data
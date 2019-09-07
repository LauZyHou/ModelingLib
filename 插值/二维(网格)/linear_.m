clear;clc;
% 网格点(插值的基点)
temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];

% 绘制基点构成平面的大致图像
x=1:5;
y=1:3;
mesh(x,y,temps);

% 以平滑数据,在 x、y方向上每隔0.2个单位的地方进行插值
xi=1:0.2:5;
yi=1:0.2:3;
zi=interp2(x,y,temps,xi',yi,'linear'); % 双线性插值
mesh(xi,yi,zi);
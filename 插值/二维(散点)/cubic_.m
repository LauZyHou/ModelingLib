clear;clc;
% 输入散点数据及其值
x=[129 140 103.5 88 185.5 195 105.5 157.5 107.5 77 81 162 162 117.5];
y=[7.5 141.5 23 147 22.5 137.5 85.5 -6.5 -81 3 56.5 -66.5 84 -33.5];
z=[-4 -8 -6 -8 -6 -8 -8 -9 -9 -8 -8 -9 -4 -9];

% 在矩形区域x from 75 to 200, y from -50 to 150做插值
cx=75:0.5:200;
cy=-50:0.5:150;
cz=griddata(x,y,z,cx,cy','cubic'); % 双三次插值

% 绘图
meshz(cx,cy,cz),rotate3d;
xlabel('X'),ylabel('Y'),zlabel('Z');

% 作出水深小于5的海域范围,即z=-5的等高线
figure(2),contour(cx,cy,cz,[-5 -5]);grid;
hold on;
plot(x,y,'+');
xlabel('X'),ylabel('Y');
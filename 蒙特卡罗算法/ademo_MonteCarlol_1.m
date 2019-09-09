clear;clc;

% 蒙特卡罗算法举例:计算下面a1,a2,a3所示的三个椭圆所包围的图形面积
% 区域:x从-6到6,y从-6到6

N = 10000; % 每次随机找区域内的10000个点
n = 100; % 重复"随机10000个点"这个过程100次,取平均以让随机更合理

% 预分配内存,以加速运算
x = zeros(1,N);
y = zeros(1,N);
m = zeros(1,n);

for j=1:n % n次重复
    k = 0; % 落到范围内的点的数目
    for i=1:N % 一共取10000个点
        a = 12*rand(1,2)-6; % 每次随机获取一个二维点,乘12再减6使其在-6~6之间
        x(i) = a(1,1); % 该点横坐标
        y(i) = a(1,2); % 该点纵坐标
        % 注意,将点带入椭圆方程,若小于常值就在其内部
        a1 = (x(i)^2)/9+(y(i)^2)/36;
        a2 = (x(i)^2)/36+y(i)^2;
        a3 = (x(i)-2)^2+(y(i)+1)^2;
        if a1<1
            if a2<1
                if a3<9
                    k = k+1; % 小于三个常值,说明在所给范围内,计数
                end
            end
        end
    end
    m(j) = (12^2)*k/N; % 矩形边长12,计算面积并乘以落在范围内的频率
end
mj = mean(m); % 计算均值

mj

% 注:x,y,和m都不必分配那么长内存,实际上每次只保存当前的就可以了
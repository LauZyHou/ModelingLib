clear;clc;

% һԪ������Լ������(ֻ�Ƕ�һ����������һ������)

% fminbnd�������㷨���ڻƽ�ָ�Ͷ��β�ֵ��
% ��Ҫ��Ŀ�꺯����������������������ֻ�ܸ����ֲ����Ž�

f = @(x) 2.*exp(-x).*sin(x); % Ŀ�꺯��
fplot(f,[0,8]); % ��ͼ
[xmin,ymin] = fminbnd(f,0,8); % ����Сֵ

% ��Ϊfminbnd��������Сֵ��,���ｫĿ�꺯��ȡ��
f1 = @(x) -2.*exp(-x).*sin(x);
[x1min,y1min] = fminbnd(f1,0,8);
xmax = x1min;
ymax = -y1min;

xmin,ymin,xmax,ymax
clear;clc;

% Weibull�ֲ��ĵ���ƺ��������
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
alpha = 0.05; % ������ˮƽ
[phat, pci] = wblfit(x,alpha);

phat % Weibull�ֲ�a,b�ĵ����
pci % Weibull�ֲ�a,b���������
clear;clc;

% ��̬�ֲ��Ĳ�������,normfit��ͬʱ��������ƺ��������
x = [23.8,27.6,31.6,32.4,33.7,34.9,43.2,52.8,63.8,73.4];
alpha = 0.05; % ������ˮƽ
[muhat,sigmahat,muci,sigmaci] = normfit(x,alpha);
muhat % x�ľ�ֵ�ĵ����
sigmahat % x�ı�׼��ĵ����
muci % x�ľ�ֵ���������
sigmaci % x�ı�׼����������
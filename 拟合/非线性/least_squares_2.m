clear;clc;

% �����ĳ�ʼֵ,������a,b,c����ǰ��ֵ
x0=[0.2,0.05,0.05];
% ��������С������� ʹ��lsqnonlinʵ��,���ص�x�����Ҫ��Ĳ���a,b,c
opt = optimset('TolFun',1e-9);
x = lsqnonlin('curvefun2',x0,[],[],opt);
display(x);

% Ϊ�˻�ͼ��һ������
tdata = 100:100:1000;
cdata = 1e-03*[4.54,4.99,5.35,5.65,5.90,6.10,6.26,6.39,6.50,6.59];

% ������Ϻ�ĺ���ֵ,������ͼ��
fdata = curvefun2(x);
plot(tdata,cdata,'k+',tdata,fdata,'o');

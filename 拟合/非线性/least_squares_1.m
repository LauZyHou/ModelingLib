clear;clc;
% ��ϵĻ�����
tdata = 100:100:1000;
cdata = 1e-03*[4.54,4.99,5.35,5.65,5.90,6.10,6.26,6.39,6.50,6.59];

% �����ĳ�ʼֵ,������a,b,c����ǰ��ֵ
x0=[0.2,0.05,0.05];
% ��������С������� ʹ��lsqcurvefitʵ��,���ص�x�����Ҫ��Ĳ���a,b,c
x = lsqcurvefit('curvefun1',x0,tdata,cdata);
display(x);

% ������Ϻ�ĺ���ֵ,������ͼ��
fdata = curvefun1(x,tdata);
plot(tdata,cdata,'k+',tdata,fdata,'o');

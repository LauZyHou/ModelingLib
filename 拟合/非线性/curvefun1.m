% ���ļ�������lsqcurvefit����������ϵķ����Ժ���

function [f] = curvefun1(x, tdata)
%CURVEFUN1 ����a����b����e�ĸ�0.02kt����
%   a,b,c�ֱ��Ӧ����x����������
f = x(1)+x(2)*exp(-0.02*x(3)*tdata);
end


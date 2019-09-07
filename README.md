# ModelingLib

A temporary tool library for mathematical modeling competition.

## 优化工具箱

命令`optimtool`可以打开优化工具箱，选择优化器和优化算法，输入要优化的函数，如`@(x)[abs(x^2-3*x+2)]`或是`@写好的函数文件`，输入超参数和优化目标的初始值，然后点 start 就可以开始优化过程了。

## 插值和拟合的区别

插值要求所找到的函数经过所有基点，然后对所给的点计算其值；拟合不要求经过所有点，且仅找到拟合这些点的函数模型。

load carsmall;
x1 = Weight;
x2 = Horsepower;
y = MPG;

x = [ones(size(x1)) x1 x2 x1.*x2];
disp(size(x));
disp(size(y));
b = regress(y, x);
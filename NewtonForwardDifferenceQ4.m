clc;
clear;
x = [50; 100; 150; 200; 250];
y = [618; 724; 805; 906; 1032];
xf = 300;
n = length(x);
h=x(2)-x(1);

F = zeros(n, n);
F(:, 1) = y;

for j = 2:n
    for i=j:n
        F(i,j) = F(i, j-1) - F(i-1, j-1);
    end
end
F % printing F values;
C=F(n, n);
for k =n-1:-1:1
    u = charpoly(x(1))/h;
    
    u(2) = u(2) - (k-1);
    u
    C = conv(C, u)/k;
    m = length(C);
    C(m) = C(m) + F(k, k);
end

for i=1:n
    rat(C(i))
end
A = polyval(C, xf);
fprintf("The value at given point is %.4f\n",A);

x = linspace(x(1), x(n), 100);
y = polyval(C, x);
plot(x, y);
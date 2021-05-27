clc;
clear;
x = [3.1; 3.2; 3.3; 3.4; 3.5];
y = [0; 0.6; 1.0; 1.2; 1.3];
p0 = 3.17;
n = length(x);
h=x(2)-x(1);

F = zeros(n, n);
F(:, 1) = y; % Making first column = y

for j = 2:n
    for i=j:n
        F(i,j) = F(i, j-1) - F(i-1, j-1);
    end
end
F % printing F values;
C=F(n, n);
for k =n-1:-1:1
    P = charpoly(x(1))/h; % polynomial with root as x(1)
    P(2) = P(2) + (k-1); % this is changing 
    C = conv(C, P)/k; % this means multiplying two polynomials if c & p are coefficients of a polynomial
    m = length(C);
    C(m) = C(m) + F(k, k);
end

for i=1:n
    rat(C(i))
end
A = polyval(C, p0); %evaluating polynomial at that point


fprintf("The value at given point is %.4f\n",A);

x = linspace(x(1), x(n), 100);
y = polyval(C, x);
plot(x, y);
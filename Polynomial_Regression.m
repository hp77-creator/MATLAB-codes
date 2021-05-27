% Polynomial Regression 
% y = a0 + a1 * T + a2 * T^2
x = input('Enter independent points\n');
y = input('Enter dependent points \n');


n = length(y);
sum_x = sum(x);
sum_y = sum(y);
sum_x_2 = sum(x.^2);
sum_x_3 = sum(x.^3);
sum_x_4 = sum(x.^4);
sum_x_y = sum(x .* y);
sum_x_2_y = sum(sum_x_2.*y);

X=[n sum_x sum_y; sum_x sum_x_2 sum_x_3; sum_x_2 sum_x_3 sum_x_4];
Y = [sum_y sum_x_y sum_x_2_y];

a = Y * inv(X);

a0 = a(1);
a1 = a(2);
a2 = a(3);

for i=1:n
    res(i) = a0 + a1 * x(i)+a2 * (x(i)^2);
end

scatter(x, y);
hold on;
plot(x, res);


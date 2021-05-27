% Linear Regression 
x = input('Enter independent points\n');
y = input('Enter dependent points \n');

n = length(y);
sum_x = sum(x);
sum_y = sum(y);
sum_x_2 = sum(x.^2);
sum_x_y = sum(x .* y);

a0 = (sum_x_2 * sum_y - sum_x * sum_x_y)/(n * sum_x_2 - (sum_x)^2);
a1 = (n * sum_x_y - sum_x * sum_y)/(n * sum_x_2 - (sum_x)^2);

for i=1:n
    res(i) = a0 + a1 * x(i);
end

scatter(x, y);
hold on;
plot(x, res);






% Growth Polynomial Regression 
% y = a * x/(b + x);
% z = a0 + a1 * w;
% z = 1/y;
% w = 1/x;
x = input('Enter independent points\n');
y = input('Enter dependent points \n');

n = length(y);
z = y.^(-1);
w = x.^(-1);
disp(w);
sum_w = sum(w);
sum_z = sum(z);
sum_w_2 = sum(w.^2);
sum_w_z = sum(w .* z);

a0 = (sum_w_2 * sum_z - sum_w * sum_w_z)/(n * sum_w_2 - (sum_w)^2);
a1 = (n * sum_w_z - sum_w * sum_z)/(n * sum_w_2 - (sum_w)^2);

a = a0 ^ -1;
b = a1 / a0;
for i=1:n
    res(i) = a * x(i)/(b + x(i));
    fprintf("res at %d is %f \n",i, res(i));
end
disp(res);

scatter(x, y);
hold on;
plot(x, res);


% Euler's Method %


F = @(x, y) (x*y);

y0 = input('Enter the initial value(y0) ');
t0 = input('Enter the initial point(xi) ');
tf = input('Enter the final point(xf) ');
n = input('Enter the number of steps ');
h = (tf - t0)/n;

fprintf("The value of step size is %f \n", h);

Y = zeros(n+1, 1);
Y(1) = y0;
x = 0;

for i=1:n
    x = t0 + i * h;
    Y(i+1) = Y(i) + h * F(x, Y(i));
    fprintf("The value of function at x = %f is %f \n",x, Y(i+1));
end

% disp(Y); %


    
    
    
    
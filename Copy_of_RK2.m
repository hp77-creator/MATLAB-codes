%  RK-2

% f = input("Please Enter your function ");
f = @(t, y) t + y;
t = @(
x0 = input("Please enter your initial x ");
y0 = input("Please enter your initial y ");
h = input("Please enter the step size ");
xf = input(" Enter the x at which you want to evaluate ");
y(1) = y0;
x(1) = x0;
n = (xf - x0)/ h;
fprintf("The value of n is %d ", n);
for i=1:n
    x(i+1) = x(i)+ i;
    s1 = f(x(i), y(i));
    s2 = f(x(i+1), y(i)+s1*h);
    s = (s1 + s2 )/ 2;
    y(i+1) = y(i) + h * s;
    fprintf("The value of y at %d th iteration is %f \n",i, y(i+1));
end

plot(x, y);

    

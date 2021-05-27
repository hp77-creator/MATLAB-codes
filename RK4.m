% RK 4

f = @(t, z) t + z;

x0 = input("Enter the value of initial x ");
y0 = input("Enter the value of initial y ");
h = input("Enter the step size ");
xf = input("Enter the final x ");

n = (xf - x0) / h;

x(1) = x0;
y(1) = y0;

for i=1:n
    x(i+1) = x(i) + h;
    
    s1 = f(x(i), y(i));
    s2 = f(x(i) + h/2, y(i)+s1 * h);
    s3 = f(x(i) + h/2, y(i) + s2 *h);
    s4 = f(x(i) + h, y(i) + s3 * h);
    
    y(i+1) = y(i) + h/6 * ( s1 + 2 * s2 + 2 * s3 + s4);
    
    fprintf("The value at %d th iteration is x = %f and y = %f\n",i,x(i+1),y(i+1));
end

plot(x, y);
    
    
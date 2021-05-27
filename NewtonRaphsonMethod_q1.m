f = @(x) 2*x^3 - 2.5 * x - 5;
f_dash = @(x) 6 * x^2 - 2.5;
x1 = input('Enter the first condition ');
prec = input('Enter the precision upto which you want to calculate ');



x2 = x1 - (f(x1)/f_dash(x1)) ;

while abs(f(x2)) > prec
    x1 = x2;
    x2 = x1 - (f(x1)/f_dash(x1));
    fprintf("for now x2 is %d and f(%d) is %d\n", x2, x2, f(x2));
end

fprintf("The root obtained by the solution is %d\n", x2);

x = linspace(x1-10, x1+10, 100);
for i=1:100
    y(i) = f(x(i));
end
plot(x, y);
hold on
plot(x2, f(x2), 'r*');

        
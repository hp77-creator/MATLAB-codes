f = input('Enter the function ');
x1 = input('Enter the first condition ');
x2 = input('Enter the second condition ');
prec = input('Enter the precision upto which you want to calculate ');



x3 = (x1 * f(x2) - x2 * f(x1) )/(f(x2) -f(x1));

while abs(f(x3)) > prec
    x1 = x2;
    x2 = x3;
    x3 = (x1 * f(x2) - x2 * f(x1) )/(f(x2) -f(x1));
    fprintf("for now x3 is %d and f(%d) is %d\n", x3, x3, f(x3));
end

fprintf("The root obtained by the solution is %d\n", x3);

x = linspace(x1-10, x2+10, 100);
for i=1:100
    y(i) = f(x(i));
end
plot(x, y);
hold on
plot(x3, f(x3), 'r*');

        
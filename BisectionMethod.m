f = input('Enter the function ');
x1 = input('Enter the first condition ');
x2 = input('Enter the second condition ');
prec = input('Enter the precision upto which you want to calculate ');

if f(x1) * f(x2) > 0
    fprintf('Please enter a valid interval \n');
    fprintf('for now we will take a value on our own \n');
    while f(x1)*f(x2) > 0
        x2 = x2 + 1;
        fprintf('x2 is %d and f(%d) is %d \n', x2, x2, f(x2));
    end
end

x3 = (x1 + x2)/2;

while abs(f(x3)) > prec
    if f(x3)*f(x1) > 0
        x1 = x3;
    elseif f(x3) * f(x2) > 0
        x2 = x3;
    else
    end
    x3 = (x1 + x2)/2;
    fprintf("for now x3 is %d and f(%d) is %d\n", x3, x3, f(x3));
end

fprintf("The root obtained by the solution is %d", x3);

x = linspace(x1-10, x2+10, 100);
for i=1:100
    y(i) = f(x(i));
end
plot(x, y);
hold on
plot(x3, f(x3), 'r*');



        
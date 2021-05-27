syms x y
f = input('Enter your first function ');
g = input('Enter the second function ');
f_dash_x = eval(['@(x, y)' char(diff(f(x, y), x))]);
g_dash_x = eval(['@(x, y)' char(diff(g(x, y), x))]);
f_dash_y = eval(['@(x, y)' char(diff(f(x, y), y))]);
g_dash_y = eval(['@(x, y)' char(diff(g(x, y), y))]);
x1 = input('Enter the first condition of x ');
y1 = input('Enter the first condition of y ');
prec = input('Enter the precision upto which you want to calculate ');

D = det([f_dash_x(x1, y1) f_dash_y(x1, y1); g_dash_x(x1, y1) g_dash_y(x1, y1)]);

h = det([-(f(x1, y1)) f_dash_y(x1, y1); -g(x1, y1) g_dash_y(x1, y1)])/D;
k = det([f_dash_x(x1, y1) -f(x1, y1);g_dash_x(x1, y1) -g(x1, y1)])/D;
x2 = x1 + h;
y2 = y1 + h;
while abs(f(x2, y2)) > prec && abs(g(x2, y2)) > prec
    x1 = x2;
    y1 = y2;
   D = det([f_dash_x(x1, y1) f_dash_y(x1, y1); g_dash_x(x1, y1) g_dash_y(x1, y1)]);
   h = det([-(f(x1, y1)) f_dash_y(x1, y1); -g(x1, y1) g_dash_y(x1, y1)])/D;
   k = det([f_dash_x(x1, y1) -f(x1, y1);g_dash_x(x1, y1) -g(x1, y1)])/D;
   x2 = x1 + h;
   y2 = y1 + h;

    %fprintf("for now x2 is %d and y2 is %d  and f(%d, %d) is %d and g(%d, %d) is %d\n", x2, x2, f(x2, y2), g(x2, y2));
end

fprintf("The root obtained by the solution is %d, %d\n", x2, y2);

x = linspace(x1-10, x1+10, 100);
y = linspace(y1-10, y1+10, 100);
for i=1:100
    z(i) = f(x(i), y(i));
    l(i) = g(x(i), y(i));
    
end
plot3(x, y, z);
plot3(x, y, l);

        
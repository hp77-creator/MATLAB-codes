% Direct Interpolation
% y(x) = a0 + a1 * x + a2 * x^2 + a3 * x^3 ...
% y(0) = a0 + a1 * x0 + a2 * x0 ^2 ...
% y(x0) = a0 + a1 * x0;
% y(x1) = a0 + a1 * x1;
% a1 = y(x1) - y(x0) / x1 - x0;
% a0 = y(x0) - a1;
% 1 x0 x0^2 ...
% 1 x1 x1^2 ...
% 1 xn-1 xn-1^2 ...


x0 =  input('Enter first x ');
y0 = input('Enter corresponding y ');
x1 = input('Enter second x ');
y1 = input('Enter corresponding y ');

a1 = (y1-y0)/(x1-x0);
a0 = y0 - a1 * x0;

xf = input('Enter the x for which you want the value ');

y = a0 + a1 * xf;
fprintf("The value of y at %f is %f \n",xf, y);


% n = input('Enter the number of points that you are going to give');
% X = zeros(n ,1);
% Y = zeros(n, 1);
% fprintf("Enter the x and y ");
% for i = 1:n
%     X(i) = input('Enter the x ');
%     Y(i) = input('Enter the y ');
% end
% 
% xf = input('Enter the value of x at which you want answer');
% 
% value_vec
% 
% n = input('Enter the number of points that you are going to give');
% X = zeros(n ,1);
% Y = zeros(n, 1);
% fprintf("Enter the x and y ");
% for i = 1:n
%     X(i) = input('Enter the x ');
%     Y(i) = input('Enter the y ');
% end
% 
% xf = input('Enter the value of x at which you want answer');
% 
% value_vect = zeros(n);
% 
% for i = 1:n
%     for j = 1:n
%             value_vect(i, j) = x(i)^(j-1);
%     end
% end
% y = 0;
% a = linsolve(value_vect, y);
% for i = 1:n
%     y = y + a(i) * xf^(i-1);            
% end
% 
% fprintf("The answer is -> %.04f",y);t = zeros(n);
% 
% for i = 1:n
%     for j = 1:n
%             value_vect(i, j) = x(i)^(j-1);
%     end
% end
% y = 0;
% a = linsolve(value_vect, y);
% for i = 1:n
%     y = y + a(i) * xf^(i-1);            
% end
% 
% fprintf("The answer is -> %.04f",y);
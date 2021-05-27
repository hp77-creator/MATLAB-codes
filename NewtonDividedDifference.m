clc;
clear;
n = input('Enter no. of data points\n');
f = input('Enter X for which Y is to be calculated\n');
for i=1:n
    fprintf('\nx%d = %f',i);
    x(i)=input('');
    fprintf('\ny%d = %f',i);
    y(i,1)=input('');
end

for j=2:n
    for i=1:n-j+1
        y(i,j) = (y(i+1,j-1)-y(i,j-1))/(x(i+(j-1))-x(i));
    end
end
disp(y);
sum=y(1);
u1=1;

for j=1:n-1
    u1=u1*(f-x(j));
    sum=sum+u1*y(1,j+1);
end

%for plot
% y_g = y(:,1)
% y_g(n+1) = sum
% x(n+1) = f
% plot(x, y_g, 'r')
% %

fprintf('\n Value at %f is %f ', f, sum);
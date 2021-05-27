% Lagrangian Interpolation
n = input('Enter the number of points that you are going to give');
X = zeros(n ,1);
Y = zeros(n, 1);
fprintf("Enter the x and y ");
for i = 1:n
    X(i) = input('Enter the x ');
    Y(i) = input('Enter the y ');
end

xf = input('Enter the value of x at which you want answer');

L = ones(n, 1);
for i = 1:n
    for j = 1:n
        if i ~= j
            L(i) = L(i) * ((xf - X(j))/(X(i) - X(j)));
        end
    end
end
y = 0;
for i = 1:n
    y = y + L(i) * Y(i);            
end

fprintf("The answer is -> %.04f",y);
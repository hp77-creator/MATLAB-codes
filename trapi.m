% Trapezoidal Method %


F = @(x)  x^2;

a = input('Enter lower limit ');
b = input('Enter upper limit ');

n = input('Enter sample size ');
h = (b - a )/n;
X = double.empty(n, 0);
Y = double.empty(n, 0);

sum = 0;
index=1;
for i = a:h:b       % i = a + i*h until i <= b
    f1 = F(i);
    fprintf('The value of F at %i is %f \n',i,f1);
    if i == a || i==b
        sum = sum + f1;
    else 
        sum = sum + 2 * f1;
    end
    X(index) = i;
    Y(index) = f1;
    index = index + 1;
    
end

sum = sum*h/2;
fprintf('The value of sum is %f \n', sum);

answer = sum;
fprintf('The Answer for this question is %f\n', answer);
plot(X, Y);
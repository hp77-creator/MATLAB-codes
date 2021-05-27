%% Simpson's 3/8 rule

F = @(x) x^2; %Function 

a = input('Enter lower limit ');
b = input('Enter upper limit ');

n = input('Enter sample size ');

h = (b - a)/n;

X = double.empty(n, 0);
Y = double.empty(n, 0);
sum = 0;
counter = 0;
index = 1;

for i = a:h:b
    fi = F(i);
    fprintf('The value of function at i = %f is %f \n',i, fi);
    if(i == a|| i==b)
        sum = sum + fi;
    elseif (mod(counter, 3) ==0)
        sum = sum + 2 * fi;
    else
        sum = sum + 3 * fi;
    end
    X(index)=i;
    Y(index) = fi;
    index = index + 1;
    counter = counter + 1;
end

sum = sum * (3 * h/8);

fprintf('The value of sum is %f \n', sum);

answer = sum;

fprintf('The Answer is %f \n ', answer);
plot(X, Y);


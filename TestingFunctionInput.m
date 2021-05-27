% trying to take in Function from user %
Fun = @(x)x^2;  % Integrand

a = input('Enter lower limit'); % lower limit
b = input('Enter upper limit'); % Upper limit
n = input('Enter number of samples'); % No of samples

h = (b-a)/n; % sample size
sum = 0;

F0 = Fun(a);
Fn = Fun(b);

for i = 1:n-1
    F = Fun(a+(1*h)); % Calling function
    sum = sum + 2*F; % For all other value
end

I = (h/2)*(sum+F0+Fn);

disp('The intregal value is');
disp(I);
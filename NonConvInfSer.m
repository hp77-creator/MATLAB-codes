f = @(x) 1/sqrt(x);

n = input("Please input n \n");
S = 0;
for i = 1:n
    S = S + f(i);
    if i == 100
        fprintf("The value of S at %d is %f\n",i, S)
    elseif i == 500
        fprintf("The value of S at %d is %f\n",i, S);
    elseif i == 2000
        fprintf("The value of S at %d is %f\n",i, S);
    elseif i == 5000
        fprintf("The value of S at %d is %f\n",i, S);
    end
end

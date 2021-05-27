digits(10)
f = @(x) x * exp(x);
f_d = @(x) (1 + x) * exp(x);
f_f = @(x, h) (-3 * f(x) + 4 * f(x + h) - f(x+2*h))/(2 * h);
x = 1;
for n = 1:7
    h(n) = vpa(10^(-(n+1)));
    ans_f(n) = vpa(f_f(x, h(n)));
    ans_d(n) = vpa(f_d(x));
    fprintf("The value of derivative from formula at %.10f is %f \n",h(n), ans_f(n));
    fprintf("The answer from derivative is %.10f \n", ans_d(n));
end

err_m = vpa(ans_d - ans_f);
err_m

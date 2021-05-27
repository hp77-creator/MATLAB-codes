f= @(x) exp(-x)-0.5;
N=input('Number of iterations ');
i=0;
a=-1;
b=0;
while(i<=N)
    
    y= (a*f(b)-b*f(a))/(f(b)-f(a));
    if(f(y)<10^-6)
        break;
    end;
    fprintf('Itteration number ');
    disp(i);
    fprintf(' Value is ');
    disp(f(y));
    
    a=b;
    b=y;
    i=i+1;
    
end
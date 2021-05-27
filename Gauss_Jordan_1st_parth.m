clc;clear;
x1=input("Enter initial approximation for x1: ");
x2=input("Enter initial approximation for x2: ");
x3=input("Enter initial approximation for x3: ");
x4=input("Enter initial approximation for x4: ");
x11=0;x21=0;x31=0;x41=0;n=0;
for i=1:20
 x11=(3+2*x2+x3+x4)/10;
 x21=(15+2*x1+x3+x4)/10;
 x31=(27+x1+x2+2*x4)/10;
 x41=(-9+x1+x2+2*x3)/10;
 if abs(x1-x11)>0.001 && abs(x2-x21)>0.001 && abs(x3-x31)>0.001 && abs(x4-x41)>0.001
 n=n+1;
 end
 x1=x11;x2=x21;x3=x31;x4=x41;
end
fprintf("x1=%f \t x2=%f \t x3=%f \t x4=%f \t\n In %d iterations",x11,x21,x31,x41,n);
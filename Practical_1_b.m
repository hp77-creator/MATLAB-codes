clc;
Vph=input("Enter the phase voltage on source side(star,in volts)");
Vline=Vph*sqrt(3);
P=input("Enter the power consumed on load side(delta,in watts)");
Pph=P/3;
pf=input("Enter the power factor");
Iph=Pph/(Vph*pf);
Iline=Iph*sqrt(3);
disp("The line current is:");
disp(Iline);
disp("The line voltage is:");
disp(Vline);


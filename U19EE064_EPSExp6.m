R_l = input('Enter resistance per unit length ');
V_r = input('Enter receiving end voltage(in Volts) ');
P = input('Enter power(in MW) ');
P_out = P * 10^6;
p_f = input('Enter power factor ');
l = input('Enter the length of the line(in km) ');
l_m = l * 1000;
R = R_l * l;
fprintf("Resistance is %f and length in m is %f\n",R, l_m);
d = input('Enter the diameter of the line(in cm) ');
d_m = d / 100;
f = input('Enter the frequency(in HZ) ');
d1 = input('Enter d1 ');
d2 = input('Enter d2 ');
d3 = input('Enter d3 ');

L = 2 * 10^(-7) * l_m * log(power(d1 * d2 * d3, 1/3)/(0.7788 * d_m/2));
fprintf("Inductor is %f \n", L);
epsi = 8.85 * 10 ^(-12);
Cap = 2 * pi * l_m * epsi/ (log(power(d1 * d2 * d3, 1/3)/(d_m/2)));
fprintf("Capacitance is\n");
disp(Cap);
X_l = 2 * pi * f* L;
X_c = 1/ (2 * pi * f * Cap);

Z = R + 1i * (X_l);

fprintf("Z is %0.9f \n", Z);
Y = 1i * (1/X_c);
fprintf("Y is \n");
disp(Y);
A = 1 + (Z * Y)/2;
B = Z;
C = Y * (1 + (Z * Y)/4);
D = A;

fprintf("A , B, C, D are\n");
disp(A);
disp(B);
disp(C);
disp(D);


theta = acos(p_f);
sin_theta = sin(theta);

V_r_ph = V_r/sqrt(3);

fprintf("Voltage per phase is %f \n", V_r_ph);

I_r_o = P_out/(sqrt(3) * V_r * p_f);

fprintf("Receiving end current I_r_o is %f \n", I_r_o);

I_r = I_r_o * ( p_f - 1i * sin_theta);

fprintf("I_r is %f\n", I_r);

V_s = A * V_r_ph + B * I_r;
fprintf("V_s is\n");
disp(V_s);
I_s = C * V_r_ph + D * I_r;
fprintf("I_s is \n");
disp(I_s);

ang_diff = angle(V_s) - angle(I_s);

p_f_s = cos(ang_diff);
fprintf("The power factor p_f_s is %f \n", p_f_s);
P_in = abs(3 * V_s * I_s * p_f_s);
efficiency = P_out/P_in * 100;

regulation = (abs(V_s/A) - abs(V_r_ph))/abs(V_r_ph) * 100;

fprintf("The efficiency is %f and regulation is %f\n",efficiency, regulation);





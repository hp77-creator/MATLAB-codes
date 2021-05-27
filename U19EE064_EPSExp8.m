clc;
L=input('Length of transmission line in km\n');
Vi = input('receiving end voltage in KV\n');
r = input('Per km resistance in ohm \n');
l = input('Per km inductance in mH \n');
S = input('Receiving power in MVA\n');
Fi = input('Lagging power factor\n ');
S = S * 1e6;
Vi = Vi * 1e3;
l = l * 1e-3;
ind = l * L;
R = r * L;
Vr = Vi/sqrt(3);
Z = complex(R, 2*pi*50*L);
j=sqrt(-1);
if L <= 60
    A = 1;
    B = Z;
    C = 0;
    D = A;
elseif L > 60 && L <= 160
    c = input('Per km capacitance in microFarad\n');
    c = c * 1e-6;
    Y = 2 * pi * 50 * c * L*j;
    A = (Y/2)*Z +1;
    B= Z * ((Y/4)*Z+1);
    C = Y;
    D = A;
else
    c = input('Per km capacitance in microFarad\n');
    c = c*1e-6;
    Y = 2 * pi * 50 * c * L *j;
    K = sqrt(Y * Z);
    M = sqrt(Y/Z);
    A = cosh(K);
    B = sinh(K)/M;
    C = M * sinh(K);
    D = A;
end

Ir = S/(sqrt(3) * Vi);
IR = Ir * complex(cos(-acos(Fi)), sin(-acos(Fi)));
VS = A * Vr + B * IR;
disp(abs(VS));
IS = C*Vr + D*IR;
disp(abs(IS));
Ps = 3 * real(VS*(conj(IS)));
%Voltage Regulation 
VR = abs(((abs(VS)/abs(A))-abs(Vr))/abs(Vr)) * 100;
Pr = S * 0.8;
EF = (Pr/Ps) * 100;
Qs = 3 * imag(VS * (conj(IS)));
F = cos(atan(Qs/Ps));

fprintf('\n');
fprintf(['No load receiving end voltage is %f + j%f \n',...
    'No load receiving current is %f + j%f \n',...
    'Sending end p.f is %f\n',...
    'Voltage Regulation of line is %f\n',...
    'Transmission efficiency of line is %f\n'], real(Vr), ... 
    imag(Vr), real(IS), imag(IS), F, VR, EF );




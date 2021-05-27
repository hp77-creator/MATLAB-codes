% Nominal T method
P = input('Enter power');
Vs = input('Enter source voltage');
R = input('Enter Resistance ');
Xl = input('Enter reactance');
Yc = input('Enter admittance');
cosphi = input('Enter power factor');
sta = input('Press 1 for laggind and 0 for leading');
i = sqrt(-1);
sinphi = sqrt(1 - cosphi^2);
Z = R + (Xl) * i;
Im = P/(Vs * sqrt(3) * cosphi); %current magnitude
Vr = Vs/sqrt(3); % Drop across load
if sta == 1
    Ir = Im * cosphi - (Im * sinphi) * i;
else
    Ir = Im * cosphi + (Im * sinphi) * i;
end

%Voltage across C
V1 = Vr + Ir * Z/2;

% Charging current in C
Ic = (Yc * V1) * i;

% Sending end current
Is = Ir + Ic;
fprintf("The sending end current is %d\n",Is);

% Sending end voltage
Vs = V1 + Is * Z/2;
fprintf("The sending end voltage is %f%+fj\n",real(Vs), imag(Vs));


% losses
loss = 3 * Is^2 * R/2 +  3 * Ir^2*R/2;

efficiency = P/(P+loss) * 100;
fprintf("The efficiency is %d",efficiency);

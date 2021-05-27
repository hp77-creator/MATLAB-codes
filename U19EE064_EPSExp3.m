I1 = input('Enter current in 2 Way system\n');
%If we assume power percentage loss to be equal then
% I2 = 2/sqrt(3) * I1; So we shouldn't take in both values;

I2 = (2/sqrt(3)) * I1;

R = input('Resistance of the conductor is \n');
V1 = input('Voltage in 2 way system \n');
V2 = input('Voltage in 3 way system \n');
P1 = V1 * I1;
% P2 = V2 * 2 * I1; as P2 = sqrt(3) * V2 * I2 
P2 = V2 * 2 * I1;
fprintf('The value of Power in 3 way system = %f\n', P2);
fprintf('Extra load that we need to add is %f\n',P2/P1);

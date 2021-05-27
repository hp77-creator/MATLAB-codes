% JD's problem
l = 89; % unit is inches
beta1 = 11.5/180 * pi; % 11.5 degree in radians
h = 49; % in inches
A = l * sin(beta1);
B = l * cos(beta1);
D = 30; % although we will have an array for D, I am initializing it to be 30

C = (h + 0.5 * D)*sin(beta1)-(0.5*D)*tan(beta1);

E = (h + 0.5 * D)*cos(beta1) - 0.5 * D;

syms x
eqn = A * sin(x) * cos(x) + B * (sin(x)^2) == C * cos(x) + E * sin(x);
S = solve(eqn,x, 'Real', true)

charpoly(S)
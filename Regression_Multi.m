% Regression for multi variable

x1 = [21; 21; 19; 17; 19; 17; 19; 19; 19; 21]; % Avg. Dew

x2 = [87; 88; 83; 84; 84; 84; 84; 88; 84; 86]; % Avg. Hum
x3 = [1016; 1016; 1017; 1017; 1015; 1014; 1014; 1016; 1016; 1016]; % Avg. Pres
x4 = [3; 3; 3; 3; 3; 3; 3; 3; 3; 3]; % Avg. Vis
x5 = [0; 0; 3; 10; 6; 0; 0; 0; 0; 0]; % Avg. Wind
y = [22; 21.5; 20.5; 17.5; 20.5; 18; 20.5; 21; 20; 22]; % Avg. Temp
disp(size(X));
X = [ones(size(x1)) x1 x2 x3 x4 x5];
disp(size(y));

b = regress(y, X);
b
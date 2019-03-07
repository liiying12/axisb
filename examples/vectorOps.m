clear, close all; clc;

% compute simple vector operations
v1 = 2.*ones(10,1);
v2 = 4.*ones(10,1);

% display the two vectors
fprintf('v1 = \n'); disp(v1);
fprintf('v2 = \n'); disp(v2);

% adding two vectors
y = v1 + v2;
fprintf('y = v1 + v2 =\n'); disp(y);

% multiplying a vector by a scalar
fprintf('2*y =\n'); disp(2*y);


% multiplying sum of two vectors by scalar
fprintf('2*(v1+v2) =\n'); disp(2*(v1 + v2));
fprintf('2*v1+2*v2 =\n'); disp(2*v1 + 2*v2);

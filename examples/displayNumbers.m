clear, close all; clc;

% use fprintf to display a number with some message:
x = pi; % assign pi to x

% display number in scientific format (%e)
fprintf('x = %e\n', x);

% display number in floating point format (%f)
fprintf('x = %f\n', x);

% display number in floating point format with 2 decimals (%f)
fprintf('x = %.2f\n', x);

% display number in floating point format with 14 decimals (%f)
fprintf('x = %.14f\n', x);

% display number in scientific format with 14 decimals (%e)
fprintf('x = %.14e\n', x);
fprintf('\n\n');

% display a string
name = 'Andreas Mang';
fprintf('My name is %s\n', name);

% display a message
disp('This is an important message.');
fprintf('\n\n');

% displaying matrices
A = rand(10,10);

% display the first entry
fprintf('A(1,1) = %.7f\n', A(1,1));

% display entire matrix
fprintf('\n\n');
disp('A = '); disp(' ');
disp(A);

% display entire matrix
A

% display number in floating point format with 6 decimals (%f)
% and use 12 characters to do so
fprintf('%12.6f\n', x);
fprintf('\n\n');

% display multiple numbers in floating point format with
% 2 decimals and use 12 characters to do so
x = rand(1);
y = rand(1);
z = rand(1);
fprintf('%12.6f %12.6f %12.6f\n', x,y,z);
fprintf('\n\n');


% display multiple numbers in floating point format
% and represent them as a row vector
x = rand(3,1);
fprintf('x = [%.6f %.6f %.6f]\n', x);

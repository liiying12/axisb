clear, close all; clc;

% define a hilbert matrix of order 5
H = % ADD YOUR CODE HERE;

% define a suitable b
b = % ADD YOUR CODE HERE
x = H\b;

fprintf('last column of Hilbert matrix:\n');
disp(x);
fprintf('\n');

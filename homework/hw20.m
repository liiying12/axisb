clear, close all; clc;

% create matrix
A = [ 4  0  1; ...
     -2  1  0; ...
     -2  0  1];

% compute eigenvalues of the matrix A
lambda = % ADD YOUR CODE HERE

% compute the eigenvectors of the matrix A
% using the 'null' command
for i = 1 : numel(lambda)
    v = % ADD YOUR CODE HERE
    disp(v);
end

clear, close all; clc;

% define data
A = [31, -8, 11; -8, 15, -6; 11, -6, 25];
b = [ 8; -4; 13];

% create the augmented matrix
% ADD YOUR CODE HERE

% find reduced echolon form of augmented matrix
B = % ADD YOUR CODE HERE

% get solution and print solution on screen
x = % ADD YOUR CODE HERE

fprintf('solution x = \n');
disp(x);

% compute error vector and display it
errvec = % ADD YOUR CODE HERE

fprintf('error vector r = Ax - b = \n');
disp(errvec);

% compute norm of error
nerr = % YOUR CODE GOES HERE

fprintf('||r||_2 = %e\n', nerr);

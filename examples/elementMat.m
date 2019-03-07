clear, close all; clc;

% this script will provide some insight into
% elementary matrices

%//////////////////////////////////////////////////////////
% EXAMPLE 1:  we multiply a matrix A consisting only of
% ones with an elementary matrix E that has been generated
% by scaling the second row with a factor of 2 (the result
% of multiplying E and A is equivalent to applying the
% same row operation to the second row of A)
%//////////////////////////////////////////////////////////

% create elementary matrix
E      = eye(3);    % create identity matrix
E(2,:) = 2*E(2,:);  % scale second row by 2

% create matrix of ones
A = ones(3,3);

% compute matrix matrix multiplication
B = E*A;

% display input and output
fprintf('E   = \n');
disp(E);

fprintf('A   = \n');
disp(A);

fprintf('E*A = \n');
disp(B);


fprintf('\n\n\n');




%//////////////////////////////////////////////////////////
% EXAMPLE 2: here, we learn about the inverse of an
% elementary matrix;  compare the result to what we have
% discussed in class
%//////////////////////////////////////////////////////////

% EXAMPLE 2 a)
E      = eye(3);    % create identity matrix
E(2,:) = 2*E(2,:);  % scale second row by 2

fprintf('E   = \n');
disp(E);

% compute inverse of the matrix E
B = inv(E);
fprintf('B = E^{-1} = \n');
disp(B);



% EXAMPLE 2 b)
E = eye(3);               % create identity matrix
B = E;
E([2 1],:) = B([1 2],:);  % swap rows 1 and 2

fprintf('E   = \n');
disp(E);

% compute inverse of the matrix E
B = inv(E);
fprintf('B = E^{-1} = \n');
disp(B);




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

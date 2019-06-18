clear, close all;

% in the following you will learn how to solve simple
% linear systems in matlab; notice that the following
% approaches will not work for extremely large
% problems


%//////////////////////////////////////////////////////////
% SETUP
%//////////////////////////////////////////////////////////
% create a n x n matrix, that is invertible but not well
% conditioned
n = 10;
Q = orth(rand(n,n));
d = logspace(0,-10,n);
A = Q*diag(d)*Q';

fprintf('matrix A: \n');
disp(A);
fprintf('condition number of A: %e \n\n', cond(A));

% create a random vector that will be the solution of
% our problem
xstar = rand(n,1);
fprintf('true solution x^star = \n');
disp(xstar);


% create a vector that is in the column space of the
% matrix A
b = A*xstar;




%//////////////////////////////////////////////////////////
% EXAMPLE 1: the first possibility is to row reduce the
% augmented matrix and identify the solution by inspection
%//////////////////////////////////////////////////////////
fprintf('---------------------------------------\n');
fprintf('solution through row reduction:\n');
fprintf('---------------------------------------\n');
M = [A,b];
S = rref(M);

fprintf('row reduced augmented matrix: \n');
disp(S);

% since A is invertible, we will be able to row reduce
% A to the identity; so the solution will be the last
% column of the row reduced augmented matrix
x = S(:,end);

fprintf('solution x = \n');
disp(x);

% compute error and show it to user
fprintf('error ||x - x^star||_2 = %e \n', norm(x - xstar)/norm(xstar));
fprintf('\n\n');




%//////////////////////////////////////////////////////////
% EXAMPLE 2: the second possibility is to compute the
% inverse of the matrix and then apply it to the vector
% b, i.e., evaluate x = A^{-1} b
%//////////////////////////////////////////////////////////
fprintf('---------------------------------------\n');
fprintf('solution via inversion of A:\n');
fprintf('---------------------------------------\n');
Ainv = inv(A);
x = Ainv*b;


fprintf('solution x = \n');
disp(x);

% compute error and show it to user
fprintf('error ||x - x^star||_2 = %e \n', norm(x - xstar)/norm(xstar));
fprintf('\n\n');



%//////////////////////////////////////////////////////////
% EXAMPLE 2: the third possibility is to solve the system
% using the backslash command; this is the preferred way
%//////////////////////////////////////////////////////////
fprintf('---------------------------------------\n');
fprintf('solution via backslash:\n');
fprintf('---------------------------------------\n');
x = A\b;


fprintf('solution x = \n');
disp(x);

% compute error and show it to user
fprintf('error ||x - x^star||_2 = %e \n', norm(x - xstar)/norm(xstar));
fprintf('\n\n');

%//////////////////////////////////////////////////////////
% EXPLANATION:
% Notice that the condition number of your matrix is
% at the order of 10^9. We expect the accuracy of
% our computations to be approximately 10^{-16} (i.e.,
% you can trust the computations up to 16 digits).
% Things are different here; we will loose roughly 9
% digits (condition number 10^9) when computing
% the inverse of A; so we expect an overall error
% that is at the order of 10^{-7}
%//////////////////////////////////////////////////////////




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

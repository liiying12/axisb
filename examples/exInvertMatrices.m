clear, close all; clc;


%//////////////////////////////////////////////////////////
% EXAMPLE 1: this example is to familiarize you with computing
% the inverse of matrices; compare the results to what you obtain
% with paper and pencil
%//////////////////////////////////////////////////////////

A = [ -7 3; 5 -2]; % define matrix A
B = inv(A);        % compute inverse of A

fprintf('A      = \n');
disp(A);
fprintf('A^{-1} = \n');
disp(B);


fprintf('\n\n');

%//////////////////////////////////////////////////////////
% EXAMPLE 2: in this example we will explore what happens
% if we try to compute the inverse of a matrix, that is
% not invertible
%//////////////////////////////////////////////////////////

A = [ 2 1; -6 -3];

% compute inverse of A (notice: A is not invertible; this
% fact can be confirmed by computing the determinant of A)
B = inv(A); % <-- you should see a warning message

fprintf('A      = \n');
disp(A);

fprintf('A^{-1} = \n');
disp(B);


fprintf('det(A)  = %e\n', det(A));
fprintf('cond(A) = %e\n', cond(A));  % condition number


% due to the fact that our computations have limited accuracy
% you will very likely observe that the determinant of the
% matrix is not exactly zero; moreover, you will observe that
% the condition number of the matrix (think of it as the
% difficulty of inverting A) is quite big (in fact, it is
% essentially infinite)




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

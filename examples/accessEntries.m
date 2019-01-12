%######################################################
% This code is part of the Matlab-based toolbox
% LINALG --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################


%//////////////////////////////////////////////////////
% vector entries
%//////////////////////////////////////////////////////
y = rand(10,1);
y
y(1,1)
y(9,1)


%//////////////////////////////////////////////////////
% matrix entries
%//////////////////////////////////////////////////////

% create a 10x5 matrix with uniformly distributed
% random numbers in the interval (0,1)
A = rand(10,5);
A

% access entry a_11
A(1,1)

% access entire column
A(:,1)

% access entire row
A(1,:)



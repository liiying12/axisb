clear, close all;


%//////////////////////////////////////////////////////
% row replacement
%//////////////////////////////////////////////////////
disp('row replacement');
% create matrix of ones
A = zeros(3,4);
for i = 1 : 3
	A(i,:) = i;
end
A

% add 2 times row 3 to row 2
A = replace(A,2,3,2);
A


%//////////////////////////////////////////////////////
% row interchange
%//////////////////////////////////////////////////////
disp('row interchange');
% create matrix of ones
A = zeros(5,5);
for i = 1 : 5
	A(i,:) = i;
end
A

% swap rows 2 and 5
A = swap(A,2,5);
A


%//////////////////////////////////////////////////////
% scale row
%//////////////////////////////////////////////////////
disp('scale row');
% create matrix of ones
A = ones(5,8);
A

% scale row 5 by a factor of 2
A = scale(A,5,2);
A


%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

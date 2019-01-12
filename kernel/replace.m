function A = replace(A,r1,r2,s)
% function B = replace(A,r1,r2,s)
%
%    replaces row r1 of matrix A with its sum of row r2
%    scaled by s

if nargin < 4
	error('not enough input arguments');
end

% get number of columns and rows
[nrows ncols] = size(A);

% check dimensions
if min(r1,r2) <= 0 || max(r1,r2) > nrows
	error('row indices r1 or r2 are out of range');
end

A(r1,:) = A(r1,:) + s*A(r2,:);

end




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

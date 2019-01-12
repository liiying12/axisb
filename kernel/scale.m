function A = scale(A,r,s)
% function A = scale(A,r,s)
%
% scales row r of matrix A by a nonzero scalar s

if nargin < 3
	error('not enough input arguments');
end

% check input
if s == 0
  error('scale factor cannot be zero');
end

% get number of columns and rows
[nrows ncols] = size(A);

% check dimensions
if r <= 0 || r > nrows
	error('row indices r1 or r2 are out of range');
end

A(r,:) = s*A(r,:);

end




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

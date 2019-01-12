function B = swap(A,r1,r2)
% function B = swap(A,r1,r2)
%
%   interchanges rows r1 and r2 of matrix A

if nargin < 3
	error('not enough input arguments')
end
% get number of columns and rows
[nrows ncols] = size(A);

% check dimensions
if min(r1,r2) <= 0 || max(r1,r2) > nrows
	error('row indices r1 or r2 are out of range');
end

B = A;
B([r2 r1],:) = A([r1 r2],:);

end




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

clear, close all; clc;

% create random vector with values in (0,1)
x = rand(10,1);

% compute \ell^2 norm
fprintf('||x||_2   = %e\n', norm(x));

% compute \ell^1 norm
fprintf('||x||_1   = %e\n', norm(x,1));

% compute \ell^\infty norm
fprintf('||x||_inf = %e\n', norm(x,inf));




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

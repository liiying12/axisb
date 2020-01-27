function [A] = getHelmholtzMat(n)

if nargin == 0, selfTest(); return; end

m = n^2;
% m = n;

% get laplacian matrix
L = -gallery('poisson',n)*n*n;

% create sparse identity amtrix
I = speye(size(L,1));

kappa = 3;

% create vector of ones at random locations
es  = (rand(n*n,1)>0.8);
ETA = spdiags(es, 0, n*n,n*n);

A   = L + (I+1e2*ETA)*kappa^2;

n   = 1000;
I   = eye(n);
O   = randn(m,n);  % observation operator;
A   = A\(O*I);     % this is the adjoint of observation*jacobian


end % end of function


function selfTest()

n = 100;
A = getHelmholtzMat(n);
imagesc(A);

end

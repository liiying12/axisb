clear, close all; clc;

n = 10;
id = zeros(n,1); % allocating vector for id
dA = zeros(n,1); % allocating vector for det A
cA = zeros(n,1); % allocating vector for cond A

% compute hilbert matrix H and its determinant and
% store it in a vector to be able to plot it
for k = 1:n
    A = hilb(k);        % compute H of order k

    % remember id (for plotting)
    id(k)    = % ADD YOUR CODE HERE

    % store determinant (for plotting)
    dA(k)  = % ADD YOUR CODE HERE

    % store condition number (for plotting)
    cA(k) = % ADD YOUR CODE HERE

    % display the hilbert matrix
    fprintf('hilbert matrix of order k=%i\n', k);
    disp(A)
end


% ADD CODE TO PLOT YOUR RESULTS BELOW

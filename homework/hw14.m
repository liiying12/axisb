clear, close all; clc;

k = [5,12];

for i = 1 : 2
    % create hilbert matrix of order k
    H = % ADD YOUR CODE HERE

    % define random solution vector of size k x 1
    xstar = % ADD YOUR CODE HERE

    % compute right hand side for given vector x
    y = % ADD YOUR CODE HERE

    % solve system for computed right hand side y
    x = % ADD YOUR CODE HERE

    % compute error between true and found solution
    err = % ADD YOUR CODE HERE

    fprintf('results for k = %i\n',k(i));
    fprintf('true solution xstar:\n');
    disp(xstar);

    fprintf('computed solution x:\n');
    disp(x);

    fprintf('error: %e\n',error);
    fprintf('condition number: %e\n',cond(H));
end

% ADD A COMMENT WITH YOUR OBSERVATIONS BELOW

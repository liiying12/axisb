clear, close all; clc;

% create matrix
A = [-6  28  21; ...
      4 -15 -12; ...
     -8   0  25];

% define the entries for A(3,2):
alpha = 31.8:0.1:32.2;

% create a vector for t (we use a step
% size of 0.01, resulting in 501 values)
t = -1:0.01:4;

% create figure
figure();

% replace matrix entries in for loop
for i = 1 : numel(alpha)
    % modify matrix A
    % ADD YOUR CODE HERE

    % compute and display eigenvalues of A
    % ADD YOUR CODE HERE

    % create vector to store values for
    % polynomial (determinant)
    p = zeros(numel(t),1);
    % compute determinant and assign value
    for j = 1 : numel(t)
        p(j) = % ADD YOUR CODE HERE
    end

    % create plot; the hold command enables
    % adding multiple curves to a single
    % plot / figure
    plot(t, p); hold on;
end
hold off;

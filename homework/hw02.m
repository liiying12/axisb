clear, close all; clc;

% for loop from k = 2 to 5 with increment 1
for k = 2:5
    % create random matrix of size k x 4
    A = A = randi([0 1],k,4) ans% ADD YOUR CODE HERE

    % find reduced echelon form of A
    B =rref A % ADD YOUR CODE HERE

    % display the result
    fprintf('reduced echelon form of %d x 4 matrix\n', k);
    disp(B);
end

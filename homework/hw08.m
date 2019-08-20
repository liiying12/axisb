clear, close all;

% the standard transfomation matrix A will have columns T(e_i),
% with i = 1, 2, 3, 4. Each vector T(e_i) has 5 entries. It
% follows that the matrix A is 5 x 4. We are going to use a
% for loop to enter the columns of A.

% allocate matrix A
A = zeros(5,4);

% create identity matrix to generate the vectors e_i
I = % ADD YOUR CODE HERE

for i = 1 : 4 % loop over i to consider all vectors e_i
    % obtain vector e_i as i-th column of I
    e = % ADD YOUR CODE HERE

    % find the transformation T(e_i) of e_i
    Te = % ADD YOUR CODE HERE

    % T(e_i) is the i-th column of A
    % ADD YOUR CODE HERE
end

% print standard matrix A on screen
A

clear, close all;
clc;

% for loop from k = 2 to 5 with increment 1 to create
% a vector of size k x 1
for k = 2:5
	% for every k, generate a vector
	% of size k x 1 with random entries

	x = rand(k,1);

	% display size of vector
	fprintf('size of vector: %i x %i\n',size(x));

	% display vector
	x
end


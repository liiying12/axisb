clear, close all;
clc;

%//////////////////////////////////////////////////////////
% EXAMPLE 1: how to plot a sine function
% plot a sinusoidal function from 0 to 2*pi using
% 10 grid points
%//////////////////////////////////////////////////////////
n = 10;                % number of points
x = 0:2*pi/(n-1):2*pi; % compute x values
y = sin(x);            % compute sine of x values

% create figure and plot y versus x
figure(), plot(x,y);
title('sin(x); 10 grid points'); % add title to your plot




%//////////////////////////////////////////////////////////
% EXAMPLE 2: how to plot multiple sine and cosine functions
% from 0 to 2*pi in a single figure
%//////////////////////////////////////////////////////////
n = 1000;              % number of points
x = 0:2*pi/(n-1):2*pi; % create x coordinates
y1 = sin(x);           % fist signal
y2 = cos(x);           % second signal
y3 = cos(x).*sin(x);   % third signal

% create figure and plot y1
figure(), plot(x,y1);

% to add multiple plots to a single figure use the "hold on"
% and "hold off" commands; this will not overwrite the first
% plot with all successive plots;
hold on; % <-- we start adding new plots
plot(x,y2);
plot(x,y3);
legend('sin(x)', 'cos(x)', 'sin(x)*cos(x)'); % adding a legend
hold off; % <-- we are done with adding plots
title('sin(x); 1000 grid points');           % adding a title




%//////////////////////////////////////////////////////////
% EXAMPLE 3: log scale plots; sometimes (e.g., if the values
% of your function have a large range) it is useful to plot
% your signal in a semi-logarithmic or even a log-log
% scale; this example will how you hot to do this
%//////////////////////////////////////////////////////////
n = 1000;          % number of points
id = zeros(n,1);   % vector to store index of points
y  = zeros(n,1);   % vector to store the values

% compute vector entries in a for loop
for i = 1 : n
	id(i) = i;
	y(i) = 2^i;  % set the vector entries
end

% below we will compare a standard plot against a
% semi-logarithmic plot; we use the same figure, and
% display the values of y next to each other; this can
% be achieved using the subplot command
figure(),
subplot(1,2,1), plot(id,y); title('y = 2^k'); grid on;
subplot(1,2,2), semilogy(id,y); title('y = 2^k in logarithmic scale'); grid on;




%######################################################
% This code is part of the Matlab-based toolbox
% Ax=b --- Linear Algebra Toolkit
% For details see https://github.com/andreasmang/linalg
%######################################################

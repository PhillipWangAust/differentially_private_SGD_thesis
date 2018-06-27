clear
clc

% create sphere with n = 10000, d = 5, radius = 1
[X, y] = sphere_thing(10000,5,1);
y = y';

% reduce dimension
d = 5; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%      interval between errorbars    %%%%%%%%

%interval_between_errorbar = 2000; 
%batch_size = 1;

interval_between_errorbar = 200;  
batch_size = 5;

%interval_between_errorbar = 100; 
%batch_size = 10;


% normalize rows of X
X = normr(X);

n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)

% initialization
a = -0.5;
c = 0.5;
w0 = (c-a).*rand(1,m) + a;



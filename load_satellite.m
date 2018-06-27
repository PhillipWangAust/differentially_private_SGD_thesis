clear
clc

load('Satellite_data.mat')

% reduce dimension
d = 10; 


for i = 1:350
    if y(i)==-1
        y(i) = 0;
  
    end
end

n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)

% random projection of d 
R = randn(m,d);
X = X * R;

% normalize rows of X
X = normr(X);


n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)

% initialization
a = -0.5;
c = 0.5;
%w0 = (c-a).*rand(1,m) + a;

w0 = [   -0.2409    0.2760   -0.3165    0.3168    0.4331    0.4898   -0.2996    0.2913   -0.4945    0.3501];

% batch_size
batch_size = 1;
%batch_size = 5;
%batch_size = 10;
%batch_size = 50;

% batch
b=n/batch_size;

% interval between errorbars
interval_between_errorbar = 50; % for batch 1
%interval_between_errorbar = 10; % for batch 5
%interval_between_errorbar = 5; % for batch 10
%interval_between_errorbar = 1; % for batch 50


%interval_between_errorbar = 7; % for batch LBFGS





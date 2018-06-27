clear
clc

% load test data
test_images = loadMNISTImages('t10k-images-idx3-ubyte');
test_labels = loadMNISTLabels('t10k-labels-idx1-ubyte');

%load train data
train_images = loadMNISTImages('train-images-idx3-ubyte');
train_labels = loadMNISTLabels('train-labels-idx1-ubyte');

% reduce dimension
d = 30; 

% assign X and y
X = train_images';
y = train_labels;

% make 0 vs all
for i = 1:60000
    if train_labels(i)~=0
        y(i) = 1;
    else
        y(i) = 0;
    end
end

% variables
lambda = 0.0001;
alpha = 1;

n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)


% random projection of d 
R = randn(m,d);
X = X * R;

% add intercept
%X = [ ones(n,1) X];

%n = size(X, 1); % number of examples
%m = size(X, 2); % how many parameters (features)

% normalize rows of X
X = normr(X);


n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)

% initialization
a = -0.5;
c = 0.5;
w0 = (c-a).*rand(1,m) + a;

% w0 that I used to obtain results in paper
% w0 = [0.1881   -0.4736    0.1217    0.4800    0.2986    0.4557    0.3459    0.1724   -0.0457    0.4356 -0.1536   -0.0310    0.2402    0.3969    0.0984];

% batch_size
batch_size = 1;
%batch_size = 10;

% batch
b=n/batch_size;


% interval between errorbars
%interval_between_errorbar = 600; % for batch 10
interval_between_errorbar = 6000; % for batch 1




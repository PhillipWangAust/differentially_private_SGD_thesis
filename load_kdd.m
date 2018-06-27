% import kddcup50 into workspace

y = kddcupdata50(:,39);
X = kddcupdata50(:,1:38);

for i=1:50000
    if y(i) == -1
        y(i) = 0;
    end
end

n = size(X, 1); % number of examples
m = size(X, 2); % how many parameters (features)

d = 9;

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

% starting point batch size 5
%w0 = [-0.4922    0.4225   -0.2786    0.3326    0.4824   -0.1729   -0.0908   -0.3006   -0.1182];

% starting point batch size 1
%w0 = [-0.2799    0.0406    0.4283    0.0835    0.0314    0.4848   -0.0503    0.1388    0.4879];
%w0 = [-0.3884   -0.3175   -0.4101   -0.4699    0.3868    0.3626    0.2176    0.4328   -0.3624];

% w0 used for results
 w0 = [-0.2725   -0.2464    0.2737    0.3799   -0.1922   -0.4493    0.1725   -0.4761   -0.4334];


% batch_size + interval between errorbar

batch_size = 5;
interval_between_errorbar = 1000;


%batch_size = 1;
%interval_between_errorbar = 5000;

function [X, y] = sphere_thing(n,m,r)

%create sphere
X = randsphere(n,m,r);

%create hyperplane
%l = 0.5 * sum(randn(1,m));
l=0;


% separate points by hyperplane
for j = 1:n
    if sum(X(j,:)) < l
       y(j) = 0;
    else
       y(j) = 1;
    end            
end





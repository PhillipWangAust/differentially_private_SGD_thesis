function X = randsphere(n,m,r)
 
% This function returns an m by n array, X, in which 
% each of the m rows has the n Cartesian coordinates 
% of a random point uniformly-distributed over the 
% interior of an n-dimensional hypersphere with 
% radius r and center at the origin.  The function 
% 'randn' is initially used to generate m sets of n 
% random variables with independent multivariate 
% normal distribution, with mean 0 and variance 1.
% Then the incomplete gamma function, 'gammainc', 
% is used to map these points radially to fit in the 
% hypersphere of finite radius r with a uniform % spatial distribution.
% Roger Stafford - 12/23/05
 
X = randn(n,m);
s2 = sum(X.^2,2);
X = X.*repmat(r*(gammainc(s2/2,m/2).^(1/m))./sqrt(s2),1,m);
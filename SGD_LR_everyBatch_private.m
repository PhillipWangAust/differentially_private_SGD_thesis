function [w_i, cost_i, e_i] = SGD_LR_everyBatch_private(y, X, w0,batch_size, interval_between_errorbar)
% variables
n = size(X, 1);      % number of examples
m = size(X, 2);      % how many parameters (features)
d = m;               % dimension
lambda = 0.0001;     % regularization parameter
alpha = 1;           % privacy parameter
delta = 2;           % sensitivity


batches = [1 2 5 10 20 50]';
batch = length(batches);

w_i = zeros(batch, m);
cost_i = zeros(batch,1);
e_i = zeros(batch, 1);

for i = 1:batch
    
  batch_size = batches(i);
  b=n/batch_size;
  
  [w, cost, e] = SGD_LR_miniBatch_private(y, X, w0, batch_size, interval_between_errorbar);  
  w_i(i,:) = w;
  cost_i(i) = cost(end);
  e_i(i) = sum(e)/(b/interval_between_errorbar);
  
end
   

end

      
      
      

    



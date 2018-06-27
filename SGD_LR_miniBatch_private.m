function [w, cost, e] = SGD_LR_miniBatch_private(y, X, w0, batch_size, interval_between_errorbar)

% variables
n = size(X, 1);      % number of examples
m = size(X, 2);      % how many parameters (features)
d = m;               % dimension
lambda = 0.0001;     % regularization parameter
alpha = 1;           % privacy parameter
b = n/batch_size;    % number of total batches parced
delta = 2;           % sensitivity

% initialization
w_t = w0;
cost_t = zeros(b,1);


% shuffle the data
data = [y, X];
data = data(randperm(size(data,1)),:);
y = data(:,1);
X = data(:,2:end);

 for t=1:b
        
        % calculate eta at time t
          %eta = 1/(lambda*t);                % for Figure 3
          %eta = 10/sqrt(t);                  % for Figure 2
          eta = 1/sqrt(t);                    % learning rate

          % gradient for batch Bt
          for i = 1:batch_size
              
                   %gradient at Bt
                   g(i:i,:) = grad(w_t, X(i:i,:), y(i));
          end
          
          % add noise
          [Z] = noise_generation(delta, alpha, m, d);
          
          % update w
          w_t = w_t - eta*(lambda * w_t + ((1/batch_size) * sum(g,1)) + (1/batch_size * Z));
          norm_w = norm(w_t);
          
          % project w to ball of radius 1/lambda
          norm_w = min(1/lambda, norm_w);
          
          %reset gradient
          g(:,:) = 0;
          
          % logistic loss function at time t
          loss_function = log(1+exp(-y.*(w_t*X')'));

          % cost at time t
          cost_t(t) = lambda/2 * norm_w^2 + 1/n * sum(loss_function);           
          
 end
 
 % assign final values
 w = w_t;
 cost = cost_t;
 
 % create error bars
 [e] = error_bars(interval_between_errorbar, cost, b);
 e = e';
 
 % make them look nice on the graph
 for p = 1:size(e)
    if e(p) == 0
        e(p) = NaN;
    end
 end


end

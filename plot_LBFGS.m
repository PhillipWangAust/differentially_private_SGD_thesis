[w_i1, cost_i1, e_i1] = SGD_LR_everyBatch(y, X, w0,batch_size, interval_between_errorbar);
cost_nonpriv = cost_i1;
plot(cost_nonpriv, 'b')
hold on
axis manual


[w_i2, cost_i2, e_i2] = SGD_LR_everyBatch_private(y, X, w0, batch_size, interval_between_errorbar);
cost_priv = cost_i2;
%e_priv = e_i2;
plot(cost_priv, 'r')
%errorbar(cost_priv, e_priv, 'r')


 [w,cost,exitflag,output,grad] = fminlbfgs(@myfun,w0);
 
 for i = 1:size(cost_priv)
     cost_LBFGS(i) = cost;
 end
 plot(cost_LBFGS, '--')
 
  axis([0 inf -1 4])
  xlabel('Batch size')
  ylabel('Value of objective')
  legend('non-private', 'private', 'LBFGS', 'Location', 'best')
 
 
 
 

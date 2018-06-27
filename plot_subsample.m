    [w1, cost1, e1] = SGD_LR_miniBatch_private_subsample(y, X, w0, batch_size, interval_between_errorbar);
    subsample = cost1;
    e_subsample = e1;
    
    [w2, cost2, e2] = SGD_LR_miniBatch_private(y, X, w0, batch_size, interval_between_errorbar);
    priv = cost2;
    e_priv = e2;
    
    [w3, cost3, e3] = SGD_LR_miniBatch(y, X, w0, batch_size, interval_between_errorbar);
    nonpriv = cost3;
    e_nonpriv = e3;
    
   
    figure(1)
    plot(nonpriv, '--')
    axis([0 inf 0 1])
    hold on
    plot(subsample, 'r')
    errorbar(subsample, e_subsample, 'r')
    legend('non-private', 'private subsample', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')
    
    figure(2)
    plot(nonpriv, '--')
    axis([0 inf 0 1])
    hold on
    plot(priv, 'b')
    errorbar(priv, e_priv, 'b')
    legend('non-private', 'private non-subsample', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')

  
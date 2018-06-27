    [w1, cost1, e1] = SGD_LR_miniBatch(y, X, w0, batch_size, interval_between_errorbar);
    nonpriv = cost1;
    e_nonpriv = e1;
    
    [w2, cost2, e2] = SGD_LR_miniBatch_private(y, X, w0, batch_size, interval_between_errorbar);
    priv = cost2;
    e_priv = e2;
    
   
    plot(nonpriv, '--')
    axis([0 inf 0 1])
    hold on
    plot(priv, 'b')
    errorbar(priv, e_priv, 'b')
    legend('non-private', 'private', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')

  
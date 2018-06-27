    [w1, cost1, e1] = SGD_LR_miniBatch(y, X, w0,batch_size, interval_between_errorbar);
    nonpriv = cost1;
    e_nonpriv = e1;
    
    [w2, cost2, e2] = SGD_LR_miniBatch_private(y, X, w0, batch_size, interval_between_errorbar);
    priv = cost2;
    e_priv = e2;
    
    [w3, cost3, e3] = SGD_LR_nonDisjointBatch(y, X, w0, batch_size, interval_between_errorbar);
    nonpriv_nondis = cost3;
    e_nonpriv_nondis = e3;
    
    [w4, cost4, e4] = SGD_LR_nonDisjointBatch_private(y, X, w0, batch_size, interval_between_errorbar);
    priv_nondis = cost4;
    e_priv_nondis = e4;
    
   
    figure(1)
    plot(nonpriv, '--')
    axis([0 inf 0 3])
    hold on
    plot(priv, 'b')
    errorbar(priv, e_priv, 'b')
    legend('non-private disjoint', 'private disjoint', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')
    
    figure(2)
    plot(nonpriv_nondis, '--')
    axis([0 inf 0 3])
    hold on
    plot(priv_nondis, 'b')
    errorbar(priv_nondis, e_priv_nondis, 'b')
    legend('non-private non-disjoint', 'private non-disjoint', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')

  
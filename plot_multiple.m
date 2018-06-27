[w1, cost1, e1] = SGD_LR_miniBatch_private_multiple(y, X, w0, batch_size, interval_between_errorbar);

[w2, cost2, e2] = SGD_LR_miniBatch_multiple(y, X, w0, batch_size, interval_between_errorbar);


    plot(cost2, '--')
    axis([0 inf 0 1])
    hold on
    plot(cost1, 'b')
    errorbar(cost1, e1, 'b')
    legend('non-private', 'private', 'Location','best')
    xlabel('Number of iterations')
    ylabel('Value of objective')

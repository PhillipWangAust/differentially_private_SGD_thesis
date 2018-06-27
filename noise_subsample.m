function [Z] = noise_subsample(d, batch_size, n, alpha, delta, m)

alpha_2 = 2 * (batch_size/n) * (exp(alpha)-1);

Z = gamrnd(d,delta/alpha_2);
Z = laprnd(1, m, 0, delta/alpha_2) * alpha_2 * exp(-(alpha_2/delta) * norm(Z));

end
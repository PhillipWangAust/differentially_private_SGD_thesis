function [Z] = noise_generation(delta, alpha, m, d)

Z = gamrnd(d,delta/alpha);
Z = laprnd(1, m, 0, delta/alpha) * alpha * exp(-(alpha/delta) * norm(Z));

end
%%%%%%%%%%%%%%%%%%%%%%%  1  %%%%%%%%%%%%%%%%%%%%%%%%%%
% load the desired data set using one of the following:
% - load_MNIST for the MNIST data set
% - load_kdd for the KDDCup99 data set
% - load_linear_from_sphere for the synthetic data set
% - load_satellite for the satellites data set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  2  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 1 and 2
%
% plot_LBFGS plots the private and non private algorithm objective function
% values for various batch sizes as opposed to the LBFGS centralized method

plot_LBFGS

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  3  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 3 and 5
%
% plot_replication plots the private and non private algorithm objective
% function values for different batch sizes

plot_replication

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  4  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 6
%
% plot_replication plots the private and non private algorithm objective
% function values for the replication part of the paper. For sub-figure b to
% show up one must change the eta inside SGD_LR_minibatch and
% SGD_LR_minibatch_private to 1/lambda*t

plot_replication

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  5  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 4
%
% plot_replication plots the private and non private algorithm objective
% function values for the replication part of the paper. For Figure 7 to
% show up one must change the alpha inside SGD_LR_minibatch and
% SGD_LR_minibatch_private to 0.5 and the dimension to 30 when loading the
% data from load_MNIST

plot_replication

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  6  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 7
%
% plot_multiple plots the private and non private algorithm objective
% function values for the replication part of the paper. This runs the
% algorithm k times. Compare plot_replication with plot_multiple for Figure
% 7 to show up.

plot_multiple

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  7  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 8 and 9
%
% plot_subsample plots the private and non private algorithm objective
% function values for the DS-SGD part of the paper. 

plot_subsample

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%  8  %%%%%%%%%%%%%%%%%%%%%%%%%%
% Figure 10 and 11
%
% plot_nondis_subsample plots the private and non private algorithm objective
% function values for the NDS-SGD part of the paper. 

plot_nondis_subsample

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









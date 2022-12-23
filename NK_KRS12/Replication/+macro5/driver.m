%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'macro5';
M_.dynare_version = '5.3';
oo_.dynare_version = '5.3';
options_.dynare_version = '5.3';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'eps_A'};
M_.exo_names_tex(1) = {'eps\_A'};
M_.exo_names_long(1) = {'eps_A'};
M_.exo_names(2) = {'eps_D'};
M_.exo_names_tex(2) = {'eps\_D'};
M_.exo_names_long(2) = {'eps_D'};
M_.exo_names(3) = {'eps_v'};
M_.exo_names_tex(3) = {'eps\_v'};
M_.exo_names_long(3) = {'eps_v'};
M_.endo_names = cell(41,1);
M_.endo_names_tex = cell(41,1);
M_.endo_names_long = cell(41,1);
M_.endo_names(1) = {'q'};
M_.endo_names_tex(1) = {'q'};
M_.endo_names_long(1) = {'q'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'i'};
M_.endo_names_long(3) = {'i'};
M_.endo_names(4) = {'mu'};
M_.endo_names_tex(4) = {'mu'};
M_.endo_names_long(4) = {'mu'};
M_.endo_names(5) = {'d'};
M_.endo_names_tex(5) = {'d'};
M_.endo_names_long(5) = {'d'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'r'};
M_.endo_names_long(6) = {'r'};
M_.endo_names(7) = {'deltac'};
M_.endo_names_tex(7) = {'deltac'};
M_.endo_names_long(7) = {'deltac'};
M_.endo_names(8) = {'deltap'};
M_.endo_names_tex(8) = {'deltap'};
M_.endo_names_long(8) = {'deltap'};
M_.endo_names(9) = {'deltapC'};
M_.endo_names_tex(9) = {'deltapC'};
M_.endo_names_long(9) = {'deltapC'};
M_.endo_names(10) = {'b'};
M_.endo_names_tex(10) = {'b'};
M_.endo_names_long(10) = {'b'};
M_.endo_names(11) = {'p'};
M_.endo_names_tex(11) = {'p'};
M_.endo_names_long(11) = {'p'};
M_.endo_names(12) = {'pC'};
M_.endo_names_tex(12) = {'pC'};
M_.endo_names_long(12) = {'pC'};
M_.endo_names(13) = {'pD'};
M_.endo_names_tex(13) = {'pD'};
M_.endo_names_long(13) = {'pD'};
M_.endo_names(14) = {'deltapD'};
M_.endo_names_tex(14) = {'deltapD'};
M_.endo_names_long(14) = {'deltapD'};
M_.endo_names(15) = {'lC'};
M_.endo_names_tex(15) = {'lC'};
M_.endo_names_long(15) = {'lC'};
M_.endo_names(16) = {'lD'};
M_.endo_names_tex(16) = {'lD'};
M_.endo_names_long(16) = {'lD'};
M_.endo_names(17) = {'wC'};
M_.endo_names_tex(17) = {'wC'};
M_.endo_names_long(17) = {'wC'};
M_.endo_names(18) = {'wD'};
M_.endo_names_tex(18) = {'wD'};
M_.endo_names_long(18) = {'wD'};
M_.endo_names(19) = {'cB'};
M_.endo_names_tex(19) = {'cB'};
M_.endo_names_long(19) = {'cB'};
M_.endo_names(20) = {'deltacB'};
M_.endo_names_tex(20) = {'deltacB'};
M_.endo_names_long(20) = {'deltacB'};
M_.endo_names(21) = {'iB'};
M_.endo_names_tex(21) = {'iB'};
M_.endo_names_long(21) = {'iB'};
M_.endo_names(22) = {'muB'};
M_.endo_names_tex(22) = {'muB'};
M_.endo_names_long(22) = {'muB'};
M_.endo_names(23) = {'dB'};
M_.endo_names_tex(23) = {'dB'};
M_.endo_names_long(23) = {'dB'};
M_.endo_names(24) = {'lCB'};
M_.endo_names_tex(24) = {'lCB'};
M_.endo_names_long(24) = {'lCB'};
M_.endo_names(25) = {'lDB'};
M_.endo_names_tex(25) = {'lDB'};
M_.endo_names_long(25) = {'lDB'};
M_.endo_names(26) = {'rL'};
M_.endo_names_tex(26) = {'rL'};
M_.endo_names_long(26) = {'rL'};
M_.endo_names(27) = {'bB'};
M_.endo_names_tex(27) = {'bB'};
M_.endo_names_long(27) = {'bB'};
M_.endo_names(28) = {'aC'};
M_.endo_names_tex(28) = {'aC'};
M_.endo_names_long(28) = {'aC'};
M_.endo_names(29) = {'xiD'};
M_.endo_names_tex(29) = {'xiD'};
M_.endo_names_long(29) = {'xiD'};
M_.endo_names(30) = {'v'};
M_.endo_names_tex(30) = {'v'};
M_.endo_names_long(30) = {'v'};
M_.endo_names(31) = {'lCtot'};
M_.endo_names_tex(31) = {'lCtot'};
M_.endo_names_long(31) = {'lCtot'};
M_.endo_names(32) = {'lDtot'};
M_.endo_names_tex(32) = {'lDtot'};
M_.endo_names_long(32) = {'lDtot'};
M_.endo_names(33) = {'y'};
M_.endo_names_tex(33) = {'y'};
M_.endo_names_long(33) = {'y'};
M_.endo_names(34) = {'ystar'};
M_.endo_names_tex(34) = {'ystar'};
M_.endo_names_long(34) = {'ystar'};
M_.endo_names(35) = {'yC'};
M_.endo_names_tex(35) = {'yC'};
M_.endo_names_long(35) = {'yC'};
M_.endo_names(36) = {'yD'};
M_.endo_names_tex(36) = {'yD'};
M_.endo_names_long(36) = {'yD'};
M_.endo_names(37) = {'yCstar'};
M_.endo_names_tex(37) = {'yCstar'};
M_.endo_names_long(37) = {'yCstar'};
M_.endo_names(38) = {'yDstar'};
M_.endo_names_tex(38) = {'yDstar'};
M_.endo_names_long(38) = {'yDstar'};
M_.endo_names(39) = {'dstar'};
M_.endo_names_tex(39) = {'dstar'};
M_.endo_names_long(39) = {'dstar'};
M_.endo_names(40) = {'deltabB'};
M_.endo_names_tex(40) = {'deltabB'};
M_.endo_names_long(40) = {'deltabB'};
M_.endo_names(41) = {'AUX_ENDO_LAG_26_1'};
M_.endo_names_tex(41) = {'AUX\_ENDO\_LAG\_26\_1'};
M_.endo_names_long(41) = {'AUX_ENDO_LAG_26_1'};
M_.endo_partitions = struct();
M_.param_names = cell(35,1);
M_.param_names_tex = cell(35,1);
M_.param_names_long = cell(35,1);
M_.param_names(1) = {'epsilon'};
M_.param_names_tex(1) = {'epsilon'};
M_.param_names_long(1) = {'epsilon'};
M_.param_names(2) = {'eta'};
M_.param_names_tex(2) = {'eta'};
M_.param_names_long(2) = {'eta'};
M_.param_names(3) = {'beta'};
M_.param_names_tex(3) = {'beta'};
M_.param_names_long(3) = {'beta'};
M_.param_names(4) = {'delta'};
M_.param_names_tex(4) = {'delta'};
M_.param_names_long(4) = {'delta'};
M_.param_names(5) = {'lL'};
M_.param_names_tex(5) = {'lL'};
M_.param_names_long(5) = {'lL'};
M_.param_names(6) = {'phi'};
M_.param_names_tex(6) = {'phi'};
M_.param_names_long(6) = {'phi'};
M_.param_names(7) = {'alpha'};
M_.param_names_tex(7) = {'alpha'};
M_.param_names_long(7) = {'alpha'};
M_.param_names(8) = {'gamma'};
M_.param_names_tex(8) = {'gamma'};
M_.param_names_long(8) = {'gamma'};
M_.param_names(9) = {'betaB'};
M_.param_names_tex(9) = {'betaB'};
M_.param_names_long(9) = {'betaB'};
M_.param_names(10) = {'CB'};
M_.param_names_tex(10) = {'CB'};
M_.param_names_long(10) = {'CB'};
M_.param_names(11) = {'IB'};
M_.param_names_tex(11) = {'IB'};
M_.param_names_long(11) = {'IB'};
M_.param_names(12) = {'RL'};
M_.param_names_tex(12) = {'RL'};
M_.param_names_long(12) = {'RL'};
M_.param_names(13) = {'BB'};
M_.param_names_tex(13) = {'BB'};
M_.param_names_long(13) = {'BB'};
M_.param_names(14) = {'W'};
M_.param_names_tex(14) = {'W'};
M_.param_names_long(14) = {'W'};
M_.param_names(15) = {'LB'};
M_.param_names_tex(15) = {'LB'};
M_.param_names_long(15) = {'LB'};
M_.param_names(16) = {'kappa'};
M_.param_names_tex(16) = {'kappa'};
M_.param_names_long(16) = {'kappa'};
M_.param_names(17) = {'kappaC'};
M_.param_names_tex(17) = {'kappaC'};
M_.param_names_long(17) = {'kappaC'};
M_.param_names(18) = {'kappaD'};
M_.param_names_tex(18) = {'kappaD'};
M_.param_names_long(18) = {'kappaD'};
M_.param_names(19) = {'phiC'};
M_.param_names_tex(19) = {'phiC'};
M_.param_names_long(19) = {'phiC'};
M_.param_names(20) = {'phiD'};
M_.param_names_tex(20) = {'phiD'};
M_.param_names_long(20) = {'phiD'};
M_.param_names(21) = {'lambda'};
M_.param_names_tex(21) = {'lambda'};
M_.param_names_long(21) = {'lambda'};
M_.param_names(22) = {'thetaC'};
M_.param_names_tex(22) = {'thetaC'};
M_.param_names_long(22) = {'thetaC'};
M_.param_names(23) = {'thetaD'};
M_.param_names_tex(23) = {'thetaD'};
M_.param_names_long(23) = {'thetaD'};
M_.param_names(24) = {'C'};
M_.param_names_tex(24) = {'C'};
M_.param_names_long(24) = {'C'};
M_.param_names(25) = {'D'};
M_.param_names_tex(25) = {'D'};
M_.param_names_long(25) = {'D'};
M_.param_names(26) = {'DB'};
M_.param_names_tex(26) = {'DB'};
M_.param_names_long(26) = {'DB'};
M_.param_names(27) = {'L'};
M_.param_names_tex(27) = {'L'};
M_.param_names_long(27) = {'L'};
M_.param_names(28) = {'gammaR'};
M_.param_names_tex(28) = {'gammaR'};
M_.param_names_long(28) = {'gammaR'};
M_.param_names(29) = {'gammapi'};
M_.param_names_tex(29) = {'gammapi'};
M_.param_names_long(29) = {'gammapi'};
M_.param_names(30) = {'gammay'};
M_.param_names_tex(30) = {'gammay'};
M_.param_names_long(30) = {'gammay'};
M_.param_names(31) = {'gammab'};
M_.param_names_tex(31) = {'gammab'};
M_.param_names_long(31) = {'gammab'};
M_.param_names(32) = {'tau'};
M_.param_names_tex(32) = {'tau'};
M_.param_names_long(32) = {'tau'};
M_.param_names(33) = {'rhoC'};
M_.param_names_tex(33) = {'rhoC'};
M_.param_names_long(33) = {'rhoC'};
M_.param_names(34) = {'rhoD'};
M_.param_names_tex(34) = {'rhoD'};
M_.param_names_long(34) = {'rhoD'};
M_.param_names(35) = {'rhov'};
M_.param_names_tex(35) = {'rhov'};
M_.param_names_long(35) = {'rhov'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 41;
M_.param_nbr = 35;
M_.orig_endo_nbr = 40;
M_.aux_vars(1).endo_index = 41;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 27;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'bB(-1)';
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 40;
M_.eq_nbr = 41;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 2;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 2;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 2;
M_.lead_lag_incidence = [
 0 24 0;
 1 25 0;
 2 26 65;
 0 27 66;
 3 28 0;
 4 29 0;
 0 30 67;
 0 31 0;
 5 32 68;
 0 33 0;
 6 34 0;
 7 35 0;
 8 36 0;
 9 37 69;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 10 42 0;
 0 43 70;
 11 44 71;
 0 45 72;
 12 46 0;
 0 47 0;
 0 48 0;
 13 49 0;
 14 50 0;
 15 51 0;
 16 52 0;
 17 53 0;
 0 54 0;
 0 55 0;
 18 56 0;
 19 57 0;
 0 58 0;
 0 59 0;
 20 60 0;
 21 61 0;
 22 62 0;
 0 63 0;
 23 64 0;]';
M_.nstatic = 14;
M_.nfwrd   = 4;
M_.npred   = 19;
M_.nboth   = 4;
M_.nsfwrd   = 8;
M_.nspred   = 23;
M_.ndynamic   = 27;
M_.dynamic_tmp_nbr = [2; 2; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'q' ;
  2 , 'name' , 'deltac' ;
  3 , 'name' , 'deltap' ;
  4 , 'name' , 'deltapC' ;
  5 , 'name' , 'deltapD' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'deltacB' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
  14 , 'name' , '14' ;
  15 , 'name' , '15' ;
  16 , 'name' , '16' ;
  17 , 'name' , '17' ;
  18 , 'name' , 'rL' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'yC' ;
  21 , 'name' , 'yD' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , '24' ;
  25 , 'name' , '25' ;
  26 , 'name' , 'd' ;
  27 , 'name' , 'dB' ;
  28 , 'name' , 'lCtot' ;
  29 , 'name' , 'lDtot' ;
  30 , 'name' , '30' ;
  31 , 'name' , 'deltabB' ;
  32 , 'name' , 'r' ;
  33 , 'name' , 'y' ;
  34 , 'name' , 'ystar' ;
  35 , 'name' , 'yCstar' ;
  36 , 'name' , 'yDstar' ;
  37 , 'name' , 'dstar' ;
  38 , 'name' , 'aC' ;
  39 , 'name' , 'xiD' ;
  40 , 'name' , 'v' ;
};
M_.mapping.q.eqidx = [1 6 12 17 18 23 ];
M_.mapping.c.eqidx = [2 6 9 10 24 ];
M_.mapping.i.eqidx = [6 25 26 ];
M_.mapping.mu.eqidx = [6 7 ];
M_.mapping.d.eqidx = [7 26 ];
M_.mapping.r.eqidx = [8 18 32 ];
M_.mapping.deltac.eqidx = [2 8 ];
M_.mapping.deltap.eqidx = [3 19 ];
M_.mapping.deltapC.eqidx = [4 8 14 17 18 19 22 31 32 ];
M_.mapping.b.eqidx = [30 ];
M_.mapping.p.eqidx = [3 ];
M_.mapping.pC.eqidx = [1 4 ];
M_.mapping.pD.eqidx = [1 5 ];
M_.mapping.deltapD.eqidx = [5 19 23 ];
M_.mapping.lC.eqidx = [9 10 28 ];
M_.mapping.lD.eqidx = [9 10 29 ];
M_.mapping.wC.eqidx = [9 15 17 22 ];
M_.mapping.wD.eqidx = [10 16 17 23 ];
M_.mapping.cB.eqidx = [11 12 15 16 17 24 ];
M_.mapping.deltacB.eqidx = [11 14 ];
M_.mapping.iB.eqidx = [12 17 25 27 ];
M_.mapping.muB.eqidx = [12 13 ];
M_.mapping.dB.eqidx = [13 18 27 ];
M_.mapping.lCB.eqidx = [15 16 17 28 ];
M_.mapping.lDB.eqidx = [15 16 17 29 ];
M_.mapping.rL.eqidx = [14 17 18 ];
M_.mapping.bB.eqidx = [17 18 30 31 32 ];
M_.mapping.aC.eqidx = [20 22 35 38 ];
M_.mapping.xiD.eqidx = [7 13 36 39 ];
M_.mapping.v.eqidx = [18 40 ];
M_.mapping.lCtot.eqidx = [20 28 ];
M_.mapping.lDtot.eqidx = [21 29 ];
M_.mapping.y.eqidx = [32 33 ];
M_.mapping.ystar.eqidx = [32 34 ];
M_.mapping.yC.eqidx = [20 24 33 ];
M_.mapping.yD.eqidx = [21 25 33 ];
M_.mapping.yCstar.eqidx = [34 35 ];
M_.mapping.yDstar.eqidx = [34 36 37 ];
M_.mapping.dstar.eqidx = [36 37 ];
M_.mapping.deltabB.eqidx = [31 ];
M_.mapping.eps_A.eqidx = [35 38 ];
M_.mapping.eps_D.eqidx = [36 39 ];
M_.mapping.eps_v.eqidx = [40 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 3 5 6 9 11 12 13 14 19 21 23 26 27 28 29 30 33 34 37 38 39 41 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(41, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(35, 1);
M_.endo_trends = struct('deflator', cell(41, 1), 'log_deflator', cell(41, 1), 'growth_factor', cell(41, 1), 'log_growth_factor', cell(41, 1));
M_.NNZDerivatives = [166; 0; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.8;
epsilon = M_.params(1);
M_.params(2) = 0.5;
eta = M_.params(2);
M_.params(3) = 0.99;
beta = M_.params(3);
M_.params(4) = 0.025;
delta = M_.params(4);
M_.params(5) = 1;
lL = M_.params(5);
M_.params(6) = 1;
phi = M_.params(6);
M_.params(7) = 0.9;
alpha = M_.params(7);
M_.params(8) = 0.5378;
gamma = M_.params(8);
M_.params(9) = 0.98;
betaB = M_.params(9);
M_.params(10) = 1.3705;
CB = M_.params(10);
M_.params(11) = 0.1323;
IB = M_.params(11);
M_.params(12) = 1.0204;
RL = M_.params(12);
M_.params(13) = 4.2349;
BB = M_.params(13);
M_.params(14) = 0.9;
W = M_.params(14);
M_.params(15) = 1.7659;
LB = M_.params(15);
M_.params(24) = 1.5893;
C = M_.params(24);
M_.params(25) = 7.8610;
D = M_.params(25);
M_.params(26) = 5.2936;
DB = M_.params(26);
M_.params(27) = 1.5228;
L = M_.params(27);
M_.params(16) = 0.02;
kappa = M_.params(16);
M_.params(17) = 0.0858;
kappaC = M_.params(17);
M_.params(18) = 0.0858;
kappaD = M_.params(18);
M_.params(19) = 1;
phiC = M_.params(19);
M_.params(20) = 1;
phiD = M_.params(20);
M_.params(21) = 0.5;
lambda = M_.params(21);
M_.params(22) = 0.75;
thetaC = M_.params(22);
M_.params(23) = 0.75;
thetaD = M_.params(23);
M_.params(28) = 0.7;
gammaR = M_.params(28);
M_.params(29) = 1.3;
gammapi = M_.params(29);
M_.params(30) = 0.125;
gammay = M_.params(30);
M_.params(31) = 0;
gammab = M_.params(31);
M_.params(32) = 0;
tau = M_.params(32);
M_.params(33) = 0.98;
rhoC = M_.params(33);
M_.params(34) = 0.95;
rhoD = M_.params(34);
M_.params(35) = 0.95;
rhov = M_.params(35);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1.5)^2;
M_.Sigma_e(2, 2) = (2.5)^2;
M_.Sigma_e(3, 3) = (0.25)^2;
options_.irf = 24;
options_.nograph = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
close all;
taylor=oo_.irfs;
save taylor.mat taylor;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'macro5_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end

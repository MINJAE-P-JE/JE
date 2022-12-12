function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g2
%

if T_flag
    T = Simple_Neoclassical_Growth_Model.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(12,1);
g2_j = zeros(12,1);
g2_v = zeros(12,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_i(10)=2;
g2_i(11)=2;
g2_i(12)=2;
g2_j(1)=9;
g2_j(2)=33;
g2_j(3)=31;
g2_j(4)=19;
g2_j(5)=34;
g2_j(6)=40;
g2_j(7)=17;
g2_j(8)=20;
g2_j(9)=38;
g2_j(10)=1;
g2_j(11)=7;
g2_j(12)=43;
g2_v(1)=getPowerDeriv(y(2),(-params(4)),2);
g2_v(2)=(-(T(4)*params(2)*getPowerDeriv(y(5),(-params(4)),2)));
g2_v(3)=(-(T(5)*T(8)));
g2_v(4)=g2_v(3);
g2_v(5)=(-(T(5)*params(1)*T(2)));
g2_v(6)=g2_v(5);
g2_v(7)=(-(T(1)*params(1)*y(6)*getPowerDeriv(y(3),params(1)-1,2)));
g2_v(8)=(-(T(1)*params(1)*T(7)));
g2_v(9)=g2_v(8);
g2_v(10)=(-(x(it_, 1)*getPowerDeriv(y(1),params(1),2)));
g2_v(11)=(-T(6));
g2_v(12)=g2_v(11);
g2 = sparse(g2_i,g2_j,g2_v,3,49);
end

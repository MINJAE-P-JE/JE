function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = macro5.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(41, 1);
lhs = y(24);
rhs = y(36)-y(35);
residual(1) = lhs - rhs;
lhs = y(30);
rhs = y(25)-y(1);
residual(2) = lhs - rhs;
lhs = y(31);
rhs = y(34)-y(6);
residual(3) = lhs - rhs;
lhs = y(32);
rhs = y(35)-y(7);
residual(4) = lhs - rhs;
lhs = y(37);
rhs = y(36)-y(8);
residual(5) = lhs - rhs;
lhs = y(24)-T(1)+params(2)*(y(26)-y(2));
rhs = y(27)+params(2)*params(3)*(y(65)-y(26));
residual(6) = lhs - rhs;
lhs = (1-params(3)*(1-params(4)))*(y(52)-y(28));
rhs = y(27)-params(3)*(1-params(4))*y(66);
residual(7) = lhs - rhs;
lhs = y(30)*params(1);
rhs = y(67)-(1-params(1))*(y(29)-y(68));
residual(8) = lhs - rhs;
lhs = T(1)+(params(5)+(params(6)-params(5))*params(7))*y(38)+(params(6)-params(5))*(1-params(7))*y(39);
rhs = y(40);
residual(9) = lhs - rhs;
lhs = T(1)+y(39)*(params(5)+(params(6)-params(5))*(1-params(7)))+(params(6)-params(5))*params(7)*y(38);
rhs = y(41);
residual(10) = lhs - rhs;
lhs = y(43);
rhs = y(42)-y(10);
residual(11) = lhs - rhs;
lhs = y(24)-T(2)+params(2)*(y(44)-y(11));
rhs = y(45)+params(2)*params(9)*(y(71)-y(44));
residual(12) = lhs - rhs;
lhs = (1-(1-params(4))*params(9))*(y(52)-y(46));
rhs = y(45)-(1-params(4))*params(9)*y(72);
residual(13) = lhs - rhs;
lhs = params(1)*y(43);
rhs = y(70)-(1-params(1))*(y(49)-y(68));
residual(14) = lhs - rhs;
lhs = T(2)+(params(5)+(params(6)-params(5))*params(7))*y(47)+(params(6)-params(5))*(1-params(7))*y(48);
rhs = y(40);
residual(15) = lhs - rhs;
lhs = T(2)+(params(5)+(params(6)-params(5))*(1-params(7)))*y(48)+(params(6)-params(5))*params(7)*y(47);
rhs = y(41);
residual(16) = lhs - rhs;
lhs = y(42)*params(10)+params(11)*(y(24)+y(44))+params(12)*params(13)*(y(13)+y(14)-y(32));
rhs = params(13)*y(50)+params(7)*params(14)*params(15)*(y(40)+y(47))+params(15)*(1-params(7))*params(14)*(y(41)+y(48));
residual(17) = lhs - rhs;
lhs = y(49);
rhs = y(29)+params(16)*(y(50)-y(46)-y(24))-y(53)+params(32)*(y(5)+y(14)-y(23));
residual(18) = lhs - rhs;
lhs = y(31);
rhs = y(32)*params(8)+y(37)*(1-params(8));
residual(19) = lhs - rhs;
lhs = y(58);
rhs = y(51)+y(54);
residual(20) = lhs - rhs;
lhs = y(59);
rhs = y(55);
residual(21) = lhs - rhs;
lhs = y(32)-y(5)*params(19);
rhs = params(3)*(y(68)-y(32)*params(19))+params(17)*(y(40)-y(51));
residual(22) = lhs - rhs;
lhs = y(37)-params(20)*y(9);
rhs = params(3)*(y(69)-y(37)*params(20))+params(18)*(y(41)-y(24));
residual(23) = lhs - rhs;
lhs = y(58);
rhs = (y(25)*params(21)*params(24)+y(42)*params(10)*(1-params(21)))/(params(21)*params(24)+params(10)*(1-params(21)));
residual(24) = lhs - rhs;
lhs = y(59);
rhs = (y(26)*params(4)*params(21)*params(25)+y(44)*params(4)*(1-params(21))*params(26))/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26));
residual(25) = lhs - rhs;
lhs = y(28);
rhs = (1-params(4))*y(3)+y(26)*params(4);
residual(26) = lhs - rhs;
lhs = y(46);
rhs = (1-params(4))*y(12)+params(4)*y(44);
residual(27) = lhs - rhs;
lhs = y(54);
rhs = (y(38)*params(21)*params(27)+y(47)*params(15)*(1-params(21)))/(params(15)*(1-params(21))+params(8)*params(27));
residual(28) = lhs - rhs;
lhs = y(55);
rhs = (y(39)*params(21)*params(27)+y(48)*params(15)*(1-params(21)))/(params(15)*(1-params(21))+params(8)*params(27));
residual(29) = lhs - rhs;
residual(30) = params(21)*y(33)+y(50)*(1-params(21));
lhs = y(63);
rhs = y(32)+y(50)-y(14);
residual(31) = lhs - rhs;
lhs = y(29);
rhs = params(28)*y(4)+(1-params(28))*(y(5)*params(29)+params(30)*(y(18)-y(19))+params(31)*(y(5)+y(14)-y(23)));
residual(32) = lhs - rhs;
lhs = y(56);
rhs = params(7)*y(58)+(1-params(7))*y(59);
residual(33) = lhs - rhs;
lhs = y(57);
rhs = params(7)*y(60)+(1-params(7))*y(61);
residual(34) = lhs - rhs;
lhs = y(60);
rhs = 0.326667*y(15)+0.6666666666666666*y(20)+0.3333333333333333*x(it_, 1);
residual(35) = lhs - rhs;
lhs = y(61);
rhs = (-0.344897)*y(22)+0.24879*y(16)+0.2653*y(21)+0.26188*x(it_, 2);
residual(36) = lhs - rhs;
lhs = y(62);
rhs = (1-params(4))*y(22)+params(4)*y(61);
residual(37) = lhs - rhs;
lhs = y(51);
rhs = x(it_, 1)+y(15)*params(33);
residual(38) = lhs - rhs;
lhs = y(52);
rhs = x(it_, 2)+y(16)*params(34);
residual(39) = lhs - rhs;
lhs = y(53);
rhs = params(35)*y(17)+x(it_, 3);
residual(40) = lhs - rhs;
lhs = y(64);
rhs = y(14);
residual(41) = lhs - rhs;

end

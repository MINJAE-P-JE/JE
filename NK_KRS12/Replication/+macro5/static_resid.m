function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = macro5.static_resid_tt(T, y, x, params);
end
residual = zeros(41, 1);
lhs = y(1);
rhs = y(13)-y(12);
residual(1) = lhs - rhs;
residual(2) = y(7);
residual(3) = y(8);
residual(4) = y(9);
residual(5) = y(14);
lhs = y(1)-T(1);
rhs = y(4);
residual(6) = lhs - rhs;
lhs = (1-params(3)*(1-params(4)))*(y(29)-y(5));
rhs = y(4)-y(4)*params(3)*(1-params(4));
residual(7) = lhs - rhs;
lhs = y(7)*params(1);
rhs = y(7)-(1-params(1))*(y(6)-y(9));
residual(8) = lhs - rhs;
lhs = T(1)+(params(5)+(params(6)-params(5))*params(7))*y(15)+(params(6)-params(5))*(1-params(7))*y(16);
rhs = y(17);
residual(9) = lhs - rhs;
lhs = T(1)+y(16)*(params(5)+(params(6)-params(5))*(1-params(7)))+(params(6)-params(5))*params(7)*y(15);
rhs = y(18);
residual(10) = lhs - rhs;
residual(11) = y(20);
lhs = y(1)-T(2);
rhs = y(22);
residual(12) = lhs - rhs;
lhs = (1-(1-params(4))*params(9))*(y(29)-y(23));
rhs = y(22)-y(22)*(1-params(4))*params(9);
residual(13) = lhs - rhs;
lhs = params(1)*y(20);
rhs = y(20)-(1-params(1))*(y(26)-y(9));
residual(14) = lhs - rhs;
lhs = T(2)+(params(5)+(params(6)-params(5))*params(7))*y(24)+(params(6)-params(5))*(1-params(7))*y(25);
rhs = y(17);
residual(15) = lhs - rhs;
lhs = T(2)+(params(5)+(params(6)-params(5))*(1-params(7)))*y(25)+(params(6)-params(5))*params(7)*y(24);
rhs = y(18);
residual(16) = lhs - rhs;
lhs = y(19)*params(10)+params(11)*(y(1)+y(21))+params(12)*params(13)*(y(26)+y(27)-y(9));
rhs = params(13)*y(27)+params(7)*params(14)*params(15)*(y(17)+y(24))+params(15)*(1-params(7))*params(14)*(y(18)+y(25));
residual(17) = lhs - rhs;
lhs = y(26);
rhs = y(6)+params(16)*(y(27)-y(23)-y(1))-y(30)+y(9)*params(32);
residual(18) = lhs - rhs;
lhs = y(8);
rhs = y(9)*params(8)+y(14)*(1-params(8));
residual(19) = lhs - rhs;
lhs = y(35);
rhs = y(28)+y(31);
residual(20) = lhs - rhs;
lhs = y(36);
rhs = y(32);
residual(21) = lhs - rhs;
lhs = y(9)-y(9)*params(19);
rhs = params(3)*(y(9)-y(9)*params(19))+params(17)*(y(17)-y(28));
residual(22) = lhs - rhs;
lhs = y(14)-y(14)*params(20);
rhs = params(3)*(y(14)-y(14)*params(20))+params(18)*(y(18)-y(1));
residual(23) = lhs - rhs;
lhs = y(35);
rhs = (y(2)*params(21)*params(24)+y(19)*params(10)*(1-params(21)))/(params(21)*params(24)+params(10)*(1-params(21)));
residual(24) = lhs - rhs;
lhs = y(36);
rhs = (y(3)*params(4)*params(21)*params(25)+y(21)*params(4)*(1-params(21))*params(26))/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26));
residual(25) = lhs - rhs;
lhs = y(5);
rhs = (1-params(4))*y(5)+y(3)*params(4);
residual(26) = lhs - rhs;
lhs = y(23);
rhs = (1-params(4))*y(23)+params(4)*y(21);
residual(27) = lhs - rhs;
lhs = y(31);
rhs = (y(15)*params(21)*params(27)+y(24)*params(15)*(1-params(21)))/(params(15)*(1-params(21))+params(8)*params(27));
residual(28) = lhs - rhs;
lhs = y(32);
rhs = (y(16)*params(21)*params(27)+y(25)*params(15)*(1-params(21)))/(params(15)*(1-params(21))+params(8)*params(27));
residual(29) = lhs - rhs;
residual(30) = params(21)*y(10)+y(27)*(1-params(21));
lhs = y(40);
rhs = y(9);
residual(31) = lhs - rhs;
lhs = y(6);
rhs = y(6)*params(28)+(1-params(28))*(y(9)*params(29)+params(30)*(y(33)-y(34))+y(9)*params(31));
residual(32) = lhs - rhs;
lhs = y(33);
rhs = params(7)*y(35)+(1-params(7))*y(36);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = params(7)*y(37)+(1-params(7))*y(38);
residual(34) = lhs - rhs;
lhs = y(37);
rhs = y(28)*0.326667+y(37)*0.6666666666666666+0.3333333333333333*x(1);
residual(35) = lhs - rhs;
lhs = y(38);
rhs = (-0.344897)*y(39)+y(29)*0.24879+y(38)*0.2653+0.26188*x(2);
residual(36) = lhs - rhs;
lhs = y(39);
rhs = (1-params(4))*y(39)+params(4)*y(38);
residual(37) = lhs - rhs;
lhs = y(28);
rhs = x(1)+y(28)*params(33);
residual(38) = lhs - rhs;
lhs = y(29);
rhs = x(2)+y(29)*params(34);
residual(39) = lhs - rhs;
lhs = y(30);
rhs = y(30)*params(35)+x(3);
residual(40) = lhs - rhs;
lhs = y(41);
rhs = y(27);
residual(41) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end

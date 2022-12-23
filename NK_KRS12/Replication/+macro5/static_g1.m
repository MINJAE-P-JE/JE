function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = macro5.static_g1_tt(T, y, x, params);
end
g1 = zeros(41, 41);
g1(1,1)=1;
g1(1,12)=1;
g1(1,13)=(-1);
g1(2,7)=1;
g1(3,8)=1;
g1(4,9)=1;
g1(5,14)=1;
g1(6,1)=1;
g1(6,2)=(-1);
g1(6,4)=(-1);
g1(7,4)=(-(1-params(3)*(1-params(4))));
g1(7,5)=(-(1-params(3)*(1-params(4))));
g1(7,29)=1-params(3)*(1-params(4));
g1(8,6)=1-params(1);
g1(8,7)=params(1)-1;
g1(8,9)=(-(1-params(1)));
g1(9,2)=1;
g1(9,15)=params(5)+(params(6)-params(5))*params(7);
g1(9,16)=(params(6)-params(5))*(1-params(7));
g1(9,17)=(-1);
g1(10,2)=1;
g1(10,15)=(params(6)-params(5))*params(7);
g1(10,16)=params(5)+(params(6)-params(5))*(1-params(7));
g1(10,18)=(-1);
g1(11,20)=1;
g1(12,1)=1;
g1(12,19)=(-1);
g1(12,22)=(-1);
g1(13,22)=(-(1-(1-params(4))*params(9)));
g1(13,23)=(-(1-(1-params(4))*params(9)));
g1(13,29)=1-(1-params(4))*params(9);
g1(14,9)=(-(1-params(1)));
g1(14,20)=params(1)-1;
g1(14,26)=1-params(1);
g1(15,17)=(-1);
g1(15,19)=1;
g1(15,24)=params(5)+(params(6)-params(5))*params(7);
g1(15,25)=(params(6)-params(5))*(1-params(7));
g1(16,18)=(-1);
g1(16,19)=1;
g1(16,24)=(params(6)-params(5))*params(7);
g1(16,25)=params(5)+(params(6)-params(5))*(1-params(7));
g1(17,1)=params(11);
g1(17,9)=(-(params(12)*params(13)));
g1(17,17)=(-(params(7)*params(14)*params(15)));
g1(17,18)=(-(params(15)*(1-params(7))*params(14)));
g1(17,19)=params(10);
g1(17,21)=params(11);
g1(17,24)=(-(params(7)*params(14)*params(15)));
g1(17,25)=(-(params(15)*(1-params(7))*params(14)));
g1(17,26)=params(12)*params(13);
g1(17,27)=params(12)*params(13)-params(13);
g1(18,1)=params(16);
g1(18,6)=(-1);
g1(18,9)=(-params(32));
g1(18,23)=params(16);
g1(18,26)=1;
g1(18,27)=(-params(16));
g1(18,30)=1;
g1(19,8)=1;
g1(19,9)=(-params(8));
g1(19,14)=(-(1-params(8)));
g1(20,28)=(-1);
g1(20,31)=(-1);
g1(20,35)=1;
g1(21,32)=(-1);
g1(21,36)=1;
g1(22,9)=1-params(19)-params(3)*(1-params(19));
g1(22,17)=(-params(17));
g1(22,28)=params(17);
g1(23,1)=params(18);
g1(23,14)=1-params(20)-params(3)*(1-params(20));
g1(23,18)=(-params(18));
g1(24,2)=(-(params(21)*params(24)/(params(21)*params(24)+params(10)*(1-params(21)))));
g1(24,19)=(-(params(10)*(1-params(21))/(params(21)*params(24)+params(10)*(1-params(21)))));
g1(24,35)=1;
g1(25,3)=(-(params(4)*params(21)*params(25)/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26))));
g1(25,21)=(-(params(4)*(1-params(21))*params(26)/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26))));
g1(25,36)=1;
g1(26,3)=(-params(4));
g1(26,5)=1-(1-params(4));
g1(27,21)=(-params(4));
g1(27,23)=1-(1-params(4));
g1(28,15)=(-(params(21)*params(27)/(params(15)*(1-params(21))+params(8)*params(27))));
g1(28,24)=(-(params(15)*(1-params(21))/(params(15)*(1-params(21))+params(8)*params(27))));
g1(28,31)=1;
g1(29,16)=(-(params(21)*params(27)/(params(15)*(1-params(21))+params(8)*params(27))));
g1(29,25)=(-(params(15)*(1-params(21))/(params(15)*(1-params(21))+params(8)*params(27))));
g1(29,32)=1;
g1(30,10)=params(21);
g1(30,27)=1-params(21);
g1(31,9)=(-1);
g1(31,40)=1;
g1(32,6)=1-params(28);
g1(32,9)=(-((1-params(28))*(params(29)+params(31))));
g1(32,33)=(-((1-params(28))*params(30)));
g1(32,34)=(-((1-params(28))*(-params(30))));
g1(33,33)=1;
g1(33,35)=(-params(7));
g1(33,36)=(-(1-params(7)));
g1(34,34)=1;
g1(34,37)=(-params(7));
g1(34,38)=(-(1-params(7)));
g1(35,28)=(-0.326667);
g1(35,37)=0.3333333333333334;
g1(36,29)=(-0.24879);
g1(36,38)=0.7347;
g1(36,39)=0.344897;
g1(37,38)=(-params(4));
g1(37,39)=1-(1-params(4));
g1(38,28)=1-params(33);
g1(39,29)=1-params(34);
g1(40,30)=1-params(35);
g1(41,27)=(-1);
g1(41,41)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end

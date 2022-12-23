function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = macro5.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(41, 75);
g1(1,24)=1;
g1(1,35)=1;
g1(1,36)=(-1);
g1(2,1)=1;
g1(2,25)=(-1);
g1(2,30)=1;
g1(3,31)=1;
g1(3,6)=1;
g1(3,34)=(-1);
g1(4,32)=1;
g1(4,7)=1;
g1(4,35)=(-1);
g1(5,8)=1;
g1(5,36)=(-1);
g1(5,37)=1;
g1(6,24)=1;
g1(6,1)=(-T(3));
g1(6,25)=(-T(4));
g1(6,2)=(-params(2));
g1(6,26)=params(2)+params(2)*params(3);
g1(6,65)=(-(params(2)*params(3)));
g1(6,27)=(-1);
g1(7,27)=(-1);
g1(7,66)=params(3)*(1-params(4));
g1(7,28)=(-(1-params(3)*(1-params(4))));
g1(7,52)=1-params(3)*(1-params(4));
g1(8,29)=1-params(1);
g1(8,30)=params(1);
g1(8,67)=(-1);
g1(8,68)=(-(1-params(1)));
g1(9,1)=T(3);
g1(9,25)=T(4);
g1(9,38)=params(5)+(params(6)-params(5))*params(7);
g1(9,39)=(params(6)-params(5))*(1-params(7));
g1(9,40)=(-1);
g1(10,1)=T(3);
g1(10,25)=T(4);
g1(10,38)=(params(6)-params(5))*params(7);
g1(10,39)=params(5)+(params(6)-params(5))*(1-params(7));
g1(10,41)=(-1);
g1(11,10)=1;
g1(11,42)=(-1);
g1(11,43)=1;
g1(12,24)=1;
g1(12,10)=(-T(3));
g1(12,42)=(-T(4));
g1(12,11)=(-params(2));
g1(12,44)=params(2)+params(2)*params(9);
g1(12,71)=(-(params(2)*params(9)));
g1(12,45)=(-1);
g1(13,45)=(-1);
g1(13,72)=(1-params(4))*params(9);
g1(13,46)=(-(1-(1-params(4))*params(9)));
g1(13,52)=1-(1-params(4))*params(9);
g1(14,68)=(-(1-params(1)));
g1(14,43)=params(1);
g1(14,70)=(-1);
g1(14,49)=1-params(1);
g1(15,40)=(-1);
g1(15,10)=T(3);
g1(15,42)=T(4);
g1(15,47)=params(5)+(params(6)-params(5))*params(7);
g1(15,48)=(params(6)-params(5))*(1-params(7));
g1(16,41)=(-1);
g1(16,10)=T(3);
g1(16,42)=T(4);
g1(16,47)=(params(6)-params(5))*params(7);
g1(16,48)=params(5)+(params(6)-params(5))*(1-params(7));
g1(17,24)=params(11);
g1(17,32)=(-(params(12)*params(13)));
g1(17,40)=(-(params(7)*params(14)*params(15)));
g1(17,41)=(-(params(15)*(1-params(7))*params(14)));
g1(17,42)=params(10);
g1(17,44)=params(11);
g1(17,47)=(-(params(7)*params(14)*params(15)));
g1(17,48)=(-(params(15)*(1-params(7))*params(14)));
g1(17,13)=params(12)*params(13);
g1(17,14)=params(12)*params(13);
g1(17,50)=(-params(13));
g1(18,24)=params(16);
g1(18,29)=(-1);
g1(18,5)=(-params(32));
g1(18,46)=params(16);
g1(18,49)=1;
g1(18,14)=(-params(32));
g1(18,50)=(-params(16));
g1(18,53)=1;
g1(18,23)=params(32);
g1(19,31)=1;
g1(19,32)=(-params(8));
g1(19,37)=(-(1-params(8)));
g1(20,51)=(-1);
g1(20,54)=(-1);
g1(20,58)=1;
g1(21,55)=(-1);
g1(21,59)=1;
g1(22,5)=(-params(19));
g1(22,32)=1-params(3)*(-params(19));
g1(22,68)=(-params(3));
g1(22,40)=(-params(17));
g1(22,51)=params(17);
g1(23,24)=params(18);
g1(23,9)=(-params(20));
g1(23,37)=1-params(3)*(-params(20));
g1(23,69)=(-params(3));
g1(23,41)=(-params(18));
g1(24,25)=(-(params(21)*params(24)/(params(21)*params(24)+params(10)*(1-params(21)))));
g1(24,42)=(-(params(10)*(1-params(21))/(params(21)*params(24)+params(10)*(1-params(21)))));
g1(24,58)=1;
g1(25,26)=(-(params(4)*params(21)*params(25)/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26))));
g1(25,44)=(-(params(4)*(1-params(21))*params(26)/(params(4)*params(21)*params(25)+params(4)*(1-params(21))*params(26))));
g1(25,59)=1;
g1(26,26)=(-params(4));
g1(26,3)=(-(1-params(4)));
g1(26,28)=1;
g1(27,44)=(-params(4));
g1(27,12)=(-(1-params(4)));
g1(27,46)=1;
g1(28,38)=(-(params(21)*params(27)/(params(15)*(1-params(21))+params(8)*params(27))));
g1(28,47)=(-(params(15)*(1-params(21))/(params(15)*(1-params(21))+params(8)*params(27))));
g1(28,54)=1;
g1(29,39)=(-(params(21)*params(27)/(params(15)*(1-params(21))+params(8)*params(27))));
g1(29,48)=(-(params(15)*(1-params(21))/(params(15)*(1-params(21))+params(8)*params(27))));
g1(29,55)=1;
g1(30,33)=params(21);
g1(30,50)=1-params(21);
g1(31,32)=(-1);
g1(31,14)=1;
g1(31,50)=(-1);
g1(31,63)=1;
g1(32,4)=(-params(28));
g1(32,29)=1;
g1(32,5)=(-((1-params(28))*(params(29)+params(31))));
g1(32,14)=(-((1-params(28))*params(31)));
g1(32,18)=(-((1-params(28))*params(30)));
g1(32,19)=(-((1-params(28))*(-params(30))));
g1(32,23)=(-((1-params(28))*(-params(31))));
g1(33,56)=1;
g1(33,58)=(-params(7));
g1(33,59)=(-(1-params(7)));
g1(34,57)=1;
g1(34,60)=(-params(7));
g1(34,61)=(-(1-params(7)));
g1(35,15)=(-0.326667);
g1(35,20)=(-0.6666666666666666);
g1(35,60)=1;
g1(35,73)=(-0.3333333333333333);
g1(36,16)=(-0.24879);
g1(36,21)=(-0.2653);
g1(36,61)=1;
g1(36,22)=0.344897;
g1(36,74)=(-0.26188);
g1(37,61)=(-params(4));
g1(37,22)=(-(1-params(4)));
g1(37,62)=1;
g1(38,15)=(-params(33));
g1(38,51)=1;
g1(38,73)=(-1);
g1(39,16)=(-params(34));
g1(39,52)=1;
g1(39,74)=(-1);
g1(40,17)=(-params(35));
g1(40,53)=1;
g1(40,75)=(-1);
g1(41,14)=(-1);
g1(41,64)=1;

end

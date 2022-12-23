
//////////////////////////////////////////////////////////////////////////////
//capital flows and moneytary policy trade-offs in emerging market economies//
//////////////////////////////////////////////////////////////////////////////
//////replication : 2022-12-23//////////Paolo Cavalino and boris Hofmann//////
//////////////////////////////////////////////////////////////////////////////

var lambda c r p_H p e p_ln ir k y alphastar Ystar rb phi tau_b mu hat_b_star P_b B_star alphastar hatx steadyI;
varexo epsilon_c epsilon_g epsilon_r_star epsilon_kappa;
parameter alpha beta delta chi varpi varrho zeta_b zeta_ln sigma varsigma iota;

steady_C steady_I steady_Y steady_E steady_P_H

model(linear);

// Log-linearized Equilibrium Equations

lambda = c - c(+1) - epsilonc;
0=lambda + r + pH(+1) - pH;
p=-pH;
pH = -(alpha/(1-alpha))*e
pln= iota * ir;
k= delta * ir + (1-delta) * k(-1);
y = - (1-alpha) * ((C + steadyI)/(pH*Y))*pH + (1-alpha)*((C/(pH*Y))*c+(steadyI/(pH*Y))*ir+epsilong)-chi*((alphastar * Ystar)/(pH * Y))*epsilonrstar;
e = e(+1) - rb(+1) + phi(+1) + taub + epsilonrstar + (varsigma + zetab) * mu + epsilonkappa + varpi * hatbstar;
hatbstar = (1/beta) * hatbstar(-1) - ((Pb * Bstar)/(pH * Y)) * taub + (alpha/(1-alpha))*(pH + y)-(e+(alpha/(1-alpha))*pH - (chi/(1-alpha))*epsilonrstar)*((alphastar * Ystar)/(pH * Y)) + hatx - (1/beta) * hatx(-1);
Y = ((1-alpha)/pH)*(C+I+(iota/2)*(((I/steadyI) - 1)^2)*I + pH * Y * epsilong) + alphastar * ((e^epsilonrstar)^(-chi)) * (ystar/pH);

// Log-linearized Financial Block Equations

rln - pi = beta * (1-delta) * pln - pln(-1);
rb - pi = beta * pb - pb(-1);
zetaln * mu = rln(+1) - pi(+1) - tauln - r - pH(+1) + pH;
zetab * mu = rb(+1)-pi(+1) - r - pH(+1) +pH;
nu = mu + sigma * nu(+1);
n = sigma * (1-delta) * ((Pln * K)/N)*pl + sigma * ((Pb * B)/N)*pb;
hatbg = varrho * hatbg(-1) + epsilong;
0 = 1 - zetaln * ((Pln * K)/N) - zetab * ((Pb * B)/N) + nu + n - zetaln * ((Pln * K)/N)*(pln+k) - zetab * ((Pb * B)/N)*pb - zetab * ((PH*Y)/N)*(hatbg-hatbstar-hatbc)

end;
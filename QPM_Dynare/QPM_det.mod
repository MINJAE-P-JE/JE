
var L_GDP L_GDP_GAP L_GDP_BAR DLA_GDP_BAR MCI;
var L_CPI DLA_CPI E_DLA_CPI D4L_CPI D4L_CPI_TAR RMC;
var RS RSNEUTRAL RR RR_GAP RR_BAR;
var L_S PREM L_Z L_Z_GAP L_Z_BAR DLA_Z_BAR;
var L_GDP_RW_GAP RS_RW RR_RW_BAR L_CPI_RW DLA_CPI_RW;

parameters b1 b2 b3 b4 a1 a2 a3 e1 g1 g2 g3;
parameters rho_D4L_CPI_TAR rho_DLA_Z_BAR rho_RR_BAR rho_DLA_GDP_BAR rho_L_GDP_RW_GAP rho_RS_RW rho_DLA_CPI_RW rho_RR_RW_BAR;
parameters ss_D4L_CPI_TAR ss_DLA_Z_BAR ss_RR_BAR ss_DLA_GDP_BAR ss_DLA_CPI_RW ss_RR_RW_BAR;

ss_DLA_GDP_BAR = 2.5;
ss_D4L_CPI_TAR = 2; 
ss_RR_BAR = 0.5; 
ss_DLA_Z_BAR = -1.5; 
ss_DLA_CPI_RW = 2;
ss_RR_RW_BAR = 0.75;

a1 = 0.7;
a2 = 0.2;
a3 = 0.7;
b1 = 0.8;
b2 = 0.3;
b3 = 0.5;
b4 = 0.7;
e1 = 0.4;
g1 = 0.7;
g2 = 0.5;
g3 = 0.5;

rho_D4L_CPI_TAR = 0.5; 
rho_DLA_Z_BAR   = 0.8;
rho_DLA_GDP_BAR = 0.8;
rho_RR_BAR      = 0.8;
rho_RR_RW_BAR   = 0.8;
rho_L_GDP_RW_GAP = 0.8;
rho_RS_RW      = 0.8;
rho_DLA_CPI_RW = 0.8;


model;

L_GDP_GAP = b1*L_GDP_GAP(-1) - b2*MCI + b3*L_GDP_RW_GAP;
MCI = b4*RR_GAP + (1-b4)*(-L_Z_GAP);

DLA_CPI =  a1*DLA_CPI(-1) + (1-a1)*DLA_CPI(+1) + a2*RMC;
RMC = a3*L_GDP_GAP + (1-a3)*L_Z_GAP;
E_DLA_CPI = DLA_CPI(+1);

RS = g1*RS(-1) + (1-g1)*(RSNEUTRAL + g2*(D4L_CPI(+4) - D4L_CPI_TAR(+4)) + g3*L_GDP_GAP);
RSNEUTRAL = RR_BAR + D4L_CPI(+1);

L_S = (1-e1)*L_S(+1) + e1*(L_S(-1) + 2/4*(D4L_CPI_TAR - ss_DLA_CPI_RW + DLA_Z_BAR)) + (- RS + RS_RW + PREM)/4;

RR  = RS - D4L_CPI(+1);
L_Z = L_S + L_CPI_RW - L_CPI;

L_CPI 	= L_CPI(-1) + DLA_CPI/4;
L_Z_BAR = L_Z_BAR(-1) + DLA_Z_BAR/4;
D4L_CPI = 4*(L_CPI - L_CPI(-1)); 
L_GDP_BAR = L_GDP_BAR(-1) + DLA_GDP_BAR/4;

L_GDP 	= L_GDP_GAP + L_GDP_BAR;
RR 	= RR_BAR + RR_GAP; 
L_Z 	= L_Z_GAP + L_Z_BAR; 

DLA_GDP_BAR = rho_DLA_GDP_BAR*DLA_GDP_BAR(-1) + (1-rho_DLA_GDP_BAR)*ss_DLA_GDP_BAR;
D4L_CPI_TAR = rho_D4L_CPI_TAR*D4L_CPI_TAR(-1) + (1-rho_D4L_CPI_TAR)*ss_D4L_CPI_TAR;
DLA_Z_BAR   = rho_DLA_Z_BAR*DLA_Z_BAR(-1) + (1-rho_DLA_Z_BAR)*ss_DLA_Z_BAR;
RR_BAR      = rho_RR_BAR*RR_BAR(-1) + (1-rho_RR_BAR)*ss_RR_BAR;
DLA_Z_BAR(+1) = RR_BAR - RR_RW_BAR - PREM;

L_GDP_RW_GAP = rho_L_GDP_RW_GAP*L_GDP_RW_GAP(-1);
RS_RW        = rho_RS_RW*RS_RW(-1) + (1-rho_RS_RW)*(RR_RW_BAR + DLA_CPI_RW);
DLA_CPI_RW   = rho_DLA_CPI_RW*DLA_CPI_RW(-1) + (1-rho_DLA_CPI_RW)*ss_DLA_CPI_RW;
RR_RW_BAR    = rho_RR_RW_BAR*RR_RW_BAR(-1) + (1-rho_RR_RW_BAR)*ss_RR_RW_BAR;
L_CPI_RW     = L_CPI_RW(-1) + DLA_CPI_RW/4; 

end;

steady(solve_algo = 1, tolf = 1);
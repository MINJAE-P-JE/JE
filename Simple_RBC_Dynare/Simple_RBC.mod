
%% Tutorial_RBC_Simple_Code

%% 1. Defining Variables
var y c k i l y_l z;
varexo e;
parameters beta psi delta alpha rho;

%% 2. Calibration
alpha = 0.33;
beta = 0.99;
delta = 0.023;
psi = 1.75;
rho = 0.95;
sigma = (0.007/(1-alpha));

%% 3. Model
model;

    (1/c)= beta * (1/c(+1)) * (1+alpha * (k^(alpha-1)) * (exp(z(+1)) * l(+1))^ (1-alpha)-delta);

    psi * c/(1-l) = (1-alpha) * (k(-1)^ alpha) * (exp(z)^(1-alpha)) * (l^(-alpha));

    c+i = y;

    y = (k(-1)^alpha) * (exp(z) * l) ^ (1-alpha);

    i = k - (1-delta) * k(-1);

    y_l = y/l;

    z = rho * z(-1)+e;

end; 

%% 4. Computation

initval;
    k = 9;
    c = 0.76;
    l = 0.3;
    z = 0;
    e = 0;
end;

shocks;
    var e = sigma^2;
end;

steady;
stoch_simul(hp_filter = 1600,order = 1);

%% 5. Some Results

statistic1 = 100 * (sqrt(diag(oo_.var(1:6,1:6)))./oo_.mean1:6);
table('Relative standard devitaions in %', strvcat('VARIABLE','REL.S.D.'),lgy_(1:6,:),statistic1, 10, 8, 4)
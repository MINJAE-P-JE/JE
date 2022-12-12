 
var c k;
varexo A;

parameters alpha beta delta sigma;

alpha = 0.3;
beta = 0.98;
delta = 0.025;
sigma = 2;

model;

c^(-sigma) = beta*c(+1)^(-sigma)*(alpha*A(+1)*k^(alpha-1)+1-delta);
c+k = A * k(-1)^alpha + (1-delta) * k(-1);

end;

steady_state_model;

k = ((1-beta * (1-delta))/(beta * alpha * A))^(1/(alpha-1));
c = A * k^alpha - delta * k;

end;

initval;

A = 1;

end;

steady;
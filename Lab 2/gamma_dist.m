function g = gamma_dist(Params,Xg)
A = Params(1);
B = Params(2);
g = (Xg.^A.*exp(-Xg./B))./(B^(A+1)*gamma(A+1));
end
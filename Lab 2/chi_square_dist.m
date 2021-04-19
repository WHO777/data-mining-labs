function chi = chi_square_dist(n,Xc)
chi = (Xc.^(n/2-1).*exp(-Xc/2))/(2^(n/2)*gamma(n/2));
end
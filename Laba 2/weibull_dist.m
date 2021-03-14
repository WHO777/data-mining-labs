function w = weibull_dist(params,Xw)
a = params(1);
b = params(2);
w = a*b*Xw.^(b-1).*exp(-a*Xw.^b);
end
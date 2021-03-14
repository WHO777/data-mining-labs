function x = norm2(params,Xn)
m = params(1);
d = params(2);
x = 1/(d*sqrt(2*pi))*exp(-(((Xn-m).^2)./(2*(d^2))));
end
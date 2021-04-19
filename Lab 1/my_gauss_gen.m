function [x] = my_gauss_gen(m, D, N)
x = randn(N, 1).*sqrt(D) + m;
end
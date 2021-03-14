m = 0;
D = 4;
N = 100000;
k = 30;
Y = my_gauss_gen(m, D, N);
x = -4*sqrt(D)+m : 8*sqrt(D)/(k-1) : 4*sqrt(D)+m;
size(x)
bincounts = histc(Y,x);
bar(x,bincounts);
X = -8:0.1:8;
Y = -8:0.1:8;
[X,Y] = meshgrid(X,Y);

figure(1)
mesh(X,Y,F(X,Y));

figure(2)
surface(X,Y,F(X,Y));

N = 10000;
[c,value] = st_search(N)

T0 = 1e-10;
T = 100;
v = 0.99;
X0 = [rand(1);rand(1)];
[c,value] = annealing(T0,T,v,X0)

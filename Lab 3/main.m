X = load('data7.txt');
s = size(X);

X_s = normalize(X);
R = ((X_s')*X_s)/(s(1)-1);
[A,L] = eig(R);
L = rot90(L,2);
d = get_d(R,X)
chi2 = chi2inv(0.99,s(2)*(s(2)-1)/2)
Z = fliplr(X_s*A);

sum_disp_Z = sum_var(Z)
sum_disp_X = sum_var(X_s)
scatter_j = get_scatter_j(Z)
scatter_i = get_scatter_i(Z)
covMatrix_Z = (Z'*Z)/(s(1)-1);
figure(3);
scatter(Z(:,1),Z(:,2),30,'r','filled','o')
grid on;




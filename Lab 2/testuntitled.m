data = load('data12.txt');
xk = data(:,1);
yk = data(:,2);
sdk = data(:,3);
k_var = 100;

% #1 Weibull distribution
beta = [1;1];
[coeff,r,J,cov_matrix] = nlinfit(xk, yk, @norm2, beta);
los = loss(xk,yk,coeff,sdk,@norm2);
Y = norm2(coeff,xk);
Rk = taken_balance_chart(xk,yk,coeff,sdk,@norm2);
Ak = auto_correlation(Rk,k_var);
auto_conf_intervals_1 = nlparci(coeff,r,'covar',cov_matrix,'alpha',0.32)
me_conf_intefvals_1 = get_intervals(coeff,cov_matrix,68)
figure(1);
grath(xk,Rk,'Взвешенные остатки#1','x','Rk');
figure(2);
grath(0:k_var-1,Ak,['Авто-корреляционная функция ' ...
                    'взвешенных остатков#1'],'k','Ak');
figure(3);
grath(xk,yk,'weibull distribution','x','f');
hold on;
plot(xk,Y);
legend('y','f(x,teta)');
format = 'Loss = %3.4f';
str = sprintf(format,los);
text(0.1,0.2,str);
hold off;
data = load('data7.txt');
xk = data(:,1);
yk = data(:,2);
sdk = data(:,3);
k_var = 100;

% #1 Weibull distribution
beta = [1;1];
[coeff,r,J,cov_matrix] = nlinfit(xk, yk, @weibull_dist, beta);
los = loss(xk,yk,coeff,sdk,@weibull_dist);
Y = weibull_dist(coeff,xk);
Rk = taken_balance_chart(xk,yk,coeff,sdk,@weibull_dist);
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

% #2 Gamma distribution
beta = [1;1];
[coeff,r,J,cov_matrix] = nlinfit(xk, yk, @gamma_dist, beta);
los = loss(xk,yk,coeff,sdk,@gamma_dist);
Y = gamma_dist(coeff,xk);
Rk = taken_balance_chart(xk,yk,coeff,sdk,@gamma_dist);
Ak = auto_correlation(r,k_var);
auto_conf_intervals_2 = nlparci(coeff,r,'covar',cov_matrix,'alpha',0.32);
me_conf_intefvals_2 = get_intervals(coeff,cov_matrix,68);
figure(4);
grath(xk,Rk,'Взвешенные остатки#2','x','Rk');
figure(5);
grath(0:k_var-1,Ak,['Авто-корреляционная функция ' ...
                    'взвешенных остатков#2'],'k','Ak');
figure(6);
grath(xk,yk,'Gamma distribution','x','f');
hold on;
plot(xk,Y);
legend('y','f(x,teta)');
format = 'Loss = %3.4f';
str = sprintf(format,los);
text(0.1,0.2,str);
hold off;

% #3 Chi-square distribution
beta = [4];
[coeff,r,J,cov_matrix] = nlinfit(xk, yk, @chi_square_dist, beta);
los = loss(xk,yk,coeff,sdk,@chi_square_dist);
Y = chi_square_dist(coeff,xk);
Rk = taken_balance_chart(xk,yk,coeff,sdk,@chi_square_dist);
Ak = auto_correlation(r,k_var);
auto_conf_intervals_3 = nlparci(coeff,r,'covar',cov_matrix,'alpha',0.32);
me_conf_intefvals_3 = get_intervals(coeff,cov_matrix,68);
figure(7);
grath(xk,Rk,'Взвешенные остатки#3','x','Rk');
figure(8);
grath(0:k_var-1,Ak,['Авто-корреляционная функция ' ...
                    'взвешенных остатков#3'],'k','Ak');
figure(9);
grath(xk,yk,'chi-square distribution','x','f');
hold on;
plot(xk,Y);
legend('y','f(x,teta)');
format = 'Loss = %3.4f';
str = sprintf(format,los);
text(0.1,0.2,str);
hold off;
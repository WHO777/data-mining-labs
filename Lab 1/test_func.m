X_left=-2;
X_right=2;
Y_left=-3;
Y_right=3;
N=1000;
[X,Y] = func(X_left, X_right, Y_left, Y_right, N);
plot(X,Y,'*')
BinNumber = 20;
k = 0:BinNumber
X_bins=X_left + k*(X_right -X_left)/BinNumber;
Y_bins=Y_left + k*(Y_right -Y_left)/BinNumber;
N_X= histc(X,X_bins);
N_Y= histc(Y,Y_bins);
figure;
bar(X_bins, N_X);
title('Hist#1')
xlabel('')
figure;
bar(Y_bins, N_Y);
title('Hist2')
xlabel('')
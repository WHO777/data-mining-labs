m = [2 2 3 4 7;
     4 2 3 4 5; 
     3 2 3 4 5];
b = [1; 1; 1];
c = [m,b];
c(1,:) = [];
c(:,6) = [];
row = m(1,:);
j = zeros(2,3,3);

C = [1 2 3 4 5; 
     2 3 4 5 6;
     3 4 5 6 7; 
     4 5 6 7 8; 
     5 6 7 8 9]
minS = min(C,[],1)
minR = min(C,[],2)
minAll = min(C,[],'all')

A = [1 3 4; 
     5 6 7; 
     3 5 1];
B = [5;
     6;
     7];
X1 = inv(A)*B;
X2 = A^(-1)*B;

x = 0:0.1:10;
y = sin(x);
plot(x,y)
grid on;
title('Function sin(x)')
xlabel('x')
ylabel('sin(x)')
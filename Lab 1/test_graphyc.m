x = 0:0.1:10;
y = sin(x);
plot(x,y);
grid on;
title('Function sin(x)');
xlabel('x');
ylabel('sin(x)');
print -dtiff -r200 Graph
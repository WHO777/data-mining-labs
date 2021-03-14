function f = F(x,y)
A = 2;
B = 6;
f = (x.^2 + y.^2)/A - B*(cos(x)+cos(y));
end
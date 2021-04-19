function loss = loss(x,y,param,sd,func)
loss = 0;
dim = size(param);
for k = 1:size(x)
    loss = loss + ((func(param,x(k)) - y(k))/sd(k))^2;
end
loss = loss / (k - dim(1) - 1);

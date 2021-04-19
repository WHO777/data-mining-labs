function [c,value] = st_search(N)
X_i = [(-8+(8+8)*rand(1,N));(-8+(8+8)*rand(1,N))];
F_i = F(X_i(1,:),X_i(2,:));
[value,arg] = min(F_i);
c = X_i(:,arg);
end
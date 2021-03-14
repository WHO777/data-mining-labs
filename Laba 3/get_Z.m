function ZZ = get_Z(A_,X_)
ss = size(X_);
ZZ = zeros(ss);
for i = 1:ss(2)
    column = A_(:,i);
    for j = 1:ss(2)
        ZZ(:,i) = ZZ(:,i) + column(j)*X_(:,j);
    end
end
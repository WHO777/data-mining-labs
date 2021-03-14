function D = get_d(R_R,X)
D = 0;
S = size(R_R);
for i = 1:(S(2))
    for j = i:S(2)
        D = D + R_R(i,j)^2;          
    end
end
D = size(X,1)*D;
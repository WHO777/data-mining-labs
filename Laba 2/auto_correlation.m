function A = auto_correlation(Rr,K)
numerator = 0;
denominator = 0;
A = zeros(1,K);
S = size(Rr);
for i = 1:K
    for j = 1:(S(1)-i+1)
        numerator = numerator + Rr(j)*Rr(j+i-1);
    end
    for c = 1:S(1)
        denominator = denominator + Rr(c)^2;
    end
    A(i) = (S(1)*numerator)/((S(1)-i+1)*denominator);
    numerator = 0;
    denominator = 0;
end
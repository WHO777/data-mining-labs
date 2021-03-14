function scatter1 = get_scatter_j(Z1)
size_Z1 = size(Z1);
denominator1 = sum_var(Z1);
scatter1 = zeros(1,size_Z1(2));
for i = 1:size_Z1(2)
    scatter1(i) = var(Z1(:,i))/denominator1;
end
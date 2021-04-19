function scatter2 = get_scatter_i(Z2)
size_Z2 = size(Z2);
denominator2 = sum_var(Z2);
scatter2 = zeros(1,size_Z2(2));
for i = 1:size_Z2(2)
    scatter2(i) = sum_var(Z2)/denominator2;
    Z2(:,(size_Z2(2)-i+1)) = [];
end
scatter2 = fliplr(scatter2);
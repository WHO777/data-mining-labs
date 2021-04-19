function disp = sum_var(matrix)
disp = 0;
SIZE = size(matrix);
for i = 1:SIZE(2)
    disp = disp + var(matrix(:,i));
end
k = 5;
m = 5;
%Q = zeros(i,j);
for i = 1:5
    for j = 1:5
        Q(i,j) = rand();
    end
end
disp(Q)

summ = 0;
for i = 1:5
    for j = 1:5
        summ = summ + Q(i,j);
    end
end
disp(summ)
function loss = loss_func(coef,data,cluster)
N = size(unique(cluster),1);
loss = 0;
for i = 1:N
    answer = find(cluster == i);
    indexes = zeros(1,size(answer,1));
    for k = 1:size(indexes,2)
        indexes(k) = answer(k);
    end
    for j = indexes
        loss = loss + pdist([data(j,:);coef(:,:,i)])^2;
    end
end
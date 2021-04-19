function Q3 = Q3(U, X)
    Q3 = 0;
    num_clusters = size(unique(U(:, 1)), 1);
    for i = 1:num_clusters
        Q3 = Q3 + sum(pdist(X(U == i, :), 'minkowski', 4));
    end
end


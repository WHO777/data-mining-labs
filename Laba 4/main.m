data = load('data7.txt');

loss = ["euclidean", "mahalanobis", "chebychev"];
method = ["complete", "average", "centroid"];
K = zeros(size(loss));
for i = 1:3
    for j = 1:3
        D = pdist(data, loss(j));
        square_form = squareform(D);
        Z = linkage(square_form, method(i));
        K(i,j) = cophenet(Z, D);
    end
end
Z
K
[~, arg] = max(mean(K, 2));
best_method = method(arg)
[~, arg] = min(mean(K, 2));
worst_method = method(arg)
[~, arg] = max(mean(K, 1));
best_loss = loss(arg)
[~, arg] = min(mean(K, 1));
worst_loss = loss(arg)

best_model = linkage(squareform(pdist(data, best_loss)), best_method);
dendrogram(best_model);

s = cluster(best_model, 'Cutoff',2, 'Criterion', 'distance');
num_clusters = size(unique(s),1);
clusters = zeros(6,2,num_clusters);
centers = zeros(num_clusters,2);
in_disp = zeros(num_clusters,2);
distance = zeros(6,4);
for i = 1:num_clusters
    clusters(:,:,i) = data(s == i,:);
    centers(i,:) = mean(clusters(:,:,i));
    in_disp(i,:) = var(clusters(:,:,i));
    help = pdist([centers(i,:);clusters(:,:,i)]);
    distance(:,i) = help(1:6);
end
dist_of_c = pdist(centers);
in_disp;
distance;

figure(2);
gscatter(data(:,1), data(:,2), s);
hold on;
plot(centers(:,1),centers(:,2),'h','MarkerSize',7,'MarkerEdgeColor','k',...
    'MarkerFaceColor', 'k','DisplayName','centers');
hold off;










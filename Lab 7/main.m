x = load('Learning_data7.txt');
x = transpose(x);

net = selforgmap([2 2]);
net.trainParam.epochs = 100;
net = train(net, x);

y = net(x);
classes = vec2ind(y);
classes = transpose(classes);

x_pca = load('PCA_data7.txt');
gscatter(x_pca(:, 1), x_pca(:, 2), classes);

num_clusters = size(unique(classes), 1);
means = zeros(num_clusters, size(x, 1));
for i = 1:num_clusters
    means(i, :) = mean(x(:, classes == i), 2);
end

for i = 1:num_clusters
    subplot(2,2,i); 
    plot(0:size(x, 1)-1, means(i, :))
    format = 'Cluster #%.0f';
    str = sprintf(format,i);
    subtitle(str)
    
    format = 'Cluster #%.0f';
    str = sprintf(format,i)
    'Z1'
    transpose(x_pca(classes == i, 1))
    'Z2'
    transpose(x_pca(classes == i, 2))
end

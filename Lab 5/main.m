X = load('data7.txt');
Xsize = size(X);

k = 2;
centers = zeros(k,2);
for i = 1:k
    c = randi([1 Xsize(1)]);
    j = 1;
    while(j <= k)
        if X(c,:) == centers(j,:)
            c = randi([1 Xsize(1)]);
            j = 1;
        end
        j = j + 1;
    end
    centers(i,:) = X(c,:);
end
%plot(X(:,1),X(:,2),'*','color','r')
distance = zeros(1,k);
U = zeros(size(X));

Q_1 = 1;
Q = 0;

while(Q ~= Q_1)
    for i = 1: Xsize(1)
        for j = 1:k
        distance(j) = pdist([centers(j,:);X(i,:)],'minkowski',4);
        end
        [value,arg] = min(distance);
        U(i,:) = [arg,distance(arg)];
    end
    Q_1 = Q;
    for q = 1:k
        x = X(U(:,1) == q,:);
        x_mean = mean(x);
        centers(q,:) = x_mean;
    end
    Q = sum(U(:,2))
end
gscatter(X(:,1), X(:,2), U(:,1));
hold on;
plot(centers(:,1),centers(:,2),'h','MarkerSize',7,'MarkerEdgeColor','k',...
    'MarkerFaceColor', 'k','DisplayName','centers');
hold off;
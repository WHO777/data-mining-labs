function norm_data = normalize(data)
siz = size(data);
norm_data = zeros(siz);
for i = 1:siz(2)
    expected_value = mean(data(:,i));
    std = sqrt(var(data(:,i)));
    norm_data(:,i) = (data(:,i)-expected_value)/std;
end

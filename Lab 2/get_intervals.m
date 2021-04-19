function intervals = get_intervals(coefficients, cov, percent)
sizes = size(coefficients);
intervals = zeros(sizes(1),2*sizes(2));
for i = 1:sizes(1)
    intervals(i,:) = [coefficients(i)+tinv((1-percent/100)/2,199)*sqrt(cov(i,i)); ...
                     coefficients(i)+tinv(1-((1-percent/100)/2),199)*sqrt(cov(i,i))];
end
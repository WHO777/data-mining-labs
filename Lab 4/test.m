data = load('data7.txt');
size(data)
D = pdist(data, "chebychev");
size(D)
square_form = squareform(D);
size(square_form)
Z = linkage(square_form, "complete")
size(Z)
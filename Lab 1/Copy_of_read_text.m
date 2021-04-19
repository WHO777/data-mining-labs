file = fopen('test.txt','r');
str = fgetl(file)
M = fscanf(file,'%f', [3 4])
M = M'
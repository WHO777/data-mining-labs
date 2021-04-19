file = fopen('test.txt','r');
str = fgetl(file)
M = fscanf(file,'%g %G %g %g', [3 3])
fclose(file)
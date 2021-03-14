file = fopen('test.txt', 'wt');
str = 'write';
M = [1 1 1;
     2 2 2;
     3 3 3;
     4 4 4];
fprintf(file,'%s\n',str);
fprintf(file,'%3.2f %3.2f %3.2f\n',M');
fclose(file);


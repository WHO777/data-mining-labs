Lx=-5;
Rx=5;  
stepx=0.05; 
Ly=-5; 
Ry=5; 
stepy=0.05; 
xs=Lx:stepx:Rx;
ys=Ly:stepy:Ry;
[X,Y] = meshgrid(xs,ys); 
Z = vrosenbrock(X,Y); 
surfc(xs,ys,Z)
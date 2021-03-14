function [X,Y] = func(X_left, X_right, Y_left, Y_right, N)
X=X_left + rand(N,1)*(X_right -X_left); 
Y=Y_left + rand(N,1)*(Y_right -Y_left); 
end
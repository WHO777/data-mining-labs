function [c,value] = annealing(T0,T,v,xk)
skip = false;
while(1)
    x = xk + randn(2,1)*T;
    while(~all(((-8 < x) & (x < 8))))
        x = xk + randn(2,1)*T;
    end
    dE = F(x(1,:),x(2,:)) - F(xk(1,:),xk(2,:));
    if(dE < 0)
        xk = x;
        skip = true;
    end
    while(~skip)
        P = exp(-dE/T);
        if(rand(1) < P)
            xk = x;
        else
            T = v*T;
        end
        skip = true;
    end
    if(T < T0)
       c = x;
       value = F(x(1,:),x(2,:));
       break
    end
    skip = false;
end
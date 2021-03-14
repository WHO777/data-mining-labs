function R = taken_balance_chart(Xk,Yk,teta,SD,Function)
R =(Yk - Function(teta,Xk))./SD;
end
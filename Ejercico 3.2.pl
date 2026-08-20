% Caso base: lista vacía o con un solo punto -> distancia 0
distan(X1,X2,Y1,Y2,Res):-
    DX is X2-X1,
    DY is Y2-Y1,
    Dis is (DX)**2+(DY)**2,
    Res is sqrt(Dis).

distancia_total([], 0).
distancia_total([_], 0).
distancia_total([p(X1,Y1),p(X2,Y2) | Resto], Tot):-
    distan(X1,X2,Y1,Y2,Dis),
    distancia_total([p(X2,Y2)|Resto],Sub),Tot is Sub+Dis.
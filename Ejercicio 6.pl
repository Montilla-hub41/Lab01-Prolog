miembro(X,[X|_]).
miembro(X,[_|Cola]):- miembro(X,Cola).

longitud([],0).
longitud([_|Cola],cont):- longitud(Cola, Cont1), Cont is Cont1 + 1.

concatenar([],L,L).
concatenar([L1|Cola],L2,[L1|L3]):- concatenar(Cola,L2,L3).

fib(0, []).
fib(1, [0]).
fib(2, [0,1]).
fib(N, Lista) :-
    N > 2,
    N1 is N - 1,
    fib(N1, L1),
    ultimos_dos(L1, A, B),
    C is A + B,
    append(L1, [C], Lista).
ultimos_dos([A,B], A, B).
ultimos_dos([_|Resto], A, B) :-
    ultimos_dos(Resto, A, B).

reverso([], []).
reverso([X|Cola], Rev) :-
    reverso(Cola, RevCola),
    append(RevCola, [X], Rev).

palindroma(L) :-
    reverso(L, L).
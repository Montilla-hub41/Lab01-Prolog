perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).
%Regla para perro
pr(X,Z):-perro(Z),dueno(X,Z).
%Regla para gato
pg(X,Z):-gato(Z),dueno(X,Z).
%Regla para ave
pa(X,Z):-ave(Z),dueno(X,Z).
%Regla para saber si una persona tiene diferentes animales
pm(X,Z,Y):-gato(Z),perro(Y),dueno(X,Z),dueno(X,Y).
pm(X,Z,Y):-gato(Z),ave(Y),dueno(X,Z),dueno(X,Y).
pm(X,Z,Y):-perro(Z),ave(Y),dueno(X,Z),dueno(X,Y).
%Regla para saber si una persona tiene perro y gato
prg(X,Z,Y):-pg(X,Z),pr(X,Y).
%Regla para persona compartida
prc(X,Y):-dueno(X,Z),dueno(Y,Z), X\=Y.
%Regla de asociación
as(X,perro):-pr(X,Y),perro(Y),write("Es perro").
as(X,gato):-pg(X,Y),gatp(Y),write("Es gato").
as(X,perro):-pa(X,Y),ave(Y),write("Es ave").
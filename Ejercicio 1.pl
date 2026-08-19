% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).
%escalas
escala(X,Z):-vuelo(X,Y),vuelo(Y,Z).
viaje(X,Z):-vuelo(X,Z).
viaje(X,Z):-escala(X,Z).
destino(X,Z):-vuelo(X,Z).

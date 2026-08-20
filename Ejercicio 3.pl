% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).
rep(X,Y):-nota(X,Y),Y<3.
apr(X,Y):-nota(X,Y),Y>=3.
ran(X,Min,Max):-nota(X,Y),X>=Min,X=<Max.

repr(X,Y):-nota(X,Y),Y<3,write("Reprobado").
apro(X,Y):-nota(X,Y),Y>=3,Y=<3.9,write("Aprobado").
not(X,Y):-nota(X,Y),Y>=4,Y=<4.4,write("Notable").
exc(X,Y):-nota(X,Y),Y>=4.5,Y=<5,write("Excelente").

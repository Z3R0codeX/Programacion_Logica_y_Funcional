jefe(mark,sheryl).
jefe(sheryl,david).
jefe(sheryl,timothy).
jefe(sheryl,mike).
jefe(sheryl,elliot).
jefe(sheryl,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

%Resulatdos
%-----------------------
%¿quien es jefe de rebeca?
%jefe(X,rebecca).

%¿es jefe mark del jefe de rebeca
%jefe(X,rebecca),jefe(mark,X).

%¿es lori jefe de alguien?
%jefe(lori,X).

%Mostrar empleados del jefe de heather
%jefe(X,heather),jefe(X,Y).

%¿es timothy jefe de rebecca?
%jefe(timothy,rebecca).

%mostrar compañeros del nivel de mike
%jefe(X,mike),jefe(X,Y).

%¿es el jefe de rebecca compañero de nivel de david?
%jefe(X,rebecca),jefe(Y,david),jefe(Y,X).

%¿es compañero de nivel mike de lori?
%jefe(X,mike),jefe(X,lori).
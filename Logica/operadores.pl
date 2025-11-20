%-- Operadores logicos ---
%suma
ejemplo_suma(X,Y,R):- R is X + Y.

%resta
resta(X,Y,R):- R is X - Y.

%multiplicacion
multiplicacion(X,Y,R):- R is X * Y.

%division real
division_real(X,Y,R):- R is X / Y.

%division entera
division_entera(X,Y,R):- R is X div Y.

%resto de la division
resto_division(X,Y,R):- R is X mod Y.

%X elevado a Y
potencia(X,Y,R):- R is X ^ Y.

%negacion
negacion(X,R):- R is -X.

%valor absoluto
valor_absoluto(X,R):- R is abs(X).

%arco coseno
arco_coseno(X,R):- R is acos(X).

%arco seno 
arco_seno(X,R):- R is asin(X).

%arco tangente
arco_tangente(X,R):- R is atan(X).

%coseno
coseno(X,R):- R is cos(X).

%exponencial
exponencial(X,R):- R is exp(X).

%logaritmo natural 
logaritmo_natural(X,R):- R is ln(X).

%logaritmo base 2
logaritmo_base2(X,R):- R is log(X)/log(2).

%seno
seno(X,R):- R is sin(X).

%raiz cuadrada
raiz_cuadrada(X,R):- R is sqrt(X).

%tangente
tangente(X,R):- R is tan(X).

%redondeo con N decimales
redondeo(X,N,R):- Factor is 10^N, R is round(X * Factor) / Factor.



%--- Operadores de comparacion ---
%X es menor que Y
menor_que(X,Y):- X < Y.

%X es mayor que Y
mayor_que(X,Y):- X > Y.

%X es menor o igual que Y  
menor_o_igual_que(X,Y):- X =< Y.

%X es mayor o igual que Y
mayor_o_igual_que(X,Y):- X >= Y.

%X es igual que Y
igual_que(X,Y):- X = Y.

%X es diferente que Y
diferente_que(X,Y):- X \= Y.



%--- Comparacion de expresiones ---
%la expresion X es igual a la expresion Y
expresion_igual(X,Y):- X =:= Y.

%la expresion X es diferente a la expresion Y
expresion_diferente(X,Y):- X =\= Y.

%X es menor que Y
expresion_menor(X,Y):- X @< Y.

%X es mayor que Y
expresion_mayor(X,Y):- X @> Y.

%X es menor o igual que Y  
expresion_menor_o_igual(X,Y):- X @=< Y.

%X es mayor o igual que Y
expresion_mayor_o_igual(X,Y):- X @>= Y.
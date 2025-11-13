nivel(hominoidea,superfamily).
nivel(hominidae,family).
nivel(hylobatidae,family).
nivel(ponginae,subfamily).
nivel(homininae,subfamily).
nivel(hominini,tribe).
nivel(gorillini,tribe).
nivel(homo,genus).
nivel(pan,genus).
nivel(gorilla,genus).
nivel(pongo,genus).
nivel(hylobates,genus).
 
 
 
familia(hominoidea,hominidae).
familia(hominoidea,hylobatidae).
 
familia(hominidae,homininae).
familia(hominidae,ponginae).
 
familia(homininae,hominini).
familia(homininae,gorillini).
 
familia(ponginae,pongo).
 
familia(hominini,homo).
familia(hominini,pan).
 
familia(gorillini,gorilla).
 
familia(hylobatidae,hylobates).
 
familia(homo,human).
 
familia(pan,bonobo).
familia(pan,chimpanzee).
 
familia(gorilla,gorilla2).
 
familia(pongo,orangutan).
 
familia(hylobates,gibbon).
 
%1. ¿Es el gorila descendiente de Hominini?
%familia(hominini,gorilla).
 
%2. ¿Es el Homo hermano del gorila?
hermano(X,Y):- familia(Z,X), familia(Z,Y).
 
%3. ¿Son el Homo y el Gorilla de la misma subfamilia?
subfamilia(X,Y):- familia(Z,X), familia(W,Y), familia(A,Z), familia(A,W), nivel(A,subfamily).
 
%4. ¿Tiene Hominini la misma familia que Pongo?
fam(X,Y):- nivel(X,Z), nivel(Y,Z).
 
%5. ¿Quiénes son los descendientes directos de una tribu?
%nivel(X,tribe),familia(X,Y)
 
%6. ¿Cuál es la superfamilia a la que pertenece Hylobates?
%familia(X,hylobates), familia(Y,X), nivel(Y,Z).
 
%7. ¿Qué géneros comparten la misma subfamilia con Pan?
%subfamilia(pan,X).

%8. ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?
%familia(Z,X), familia(W,Y), familia(A,Z), familia(A,W).

%9. ¿Es el orangután un homínido?
hominido(A):- familia(X,A), familia(Y,X), familia(hominidae,Y).

%10. ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?
%familia(hominidae,Y), familia(Y,X), familia(X,Z), familia(Z,Especies).

%11. ¿Qué géneros son hermanos taxonómicos de Homo?
%familia(Z,homo), familia(Z,Y).

%12. ¿Comparten Homo y Hylobates la misma familia?
%fam(homo,hylobates).

%13. ¿Cuáles son los descendientes directos de la subfamilia Homininae?
%familia(homininae,X).

%14. ¿Qué géneros están bajo la familia Hominidae?
%familia(hominidae,Y), familia(Y,X), familia(X,Z).

%15. ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?
%familia(A,homo), familia(B,A), familia(C,B), familia(D,C).



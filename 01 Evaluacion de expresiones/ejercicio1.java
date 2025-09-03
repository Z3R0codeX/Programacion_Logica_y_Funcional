
//Expresion 1
int x = 10;
int b = 10;
System.out.println(x++); //Primero imprime, despues suma
//R=10

//Expresion 2
int x = 10;
int b = 10;
System.out.println(++x);//Primero suma, luego imprime
//R=11

//Expresion 3
int x = 10;
int b = 10;
b++ * 3 == -3 % x ++;
//correccion
System.out.println((b++ * 3)==(-3 % x++));
(b++ * 3)//= 30
(-3 % x++)//-3
(30)==(-3)//false

//Expresion 4
int x = 10;
int b = 10;
System.out.println((30 - 10) / ((++b + 30) % (7 *2)));



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
//
System.out.println((b++ * 3)==(-3 % x++));
(b++ * 3)//= 30
(-3 % x++)//-3
(30)==(-3)//false

//Expresion 4
int x = 10;
int b = 10;
System.out.println((30 - 10) /= ((++b + 30) % (7 *2)));
//
double j = (30-10);
System.out.println(j/= ((++b + 30) % (7 *2)));
//R=1.5384615384615385

//Expresion 5
int x = 10;
int b = 10;
x =  -50 * x++ * 80 % b / 4 *=8
//
x = ((-50 * x++ * 80) % b / 4) * 8;//=0

//Expresion 6
int x = 10;
int b = 10;
b *= x++ - 8 + 3 - 5 / 4 % -3 + 8;
//
b*=(10 - 8 + 3 - ((5 / 4)% - 3 )+ 8);
b*=(5 - (1 % 3) + 8);
b*=(5 - 1 + 8);
b*=12; //=120

//Expresion 7
int x = 10;
int b = 10;
x = b * = 50 / 30 * ++x + 80;
//
x = (b*=((50 / 30) * (++x + 80)));//=910

//Expresion 8
int x = 10;
int b = 10;
++x % 20.2 == -x /= b % = --x
//
double j= x % 20.2;
x = -x;
x /= b;
b %= --x;
boolean i = (j == x);// false

//Expresion 9
int x = 10;
int b = 10;
1 *= b++ * b-- / 3 % ++b *= 10 + 1;
//
  int a = 3 % b++;
        a *= (10+1);
        int z = (b++ * b--);
        int f =1;
        System.out.println(f*=(z / a));//=4

//Expresion 10
int x = 10;
int b = 10;
-10 * -0 *= -10 *=x++ + x+=x*x ;
//
int a = (-10 * -0);
a *= -10;
a *= x++;
a = a + x;
z= x*x;
a += z;//=132

//Expresion 11
int x = 10;
int b = 10;
a * b == b++ + b-- + --b + x++ + x--;
//
int a = 0;
a * b == b++ + b-- + --b + x++ + x--; //depende del valor de a, en este caso false
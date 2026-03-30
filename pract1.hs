
x &% y = 10*x+y  
suma x y = x+y

doble::Int -> Int
doble x = 2*x
sumar x y z = x+y+z
primero::(a,b)->a
primero (x,y)  = x
ejemplo = primero (doble,5)
aplicar f x = f x

fun x = x+x+x+x+x
fun1 x = 5*x
------Definicion de funciones por combinacion
areaCuadrado x = x*x
areaTriangulo b a = b*a
cuadrado x = x*x
----Funciones expresion IF----
--Definir una funcion que reciba dos numeros
-- y devuelva el mayor--
mayor x y = if x>y
                then x
                else y
--mayor de 3 num
mayorDeTres x y z =
    if x>y && x>z
         then x
         else if y>z 
            then y 
            else z
mayorDeTres2 x y z = mayor x (mayor y z)
{--
Ejer9 def una f que reciba 2 numeros y una f 
de orden y devuelva true si los numeros
--obedecen a esa funcion
EJEMPLOS:
main> ejer9 2 3 (>)
False
main> ejer9 2 3 (<)
True
ejer9 n1 n2 f = f n1 n2
--}
ejer9 n1 n2 f = f n1 n2
 
miFunOrden x y = 2*x == y
--Por distincion de casos
mayor3 x y  |x>y = x
            |otherwise = y
mayor2 x y  |x>y = x
            |x<=y = y
literal n 
    |n==0 = "cero"
    |n==1 = "Uno"
    |otherwise="noo esta definido"

aniosTranscurridos (d1,m1,a1) (d2,m2,a2)
    |m1<m2 = a2-a1
    |m1>m2 = a2-a1-1
    |m1==m2 && d1<=d2 = a2-a1
    |otherwise = a2-a1-1
    --definicion de funciones usando patrones
aniosTranscurridos2 (d1,m1,a1) (d2,m2,a2)
    |m1<m2 || (m1==m2 && d1<=d2) = a2-a1
    |otherwise = a2-a1-1
--expresion case
sgteVocal v = 
    case v of
        'a' -> 'e'
        'e' -> 'i'
        'i' -> 'o'
        'o' -> 'u'
        'u' -> 'a'
        _ -> '?'
--exp case anidado
miAnd b1 b2 = 
    case (b1,b2) of
        (True,True) -> True
        _ -> False
--definiciones locales
{--definir una funcion que reciba
como argumento 4 notas y devuelva 
el mensaje excelente si el prom esta
entre 90 y 100
muy bien si el prom esta entre 80 y 89
bien si el prom esta entre 70 y 79
regular si el prom esta entre 51 y 69
mal si el prom esta entre 0 y 50
notas invalidas en otro caso
--}
--Definir una función que devuelva el mayor de 2 números
mayorDe2 x y = 
    if x > y then x else y

--2. Definir una función que reciba 3 números y devuelva el mayor
mayorDe3 a b c = if a>b 
                    then a 
                    else if b>c
                            then b 
                            else if c>b
                                then c 
                                else b

--Definir una función que reciba 4 números y devuelva el mayor

mayorDe4 a b c d = if a>b 
                    then a
                    else if b>c
                        then b
                        else if c>d
                            then c
                            else d

{--Definir una función que reciba dos exámenes parciales, un final y una segunda
instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el
caso.--}

estadoMateria p1 p2 f s2 = if (p1+p2)/2 >= 51 || f >= 51 || s2==51
                            then "Aprobado"
                            else if (p1+p2)/2>=1&&(p1+p2)/2<50|| f >=1&&f<=50 || s2>=1&&s2<=50
                                then "Reprobado"
                                else if (p1+p2)/2==0 && f==0 && s2==0
                                    then "Abandonado"
                                    else "Reprobado"

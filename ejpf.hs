--EJERCICIO 1
--1. Definir una función que reciba el lado de un cuadrado y devuelva su área.
areaCuadrado x = x*x 
--2. Definir una función que reciba la base y la altura 
--de un rectángulo y devuelva su área y su perímetro.
areaRectangulo b a = b*a 
perimetroRectangulo b a = 2*b+2*a

--3. Definir una función que reciba 2 números y devuelva 
--verdad si el primero es mayor que el segundo.
mayor2num x y = if x > y then True else False
--4. Definir una función que reciba un número y retorne 
--verdad si este es múltiplo de 2.
multiplo2 n = n `mod` 2 == 0
--5. Definir una función que reciba un número y devuelva 
--verdad si este es múltiplo de 2 y de 3 al mismo tiempo.
multiplo2y3 n = n `mod` 2 == 0 && n `mod` 3 == 0
--6. Definir una función que reciba un número y lo devuelva
--elevado a la potencia 3.
potencia3 n = n^3
--7. Definir funciones que reciban un número y lo devuelvan
--elevado a la potencia 4,8,10,32.
potencia481032 n = (n^4,n^8,n^10,n^32)
--8. Definir una función que reciba dos números y una función
-- de orden y devuelva verdad si los números obedecen 
--a la función de orden, falso en otro caso.
orden x y mayor2num = mayor2num x y

--EJERCICIO 2 (Resolver usando Expresiones if)
--1. Definir una función que devuelva el mayor de 2 números
mayor1 x y = if x>y then True else False
--2. Definir una función que reciba 3 números y 
--devuelva el mayor
mayor3num x y z = if x>y 
                    then x
                    else if y>z 
                        then y 
                        else if z>x
                            then z 
                            else x
--3. Definir una función que reciba 4 números y
-- devuelva el mayor
mayor4num w x y z = if w>x 
                        then w
                        else if x>y
                            then x
                            else if y>z
                                then y
                                else z
--10. Definir una función que reciba dos exámenes parciales,
-- un final y una segunda instancia y devuelva el mensaje 
-- “Aprobado”, “Reprobado” o “Abandono” según el caso.
materia p1 p2 fi si = if (p1+p2)/2==0 && fi==0 && si==0
                            then "Abandono,no puede dar examen SegInst"
                            else if (p1+p2)/2>=51
                                then "Aprobado"
                                else if fi >= 51 
                                    then "Aprobado"
                                    else if si >= 51
                                        then "Aprobado"
                                        else "Reprobado" 
                                           

--11. Definir una función que reciba 2 fechas y devuelva 
--la fecha mayor
fechaMayor :: Ord a => [a] -> [a] -> [a]
fechaMayor [a1,m1,d1] [a2,m2,d2] =
    max [a1,m1,d1] [a2,m2,d2]


--EJERCICIO 3 (Resolver usando Distinción de casos)
--1. Definir una función que reciba 4 número y 
--devuelva el mayor.
-- Por combinación.

-- Por distinción de casos.

--2. Definir una función que reciba una nota y 
--devuelva el mensaje “Aprobado” o “Reprobado”.

--3. Definir una función que reciba una nota 
--y devuelva el mensaje “Excelente“ si la nota
--esta entre 90-100, “Bien” si esta entre 70-89,
-- “Regular” si esta entre 51-69 y mal si esta entre 0-50.

--4. Definir una función que reciba como argumentos
-- las notas de primer parcial, segundo
--parcial, final y segunda instancia y retorne 
--el mensaje aprobado o reprobado, según el caso.

--5. Definir una función que reciba 16 números y retorne el mayor
--6. Definir una función que reciba un quebrado y devuelva verdad si este es mayor que 1
--y falso en otro caso
--7. Definir una función que reciba 2 fechas y devuelva la fecha mayor
--8. Definir una función que reciba 2 fechas y devuelva los años transcurridos
--9. Definir una función que reciba 2 fechas y devuelva los meses transcurridos
--10. Definir una función que reciba 2 fechas y devuelva los días transcurridos
--11. Definir una función que reciba 2 fechas y devuelva los días, meses y años
--transcurridos
--12. Definir una función que reciba un instante (fecha, hora) e incremente el instante en 1
--segundo.

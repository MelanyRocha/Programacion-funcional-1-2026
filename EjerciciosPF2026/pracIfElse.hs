--EJERCICIO 2 (Resolver usando Expresiones if)
--1. Definir una función que devuelva el mayor de 2 números
mayor2num x y = if x>y then x else y

--2. Definir una función que reciba 3 números y devuelva el mayor
mayor3 x y z = if x>y && x>z
                then x 
                else if y>x && y>z 
                    then y
                    else z

--3. Definir una función que reciba 4 números y devuelva el mayor
mayor4 a b c d = if a>b && a>c && a>d
                  then a
                  else if b>a && b>c && b>d
                    then b
                    else if c>a && c>b && c>d
                        then c
                        else d
--10. Definir una función que reciba dos exámenes parciales, un final y una segunda
--instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el
--caso.
estadoAcademico p1 p2 f si 
--11. Definir una función que reciba 2 fechas y devuelva la fecha mayor
fecMay @1(a1,m1,d1) @2(a2,m2,d2) 

--pp
doble x= 2*x

primero (x,y)=x

--PRÁCTICA PROGRAMACIÓN FUNCIONAL
--EJERCICIO 1
--1. Definir una función que reciba el lado de un cuadrado y devuelva su área.
areaCuadrado x= x*x
--2y3. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
areaRectangulo base altura = base*altura
perimetroRectangulo base altura = 2*altura + 2*base
--4. Definir una función que reciba 2 números y devuelva verdad si el primero es mayor
--que el segundo.
mayor1 x y = x > y

--5. Definir una función que reciba un número y retorne verdad si este es múltiplo de 2.
multiploDeDos = even
--6. Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.
multiploDeDosYTres a = even a && a `mod` 3 == 0

--7. Definir una función que reciba un número y lo devuelva elevado a la potencia 3.
potencia3 x = x ^ 3
--8. Definir funciones que reciban un número y lo devuelvan elevado a la potencia
--4,8,10,32.
potencia481032 x = [x ^ 4, x ^ 8, x ^ 10, x ^ 32]
--9. Definir una función que reciba dos números y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, falso en otro caso.
orden x y mayor1 = mayor1 x y

--EJERCICIO 2 (Resolver usando Expresiones if)
--1. Definir una función que devuelva el mayor de 2 números
mayor2 x y =  x > y
--2. Definir una función que reciba 3 números y devuelva el mayor
mayor3 x y z
  | x > y = if x > z then x else z
  | y > z = y
  | otherwise = z

--3. Definir una función que reciba 4 números y devuelva el mayor
mayor4 a b c d
  | a > b = max a c
  | b > c = b
  | c > d = c
  | otherwise = d



--10. Definir una función que reciba dos exámenes parciales, un final y una segunda
--instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el caso.
--estadoMateria p1 p2 f s =
 --   if (p1+p2 >= 51)
   --     then (if p1+p2 == 0 then "Abandonado" else (if p1+p2 <= 50 then "reprobado" else "Aprobado"))
     --   else (if f >= 51 then "Aprobado" else (if f >= 35 then "Reprobado") else (if f>=36 then s==51 else "Reprobado"))
estadoMateria :: Float -> Float -> Float -> Float -> String
estadoMateria p1 p2 f s
  | p1 + p2 + f == 0 = "Abandonado"
  | (p1 + p2) / 2 >= 51 = "Aprobado"
  | f >= 51 = "Aprobado"
  | f >= 36 = if s == 51
                    then "Aprobado"
                    else "Reprobado"
  | otherwise = "Reprobado"

--11. Definir una función que reciba 2 fechas y devuelva la fecha mayor
fechaMayor :: Ord a => [a] -> [a] -> [a]
fechaMayor [a1,m1,d1] [a2,m2,d2] =
    max [a1,m1,d1] [a2,m2,d2]

--EJERCICIO 3 (Resolver usando Distinción de casos)
--1. Definir una función que reciba 4 número y devuelva el mayor.
-- Por combinación.
--may2 = max
--may4 a b c d =
    --let mayAB = may2 a b
      --  mayCD = may2 c d
        --in may2 mayAB mayCD
-- Por distinción de casos.
--2. Definir una función que reciba una nota y devuelva el mensaje “Aprobado” o “Reprobado”.
estadoMateria2 :: Float -> Float -> String
estadoMateria2 p1 p2 =
        if (p1+p2)/2 >= 51 && (p1+p2)/2 < 100
            then "Aprobado"
            else "Reprobado"
--3. Definir una función que reciba una nota y devuelva el mensaje “Excelente“ si la nota
--esta entre 90-100, “Bien” si esta entre 70-89, “Regular” si esta entre 51-69 y mal si esta
--entre 0-50.
estadoMateria3 :: Float -> Float -> String
estadoMateria3 p1 p2
  | (p1 + p2 )/2 >= 90 || (p1 + p2)/2 == 100 = "Excelente"
  | (p1 + p2) / 2 >= 70 || (p1 + p2) / 2 == 89 = "Bien"
  | (p1 + p2) / 2 >= 51 || (p1 + p2) / 2 == 69 = "Regular"
  | otherwise = "Mal"
--4. Definir una función que reciba como argumentos las notas de primer parcial, segundo
--parcial, final y segunda instancia y retorne el mensaje aprobado o reprobado, según el caso.

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
--------------------------------------------
--dropWhile((==0).length.(takeWhile(>2))[1,7,10] => (==0)())
-- definir una funcion que reciba una lista y una pos p, y devuelva el elemento de la posicion p de la lista
-- (def. en terminos de las otras funciones)
getElem xs p = head(drop p xs)
--- obtener la columna c de una matriz
mat= [[1,2,3,4],
      [1,2,3,4],
      [1,2,3,4],
      [1,2,3,4]
     ]
getCol mss c = map (!!c) mss
--PRACTICA DE PROGRAMACION FUNCIONAL

--EJERCICIOS PARTE 1

-- 1 Definir una función que reciba el lado de un cuadrado y devuelva su área.
cuadradoArea :: Float -> Float
cuadradoArea lado = lado*lado

-- 2y3 Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
rectanguloArea :: Float -> Float -> Float
rectanguloArea base altura = base*altura
rectanguloPerimetro :: Float -> Float -> Float
rectanguloPerimetro base altura = base*2 + altura*2

-- 4 Definir una función que reciba 2 números y devuelva verdad si el primero es mayor
--que el segundo.
numMayor :: Float -> Float -> Bool
numMayor n1 n2 = n1>n2

-- 5 Definir una función que reciba un número y retorne verdad si este es múltiplo de 2.
multiploDeDos :: Int -> Bool
multiploDeDos n1 = n1 `mod` 2 == 0

-- 6 Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.
multiploDeDosYTres :: Int -> Bool
multiploDeDosYTres n1 =  multiploDeDos n1 && n1 `mod` 3 == 0

-- 7 Definir una función que reciba un número y lo devuelva elevado a la potencia 3.
potenciaTres :: Int -> Int 
potenciaTres n1 = n1^3

-- 8 Definir funciones que reciban un número y lo devuelvan elevado a la potencia
--4,8,10,32.
potenciaCuatro :: Int -> Int
potenciaCuatro n1 = n1^4

potenciaOcho :: Int -> Int
potenciaOcho n1 = n1^8

potenciaDiez :: Int -> Int
potenciaDiez n1 = n1^10

potenciaTreDos :: Int -> Int
potenciaTreDos n1 = n1^32

potencias :: Int -> (Int , Int , Int , Int )
potencias n1 = (potenciaCuatro n1, potenciaOcho n1, potenciaDiez n1, potenciaTreDos n1)

-- 9 Definir una función que reciba dos números y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, falso en otro caso.
orden :: Ord a => a -> a -> (a -> a -> Bool) -> Bool
orden x y f = f x y

mayorQue :: Ord a => a -> a -> Bool
mayorQue x y = x > y

menorQue :: Ord a => a -> a -> Bool
menorQue x y = x < y
 
-- EJERCICIOS PARTE 2 (Resolver usando Expresiones if)

-- 1 Definir una función que devuelva el mayor de 2 números
numerosMayorDos :: Int -> Int -> Int
numerosMayorDos n1 n2 =
    if n1>n2 
        then n1
        else n2

-- 2 Definir una función que reciba 3 números y devuelva el mayor
numerosMayorTres :: Int -> Int -> Int -> Int 
numerosMayorTres n1 n2 n3 =
    if n1 > n2 && n1 > n3
        then n1
        else 
            if n2 > n3
                then n2
                else n3

-- 3 Definir una función que reciba 4 números y devuelva el mayor
numerosMayorCuatro :: Int -> Int -> Int -> Int -> Int
numerosMayorCuatro n1 n2 n3 n4 =
    if n1 > n2 && n1 > n3 && n1 > n4
        then n1
        else
            if n2 > n3 && n2 > n4
                then n2
                else 
                    if n3 > n4
                        then n3
                        else n4

-- 4 Definir una función que reciba dos exámenes parciales, un final y una segunda
--instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el
--caso.
modalidad :: Float -> Float -> Float -> Float -> String
modalidad p1 p2 eF sI 
  | (promedioParls == 0) && (eF==0) && (sI==0) = "Abandonado"
  | promedioParls >= 51 = "Aprobado"
  | eF >= 51 = "Aprobado"
  | sI >= 51 = "Aprobado"
  | otherwise = "Reprobado"
  where promedioParls = (p1+p2)/2   

-- 5 Definir una función que reciba 2 fechas y devuelva la fecha mayor
fecMay::(Int,Int,Int)->(Int,Int,Int)->(Int,Int,Int)
fecMay f1@(d1, m1, a1) f2@(d2, m2, a2)
  | a1>a2 = f1
  | a2>a1 = f2
  | m2>m1 = f2
  | m1>m2 = f1
  | d2>d1 = f2
  | otherwise = f1

-- EJERCICIO 3 (Resolver usando Distinción de casos)
-- 1. Definir una función que reciba 4 número y devuelva el mayor.
-- Por combinación.
-- mayorComb :: Ord a => a -> a -> a -> a -> a
-- mayorComb a b c d = maximum [a,b,c,d]

-- -- Por distinción de casos.


-- Definir una función que reciba una nota y devuelva el mensaje “Aprobado” o
-- “Reprobado”. 
nota :: Int -> String 
nota  n1 =
    if n1 >= 51 
        then "Aprobado"
        else "Reprobado"     

-- Definir una función que reciba una nota y devuelva el mensaje “Excelente“ si la nota
-- esta entre 90-100, “Bien” si esta entre 70-89, “Regular” si esta entre 51-69 y mal si esta
-- entre 0-50.
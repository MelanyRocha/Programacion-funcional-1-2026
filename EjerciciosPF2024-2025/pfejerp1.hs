
doble :: Num a => a -> a
doble x=2*x
--Funciones polimorficas --> trabaja con cualquier tipo
-- de datoas
primero (x,y)=x 
-- funcion suma de dos numeros
suma2 x y = x+y
mas x y = x+y
--DEFINICION DE FUNCIONES
--por combinacion
cuadrado x = x*x
potencia4 x = cuadrado (cuadrado x) 
suma x y z = x+y+z
-- Expresiones if
    --SINTAXIS
mayor x y = if x > y then x else y
may3 x y z = if x>y
    then x
    else if (y>z)
        then y else z
--1 definir una funcion que reciba 2 fechas y 
--devuelva la mayor
--fecMay (d1, m1, a1) (d2, m2, a2)
-- |(a1>a2)||((a1==a2)&&((m1>m2)||(m1==m2)&&(d1>d2))) = (d1, m1, a1)
-- | otherwise= (d2, m2, a2)
fecMay::(Int,Int,Int)->(Int,Int,Int)->(Int,Int,Int)
fecMay (d1, m1, a1) (d2, m2, a2)
    |a1>a2 = (d1,m1,a1)
    |a2>a1 = (d2,m2,a2)
    |m2>m1 = (d2,m2,a2)
    |m1>m2 = (d1,m1,a1)
    |d2>d1 = (d2,m2,a2)
    |otherwise = (d1,m1,a1)

fecMay1 f1@(d1, m1, a1) f2@(d2, m2, a2)
    |a1>a2 = f1
    |a2>a1 = f2
    |m2>m1 = f2
    |m1>m2 = f1
    |d2>d1 = f2
    |otherwise = f1

fecMy f1@(d1, m1, a1) f2@(d2, m2, a2) =
    if a1>a2
        then f1
        else if a2>a1
            then f2
            else if m2>m1
                then f2
                else if m1>m2
                    then f1
                    else if d2>d1
                        then f2
                        else f1

fecMy4 :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
fecMy4 f1 f2 f3 f4 = fecMy (fecMy f1 f2) (fecMy f3 f4)


--patrones estructurales
primero1 (x,y) =1
dia (d,m,a) = d
f ((x,y),z)=z
--patrones constantes
no:: Bool -> Bool
no True = False
no False = True

no2:: Bool -> Bool
no2 True = False
no2 _ = True

miAnd :: Bool -> Bool -> Bool
miAnd True True = True
miAnd True False = False
miAnd False True = False
miAnd False False = False

miAnd2 True True = True
miAnd2 _ _ = False   --comodin al final


 
cumple f x y = f x y
cumple2 x y f = f x y
-- Escribir el tipo de mayor
-- recibe (>):: Int -> Int -> Bool

miNot:: Bool -> Bool
miNot x = case x of
    True -> False
    False -> True
-- Implementar usando case
miAnd:: Bool -> Bool -> Bool
miAnd x y = case (x,y) of
    (True,True) -> True
    _-> False

miAnd2 x y =
    case x of
        False -> False
        True -> case y of
            True -> True
            False -> False
miAnd3 x y =
    case x of
        False -> False
        True -> y
--DEFINIR FUNCIONES POR DISTINCION DE CASOS
mayor x y = 
    if x>y then x else y
mayor1 x y |x>y = x
           |x<=y = y

--mayor4 a b c d = (mayor a b) && (mayor c d)
sgteVocal :: Char ->Char
sgteVocal x 
   |x =='a' = 'e'
   |x =='e' = 'i'
   |x =='i' = 'o'
   |x =='o' ='u'
   |x =='u' ='a'
   |otherwise ='?'

-- DEFINICIOPNES LOCALES
{--Definir una función que reciba como argumento 4
notas y devuelva el mensaje
Excelente si el prom está entre 90 y 100
Muy Bien si el prom está entre 80 y 89
Bien si el prom está entre 70 y 79
Regular si el prom está entre 51 y 69
Mal si el prom está entre 0 y 50
Notas inválidas en otro caso--}
evalua:: Int -> Int -> Int -> Int -> String
evalua n1 n2 n3 n4
   |promEn 90 100 ="Excelente"
   |promEn 80 89 ="Muy Bien"
   |promEn 70 79 ="Bien"
   |promEn 51 69 ="Regular"
   |promEn 0 50 ="Mal"
   |otherwise ="notas invalidas"
   where
   prom= div (n1+n2+n3+n4) 4
   promEn li ls = prom>=li && prom <=ls 
--definiciones usando patrones
negar:: Bool ->Bool
negar True = False
negar False = True

sgteVocal2 :: Char ->Char  
sgteVocal2 'a' = 'e' --este es un patron
sgteVocal2 'e' = 'i'
sgteVocal2 'i' = 'o'
sgteVocal2 'o' ='u'
sgteVocal2 'u' ='a'
sgteVocal2 _ ='?'
-- tenemos los patrones constantes
{--miAnd:: Bool -> Bool -> Bool
miAnd x y = case (x,y) of
    (True,True) -> True
    _-> False
miAnd5 :: Bool -> Bool -> Bool
miAnd5 x y 
   |(x == True && y == True) = True
   |(x == False && y == True) = False
   |(x == True && y == False) = False
   |(x == False && y == False) = False --esta mal porque esta obligado
--}
miAnd5 :: Bool -> Bool -> Bool
miAnd5 True True = True
miAnd5 True False = False
miAnd5 False True = False
miAnd5 False False = False

-- comodin
miOr :: Bool -> Bool -> Bool
miOr False False = False
miOr _ _ = True

-- Patrones estructurales
primero (x,y) = x

primeroMejor (x,_) = x -- con comodinn

--Def. una funcion que reciba dos fechas 
--y devuelva la mayor (la posterior)
fecMay::(Int,Int,Int)->(Int,Int,Int)->(Int,Int,Int)
fecMay (d1, m1, a1) (d2, m2, a2)
    |a1>a2 = (d1,m1,a1)
    |a2>a1 = (d2,m2,a2)
    |m2>m1 = (d2,m2,a2)
    |m1>m2 = (d1,m1,a1)
    |d2>d1 = (d2,m2,a2)
    |otherwise = (d1,m1,a1)

-- con patron @ --> el @ es un alias
fecMay1 f1@(d1, m1, a1) f2@(d2, m2, a2)
    |a1>a2 = f1
    |a2>a1 = f2
    |m2>m1 = f2
    |m1>m2 = f1
    |d2>d1 = f2
    |otherwise = f1

-- Def. una funcion que reciba 4 fechas 
--y devuelva la mayor

fecMy4::(Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
fecMy4 f1 f2 f3 f4 = fecMay1 (fecMay1 f1 f2) (fecMay1 f3 f4)
--El principio de carrying y sus beneficios
--1. parametrizacion parcial
--2. Simplificacion de funciones

doble x = 2*x
dividir :: Int -> Int -> Int 
--dividir n d = div n d
dividir = div --div es de la liberia estandar

divide20Entre = dividir 20 -- espera un argumento y define 20 en ese argumento
f1 :: (ty -> tr) -> ty -> tr
f1 x y = x y 
f2:: tx -> tx
f2 x = x
{-
-- escribir el tipo de f1 aplicado a (&&)
(&&):: Bool->Bool->Bool
(&&) puede ser argumento de f1
(ty ->tr) puede emparejar con (Bool->(Bool->Bool))
ty = Bool    (1)
tr = (Bool->Bool)    (2)
f1 (&&) :: (ty -> tr)  (3)
reeplazando 1 y 2 en 3
f1 (&&):: (Bool (Bool->Bool))
-}

--sea
--g :: Num a => a -> a -> a -> Bool -> Bool
--g x y z w = ((x*10) > (y*z)) && w
-- Deducir los tipos de las siguientes expresiones 

--g::
--2) f1 g::
-- 3) f2 g::
-- 4) f1 g 8::
-- 5) f2 g 8::
-- 6) f1 g True::
-- 7) f2 g True::

f00 :: Num t1 => (t2 -> t3 -> t4) -> (t5 -> t2) -> t5 -> (t1 -> t3) -> t4
f00 x y z w = x (y z)(w 5) 
 
ff :: Num t1 => (t2 -> t3 -> t4 -> t1 -> t5) -> t2 -> t3 -> t4 -> t5
ff x y z w = x y z w 5

gg x y z w = x((y z 3)(w 7)) + 10
gg:: (c->Int)->(a->Int->b->c)->a->(Int->b)->Int

funcion que
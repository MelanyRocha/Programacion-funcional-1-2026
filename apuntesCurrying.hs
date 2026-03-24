{- Simplificacion de funciones

-}

f1 :: (t1 -> t2) -> t1 -> t2
f1 x y = x y
f2 :: p -> p
f2 x = x
--Al evaluar las siguientes expresiones tendra la respuesta
--f1 (*2) 4
{-
f2::a -> a
f1:: tx -> ty ->tr
f1:: tx -> ty ->tr
f1:(ty -> tr)-> (ty ->tr)
-}
f9 :: (t1 -> t2 -> t3) -> t1 -> t2 -> t3
f9 x y z = (x y) z
-- f9 x y z = x y z
f3 :: Integer -> Integer
f3= f2 (*) 4
f4 :: Integer -> Integer
f4 = (f1 (*)) 4
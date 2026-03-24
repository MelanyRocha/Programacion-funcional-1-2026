{- Simplificacion de funciones

-}

f1 :: (t1 -> t2) -> t1 -> t2
f1 x y = x y
f2 :: p -> p
f2 x = x
--Al evaluar las siguientes expresiones tendra la respuesta
--f1 (*2) 4
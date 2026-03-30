-- PC
-- toda funcion tiene solo un argumento
--miAnd:: Bool -> Bool -> Bool
miAnd:: Bool -> (Bool -> Bool) -- se sobreendiende los ()
miAnd x y = x && y


sumar3 :: Int -> (Int -> (Int -> Int))
((sumar3 x) y) z = x+y+z

sumar3s :: Int -> Int -> Int -> Int
sumar3s x y z = x+y+z

{--  ejercicio: escribir el tipo de g1 (sin haskell) y 
luego colocar los parentesis implicitos en la definicion de tipo
y en la definicion de la funcion
--}
--g1::
--g1 x y z w = if x && (y+1)>10 && z=='s' then "hola" else w


{--Escribir el tipo de :
g1 True :: Bool
g1 4:: Int
g1 True 5 :: Bool Int 
g1 True 5 'e' :: 
g1 True 5 'e' "xxx"::-}

f5= (\(x,y) -> \(z ,w) -> (x y )+ (z w))
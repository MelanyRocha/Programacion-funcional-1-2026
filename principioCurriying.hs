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


--Tipos de datos y el Principio de Currying

--I. Escribir la definición de tipos de las siguientes funciones. Por ejemplo la
--definición de tipo de la función f x = 2*x es f::Int -> Int:
f1 x y z = if x then y+10 else z
f1:: Bool -> Int -> Int -> Int

f2 x y z = if z=='s' then 2*x else y
f2:: Int -> Int -> Char -> Int

f3 x y z = ( x 2) && (y 'a') && (z True)
--f3 :: tx -> ty -> tz -> tr
f3 :: (Int -> Bool) -> (Char -> Bool) -> (Bool -> Bool) -> Bool


f4=(\x -> \y -> \z -> \w -> if x 2 then z else w+10 )
--f4:: tx -> ty -> tz -> tw -> tr
f4:: (Int -> Bool) -> ty -> Int -> Int ->Int


f5=(\(x,y) -> \(z ,w) -> (x y )+ (z w))
f6 x = x
f7 x y = x y
f8 x y z = x (y z)


f9 x y z = (x y) z
f9 :: (tx -> ty -> tz) -> tx -> ty ->tz


f10 x y z w= x (y (z w))
f11 x y z w= ((x y) z) w
f12 x y z w= ((x y) (z w))

f56 :: (t1 -> Integer, t1) -> (t2 -> Integer, t2) -> Integer
f56 = (\(x,y) -> \(z ,w) -> (x y )+ (z w))


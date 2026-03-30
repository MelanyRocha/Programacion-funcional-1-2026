
{-secuencia de elementos del mismo tipo

-}
t :: [a]
t = []
--f :: [[Int]]
--f = [[[1,2],[3,4,5],[]][[]],[]]

q :: [[a]]
q =[[]]

s :: [[[a]]]
s = [[[]]]

{-w :: Error
w = [[1],[]]

g :: [[[Int]]]
g = [[[1,2,3],[]],[[[]]]]

[1, []] :: No es una lista
[[[1, 2, 3], [ ] ], [[[ ]]]] :: No es una lista
porque:
[[1, 2, 3], [ ] ] :: [[Int]]
[[[ ]]] :: [[[a]]] [[[a]]] no puede ser [[Int]]

funcion sobre listas HEAD
head :: [a] -> a
*Main> head [1,2,4,5]
1
*Main> head [[1,2,3]]
[1,2,3]

*Main> head [[[]]]
[[]]

*Main> head [[],[[1,2,7]]]
[]
*Main> head [(+),(*)] 2 3
5

TAIL
tail :: [a] -> [a]

*Main> tail [1,2,7,8]
[2,7,8]
*Main> tail [[1,2,3]]
[]
*Main> tail [[[]]]
[]
*Main> tail [[]]
[]
*Main> tail [1]
[]
*Main> tail []
*** Exception: Prelude.tail: empty list

*Main> tail [(+),(*)] [2,5]

<interactive>:40:1: error:
    • Couldn't match expected type ‘[Integer] -> t’
                  with actual type ‘[Integer -> Integer -> Integer]’
    • The function ‘tail’ is applied to two arguments,
      but its type ‘[Integer -> Integer -> Integer]
                    -> [Integer -> Integer -> Integer]’
      has only one
      In the expression: tail [(+), (*)] [2, 5]
      In an equation for ‘it’: it = tail [(+), (*)] [2, 5]
    • Relevant bindings include it :: t (bound at <interactive>:40:1)
-}

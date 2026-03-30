
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
-}

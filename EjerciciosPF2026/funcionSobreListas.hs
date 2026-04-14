
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


Main> tail [(+),(*)] 2 5
                [(*)] no se puede aplicar a 2 5


      LAST
last :: [a] -> a
*Main> last [1,2,3,4]
4
*Main> last [[1,2,7,8,9,10]]
[1,2,7,8,9,10]
*Main> last [[]]
[]
*Main> last [[[]]]
[[]]
*Main> last [(+1),(+2),(+5)] 10
15
*Main> last [(+),(*)] 10

<interactive>:51:1: error:
    • No instance for (Show (Integer -> Integer))
        arising from a use of ‘print’
        (maybe you haven't applied a function to enough arguments?)
    • In a stmt of an interactive GHCi command: print it


              INIT

init :: [a] -> [a]
*Main> init [1, 2, 7, 8]
[1,2,7]
*Main> init [[1, 2, 3]]
[]
*Main> init [[[]]]
[]
*Main> init [[]]
[]
*Main> init [[1, 2, 3], [4, 5], [ ]]
[[1,2,3],[4,5]]


            Practtica
Prelude> map (even.head) [[1,2,3,4],[6,7,1,2],[7,8]]
[False,True,False]

Prelude> filter ((>2).head) [[1,2,3,4],[6,7,1,2],[7,8]]
[[6,7,1,2],[7,8]]

Prelude> takeWhile (even.head) [[1,2,3,4],[6,7,1,2],[7,8]]
[]


--even 4 => True
-- odd 4 => False
Main> even 4
True
*Main> odd 4
False
-}



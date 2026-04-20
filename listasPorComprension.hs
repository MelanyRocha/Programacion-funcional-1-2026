-- {x/xE lN, x<5} = [1,2,3,4]
[x | x <- [1..], x < 5] -- esto es una lista por comprensión, se lee "la lista de x tal que x pertenece a la lista de los numeros naturales y x es menor que 5"
Prelude> [2..5]
[2,3,4,5]
Prelude> [5..2]
[]
Prelude> [5,4..2]
[5,4,3,2]
Prelude> [x | x <- [1..], x < 5] 
[1,2,3,4.................................


            --generador     --calificador
Prelude> [x | x<-[1..999999], x<5]
[1,2,3,4]
-- 
Prelude> [x | x<- [2..8], x>5]
[6,7,8]

Prelude> [10*x | x<- [2..8], x>5]
[60,70,80]

-- En una lista por comprension
[expr | generador1, generador2,.., calif1 calif2]
--reglas
--1. generadores posteriore varian mas rapido que anteriores
[(x,y)| x <-[3,4,5],y <- [2,9]]
=>[(3,2),(3,9),(4,2),(4,9),(5,2),(5,9)]

[(x,y,z)|x<- [1,2,3],y<-[10,20,30],z <- ['a','b']]
=>[(1,10,'a'),(1,10,'b'),(1,20,'a'),(1,20,'b'),(1,30,'a'),(1,30,'b'),
  (2,10,'a'),(2,10,'b'),(2,20,'a'),(2,20,'b'),(2,30,'a'),(2,30,'b'),
  (3,10,'a'),(3,10,'b'),(3,20,'a'),(3,20,'b'),(3,30,'a'),(3,30,'b')]



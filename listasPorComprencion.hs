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




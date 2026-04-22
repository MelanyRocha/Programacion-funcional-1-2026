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

  length [(x,y,z)|x<- [1,2,3],y<-[10,20,30],z <- ['a','b']]
=>18
-- estructurada
for x=1 hasta 3
    para y=10 hasta 30 con paso 10
        para z en ['a','b']
            imprimir (x,y,z)
--2. Generadores posteriores pueden usar valores introducidos
--por anteriores, no viceversa
[(x,y)| x <- [3,4,5], y <- [x..6]]
=>[(3,3),(3,4),(3,5),(3,6),(4,4),(4,5),(4,6),(5,5),(5,6)]

[(x,y)| x <- [3..y], y <- [4,5,6]]
=> <interactive>:11:18: error: Variable not in scope: y

--3. Generadores posteriores ocultan valores introducidos
--por anteriores
[x | x<-[1,2,3],x<-[40,50,60,70]] 
x=1 x<-[40,50,60,70] => x=40, x=50, x=60, x=70
x=2 x<-[40,50,60,70] => x=40, x=50, x=60, x=70
x=3 x<-[40,50,60,70] => x=40, x=50, x=60, x=70
=> [40,50,60,70,40,50,60,70,40,50,60,70]

--{x|xE lN, x<5} = [1,2,3,4]
--[x|x<-[1..7000], x<5]

--4.El orden de los calificadores puede afectar la eficiencia
--ejercicios: no siempre se necesitan definiciones locales, pero a veces pueden mejorar la eficiencia
a) [(x,y)|x<-[1..5],x<3, y <-[10,20,30]] -- poner como aqui el calificador lo antes posible x<3
=> [(1,10),(1,20),(1,30),(2,10),(2,20),(2,30)]

b) [(x,y)|x<-[1..5], y <-[10,20,30], x<3]
=> [(1,10),(1,20),(1,30),(2,10),(2,20),(2,30)]

c) [(x*10)+y|x<-[1,2],y<-[3,4,5]]
=> [13,14,15,23,24,25]

d) [v+y|x<-[1,2],let v=x*10, y<-[3,4,5]] -- este es mas eficiente que el anterior 
--porque se calcula v una sola vez por cada x, mientras que en el anterior se calcula x*10 para cada y
=> [13,14,15,23,24,25]

e) [v+y|x<-[1,2],y<-[3,4,5],let v=x*10]
=> [13,14,15,23,24,25]

--5.El uso de definiciones locales puedn afectar la eficiencia


--hata listas por comprension el examen
--Usando listas por comprension, definir
1. map
miMap f xs = [f x | x <- xs]
2. filter
miFilter f xs = [x | x <- xs, f x] -- esto agarra cada elemento de la lista,
-- lo pasa por la funcion f, y si f devuelve True, lo agrega a la lista resultante
3. concat
miConcat xss = [x | xs <- xss, x <- xs] -- esto agarrar cada lista de la 
--lista de listas, y luego agarrar cada elemento de esa lista y ponerlo en la lista resultante
4. length
miLength xs = sum [1 | x <- xs]

5. zip
6. zipWith
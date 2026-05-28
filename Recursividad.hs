--------------------MAP-----------------------
--RECURSIVO
map f [] = []
map f (x:xs)=(f x):(map f xs)


        x :  xs
map (*2)[5,3,8,4] => 10:[6,16,8]
map (*2)[3,8,4] => [6,16,8]

--prueba de escritorio

                 f=(*2) x=5 xs=[3,8,4]
map (*2)[5,3,8,4]======================>(f x):(map f xs)=>((*2) 5):(map (*2) [3,8,4])=>[10,6,16,8]
                                                           --10--   ----[6,16,8]-----

                 f=(*2) x=3 xs=[8,4] 
map (*2) [3,8,4]====================>(f x):(map f xs)=>((*2) 3):(map (*2) [8,4])=>[6,16,8]
                                                        --6--    ----[16,8]----

                f=(*2) x=8 xs=[4] 
map (*2) [8,4]====================>(f x):(map f xs)=>((*2) 8):(map (*2) [4])=>[16,8]
                                                                    --[8]--

              f=(*2) x=4 xs=[] 
map (*2) [4]====================>(f x):(map f xs)=>((*2) 4):(map (*2) [])=>[8]

map (*2)[]=>[]

--------------------------------------------
             ---FILTER---
filter f []=[]
filter f (x:xs)
   |f x = x:(filter f xs)
   |otherwise=filter f xs


filter even [2,4,3,5,6]=>[2,4,6]=2:[4,6]
             x    xs
filter even [4,3,5,6]=> [4,6]/-->filter even [4,3,5,6]
             --xs--     ----/
filter even [3,2,4,5,6] => [2,4,6]
--prueba de escritorio

--hacer todas las funciones estandar sobre listas de tarea de recursividad
zip[] xs =[]
zip ys []=[]  
zip (y:ys)(x:xs)=

zip[2,3,4,5]['a','b','c'] => [(2,'a'),(3,'b'),(4,'c')]

zip[3,4,5][]



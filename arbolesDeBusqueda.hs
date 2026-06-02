
{-Rama 20
 
 (Rama 10 Nada Nada)

 (Rama 40
 (Rama 30
 (Rama 25 Nada Nada)
 (Rama 36 Nada Nada)
 )
 (Rama 50 Nada Nada)
 )
 -}
--data ArbolBus = Nada | Rama Int ArbolBus ArbolBus 

--data ArbolBus a = Nada | Rama a deriving Show
data ArbolBus a = Nada 
                | Rama a (ArbolBus a) (ArbolBus a)
    deriving Show
a1,a2,a3 :: ArbolBus Int
a1= Rama 30
    (Rama 25 Nada Nada)
    (Rama 36 Nada Nada)

a2= Rama 40
    a1
    (Rama 50 Nada Nada)
a3= Rama 20
    (Rama 10 Nada Nada)
    a2
{-def una funcion que reciba un arbol de busqueda y 
devuelva el elemento mayor del arbol-}


mayorDelArbol Nada = -1
mayorDelArbol (Rama x ai Nada) = x

mayorDelArbol (Rama x ai ad) = mayorDelArbol ad

{-definir una funcion que reciba un arbol y devuelva una lista con los elementos
ordenados ascendentemente-}

toLista::ArbolBus Int -> [Int]
toLista Nada = []
toLista (Rama x ai ad) = toLista ai ++ [x] ++ toLista ad
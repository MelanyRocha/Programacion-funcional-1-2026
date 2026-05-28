-- Selección Directa
--esto ejercicio devuelve el menor elemento de la lista y lo 
--va agregando a una nueva lista ordenada, hasta que la lista
-- original quede vacía
                        --des-ord
ordenarSelDir ds = selDir ds []
selDir [] os = os
selDir ds os =  selDir (quitar ds menor) (os ++ [menor])
    menor = getMenor ds
getMenor [x] = x
getMenor(x:y:xs) = if x < y then getMenor(x:xs) else getMenor(y:xs)
--prueba de escritorio
getMenor [2,6,1,4] => 1
quitar [2,6,1,4] 1 => [2,6,4]
--PRACTICA LISTAS POR COMPRENSIÓN
--I. Aplicando Listas por Comprensión, definir:
--1. filter
miFilter :: (a -> Bool) -> [a] -> [a]
miFilter f xs = [x | x <- xs, f x == True]
--2. map
miMap f xs = [f x | x <- xs]

--3. concat

--4. length

--5. Una función que reciba una cadena y la encripte, cambiando las vocales por los
--caracteres correspondientes a los dígitos 1,2,3,4,5 respectivamente.
--6. Una función que realice el producto cartesiano de dos conjuntos
--7. Una función que reciba un conjunto y un elemento y devuelva True si el elemento
--pertenece al conjunto, falso en otro caso.
--8. Una función que reciba dos conjuntos y devuelva la intersección de los mismos
--9. Una función que reciba un elemento un un conjunto y eleimine el elemento del conjunto
--10. Una función que implemente la unión de dos conjuntos.
--11. Una función que reciba una matriz y devuelva su diagonal principal
--12. Una función que reciba una matriz y devuelva su diagonal secundaria
--13. Una función que reciba una matriz y devuelva True si esta es un cuadrado perfecto
--14. Una función que multiplique 2 matrices
--15. Una función que reciba un número y devuelva True si es primo
--16. zipWith
--17. zip3 (hace lo mismo que zip pero con 3 listas, devuelve una lista de triplas)
--18. zip4 (hace lo mismo que zip pero con 4 listas, devuelve una lista de tuplas de 4 elementos)
--19. Definir una función que reciba una lista y una función de orden y devuelva la verdad
--si la lista esta ordenada de acuerdo a una función de orden

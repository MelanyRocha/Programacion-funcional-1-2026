--II. Utilizando las funciones estándar sobre listas, definir las siguientes funciones:
--1. Definir una función que reciba una lista de elementos y devuelva el tercero
tercero :: [a] -> a
tercero xs = head (tail (tail xs))
--2. Definir una función que reciba una lista de elementos y devuelva el segundo
segundo :: [a] -> a
segundo xs = head (tail xs)
--3. Definir una función que reciba una lista de listas de funciones y un elemento y aplique la 1ra función
--de la primera lista al elemento
listafun xss x = (head(head xss)) x

--ejemplo
[[(*2)]]
--4. Definir una función que reciba una lista de listas y devuelva el 5to. Elemento de la 3ra. lista.

--5. Definir una función que reciba una lista de listas de listas y devuelva el 3er. elemento de la 4ta. Lista
--de la 2da. lista

--6. Definir una función que verifique si una lista esta ordenada de acuerdo a una función de orden.

--6.1 verificar si dos listas son iguales
soniguales [1,2,3] [1,2,3] = True
soniguales xs ys = (length (filter (\x -> elem x ys) xs)) == length xs

sonigualev2 xs ys = (length (filter cmp(zip xs ys))==0) && (length xs == length ys)
    where cmp (x,y) = x /= y
--7. Definir una función que compare 2 listas y devuelva True si las listas son iguales

--8. Definir una función que verifique si una lista de listas podría ser considerada una matriz

--9. Definir una función que reciba un número y una lista y devuelva el elemento de la lista que esta en la
--posición n

--10. Definir las funciones length, filter, zip utilizando las otras funciones

--11. Definir una función que reciba una matriz y devuelva su transpuesta

--12. Definir una función que reciba 2 matrices y las multiplique

--13. Definir una función que reciba 3 matrices y las multiplique

--14. Definir una función que reciba 4 matrices y las multiplique

--15. Definir una función que reciba 1 matriz y una función de orden y devuelva True si la matriz esta
--ordenada de acuerdo a la función de orden.

--16. Definir una función que reciba una lista de números y devuelva todos los números pares

--17. Definir una función que reciba una lista de listas y devuelva una lista de sus longitudes.

--18. Definir una función que reciba una lista de listas y devuelva solo aquellas cuya longitud sea par.

--19. Definir una función que reciba una lista de listas de números y borre todos los números pares de estas
--listas

--20. Definir una función que reciba una lista de listas y devuelva una lista formada por los penúltimos
--elementos de las listas

--21. Definir una función que reciba un número y devuelva una lista con los posibles divisores del número.

--22. Definir la función zipWith en terminos de zip
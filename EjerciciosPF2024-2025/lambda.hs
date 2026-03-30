suma :: Integer -> Integer -> Integer
suma = (\x -> \y -> x+y)
doble :: Integer -> Integer
doble = (\x -> 2*x)

--1. Definir una función que reciba el lado de un cuadrado y devuelva su área.
areaCuadrado = (\lado -> lado*lado)
--2. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
areaRectangulo = (\base -> \altura -> base * altura)
perimetroRectangulo = (\base -> \altura -> 2*base + 2*altura)
--3. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.

--4. Definir una función que reciba 2 números y devuelva verdad si el primero es mayor
--que el segundo.

--5. Definir una función que reciba un número y retorne verdad si este es múltiplo de 2.

--6. Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.

--7. Definir una función que reciba un número y lo devuelva elevado a la potencia 3.

--8. Definir funciones que reciban un número y lo devuelvan elevado a la potencia
--4,8,10,32.

--9. Definir una función que reciba dos números y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, falso en otro caso.


--EJERCICIO 1
 --1. Definir una función que reciba el lado de un cuadrado y devuelva su área.
areaCuadrado lado = lado*lado
areaRectangulo base altura = base * altura
--2. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
perimetroRectangulo base altura = 2*base + 2*altura
--3. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
areaPerimetroRectangulo :: (Num b) => b -> b -> (b, b)
areaPerimetroRectangulo base altura = (base * altura, 2 * base + 2 * altura)

--4. Definir una function que reciba 2 números y devuelva verdad si el primero es mayor
--que el segundo.
may2 x y = x > y
--5. Definir una función que reciba un número y retorne verdad si este es múltiplo de 2.
mul2 x = mod x 2 == 0
--6. Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.
mul2y3 x = x `mod` 2 == 0 && x `mod` 3 == 0
--7. Definir una función que reciba un número y lo devuelva elevado a la potencia 3.
potencia3 x = x^3
--8. Definir funciones que reciban un número y lo devuelvan elevado a la potencia
--4,8,10,32.
potencia481032 x = (x^4, x^8, x^10, x^32)
--9. Definir una función que reciba dos números y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, falso en otro caso.
orden :: (Num a) => (a -> a -> Bool) -> a -> a -> Bool
orden f x y = f x y


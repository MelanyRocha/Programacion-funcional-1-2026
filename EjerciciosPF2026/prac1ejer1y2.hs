--PRÁCTICA PROGRAMACIÓN FUNCIONAL

--EJERCICIO 1
--1. Definir una función que reciba el lado de 
--un cuadrado y devuelva su área.
areaCuadrado lado = lado*lado


--2. Definir una función que reciba la base y 
--la altura de un rectángulo y devuelva su área y su perímetro.
rectanguloAP :: Num a => a -> a -> (a, a)
rectanguloAP base altura = (area, perimetro)
    where
        area = base * altura
        perimetro = 2 * (base + altura)
--4. Definir una función que reciba 2 números y 
--devuelva verdad si el primero es mayor que el segundo.
mayor x y = x>y

--5. Definir una función que reciba un número y 
--retorne verdad si este es múltiplo de 2.
mult2 x = mod x 2==0

--6. Definir una función que reciba un número y 
--devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.
mult23 n = (mod n 2==0 && mod n 3==0)

--7. Definir una función que reciba un número y 
--lo devuelva elevado a la potencia 3.
pot3 n = n^3

--8. Definir funciones que reciban un número y
 --lo devuelvan elevado a la potencia 4,8,10,32.
pot481032 n = [n^4,n^8,n^10,n^32]

--9. Definir una función que reciba dos números
-- y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, 
--falso en otro caso.
orden :: (Num a) => (a -> a -> Bool) -> a -> a -> Bool
orden f x y = f x y

--EJERCICIO 2 (Resolver usando Expresiones if)
--1. Definir una función que devuelva el mayor de 2 números
mayor2 x y = if (x>y) then x else y
--2. Definir una función que reciba 3 números y devuelva el mayor
mayor3 x y z = if (x>y && x>z)
               then x
               else if (y>x && y>z)
                then y
                else z
--3. Definir una función que reciba 4 números y devuelva el mayor
mayor4 a b c d = if (a>b && a>c && a>d)
               then a
               else if (b>a && b>c && b>d)
                then b
                else if (c>a && c>b && c>d)
                    then c 
                    else d
            
--10. Definir una función que reciba dos 
--exámenes parciales, un final y una segunda
--instancia y devuelva el mensaje 
-- “Aprobado”, “Reprobado” o “Abandono” según el caso.
--promedioP p1 p2 f s =
--11. Definir una función que reciba 2 fechas y devuelva la fecha mayor